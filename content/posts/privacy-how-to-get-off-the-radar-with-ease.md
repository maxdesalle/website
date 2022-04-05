---
title: "A Guide to Online Privacy"
date: 2021-01-19
---

> This blog post is regularly updated to maintain its accuracy. Last update: April 5th 2022 (change: replace [PrivacyTools](https://privacytools.io) links with [PrivacyGuides](https://privacyguides.org).

### Introduction

**This guide is noob-friendly on purpose.** You won’t find anything related to virtual machines, selfhosting,… That’s way too complicated for the “average” user. Nor will you find 10 different recommendations for each service, that would make it too confusing and time-consuming for readers to compare all the different options. **Simplicity is key.**

**Privacy is an essential right.** It shouldn’t be difficult. This guide is an attempt at offering an easy way to maintain your privacy effectively, making it accessible for everybody, whoever you are.

The approach taken in this guide is specifically focused on **isolation**. **Every website is isolated in a specific browser container** using Firefox’s latest cookie isolation feature, **with a specific e-mail alias and password unique to that account**. This makes it incredibly difficult for websites to track your behavior on other websites, but also protects you from online breaches as the password used is different for each password.

### Threat model

A threat model defines how private you need to be.

[Edward Snowden](https://simple.wikipedia.org/wiki/Edward_Snowden) has for example a very high threat model, as he needs to be protected from government spying. My personal threat model is entirely focused on protecting my data from being harvested by private companies.

Your threat model might be to hide your online behavior from the rest of your family, community, company,… Or you simply want to protect your data from being used by private companies, like I do.

Before getting into the privacy rabbit hole, you need to establish your threat model. **What are you trying to protect yourself from? To which level are you ready to sacrifice your user experience in order to have better privacy?**

The reason why this is important is because, once you have your threat model, you have a goal. You know where you need to go to and all you need to do is to find the tools to get there. Without that goal, your efforts will probably be inconsistent in one way or another.

### Operating system (computer)

There are three major operating systems: Windows, MacOS and Linux (which is actually more an ecosystem of operating systems).

[Windows is a clear no-go](https://money.cnn.com/2015/08/17/technology/windows-10-privacy/). You don’t want to be on Windows. MacOS, while definitely not perfect in terms of privacy (but still decent), has a great user experience. Linux distributions usually offer a great level of privacy, but unfortunately, the user experience is just not on point.

If you are using Windows at the moment, there are two ways to solve this issue:

-   **Buy a Mac** (Pro: great user experience with a decent, but definitely not perfect, privacy level. Con: expensive)
-   **Install a Linux distribution** (Pro: free and high-level of privacy. Con: technical)

Most Windows laptops and machines are compatible with Linux distributions. However, **don’t move to Linux if you don’t have the required tech background**. Linux is technical and definitely not fitted for the average user. If you aren’t technical, saving money for a Mac seems like a better option.

**When installing apps on your computer, subtract before you add.**

Avoid whenever you can downloading apps on your computer. **Try to run the web version of the app (assuming there is one of course) through your browser.**

### Browser (computer)

**Don’t use any type of Chromium-based browser**. Whether it’s Google Chrome, Ungoogled Chromium, Brave,… neither of them is ideal as their privacy settings are pretty limited and, if using Google Chrome, our friend Google loves seeing what you do while browsing the web.

Compared to these other browsers, **Firefox stands out as it’s not Chromium-based**. But we want to get one step further by not installing Firefox itself, but instead, install a fork (a modified copy) of Firefox called LibreWolf.

LibreWolf is exactly the same as Firefox except regarding the privacy and security side of things. Librewolf integrates natively a ton of privacy measures which Firefox doesn’t. Oh, and uBlock Origin is installed by default.

If you have a high threat level, you may want to look into the Tor Browser though. Tor is a decentralized network of nodes (servers) which encrypt each request made on the network. The Tor Browser leverages the Tor networks, which enables fully anonymous browsing on the IP-tracking side as your connection is encrypted multiple times. This effectively removes the need for a VPN.

**Tor is slow and may break some websites unfortunately**, which is why LibreWolf remains the best option as it keeps a great user experience while offering a high privacy level.

### Search engine

From DuckDuckGo to SearX to StartPage, there a lot of privacy focused search engines out there. Some have their own search algorithms, others use Google’s or Bing’s search algorithms.

However, most of them don’t provide great search results due to the lack of quality of the search algorithms they rely on. This is the following search engine is recommended:

-   [**StartPage**](https://startpage.com/): StartPage is a privacy-focused search engine based in the Netherlands using Google’s search results. You get quality search results, while keeping your privacy.

If you don’t like StartPage feel free to take a look at DuckDuckGo, SearX and Whoogle Search (selfhosting / use of public instances required for the latter two).

### Extensions

Below are the extensions which are recommended in order to enhance your privacy while browsing the web:

-   [**uBlock Origin**](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) (installed by default on LibreWolf): an efficient wide-spectrum content blocker.
-   [**xBrowserSync**](https://addons.mozilla.org/en-US/firefox/addon/xbs/): browser syncing as it should be: secure, anonymous and free! Sync bookmarks across your browsers and devices, no sign up required.
-   [**ClearURLs**](https://addons.mozilla.org/en-US/firefox/addon/clearurls/): removes tracking elements from URLs.
-   [**LocalCDN**](https://addons.mozilla.org/en-GB/firefox/addon/localcdn-fork-of-decentraleyes/): protects you against tracking through “free”, centralized, content delivery.
    These are the most important ones, you will probably need to install a password manager as an extension. More on that later.

### E-mail

E-mail is a big subject. Way bigger than the importance of a VPN.

Most of your online accounts are linked to your e-mail address. **In the event of a breach, that e-mail address will be leaked leading to potential security issues with all the other accounts using that e-mail address.**

#### E-mail providers

There is only one provider recommended as it’s the only one which checks all boxes. There are others, like MailBox, Posteo, Disroot or Tutanota, but they all have downsides compared to the following e-mail provider:

-   [**ProtonMail**](https://protonmail.com/): ProtonMail is a Switzerland-based company which offers a fully encrypted e-mail service. There is a free plan and payments in Bitcoin are allowed.
-   If you are not convinced by ProtonMail, [PrivacyGuides](https://privacyguides.org) has a great overview.

#### E-mail aliases

**The use of e-mail aliases is often overlooked, but is probably even more important than the e-mail provider you use.** Your online accounts shouldn’t all be linked to the same e-mail address. As like mentioned above, in the event of a breach, hackers will use that email address on other websites and try to get into your private accounts.

On top of that, most people use an e-mail address containing their first and last name. And understandably so. However, this also means that in the event of a breach, it’s pretty easy to guess who you are. Additionally, it also means that you are essentially giving each website you have an account on your name, which is obviously not great.

You will probably think creating a pseudonymous e-mail address is a better idea by now, which it is, but it’s still not perfect. All your online accounts will still be linked to the same e-mail address, which is a major vulnerability in case of a breach.

The way out of this hell is simple: **e-mail aliases**. I personally have a fully randomly generated e-mail alias for every website I have an account on. Except for work/legal purposes, it doesn’t matter what website it is, I will use an e-mail alias. This fully isolates each website in case of a breach. Additionally, if I’m receiving spam of a certain website, I simply block the e-mail alias. Life is simple.

There are two main alias providers, pretty much doing the same thing. They are equally great, in my opinion, having tried both. The two of them are fully open-source, can be self-hosted and have a free plan:

-   [**SimpleLogin**](https://simplelogin.io/)
-   [**AnonAddy**](https://anonaddy.com/)

Needless to say that, you should absolutely use e-mail aliases. **Breaches take place on a daily basis**, and the amount of information you store online is only going to increase making you more and more vulnerable to these types of events.

### DNS

DNS is an often overlooked subject on the privacy side of things, mainly because the narrative behind it is less popular than the VPN narrative where the companies promise full privacy, while in fact, they only hide your IP address. There are hundreds of other ways to track you, your IP is only one of them.

**A DNS resolver allows you to block ads at the source, instead of once the page is loaded like with traditional ad blockers**. This doesn’t mean you don’t need an ad blocker, though, YouTube ads will still persist, for example. The fact that ads are blocked at the source also means that you will not get ads when using an app, for example.

Additionally, **this will allow you to block certain DNS queries at the operating system level**. If you are on MacOS, you could for example block certain queries Apple makes to identify you. There are countless possibilities, really.

Finally, a DNS resolver will also hide your traffic from your ISP, which is always a nice bonus.

There are [a lot of encrypted DNS resolvers out there](https://www.privacyguides.org/tools/#dns), but the one I use and recommend is:

-   [**NextDNS**](https://nextdns.io/): NextDNS protects you from all kinds of security threats, blocks ads and trackers on websites and in apps and provides a safe and supervised Internet for kids — on all devices and on all networks.

The setup is incredibly easy, they have a generous free plan and a cheap premium plan. You can configure a ton of features as well as blockers.

### VPN

**A VPN will not make you anonymous online**. That’s not the point of a VPN. The point of a VPN is hiding your IP address from your Internet Service Provider (ISP), government and of course the websites you visit. But contrary to popular belief, hiding your IP will not get you to a Snowden-level of anonymity. There are **hundreds** of other ways for websites to track you. IP tracking is one of the major ones, though.

When choosing a VPN, you should look into them extensively and with great attention. **All your bandwidth will go through the VPN’s servers, literally**. So you don’t want to go with a shady VPN which has already had breaches in the past which starts with “Nord” and ends with “VPN” for example, if you see what I mean.

Because of that, while there are countless great VPN providers out there, I will only recommend two VPN providers which are widely known in the privacy community for being fully transparent and trustworthy:

-   [**Mullvad**](https://mullvad.net/): Mullvad is a Sweden-based VPN provider. No e-mail address or password needed to sign up and paying in cash is an option.
-   [**ProtonVPN**](https://protonvpn.com/): ProtonVPN is the VPN subsidiary of ProtonMail, the biggest privacy-focused e-mail provider.

Again, if you want full anonymity, don’t use a VPN. Use Tor instead.

If you are using a VPN, make sure to leave it on 24/7 and activate the kill-switch feature. Mullvad and ProtonVPN **allow you to block the internet connection of your computer when you aren’t connected to one of their VPN servers**. This is a really great feature as it guarantees that you will never access the web without hiding your IP address. Using it is obviously highly recommended.

### Password manager

There is no point in isolating all our online accounts with different e-mail aliases if we don’t create a unique password for each account. This is why a password manager is needed. Let me be clear: **everyone should use a password manager**. It makes your life much easier because you just need to remember one password and it improves your online security by multiple orders of magnitude.

There are multiple great password managers out there, but only one is recommended as it’s compatible with the most platforms, while still being fully open-source.

-   [**Bitwarden**](https://bitwarden.com/): Bitwarden is a free and open-source password manager. It can be self-hosted, and is available on nearly every operating system and browser.

If Bitwarden doesn’t fit for some reason, take a look at [KeePassXC](https://keepassxc.org/) and [LessPass](https://lesspass.com/#/).

### Operating system (phone)

There are two major operating systems in the smartphone sector: Android and IOS. On the one hand, Android gives more freedom in terms of use, but on the other hand, Google tracks you by default. **This is why IOS is clearly recommended, but like MacOS, it’s definitely not ideal.**

So what’s ideal? Either having a flip phone, or installing [Graphene](https://grapheneos.org/) on your Android smartphone, assuming it’s compatible, of course. But the former is very difficult to achieve in our 24/7-connected society and the latter is pretty technical and requires specific smartphones to work.

### Apps (phone)

Like on a computer, subtract before you add apps. The less, the better.

**The more you use your computer, the better**. Avoid at all costs using your smartphone for something when you can use your computer for it. Here are a three apps which you absolutely need, by default:

-   Your VPN app: this is incredibly important, as your phone location data is even more sensitive than your computer location data.
-   Your encrypted DNS resolver.
-   [**Signal**](https://signal.org): a private encrypted messenger. You can use Signal as your default SMS message app, as well as like a WhatsApp alternative.

Do not install any Facebook app (Facebook, Messenger, WhatsApp, or Instagram) on your smartphone. Either do not use these, or use them through your computer’s browser in an isolated container.

If you need to install a browser, [Firefox Focus](https://www.mozilla.org/en-US/firefox/browsers/mobile/focus/) or [Puma Browser](https://www.pumabrowser.com/) seems like a great fit.

### Do not install Zoom (and how)

In our times, the use of Zoom as become quite frequent. Frankly, it’s pretty difficult to avoid using it. So instead, **here is a way to still keep a decent privacy level while using it**.

**You will not be able to use Zoom through LibreWolf**, though. This is because of the native privacy measures LibreWolf has put in place. In order to use Zoom you will need to use Brave, a privacy-focused Chromium-based browser. Because it’s only used for this purpose, it will not ruin your privacy.

When clicking on a meeting link, Zoom will try to install the Zoom app on your computer. When prompted, do not install it. Then, click on “Download it manually”, and do not install it again. Now, a link should have appeared to use Zoom through your browser. Click on it, and you are in.

### Creating a fake identity

Some websites, especially social ones, will require you to have a profile picture. **Never** put a profile picture of your face or any other identifiable information of yourself on an online website if not absolutely necessary. Even if you delete it afterwards, these websites will more than probably still have keep it in their databases. Additionally, the probability of your face being used for machine learning (AI) is very high (and becomes only higher as the technology matures).

If you absolutely do need to have a profile picture, either put a random avatar like a nice background landscape or something else, or use a fake person’s image. The [thispersondoesnotexist](https://thispersondoesnotexist.com/) website generates pictures of people who do not exist. It’s extremely useful when setting up a fake identity.

Additionally, [Namey](https://namey.muffinlabs.com/) allows you to generate fake names. This is also incredibly useful if you are trying to set up a fake online identity.

---

**Recommended reading:**

-   [Extreme Privacy](https://www.amazon.com/Extreme-Privacy-What-Takes-Disappear/dp/B09W78GW2T) - Michael Bazzell
