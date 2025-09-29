-- slugify.lua — normalize numbered headings -> stable ASCII IDs
-- and fix in-doc (#anchor) links to match.

local function ascii_slug(s)
  s = s:lower()
  -- minimal transliteration (extend if needed)
  s = s
    :gsub("[áàâäãå]", "a")
    :gsub("[éèêë]",   "e")
    :gsub("[íìîï]",   "i")
    :gsub("[óòôöõ]",  "o")
    :gsub("[úùûü]",   "u")
    :gsub("ñ",        "n")
    :gsub("ç",        "c")
  -- strip HTML tags if any leaked
  s = s:gsub("<[^>]+>", "")
  -- collapse non-alnum to hyphens
  s = s:gsub("[^a-z0-9]+", "-")
  -- trim hyphens
  s = s:gsub("^-+", ""):gsub("-+$", "")
  return s
end

local function header_id_from_numbered(title)
  -- Expect like: "3.3 The Schrödinger Equation"
  local num, rest = title:match("^(%d[%d%.]*)%s+(.+)$")
  if not num or not rest then return nil end
  local digits = num:gsub("%.", "")
  return digits .. "-" .. ascii_slug(rest)
end

return {
  {
    Header = function(h)
      -- stringify header text
      local txt = pandoc.utils.stringify(h.content)
      local id = header_id_from_numbered(txt)
      if id then h.identifier = id end
      return h
    end,
    Link = function(l)
      if type(l.target) == "string" and l.target:match("^#") then
        local raw = l.target:sub(2)
        -- normalize any ad-hoc anchors in the doc to same ASCII form
        l.target = "#" .. ascii_slug(raw)
        return l
      end
    end
  }
}
