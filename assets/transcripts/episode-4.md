Especially in this day and age with AI, how could you not recognize that privacy on Bitcoin right now is a huge issue? I think there's also quantum, which to me is just shocking, especially now with the US administration that accelerated the deadline to, I think it's 2031 now, from 2035 previously. And knowing that Bitcoin will take years to upgrade to post-quantum, once there is consensus on it, it feels irresponsible, frankly.

If you're optimizing for usable money that protects people's security and safety and all those things, then you have to optimize for something else. But this should be the goal, is to optimize for this thing and not optimize for just the price going up.

Hi, Josh Swihart.

Hey, how are you?

Starting. Yeah, no, it's been great. First question, like sort of like starting with the history of Zcash. I mean, you've been involved since quite a while now in Zcash and helping building it. Did you ever think that at some point, before sort of like the Zcash comeback, Zcash was sort of dying?

It was objectively dying. So that was like in 2023, like I resigned from ECC, and I resigned from what I thought would be my life's work, like what would be where I ended my career, what I would do for the rest of my life. I didn't resign from Zcash. I resigned from ECC, and in part because I felt like there was change that needed to be made in order for the project to be successful.

So we had languished for quite some time. The price was in the doldrums, maybe, you know, $20, and a dip below that. I think objectively that's a measure of whether or not there's success, because of the limited supply. We would joke internally that there were probably 30 people in the world that cared about the project, and we kept talking to those 30 people.

Some of that was happening during the time where there was this sandblasting attack, where people couldn't use ZEC at all. It was effectively bricked. Somebody who goes by Peacemonger was running a project called Jour and was doing user studies and doing interviews with users, and one of the things she was tracking was net promoter score, like would you recommend this to a friend. And it was like as far negative as you could go. So even the people that were diehard Zcashers were hating on Zcash.

Yeah.

And people wanted to use it, and they couldn't use it, and they were frustrated, and they were frustrated with where things were going. And so I had resigned before Zcon. I don't remember which number that was, but that was in Barcelona. And so Barcelona, that was like my last day. And I had started writing, and some others had started writing on the forums about what needed to change. Somebody else had made a post about it being like a grand stadium that had been built, and nobody's showing up to the stadium.

Yeah.

And I got to Zcon, and the whole thing was dark. Like the rooms were all dark. There were just a few people there, compared to like the first Zcon, which is in Montreal, it's Zcon0, where it was just vibrant and alive, and all of these people were there, and not just Zcash people, but people that were across the crypto ecosystem and kind of were interested in this new novel thing that had been built. And I left that conference thinking, man, this was like the right decision to leave, because it is...

Yeah, it felt so dead. What do you think revived it? Was it the price action? I mean, I have my take. I think it's the Zashi effect. But was it solving the UX? Is it like a combination of those things? Like what actually led to the comeback?

Yeah, I think it was a convergence of things. So first, it wasn't usable, and people didn't have a wallet that they actually liked or they trusted or they wanted to use. And for a long time, ECC strategy was very confused. So like when I even first interviewed, I had mentioned that ECC needed a wallet, and that was back in, I think I first interviewed in '17, 2017, to come on board. And the response was, nah, somebody else will build it, we're just gonna focus on the protocol.

Yeah.

It's like, but the user experience, this is terrible, right? In order to send a shielded transaction, you know, at the time it's still command line, and it just wasn't usable. It wasn't going to get adoption.

Yeah.

And so it's like, well, we don't want to do it, we don't want to have a crowding out, so we're going to build the SDKs.

Yeah, and I think at the time, even like the shielded transaction, the share of shielded transactions was like single-digit percentage numbers, right? Like it was just so hard to make a shielded transaction, due to like the cryptography required and how long it took.

Yeah.

It's just not the same compared to today.

Yeah, you had to be like way to the left of the adoption curve.

Yeah.

In order to use ZEC. It was just impossible. And part of that was the nature of the cryptography. So we were still on Sprout, the initial shielded pool. It was not performant. You couldn't run it, you couldn't create a proof on a mobile device. So if you're going to use it, you had to basically, you had to use transparent transactions. Any exchanges, no exchanges could use it. It didn't scale.

And so, you know, Sapling didn't arrive until the end of 2018. At that point it could be used, but it was still, ECC's strategy at the time was still to like provide SDKs and maybe sometime provide a wallet, and started working on a reference wallet. And it didn't really work, and it was way too clumsy. There were some things structurally within ECC that were broken that didn't allow us to ship really well. And so then by the time we got to like the sandblasting attack, which then lasted a year, it was just god-awful.

So what changed was a combination of: we needed to change the structure of ECC and how engineers were working together and how we prioritized our work. We needed to create an opinionated wallet where we could say, this is best in class and this is how a wallet should be built. Get that launched, get user feedback on what is working, what is not working, use that user feedback to determine what we build into the protocol. And we started iterating on that, and as soon as we released that wallet, adoption of the shielded curve started to grow.

And then there was this other convergence of things, where the market, I think, was starting to catch up. It was usable. We added hardware support with Keystone, partnership with Keystone, late 2024, and then the shielded pool started to grow exponentially at that point. And then recognized that we needed actually swaps in and out.

And that was the big factor. Yeah, swaps. Like to me, integrating NEAR Intents into Zodl, formerly Zashi, was really such a good call. Like it's, in retrospect, such an obvious decision. I don't know if I would have expected it to work as well as it did prior to that, because, I mean, many wallets have like built-in swaps, right? And it didn't strike me as such, like, oh, it's obviously going to work. I think for Zcash, like the differentiating effect was privacy, right? Like there's the swap, but you don't know where it comes from, you don't know where to, you know. Yeah, that was such a good call.

Yeah, yeah. It was one of those things where we were exploring it. Some other people that are Zcashers were working, also engaged, they've engaged with the NEAR ecosystem, and they made some introductions and started meeting with the NEAR team. The NEAR team at first was like, we're not going to support privacy, it's like too scary, too risky.

Tornado Cash.

Yeah, yeah. And so everybody was afraid of it. Like we had, yeah, we had started trying to work with THORChain like a long time ago, and THORChain was just like, we're not touching it, right after Tornado Cash. So we started working with NEAR. NEAR's like, okay, we'll support transparent transactions, but no way we're doing anything with shielded. And then some other people were very skeptical that it would work. Like, how can you have a single-currency wallet and allow swaps in it, in and out? Like, nobody's gonna use it.

Yeah.

And it proved to be just the opposite.

Yeah, I know, it's the contrary. It's exceptional. Yeah, that's really great. You mentioned things were like broken at ECC. What were some of those things? I think you've already expressed the fact that the funding model for ECC was sort of like broken, because, I think, you were relying on like block revenues, essentially. Was that part of what was broken? Was there something else as well?

Yeah, so that creates... So ECC at one point was a for-profit company when it launched. So it was Zcash Company, created the open source. Then a decision was made at ECC to move it under a not-for-profit structure. There's various views on why that was done. Like internally, there was conversations about what is optics, is that people want, if we're going to continue to receive block rewards, people want that to go to a not-for-profit, not for a for-profit. I think there was a desire to clean the cap table.

And so Bootstrap was created. So Bootstrap is a 501(c)(3). And then, rather than try to convert ECC into a 501(c)(3), which would be very difficult, all of the people on the cap table donated their shares to Bootstrap, because they had effectively already been paid out by mining rewards, or founders' rewards, years back. So they all donated their shares, and so then ECC was under Bootstrap, and ECC was effectively a not-for-profit with a guaranteed funding stream. So, you know, Bootstrap's address and the Zcash Foundation's address were actually baked into the chain. So we were guaranteed to receive...

Insane.

Yeah, insane. So as a public good, as a public good, it just doesn't work, and it creates these crazy incentives. And we had these internal conversations, like, the incentives are all broken. It was like, no, no, this is fine, this is fine, they'll continue to fund us. And I was like, nothing freaking works.

Yeah.

How can you expect the community... The only reason that the community is funding us is because we wrote the code that put our address into the chain. We needed to change it, we need to break up that structure. There are some other kind of structural things, where our mobile team is completely separated from our core engineering team. So you can't like have, create these internal walls. We're way too... We needed to bring them together.

I feel like it's actually quite surprising that there was this idea of, oh yeah, it's baked in, like the revenue stream, it's fine to have it directly baked in through the chain, because it looks awfully a lot like a government, where no matter what you do, the taxes keep coming, the inflation keeps going. And I feel like that's sort of like exactly what Zcash is struggling against. It's, yeah, it's actually quite surprising that...

Yeah, I mean, there were some people basically were thinking, well, people have the option, is to either opt out or to fork the chain. And so there was a fork.

So I feel like the fork excuse is used too often. It's like, oh, if you disagree, you can just fork. But like, no, like you still need to be able to like kind of like counter and like fight, and like it's...

Yeah, it's the final governance decision. It says, when everything else is broken, it's last...

Yeah, it's last resort.

Or if somebody just has a completely different vision of what they want to do. Like they want to add some kind of capability or something, because they think, and the rest of the community is not on board. I think there was enough kind of discord within the community and saying, like, look, like we need to get rid of this whole direct dev fund model.

Yeah.

And I was one of those people that were just like, the incentives are all broken, and what it does is the dev fund incentivizes us to try to continue to get the dev fund.

Yes.

It doesn't incentivize us to actually build better.

Yes.

And so we needed to shift so that we could build better.

So this directly leads us then to the transition to Zodl, which then basically transitions ECC back from a non-profit now to a for-profit. What was the reasoning there? Was it again like better incentives?

Yeah, it was better incentives. So we, through that, you know, when the price is in the doldrums, we were no longer... So what I did was refuse to take any further dev funding. So if you bake this in for the Foundation, or the community says we're going to do it, we're just not going to take the money. And so we need to figure out how to be self-sustainable by delivering products that people actually want to use.

Yeah.

And not be relying on this kind of effective taxation. And so, but by doing so, you know, paradoxically, I'm saying I'm cutting our revenue, so...

Yes.

And I don't know where our revenue is going to come from.

Yes, yeah.

And so it was a very risky move, and it hurt us for some time, right? So we used the funding that we had. We were about 30 to 50 percent understaffed. So we were trying to grow out of it with the release of Zashi in early 2024, and we're starting to see good progress there.

But I had this conversation with Balaji in Singapore late that year, late 2025. Balaji asked, he said, like, this is one of the most important projects in the world, not just for crypto, cryptocurrencies, but for mankind. Are you funded well enough? We need to get really big, fast.

Yeah.

So that it's too hard to kill.

Yeah.

And Peter Van Valkenburgh had talked about something similar down at Devcon. Not specific to Zcash, but to Tornado, he's talking about Tornado Cash. And then if you're too small, the government will go after you, and they'll try to make an example of you, and there'll be a chilling effect. And that's exactly what happened with a lot of privacy projects. That's what we saw with THORChain, like backing out and saying, like, no way.

And so we have to be too big to kill. And are you positioned, his question is, are you positioned to be too big to kill, effectively? I said no, we're building as fast as we can.

Yeah.

We'll get there. He's like, well, I know how to raise money, let's raise money. And so we started down that path of saying we need to raise money. But in order to raise money, we really needed to be a for-profit entity. And a16z had put out a paper, talked about how foundations are dead. Some people disagree or agree with that, but I believe in market alignment and market incentives. And so ultimately getting now Zodl to a place where it's up to the market as to whether or not we succeed or fail, I think it's much healthier.

This episode is sponsored by Cypherpunk. Cypherpunk is the first public company entirely built around privacy, and they are hardcore believers in Zcash. And they aren't just holding Zcash, they are actively accelerating it, investing in, acquiring, and building a constellation of wallets, tools, companies around ZEC that turns private money into something people actually use. If you care about where the Zcash ecosystem goes next, Cypherpunk is where it's at. Follow along at cypherpunk.com. I repeat, cypherpunk.com. Back to the video.

It aligns the incentives, and I think right now Zodl is really in a position to be able to finally ship. I mean, you guys raised a really great round with a lot of great investors, including people that I didn't expect would be in Zcash, like David Friedberg.

Yes.

Very, like, oh, okay, nice.

Yeah, we have him on.

Speaking of Zodl, what are your new plans then? Because I remember seeing, I think back in 2024, you had released sort of like a roadmap of stuff you had planned for Zashi back in the day, including like a vault feature and like a vault app, and, you know, there were all these things that were plans. Is that still in the works? Like what can we expect from Zodl coming up in the future?

Yeah, so I'll start big, and I can go to some more granular things. Some of it we're going to talk about this week.

Let's go.

Yeah, and so people may be hearing some pieces of it for the first time this week as we get together. But fundamentally, I believe we're in this place... We're in Prague. There was this thing that happened here called the Velvet Revolution, under communism, right, as the wall was coming down and everything was breaking apart. And the communistic system was very controlling, right? And there was a group of people, Benda, Václav Havel, some musicians, some other people, that kind of formulated this idea that we can't actually change that system from within that system, under that system's rules.

Yeah.

That we have to fundamentally create a parallel society.

Yeah, it's not unlike Balaji's network state.

Yeah. And we will have our own art, we'll have our own music.

Yeah.

We'll have our own writing, we'll have our own money, and we'll transact, and we'll operate as a society in parallel with the existing society. We don't have to move. And so the parallel polis, that idea was created right here. And I learned about that actually in my 20s, because I would come out here during the summers and teach English, and the students would tell me about the history of the country. And it's a very beautiful idea.

And likewise with our traditional financial system, I don't think you can change that from within. In our current governmental systems, you can't change that from within. It's too hard, it will take a long time. Even if you could do it, it would take a long time, but there's too many entrenched powers. So what do we have to do? We have to create a parallel society, a parallel financial system.

And so what we're looking at is, like, what do we need to create a parallel financial system? What are all of the pieces that need to be there, so that you can do that without trust, without having to trust an intermediary? So what does it mean, like, not to have a bank? Yeah, we have a bank today, we KYC, AML, we have all this stuff, there's all these rules in place. Let's not try to be a bank. What is it that we really need, from first principles, for a new financial system? And there's a whole bunch of things that aren't there yet.

So we have a need to be able to save and store our wealth, to be able to recover it, or have family members recover it if we were to pass away, or if we were to kind of lose our phone or something like that. This kind of whole notion of a seed phrase, that we have to either commit to memory or write down on a scrap of paper, or put it into metal and bury it in concrete in our backyard or something like that, is very antiquated and not modern. And so we need those kinds of solutions. We need that full stack so that we can build this alternative financial system.

So anywhere there's gaps, that's what we're focused on building, and removing all of the friction points. Because things like a seed phrase is a friction point. I have to think about it, like, what does this mean? It makes me very nervous, I'm scared, what happens if I, you know, lose my phone or something like that. So those are the problems that we need to solve. There's other things that are more mundane, like sync time. Like, I don't want to open my wallet and sit there and wait for it to sync with the chain for a minute while I'm standing in line to, you know...

Yeah, pay a shop.

So that's something we've actually fixed. We haven't rolled out yet.

Let's go.

But there's things like that. That's what we're working...

I feel like the seed phrase thing is, it's sort of at the same time very, very powerful, because technically you could remember, like memorize your seed phrase and literally have unseizable money. Like literally no one, I mean, unless we start to, we recently invent like some brain-scanning technology, you literally could not take it out of your head. But at the same time, it's such a killer in terms of user experience. Like the vast majority of people lose that seed phrase, will store it in the cloud.

I mean, I've been onboarding some friends to Zcash recently who are not, you know, into crypto, and you actually do realize how terrible it is for them to have to figure out how to, you know, store the seed phrase and what... And like, it's so... If anyone sees it, you lose your funds. We really ought to get past that, especially in the day of, like, passkeys and all these new technologies that we now have.

Yeah, like, I've been giving out Zcash to friends and family for many years, and the majority have lost it.

Yeah.

And that includes my kids, like paying my kids allowances or whatever in Zcash. So many wallets were lost.

Yes.

Like, I started saying, okay, I'm gonna hold your seed phrase for you.

Yeah, which is insane.

Which is insane, right? If my teenagers can't figure it out...

Yeah.

Or it's just like there's too much friction with it, and they're just lazy.

Yeah.

And then it's like, oh my gosh, that like $20 worth of Zcash that you gave me is now worth four or five hundred dollars. Like, I'm trying to get it, I can't, you know.

Yeah.

That doesn't work for an alternative financial system.

Yeah, it's really just like recreating all the financial system in parallel, in a way. So I guess logically this would lead you to think there's a mobile wallet. Eventually, I'm guessing that there will be a desktop wallet. I'm guessing there will probably also something being with FROST, like some multi-signature type of thing for like whales. Is that where things are going?

Yeah, yeah. We already have an internal beta desktop wallet for macOS that's already built, just not released. In fact, I think it just got approved by the App Store.

Nice.

Maybe within the last 24 hours. So we'll have those kinds of capabilities, and then we'll be able to add kind of additional richness on top of the desktop product. There's some challenges with desktop. It's typically less secure than mobile.

Yeah.

There's questions about key storage, you know, what can be captured. One of the things that I love about this team is we're so close to the protocol, and like we've been working on security things for such a long time. The way we think about edge cases, the way that the engineering team thinks about edge cases, like, absolutely world-class, amazing.

And so you say, okay, we can, like, somebody can go and they can vibe code up a wallet or stuff like that, and then there's decisions they make about, like, how the key material is stored. What if they're rotating t-addresses? Like, is there linkability between those t-addresses? And they don't necessarily think about those things. And so it takes us a little bit longer, I think, in some cases, for some of the engineering, in order to ensure that we have it right.

And then there's always trade-offs with everything.

Yeah.

But that we're thinking about the trade-offs well, that the user is well informed, they're not making an assumption about privacy when it's actually not true, when it can expose them. And so then we take that, we put that in the right form factor where people want to use, like a desktop or mobile or whatever, hardware devices. There's questions about infrastructure and who's running the infrastructure. What can the people that are running the infrastructure, like client services in the future, if there's PIR, private information retrieval services, if there's oblivious syncing services with Tachyon coming, like, what does that all mean in terms of who's running those services and what can be seen?

And then there's the features that people need. So some of those things are cryptographic primitives, when we have things like multisig or threshold sigs. But it also might include things like time locks. Or if you think about, like, how you interact with a traditional bank account or something like that, you may limit the amount that can be transferred at any given time. So maybe you have a limit today on your wire transfers, or you have a limit on, you know, how much money can be moved over ACH, for, you know, per 24 hours.

Well, users can kind of set that up themselves as well, in a decentralized fashion, if we build the right primitive, such that I can say, okay, I'm going to have this wallet, and I'm not comfortable moving more than X amount of Zcash out per day. And so I'm going to kind of lock that in, and then I can have these kind of, you know, safeguards in place.

Yeah. How do you view, like, the evolution of Bitcoin compared to Zcash right now, and in the past, I guess, few months and years?

Yeah, both of those things are true.

Let's go.

Bitcoin has failed and has been captured, and Zcash is thriving. No, Bitcoin is just not usable as digital electronic cash. Like, it's not. So you can just say, like, okay, this evolved into something else, and now it's like digital gold for TradFi, and that's okay. I don't think that's okay. I don't think that's what the world needs. It's fine, maybe the world wants that. That's not what I'm interested in.

But what you saw happen with Bitcoin is they tried to change the system from within the system, and the system is too powerful, and it captured it. So you have the BlackRocks of the world, you have the Michael Saylors of the world, financializing this asset within, and they're saying, like, we need these controls in order to manage the system, so please, government, step in, then provide us the right governance and regulations and things like that. And government says, oh, sure, like, we're totally happy to do this and put you in this little box. And that is what's happened with Bitcoin.

And so I think it's sad. I don't think it can be saved. I think it's too far gone. It is what it is at this point, which is a regulated digital financial asset within the traditional system. But I think we saw a lot of Bitcoiners, or I have personally seen a lot of Bitcoiners, who started to question whether or not this is the thing that they signed up for or got excited about. So they've either exited the system, or in a number of cases they've hedged, and they said, OK, I still believe in Bitcoin, but I'm going to take 10 percent of my holdings and I'm going to put it in Zcash as a hedge against Bitcoin. And some have completely flipped and are now Zcashers who have left Bitcoin.

I fully agree. How do you prevent that capture from those actors happening? The purpose of a decentralized financial system is that it's decentralized, so no one can block someone like Saylor or BlackRock or anyone else of starting those either DATs or whatever entities that are going to do that capture of the network. How do we ensure that that doesn't happen?

We have to keep building and not ossifying. There is engagement with regulators and government officials, and a recognition that doors may be open for a little while. A regime change happens within a given regulatory entity, those doors close. They may open back up. But if you kowtow to those interests, you will eventually lose. You will lose.

So we can't... We have to stay focused on this. We have to stay focused on this new system, allow people to opt in. If people opt in, we'll be successful. If we're not delivering something that people actually want, because they want to be under government control, then it's just going to be a little tribe over here on the side that's continuing to work. And I think that tribe will always continue to exist, but we have to make this more mainstream, too big to kill, without kind of focusing on it.

Like, the whole thing with Bitcoin for a long time was like, institutions are coming, institutions are coming. Everybody got excited. Like, Bitcoin's now on the CME, right? And so, yay, this is going to make the price of the coin go up.

Yeah.

And you want the price of the coin to go up, and that's very reflexive. Everything, from the size of the shielded pool to the price of the coin to market interest, that all stuff is very reflexive. But if you focus on just the price, and that's the only attribute of the thing, then ultimately you're going to be captured.

I feel like in a lot of ways we're sort of, like, at least right now, protected against that with Zcash, given there's also this huge focus on increasing the shielded pool, which I just don't see, like, a BlackRock or any, you know, any of those entities partaking in, growing the shielded pool, and, you know, going sort of, like, against the government's interests. The structure of Zcash, I feel like, prevents by default that capture, because those entities are just not going to partake in privacy. But I guess you could have said the same thing about Bitcoin in its early days as well, and they ended up partaking in it as well. Do you think that ETFs would be good for Zcash?

I don't care about them.

Yeah.

I think there could be some value in that. They create more capital, there's more capital inflow, so it helps with the moneyness, because you don't want massive price changes, and you need liquidity for, you know, large buyers and sellers. So there could be some advantages. But I think it's not what I'm interested in personally. I don't think a lot of Zcashers... It's not what they're interested in.

Like, somebody can go stuff their 401(k) so they get price exposure, but it's actually, that's working within the traditional financial system, and it's not actually building anything new or novel, or ultimately anything that really kind of benefits the world. And I think it's a net negative, in that that becomes the focus. Then the price becomes the focus: is my portfolio, my retirement portfolio, increasing over time? Rather than, are we actually driving and delivering a new system that is usable for people to protect themselves?

Regarding Bitcoin, what do you think is the biggest lie that the Bitcoin maximalists tell themselves?

Zcash doesn't matter, or Zcash is a shitcoin.

Yeah.

I don't know if that's the biggest lie, but that's the most irritating one, because there's a lack of intellectual honesty from many, where they see, you know, they see what is actually happening, and then they make up shit. They make up their own narrative about what they think is happening. And it's like, you know, there's these kind of ideas where we see it across society, not just within Bitcoiners, but you get into a tribe and you get so locked into a religion, and all evidence can point you to something else, and you stop thinking about first principles. You stop thinking about what's actually happening, because you're so married to this idea.

So there's people, they'll go on interviews, I've seen them on CoinDesk or other places, and they make these outrageous statements that are just not... And they're smart people.

Yeah.

Not rooted in any truth. It's just like they're so blind to what the actual truth is, because they're so locked in. They just don't have the, I don't know if it's a mental clarity, or, you know, they're able to kind of change their thinking.

I think because, I mean, you know, they're clearly, you know, all their bags are in Bitcoin, so I guess they're clearly incentivized to go promote it. There's the denial of the importance of privacy, which I think is, especially in this day and age with AI, how could you not recognize that privacy on Bitcoin right now is a huge issue? I think there's also quantum, which to me is just shocking, especially now with the US administration that accelerated the deadline to, I think it's 2031 now, from 2035 previously. And knowing that Bitcoin will take years to upgrade to post-quantum, once there is consensus on it, it feels irresponsible, frankly.

It is irresponsible. So post-quantum is great, that's a great example. There's different opinions on where we're going to see the first kind of demonstrable quantum computer.

Yeah.

And those seem to be inching forward, not away. So we had like 2035, then it became like 2031. Like, I've heard new estimates of 2028 could be where we see the first... I mean, no one knows, but...

Yeah, it's like, start waiting till we have Q-Day.

And so you have to be prepared for that outcome, even if you don't believe that. You say, oh, it's gonna be 10 years off. I've heard the estimates for Bitcoin, like, to get a change in, to get a whatever, it's probably at least five years. If you believe that that is a possibility, to your point, it's totally irresponsible to say, oh, it's like, I don't, because I don't think so, I have no knowledge, but I don't think so, then therefore we won't do anything. Ridiculous.

And the privacy is the other. Yeah, it's another one, as you mentioned, where, and that's been out there for a long time, and it kind of varies from, well, it's verifiability that is like the key attribute. And that's the key attribute because it's the key attribute for number go up. And so then that becomes more important than privacy. Privacy is absolutely, absolutely necessary for a crypto that can't be captured, that can't be censored. Then that disregard...

And then there's others that will say, okay, we could have privacy if we want it, we're just gonna, like, add a sidechain, we'll add it later. That was the original thing with Zcash, right? Is the Bitcoin Core devs said, well, we'll add it later, if Zcash technology starts to look good and usable. And it did, but they're like, no, no, no, we're too busy trying to work within the traditional financial system, and they don't want that. So...

Yeah. This episode is brought to you by Cypherpunk. Surveillance is now one API call away, and your data has never been more valuable. Cypherpunk is the public company backing Zcash and building up the Zcash ecosystem to make financial privacy default. Learn more about Cypherpunk at cypherpunk.com. Back to the episode.

I've seen, like, a tweet from Peter Todd, who is a real smart guy. Like, he participated in the, I'm understanding he's participated in the Zcash ceremony, brilliant developer, I'm sure, who basically was stating, oh, because of the, you know, I think it was reacting to the soundness bug that happened, like, you know, a few weeks ago. It was reacting, well, this is why Bitcoin will never have privacy, you know, there are all these risks.

And it's like, this was like a patchable bug, it was patched. So what he's saying is, okay, so we're going to let Bitcoin become a surveillance chain, because this is literally what it will lead to with advanced AI. Once you can, I mean, you can already, arguably, with Chainalysis and other companies, track all the transactions. But going to let it become a surveillance chain all because of one or two patchable bugs that could have been, you know, could have been found in production. I feel like that's just, again, it's irresponsible, it feels like.

Well, let's be clear. I mean, Bitcoin had inflation bugs.

Yes.

So it's ridiculous.

Exactly.

And then took action to be able to kind of address those things. But it depends on what you're optimizing for and what your incentives are, which goes back to kind of this conversation about incentives. If you're maximizing or optimizing for incentives for price, if that's the only thing that matters, that's kind of what his argument rests on. If you're optimizing for usable money that protects people's security and safety and all of those things, then you have to optimize for something else.

And there's trade-offs with all those things. Now, we can get better and better with soundness and ensuring that we have it. And that work is happening now. It's happening with Ironwood. It'll happen further with formal verification and things that we're doing. But this should be the goal, is to optimize for this thing and not optimize for just the price going up.

A lot of people have positioned Zcash sort of like as an insurance for Bitcoin. Do you think Zcash will at some point overtake Bitcoin, or do you think it will stay sort of like the silver to Bitcoin's gold, essentially?

Yeah, it's not the silver to Bitcoin's gold. It's the alternative to Bitcoin. So it just ultimately depends on what people want in the world. If they want to live within the traditional financial system, under the constraints of, you know, these world leaders, these central banks, then they will opt into Bitcoin. If they want an alternative where they're free, then they will opt into Zcash as an alternative to that, this kind of new financial system. Ultimately, I think people want to be free. So that answers your question.

What does success look like for Zcash in 5–10 years?

Zcash in the hands of billions of people. That's the goal. If it's just in the hands of 30, 50 people, like, it doesn't matter. It's fine for purpose that way, but yeah, the goal is mass adoption.

Do you think more of Zcash as a store of value or as a currency?

I don't care about that either. Like, I know people like to have this debate.

Yeah.

And create this dichotomy. But, like, even thinking about it in terms of the traditional sense, is the US dollar a store of value, or is it a medium of exchange, or is it a unit of account? It's all of those things, right? I've got some savings, I want to put it into a bank account, I want to earn some yield on it. Maybe it's not that much yield compared to other securities or other assets that are higher risk, but it's a lower-risk store of value, because I'm betting on the US, you know, the US dollar, to maintain some stable rate. Plus I get my, you know, maybe three and a half percent on a high-yield account.

But then, so I store it in, like, a battery until I want to move it, until I want to go buy a car, or pay for my kids' college or something like that. And then I remove it as a store of value and it becomes a medium of exchange. It changes the dynamics of it. So I see Zcash in the same way. I don't see it any different.

Regarding the shielded transactions, I believe you did a podcast, I think it was a year or two ago, with Origin, as well as Zooko was there, I think, where I think Zooko was thinking sort of like the other side, and you were sort of like defending the position that we should basically just remove the transparent pool, or, like, you know, long-term downsize it and eventually kill it in favor of just shielded only. Is that something you still believe? The primary argument for the transparent pool would be, well, it helps with exchanges. It helps, I guess, reassure a bit the regulators. It can help with compliance, although we do have, like, viewing keys and stuff.

Yeah, I mean, list who you mentioned: exchanges, which are now banks, regulated banks, and regulators. And so again, like, who are you optimizing for? Yeah, in order for this to work at mass scale, in order to protect everybody's security... Anytime you do any kind of transaction, there's leaky information, right? There always is. When you move money, there's always something that leaks. Doesn't matter how private, even a US dollar, right? I hand you a $20 bill, maybe there's a camera in the room, all this kind of stuff. But you want to remove as much leakage as possible. The more you have transparent addresses, the more information leaks.

So how do we remove all of those leakages, or as much of those leakages as we can, so that people don't have the mental load? And that's like, if you think, okay, I want to spend this, but am I spending it privately? What am I revealing? Who am I revealing to the world?

Yeah.

And you've got to do that on every transaction, right? The mental load associated with that, like, it just doesn't work. So, like, remove that friction of what has to go on. And people don't even understand, right? They don't understand, in many cases.

Like, I had a Zcasher who was a whale that I was talking to, and I was asking him what wallet he was on. I won't name the wallet, but he was using a wallet, and all of his Zcash was transparent. But he thought it was all shielded. He's like, I'm in Zcash for the privacy. I was like, what wallet are you using? Do you realize that none of your Zcash is private? And he's like, what?

Yeah.

Because the brand is privacy.

Yeah.

But he didn't understand, even though he had made significant investment into it...

Yeah.

That he was transparent.

Yeah.

What was leaking. So we have to close those leakages, remove that mental friction, so that we don't have to do it through education. If we have to do it through education, we've freaking failed.

Yeah.

It just has to work, and it has to be usable. So I think t-addresses, ultimately, they were a nice tool for onboarding the world, with, like, exchanges and stuff, because, like, Sprout, again, an exchange couldn't support shielded transactions out of the gate. But even those exchanges today, there is no reason, there is no compliance reason that they can't support the transactions. So even if you buy into that system, which I don't, and you buy into the KYC system, which I don't, they KYC all their customers.

Yeah.

So they know who the customers are.

Yeah.

And right now, most exchanges in the world, with the exception of Binance, you can send from a shielded address to a transparent address on the exchange, and the exchange can't see the source of funds. You have to ask. They do due diligence, and they say, this huge chunk of money came in, where did it come from? So they follow the due diligence process under their regulatory regime. Likewise, if you send out from an exchange, there's no reason, there's no regulatory reason that they can't send to a shielded address. It's all technical.

Yeah.

So there's one exchange, Gemini, that made the decision that we're going to support shielded addresses. It took engineering work. They had to make an investment. They had to modify some curves on their HSMs in order to make this stuff work. But they did it for the benefit of the users, and it actually provides more security for the users than any other exchange. Because any other exchange, you're sending from Binance, for example...

Yeah.

To a transparent address, it's leaking all kinds of information. Gemini can still comply under NYDFS, the most restrictive financial regulator in the world.

Yeah.

Can still deploy, you know, can use due diligence appropriately. And so the reasons behind it... Like, I worked with Coinbase, and Coinbase was great, and it was great for accessibility, so more people could get access. There were no DEXs or anything available for Zcash at the time. And they weren't going to support shielded addresses, but they decided just to allow for the one way and not the other way. Why? They said, because until the market tells us that we need to support it, we're not going to invest the engineering resources, because we're going to invest engineering resources in the coins, adding more coins that the rest of the world wants, in order to increase their revenue, and not make the investment. So I think as Zcash gets bigger, more people start to demand it. Even those regulated entities, who can still comply with the regulators, will be able to support shielded Zcash.

I think one of the core arguments, on top of what you said about all the friction it causes and just working within the constraints of the traditional financial system, is also quantum, which is that the shielded pool is just objectively more secure, given public keys are not exposed. And so if only for that, it would make sense to transition fully to a shielded pool eventually. This leads me to, like, quantum recoverability, which should be added to Zcash soon. Is that something that will be available, like, in this Zodl app? Like, how will that UX work of recovering your funds in case a quantum attack happens?

Yeah, well, first, the pool itself, the Ironwood pool itself, will be quantum recoverable. So in the case, in the advent that a quantum adversary shows up, Q-Day happens, then funds can easily move to another pool without exposing users to that risk. But a lot more work needs to happen. There's still elliptic curve cryptography, which is susceptible to quantum attack, in Zcash. And so that still needs to be resolved. But it puts us in a place where we can move quickly. We know how to make it post-quantum.

There is conversations that we'll have this week with all the developers here in Prague, where we'll talk about what that roadmap looks like, how that intersects with Tachyon. There's some decisions and prioritization that needs to be made. But I think we're in the position that if we want it, we can have it within the next one to two years. It just depends on how we want to prioritize things and accelerate things. So there's a clear roadmap there. We know how to do it. It will be in there as soon as it's needed. And in the interim, it's quantum recoverable. What the user experience looks like, I think, is still to be determined, and will be determined based on where things kind of roll out on the roadmap.

Do you think it's fair to say that Zcash is, or is becoming at least, the safest, most secure place to store your funds right now in crypto?

Yes, full stop. We're leading the way with quantum. Now with formal verification, it's getting even better. Privacy, generally speaking, is already also just a security benefit in and of itself.

What is your timeline for when I can literally just tap and pay with, like, maybe a Zodl card or something at a store, and, like, just instant payments? Right now, yeah, you could technically pay. I've never actually tried the Flexa integration. I really should. I don't know how quick it would be, but with the block times and stuff, and with all that, I'm guessing it would still take, like, some time for the transaction to go through. So the UX is probably not there yet, I'm assuming. Yeah, what is your timeline for that?

Yeah, as soon as possible. Again, we'll talk about that a little bit this week. We need to do some R&D. Part of that is with a vendor. One of the nice things with a vendor, they need to accept whatever they're going to accept. So the timeline for which each vendor around the world accepts shielded ZEC, that's a much longer timeline. But we don't have to wait for that.

So one of the things that Flexa did, which is great, is they integrate with legacy point-of-sale systems, so that the stores don't have to change too much in terms of their internal technology. So I can go to Chipotle or Barnes & Noble or Ulta Beauty or wherever, and I can pay, and it's instant, or very near instant, right? So you've got a line of people behind you, you know, you don't want to sit there forever waiting for a confirmation to confirm. And so what happens is then tokens are collateralized on the back end in order to allow that transaction to be effected, even if the confirmation time for Zcash is slower than that particular instant.

And likewise, like what we do with swaps, we have something called CrossPay within Zodl that allows you to pay, like in USDC, for example, or Tether, whatever, maybe whatever new stablecoin this whole group is coming up with, whatever coin that the vendor is comfortable with. We can pay, and we can pay near instantly with CrossPay. Currently, that's leveraging NEAR Intents. And again, there's market makers that are effectively collateralizing. So we can kind of speed up that whole process and allow those transactions to be effected quickly. We want to minimize that. It needs to be as fast and as scalable as the traditional financial system, as the Visas, Mastercards of the world. So we've got work to do to close that gap, but I think we have a roadmap to do that.

As soon as they adopt stablecoins, because with CrossPay you can effectively just convert any Zcash to any other currency that they accept. So whatever crypto that they accept, as long as they accept one, Zcash will just work with it, which is the power of CrossPay.

Yeah, and it's kind of the Trojan horse, in that we can say, okay, we're not trying to conform to the traditional financial system. Yeah, and like, because we got asked, for example, we got asked to help create a CBDC, and we said no. But all of these other groups do, because they see stablecoins are working.

Yeah.

And people are buying into them. They're effectively a CBDC, they're just an outsourced CBDC. It's horrible. But if somebody wants to accept them, then fine. You can stay private, and we're gonna follow. They're gonna create this massive wave, and we're just gonna surf it.

Yeah.

And then people can pay in whatever that vendor wants to take, and stay safe and secure and private.

Yeah, perfect. Well, thanks, Josh, and yeah, let's do this again soon.

All right, awesome. Thank you.

Thank you.
