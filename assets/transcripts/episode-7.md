What is the most misunderstood idea in physics?

This was proof that nature is non-local. If you ask physicists, what's the lesson of the 2022 Nobel Prize? "Oh, it's because of the non-locality of physics."

Is there faster than light communication?

Whenever we have evidence of what looks like magic, like here, violating the Bell inequality with such a big winning rate, is evidence that there's something we have not yet understood. Everett was in the business of applying physics to the whole thing. Trying to build with classical Lego blocks quantum mechanics, this is promised to fail.

Yes, yes. What's the alternative?

Here we go. I hope every competent physicist would be extremely critical of the account I've given.

Hi Charles.

Hi Maxime, thank you for the invitation.

What is the most misunderstood idea in physics?

Well, I think that since Bell's theorem and the experiments that vindicated the violation of Bell inequalities, especially with the hype that all of this research program got with the 2022 Nobel Prize in Physics awarded to Aspect, Clauser and Zeilinger for establishing that nature does indeed violate Bell inequalities, I think that the most misunderstood idea in physics, or at least in the physics community around which I revolve, is that this was proof that nature is non-local.

There's a lot of things to unpack, and I guess it's setting up the topic for a conversation here. We would need to unpack the hypotheses of Bell's theorem, what it means to violate a Bell inequality, what happens when we really see that indeed photons can violate Bell inequalities, or other quantum systems when they're entangled, and why do people conclude that, "Oh, this is therefore the only viable explanation is that we have non-local action," or that the world is non-local, or however this could be put.

The explanation that remains fully local is basically the one that trusts quantum theory in the first place. So I've launched a few cues: wherever you want to rebound, we can start from the beginning, it's up to you. But I would say that the most misconceived idea is this idea that physics is non-local because of violation of Bell inequalities.

Who are you as a physicist? What's your profile?

Right. I'm a postdoctoral researcher at École de technologie supérieure, so I'm doing a postdoc with Claude Crépeau, who's my advisor and friend. It's funny because I keep following cryptographers. I was working with a cryptographer, Stefan Wolf, in Lugano before, and my PhD advisor is Gilles Brassard, who's well known for his work in quantum information theory and quantum cryptography, but he was also by training a cryptographer. I'm fascinated by cryptography. There's a lot of things to unpack here.

But my heart in research has always been in the foundations of physics. And it turns out that the great cryptographers I had the chance to overlap with were always giving me not only freedom to explore these ideas, but also plenty of very interesting inputs. So that's my background, but I'd say I'm a theoretical physicist and also a theoretical computer scientist, mostly interested in fundamental aspects of physics and information theory.

What are Bell inequalities? I mean, they're named after Bell, a well-known physicist, but what are the Bell inequalities?

Bell's theorem was put forth in 1964. For this audience, right, I believe this audience is more generally interested in physics without being an expert. I would not recommend delving into Bell's paper. It contains integrals, and also the conclusion is not extremely sharp. You see the inequality and you see the fact that quantum theory predicts the violation of these inequalities. But nowadays we have easier versions. Notably, one of them is due to CHSH, and it's generally presented as a game. So if you want, I can take you on board with what is the CHSH game, how is it played, and how do we get this surprising news that quantum mechanics permits to violate a Bell inequality.

I'm drawing my explanations that I did in this book. So this chapter in Bold Conjectures, Volume Two. It's a great volume put forth by the Conjecture Institute, edited by Logan Chipkin, and I contributed to a chapter. It's dedicated to a wide audience. So it's funny because I'm going to follow you through this argument here, and I believe it's a crisp way and vivid way to explain it.

So the CHSH game is played between two players cooperatively. Let's name our players Alice and Bob, and they're initially co-located. They know the rules of the game, and they can initially agree on a strategy to beat the game, to try to achieve the highest possible score. Agree on a strategy, it means they could exchange pieces of information if they want. They can agree on some fixed instruction sets. They can also agree that the instruction sets will change at some time. They could do whatever they want to build a strategy to beat the game.

However, when they'll be playing, they'll be separated. I like to think of Alice is going to Mercury and Bob is going to a moon around Jupiter. So that the isolation is an isolation in space, to make sure that they cannot communicate. They can't cheat, they can't exchange messages while playing the game.

The game, they will receive a list of questions, similar to a quiz that one might receive, with a list of, say, 40 questions. And each question is a binary question, so it's kind of helpful to think of the question as being either zero or one. And then they must reply to each question an answer which is also binary, so zero or one.

And I haven't yet told you the rules of the game. So what are the rules of the game? They're as follows. If one of the questions in the question pair contains a zero, Alice and Bob must try to produce the same answer. So, for example, you might be Alice, I'm Bob. You receive a 0, I receive a 1 on, say, the question round number 17. We have to try to output the same answer.

Yes.

And so, for example, if you output 0 and I output 0, we would mark a point for that round. However, when it's not the case that one of the two questions contains a zero, then Alice and Bob must try to output different bits.

So just to recap so far, we have two people. One of them is on some far away planet, the other on some other far away planet, and depending on the number in the question, they need to output the same answer or different answer.

Correct. So for a given round, say the first question, if the question pair contains a zero, Alice and Bob must try to produce the same answer. 11 would be valid, 00 would be valid, but 01 would not be valid if they produce 01 and they did indeed contain a 0 as a question. However, if they both receive a 1, then they must try to produce different answers.

If we only play the CHSH game once, we don't learn much, but I like to think of this as they receive 40 questions, and so does Bob, and these questions, you can think of them as being drawn at random, or produced by a process that Alice and Bob did not have access to when they were initially co-located. When they initially prepare their strategies, when they're together, they don't know which questions they'll be asked, and that's part of the difficulty.

Okay.

And I think it's good now to pause to really absorb the game, to put ourselves back in Alice's and Bob's shoes. While they know the rules of the game and they're initially co-located, what would be, you think, some strategy they could come up with?

They could technically have an agreement beforehand, right, before heading to the planet. So they want to maximize their score, right? The rule is such that if one of the question pair contains a zero, they must output the same bit. And note that on average three quarters of the question pairs will contain a zero. It's kind of helpful to think of the questions that they'll receive as being sampled randomly and identically distributed, but note it will not be required for carrying out the experiment.

Yeah. And it's three-fourths because it's either 00, 10, 01 or 11.

Correct, exactly. There's a lot of ways in which a question pair can contain a zero.

Yes.

You named the three ways. So only if the question pair is 11, then they need to output different bits.

Yes.

So you might think, let's always output zero.

Yes.

That's a common strategy that makes a lot of sense. Alice and Bob, they will leave the planet Earth toward their station knowing that whenever the question contains a zero, so either 00, 01, or 10, they'll mark a point on that round. But whenever the question pair will be 11, since they both produce zeros, and they need to produce different outputs, they will not have a point on those rounds. And they should expect roughly a winning rate of 30 out of 40. And it's actually easy to prove that that's the case for the always output 00 strategy, if we then assume again a distribution on the questions, which is very helpful to think this way.

But we're not done. We only proved that that strategy achieves three quarter winning rate. Obviously, they could also decide to output one all the time, and that doesn't change anything. They'll always mark a point whenever the question contains a zero, and they'll not mark a point when the question pair is 11.

But we can start formalizing this a little bit, and one first step that is kind of helpful in the formalization is to study these deterministic strategies. When Alice receives her question, her output is going to be a function of the question. The deterministic strategy that we established, where the output function was the constant zero: Alice, whichever input she received, she outputs zero. That's a function, always zero. But she could have said, "You know what, I'm going to copy the question. If the question is zero, my answer is zero."

Yeah.

"If the question is one, my answer is one."

Yeah.

Or another deterministic function would be, "I'm going to flip the question. If the question is zero, I'll output one. If the question is one, I'll output zero." Or another deterministic function is the constant one: regardless of the question, I'm going to output one. And you're going to go, "Well, Charles, are you going forever enumerating the functions that Alice could possibly think of?" Well, no, I'm done. There aren't that many. Because it's a function of one bit, the domain is one bit, so it has two possibilities, into one bit, it has two possibilities of outcomes. You can list them all, and there's only four such functions.

Yes.

And we've already listed them all. And therefore the local deterministic functions for Alice, because Alice's response function, she doesn't know about Bob's input, so her function cannot depend on Bob's input.

Yeah.

Right? It's solely on her input.

On her input, yeah.

There's only four possible local functions for Alice and only four possible local functions for Bob. And therefore, there are 16 common strategies. And the both players always output zero strategy was one such strategy among the 16 joint strategies. But then we can start thinking, "Oh, what if Alice always outputs zero and Bob copies the question?" And then we can start mismatching these, right? We vary the four possibilities for Alice's deterministic functions, same for Bob. It's not so much work, but with a little work we realize that eight such joint strategies give you a winning rate of three quarters. You're always stuck on some question pair.

Yes.

And eight strategies are way worse. They give you a winning rate of one quarter.

Yes.

So suppose you're smart, you're Alice and Bob, you kind of realize that, okay, so the always zero strategy was pretty good. We have a winning rate of three quarters.

To give you an intuition of how this works, the thing that's changing, if we change to another strategy that has a winning rate of three quarters, Alice and Bob will get the wrong answer on a different input. For example, you could secure the fact that they saved the 1-1 scenario. Whenever the question is 1-1, they output in such a way that it will give them the right answer. But then you can follow the chain of logic, which guarantees that they will get stuck on one question. Basically, in any scenario, as we've seen so far at least, you cannot get over three quarters of the answers right.

So far, the scenarios we've investigated are those where Alice has a deterministic strategy. I call that a deterministic strategy, meaning that her answer is a function of her question.

Yeah, it's fixed based on the input that she gets.

Right. I basically gave an argument. You exhaustively search through these 16 deterministic strategies, and you make the table, and look for yourself: eight of them have a winning rate of three quarters, eight of them have a winning rate of one quarter.

And now, one could say, "But that's not the most general thing Alice and Bob could do. They could answer at whim, just for fun." But know that if they start doing that, what they'll be doing is mixing randomly some of the response functions that are already encompassed in those deterministic strategies, right? For example, if you say she's just tossing a coin, and if it's heads, she's going to answer zero, if it's tails, she's going to answer one, regardless of the question. Well, that's an example of just mixing two of the deterministic strategies we've showed, the constant zero and the constant one, with randomness. But if you start mixing randomly strategies that are bounded by a winning rate of three quarters...

Yes, it's not going to help. You're still stuck in this ceiling of three quarters. You can't do better than the deterministic approach.

Okay. So there's always a caveat where you could get lucky.

Yeah.

And your coin flip was aligned with the question in such a way that you replied good answers for the first few trials, but eventually you'll get stuck.

Yeah, statistically, with a large enough sample.

Yeah, exactly. You increase the sample size.

Answering randomly.

And then you go, "Oh, but there's other things they could do." For example, I said there's a list of 40 questions, I guess it's 40 question rounds. Maybe they decide that on the even questions they do the always zero strategy.

Right.

And on the odd questions, they do something else.

Yeah.

But that would yet be just another way of mixing strategies that are capped at a three-quarter winning rate. And so they cannot expect to beat the three-quarter ceiling.

So we're walking towards Bell's theorem. We actually have one half of Bell's theorem at the moment, or the CHSH version of Bell's theorem. This half is the ceiling, the Bell inequality. The three-quarter bound that we've just been discussing is called a Bell inequality. What it means is that all of these ways we can conceive of, of Alice discussing with Bob, exchanging classical pieces of information, exchanging instruction sets, like, "Oh, on even questions, do that, and if the question is..., do that," all of these ways of trying to beat the CHSH game are bounded statistically by three quarters. So that's the three quarters, the Bell inequality.

And the other half of Bell's theorem is, I don't want to spoil what it is, I'll let you jump inside my story to make you think of the wonder of what it gives. Suppose you see Alice and Bob playing. They're discussing on Earth, and you see them exchange some stuff before they leave. Before Alice goes to Mercury, she carries some form of crystal, and Bob also carries a form of crystal when he's on Jupiter. You might think, okay, maybe they're superstitious and they think maybe this crystal might help them win the Bell test. And then they go back after the test and they score 34 out of 40. Not bad. Those crystals, maybe they got lucky, right?

So you go again and you say, "Okay, you know what, guys, we're going to play again. But since it seems like you have remarkable abilities to play the CHSH game, next time we play, it's not 40 rounds, it's going to be 40 billion."

Nice.

And then they exchange just more crystals, because they need one pair of crystals per question. So in that case, you see them exchanging 40 billion crystals, one crystal for Alice, one crystal for Bob, and the first crystal corresponds to the first crystal of Bob, and so on. They have 40 billion of them, but you don't understand. You don't know quantum mechanics. It's fine, play with crystals if you want.

And then they go to their station. And obviously the setup is such that when the question sheet is given, the time that they're allowed to answer the question is such that no signal from Alice can reach Bob's station in time. So five minutes, if they're really on Mercury and Jupiter, five minutes does the job. So they have five minutes to answer all the questions. Why? Because it's such that even if Alice, as soon as she gets her questions, wants to signal her questions to Bob, then...

It wouldn't arrive on time.

Yeah. Bob does not have enough time.

They will be declared as cheaters, or they...

Yes. We will squeeze them. That's important, obviously, because I didn't make that point, but you understand that if Alice and Bob are secretly allowed to communicate...

Yes.

Then of course they can win this CHSH game with a hundred percent.

That's why we isolate them. They're far away, you cannot communicate faster than light.

Correct. Alice could just signal all her questions and her answers, for example, to Bob, and then Bob has all the information to match the risk and make sure he writes the right answer depending on his question, to fulfill the game's criterion.

So they go with their 40 billion crystals, and they're separated across space, and they come back on Earth, and they secure not 34 out of 40, but they secure 30 billion-ish out of 40 billion. So chance is no longer a viable explanation. That is violating a Bell inequality, and that is why it's remarkable. I'm glad we're explaining this to people who are not trained in physics, because it's easy to explain, and it's easy to remark how remarkable that is. How on Earth do they do that, right?

Yes, or across Earth.

Yes, exactly. Across the solar system, do they do that? And those of us who are trained in quantum mechanics could look further: what do they do with their crystals? Do they just pray, or do they somehow relegate the question to the crystal? And indeed, that's what they do.

So if we look at how Alice and Bob achieved to win 34 billion out of 40 billion, which is roughly 85% winning rate, that's what they can achieve by exchanging crystals, we should look at what they do. Arthur C. Clarke once said that any sufficiently advanced technology is indistinguishable from magic.

Yes.

David Deutsch clarified that this is because there's no place for magic in a comprehensible universe.

Right.

Whenever we have evidence of what looks like magic, like here, violating the Bell inequality with such a big winning rate, is evidence that there's something we have not yet understood. And so here we are, I'll walk you through what they do.

Alice takes her question and basically relegates the question to the crystal. Inside the crystal, it could be an NV center, anything that basically acts as a quantum memory for a quantum system. And when Alice and Bob were initially co-located, they prepared systems in an entangled state. These entangled states are usually presented to people as a pair of systems that share a common wave function. There's one wave function for two particles. So they prepare these 40 billion pairs of particles this way.

And Alice relegates her question. So if the question is zero, what she does is that she measures her particle directly, her qubit. The particle only needs to encode a quantum bit. She measures it directly, and suppose I use the convention that the outcomes of qubits are either zero or one, and that's helpful because my game needs an answer which is a zero or a one. And so if the qubit answers zero, she just writes down zero on her sheet. She just has a link between the question she receives and the particle, and she looks at the particle's answer, she writes it down. If the question is one, she does not measure the particle directly. She rotates it a little bit, by 45 degrees, before measuring it, and she writes down the outcome of the measurement.

And Bob's strategy is very similar. If his question is zero, he rotates his particle by pi over eight, so 22.5 degrees, in the ket zero, ket one plane, whatever that means. It's just a transformation on his system that he does, given that the question is zero, and he replies whatever the qubit has replied. And if the question is one, then he rotates it minus pi over eight before measuring and writing down the outcome.

If we carry on the calculation, so, an entangled state. If the question pair is 00, Alice makes no rotation, Bob makes a rotation by 22.5 degrees, then they measure. We realize some statistics, and the statistics of the joint measurements will be such that they get 00 with probability 85 divided by two, 11 with probability 85 divided by two, I'm in percent, and therefore they win the CHSH game with probability 85 percent and lose on the remaining probability, 15 percent. So they get to a win rate that is strictly superior to the three-quarter win rate that we had previously, and they get to 85.

Correct. Which I guess leads to the question: is there faster than light communication?

It leads to that question, correct. I like that question. If we've determined that Alice and Bob could not break the three-quarter ceiling, how can particles do it?

Yes.

How do they work so that they could do this?

Yes.

And then a sub-question is, do they communicate faster than light secretly? Because we've already established that if they could communicate their questions, say, to their partners instantaneously, and maybe their answers, then they could organize. The first thing to remark is that it would be a strange conspiracy that they do that, but they just fulfill an 85 percent win rate. You would expect 100.

You could have, yeah, if they're communicating together.

Yeah. By the way, there's a nice theoretical idealization put forth in the '90s by Sandu Popescu and Daniel Rohrlich, which is called the Popescu-Rohrlich box, which is a non-existent, non-physical device. So it doesn't exist, but it's this thought experiment where, imagine a device that allows you to win the CHSH game 100% of the time. Also, that device will not allow communication. It looks like one explanation why they could win the CHSH game 100% of the time is communication, but to use this as a physical device to communicate, you need to turn this around and say, "Okay, what should I do to this PR box, Popescu-Rohrlich box..."

Yes.

"...in order to send a bit?" So communication would be, Bob chooses what bit he wants to input, and that is the answer of Alice's outcome. That would be an example of instantaneous communication. But the Popescu-Rohrlich box does not allow communication, even though it beats the CHSH inequality.

And so there's the entangled pairs. Entangled pairs, they do not permit instantaneous communication. So there's two aspects here. It's known for everybody who studied basic quantum mechanics, they can show the so-called non-signaling theorem, which means that whatever Alice does to her part of an entangled system, to her particle, there's nothing that will be observable on Bob's side after Alice's measurement or after Alice's operation. Nothing will be observable on Bob's side. So they cannot use that resource to communicate.

But what you alluded to is a different question: maybe how it works is still that they secretly communicate behind the scenes, and that would be a way to explain their remarkable 85% winning rate, but yet without giving us macroscopic users the ability to use these signaling abilities to communicate faster than light. Right. I think we can ponder here, because there's not just the faster than light communication program that is explicit when we study the CHSH game. So those who are vocal and say that, "Oh, the conclusion is that nature is non-local," what they end up doing is taking very seriously that the only way in which particles can really achieve an 85 percent winning rate, because we proved that Alice and Bob could not do better than 75, is because they're exchanging information faster than light.

Just to clarify, with local and non-local, what we mean is that there's no action at a distance, meaning that there's no faster than light communication.

The last part, meaning that there's no faster than light communication, is too strong to define locality. Locality concerns what's your story of physics, and it need not concern your ability to send signals faster than light, because everybody knows that according to quantum mechanics, as I said, it's impossible to send signals faster than light. But what's your story of physics matters. If your story of physics is that when we have entangled particles, when Alice measures her particle, there's a collapse of the wave function. The fact that it collapses Alice's system is annoying, but not as annoying as the fact that it also collapses Bob's system instantaneously, according to the Copenhagen interpretation. When there's a joint wave function for two systems, a collapse is a collapse. It doesn't care about these local structures. So if one really adopts the worldview of a collapse of the wave function, that worldview has a non-local element, in that when Alice measures, instantaneously Bob's system has collapsed to one thing. Something happens at a distance.

My guess is that the most vocal conclusions about how should we understand violation of Bell inequalities is these non-local headlines, probably because it's an obvious solution to how to beat the CHSH game that comes to mind, but also because collapse is very ingrained in the way we're teaching quantum mechanics. It's in every textbook. When there's a measurement, there's a collapse of the wave function, and then that collapse also affects entangled systems, and therefore it has an effect on remote systems. And so non-locality is ingrained in current textbooks via these collapse models. I wouldn't even dare to say models, because usually they take the textbook way of presenting collapses. It presents it, but it does not really try to study it.

Yes, it's just a tool, basically.

Yeah, exactly. So we don't exactly know if it's a rule of subjective betting, that we should do as if you're an observer and then you've collapsed the system, or you should take it seriously. Is it really a collapse happening in reality? And the literature ramifies. There's this most objectivist program which says, "Oh no, collapse is just a tool." But then obviously you run into these non-realist ontologies where a theory is just a tool for you, but what are you in physical reality? And there's also this realist collapse, objective collapse models, which are also presented. They bite the bullet on non-locality. They even declare it's physical. So at least they save realism, but they have to accommodate this non-locality.

Yes.

Let's not get there for now, 'cause I think we have something else to present. But I want to go back to the idea that because non-locality in collapse has been ingrained, I think this also contributes to the reason why, if you ask physicists, what's the lesson of the 2022 Nobel Prize? "Oh, it's because of the non-locality of physics."

Right.

This collapse in our textbook mechanism has influenced this meme, this idea. But I want to pause here because it's a good point to say that at this stage, when we study how on Earth Alice and Bob with their crystals manage to get 85% winning rate, this question also sets the table well to other rival explanations to collapse. One of them, which has acquired quite a bit of attention recently, is superdeterminism. Basically it leverages a true fact, but it leverages it in a way that becomes extremely annoying for a sound philosophy of physics.

So what is the true fact? The fact that when Alice and Bob are initially located on Earth, there's actually a process that's happening on Mercury to prepare the question sheet for Alice. This question sheet has not been created ex nihilo. It has been created by some physical process. And there's also, similarly, a physical process happening on Bob's moon of Jupiter. And then the point that the superdeterminists make is that, well, if you go sufficiently far back in time, all of these space-time points, so Alice and Bob initially sharing randomness or strategies, the preparation of Alice's question sheet, preparation of Bob's sheet, initially, if you go sufficiently back in time, they have a common space-time point. At least in principle, some mechanism sufficiently far in space-time in the past is responsible for three things: it's responsible for the questions that will be picked on Alice's side, the questions that will be picked on Bob's side, and the way Alice and Bob are organizing themselves in order to fulfill the game.

Completely goes against the notion of free will.

It goes against the notion of free will.

So we're all controlled by this deterministic process at the root of the universe, basically.

Yes, everything spans from that. But that's not the better argument, because also in a usually deterministic worldview, the question of free will still arises. We often hear that the uppercut for the superdeterministic program is the question of free will. And then you're like, well, the Schrödinger equation, or whatever is your worldview, is also incompatible with a true free will. So I don't think that pointing to free will solves the problem.

Think of it in a scientific way. It would be a conspiratorial worldview of the way systems and physics is organized. So before going into the microphysics of how this could operate physically, I think it's worth going back to what a superdeterministic universe would mean for Alice and Bob. When they're preparing their strategies, they already know the questions, or they know a variable which informs them of what the questions would be. And so that's why they can coordinate themselves in a way that they achieve a higher win rate, right? Because they know that question number seven will contain a zero, so on question number seven, "I'm going to output zero, you're going to output zero."

But why they wouldn't take it hundreds?

That's in fact one of the problems that the superdeterminist program faces, is that there's so many ways to vary their models.

Yeah.

And you could vary in so many ways that, how do you actually get to our physics?

Yes, that's one of the big problems.

Yeah. But one argument that I made in my book chapter here, which I like, is that it's not even worth going back backwards entire, like this variable, what would it be. What I like to think is, let's suppose we're making a deal that in 2027 we're going to do another Bell experiment, a CHSH test, with some particles that we're going to be preparing on the very same day, because we have to prepare their entanglement and so on. And let's post right now that the question sheet on Alice's side, therefore on Mercury, is going to be a question sheet made of 365 questions, zeros or ones, which correspond to the parity of the number of social media posts on each given day of 2022.

Okay.

So in 2022, on January 1st, there was a big number of social media posts. Take the parity: is that an even number or an odd number? If it's an even number, then the question on Alice's side will be zero. And if it's an odd number, then the question on Alice's side for round number one will be one. And because I said the list contains 365 questions, it's perfect, because there's 365 days into it.

Yeah, perfect.

There you go. So I'm generating the questions publicly in advance. I'm telling you, in 2027, the experiment will have available data. It's going to be based on the parity of the social media posts of 2022, and on Bob's side, it's going to be the parity of the closing values of the S&P 500.

Yeah, the stock market.

In 2023. Technically, I'm giving all the arguments to the superdeterministic program, because I'm telling them, here they are. But here's the twist: how do entangled particles, why would they care about these closing values of the S&P 500? Why would they care about the parity of tweets of 2022? If you're serious about superdeterminism, you're coming up with a model that inside each particle, because the question that will be asked on Alice's wing has to do with the number of tweets and so on, so much needs to be ingrained into the particle that it becomes absolutely unreasonable.

Sort of rule out superdeterminism.

Not that I'm ruling it out. Some have tried to rule out on the basis of making measurements, or based on fit, but they will never rule out superdeterminism by making measurements, because the superdeterminist can always go and say, "Oh no, but your choice was..."

Yeah.

So it cannot be a logical nor an empirical argument. It has to be a philosophical argument, the type of munitions we have against superdeterminism. And it's worth stressing, because there's a ton of physicists that are confused about that, and they think that somehow they can measure cosmic rays to have the questions on Alice's side, and that will rule out superdeterminism. But no, just go back far in time. They will come up with this heavy story of why this cosmic ray was aligned with Bob's.

Any other explanations?

Some others have pointed out to retrocausal models. I like it because it's all genuine, true attempts to making sense of beating the three-quarter ceiling. How do particles do it? And the retrocausal program says maybe when they coordinate the particles, they exchange some bits of information or some instructions, and then once Alice gets her question, it's hard to see the mechanism, but she somehow signals back to her previous self on Earth, changes what is being coordinated, how it's being coordinated, and that in turn affects her response. So she can kind of steer her response.

So she has a form of time machine, basically, where she's able to go back.

Yes. No precise mechanism. Extremely problematic for tons of reasons. Give me a model, please, of how this could operate, and why does it only operate in the Bell setting? So it's a list of criticisms, and I'm just putting some forth. Maybe an expert on retrocausal models would tell me that, of my criticisms, this one has been answered in 2017.

And at this stage, I think it's a good point to say that the common thread between no-signaling strategies, superdeterministic strategies and retrocausal strategies is that they all care for a classical world. What they're all in the business of doing is to insist on the physics in which Alice and Bob are coordinating their strategies. When they exchange pieces of information and instruction sets, classical pieces of information, classical instruction sets, that kind of mechanism should be the thing that governs the laws of nature, right?

Yes. So they're trying to explain quantum mechanics with classical pieces, classical Lego blocks.

Yes. Classical variables, classical instructions, at the extent that they're so much willing to insist on that. I think usually it's not done purposefully. That's the worldview in which we are. It must be explained by a classical lambda. Lambda is the typical variable used in Bell literature. It's the hidden variable that is the coordination between Alice and Bob. Obviously, lambda has to be a number, right? It has to fulfill a classical probability distribution. By classical, I just mean a probability distribution. Lambda could not have quantum effects. Why on Earth? So it's always trying to build, with classical Lego blocks, quantum mechanics. But this is promised to fail. Why would we have invented quantum theory if it's to say that at the end of the day, what we want is a classical theory that is underlying quantum theory? I think that's the common counterargument to this whole program, and the reason why this program is misconceived. It is an attempt to explain the quantum effects with classical information processing, classical variables.

Right, yes. So what's the alternative?

Here we go. Well, the alternative is to turn the tables. Because ever since we found out that quantum theory has far superior explanatory power, solve problems of the atoms, problems of nuclear physics. It was even tested as the backbone of society's modern technology. As soon as we adopt this idea that quantum theory has superseded classical theories, then the game is as follows: to try to make sense of the classical with an underlying quantum ontology, quantum Lego blocks.

Because the classical emerges from the quantum.

Correct. It's not the other way around.

Yes. In a way, classical is part of the superset of quantum. You can do classical things within a quantum world. Normal classical bits, zero, one, can be replicated by qubits.

Correct.

But not the other way around, right?

So you can simulate classicality with quantum systems, but not the other way around. It's good that you put this remark, but for example, if what you care about is quantum computing, quantum algorithms, the very fact that we can, with pen and paper, compute, say, Grover's algorithm, right?

That's true, yes.

We are classically simulating what a quantum computer would do. And the typical results, which in a way are still left open: we expect a gap. If you run the quantum computer on its own, not trying to be simulated classically, it's going to go faster than you trying to simulate it classically.

Yes.

So we should not throw away all the tools of classical simulation for quantum theory. That's not what I'm after, but it's more an ontological statement I'm making: that if your worldview is that quantum theory should be implemented by subroutines that are fundamentally classical, information that is classical, well, why did we come up with quantum theory in the first place?

So there's a very rich program. It's the program roughly known as decoherence, that aims to explain the emergence of classicality from quantum mechanics, quantum theory. And some people study decoherence maybe in a tradition that is more aligned with the shut up and calculate tradition, which is, they will invoke things that, for example, when a system decoheres, its density matrix loses its off-diagonal elements, and so on. But some other people are more interested in the process by which these diagonal elements are erased. And they're not erased by magic. They're erased because the system has been decohered. Decohered, for maybe a broad audience, just means losing its quantum properties, in a way, and becoming effectively classically random, just a classical random distribution.

And the shut up and calculate tradition is sort of this approach that's often made in physics, and especially in quantum mechanics, where instead of trying to explain the theory, or specifically the results, we just focus on the mathematics. They seem to work out, and we don't care about the underlying explanation.

Correct.

That's a core problem, because science is all about explanation, right?

Exactly. And so the non-shut up and calculate account of decoherence is going to involve, I'm going to name a few of our giants there, but coming from Everett, and then Zeh and Zurek, Gell-Mann, Hartle, Saunders, Deutsch, Wallace. They've developed very compelling mechanisms by which quantum theory in and of itself, with its Schrödinger equation type of dynamics, unitary evolution, without imposing any measurement collapse thing, because this could also be invoked as kind of a rabbit out of a hat to get into classicality, but if you take just pure quantum mechanics, you're going to get effectively classical records emerging out of the picture.

So this decoherence, the process by which the density matrix will lose its diagonal elements, is not by fiat. It's because it couples to nearby degrees of freedom. Because guess what, that's what decoherence is also in the laboratory. It's not a magical process. It's because other systems near your quantum system start to interact with it.

They get entangled.

They get entangled, exactly. And therefore, if you want to look at a description of your system, what you were calling your quantum system, which is still a quantum system, well, because of entanglement, it's going to lose its off-diagonal matrix, but the whole thing remains a pure quantum state, and so on. So that would be an account of decoherence and the emergence of the classical that is basically in line with unitary Schrödinger equation-type quantum theory. I guess that's the program we're after. If we want to explain Bell inequalities, we have to make sense of classicality from the quantum, and not make sense of the quantum from classicality.

What's then the explanation for how Bob and Alice are able to achieve the 85% win rate, if not through superdeterminism, Copenhagen, retrocausal models?

Thank you, you're the perfect anchor. But I was queuing towards going to the Schrödinger versus Heisenberg picture, because it relates to what I like to think of, the solution.

So there are two ways of expressing the theory of quantum mechanics. There's the Schrödinger approach, and then there's the Heisenberg approach, two quantum scientists of the 20th century, and both lead to the same mathematical predictions. But the explanation, the way of doing the mathematics, differs quite a bit.

I'm backtracking just a tiny bit, because I want to say that many advocates of Everettian quantum mechanics, that means quantum mechanics where only unitary evolution is accounted for, have remarked that the way I frame this, "Alice and Bob play the CHSH game, they must answer one outcome," is kind of evaded by an Everettian worldview, where they might say, "Oh, because the outcome of Alice is the fruit of a quantum measurement, the quantum measurement splits Alice into two." And therefore I'm basically using maybe the wrong... It's a true theorem, yes, but the assumptions coming into your theorem are not qualifying Everettian quantum mechanics.

And maybe most of the message that we've been reading in the Everett literature on Bell is that Bell is relatively uninteresting, because it does not accommodate for multiple outcomes, say. But they don't usually do the work of explaining to us how the coexistence of multiple outcomes can account locally for a Bell violation. And this is where the Heisenberg picture comes into play, because it's going to play a key role in explaining unitary evolution slash Everettian quantum mechanics. I think that's the right logic.

Before we go to Heisenberg versus Schrödinger, let us discuss the measurement problem, because the measurement problem has been orders of magnitude more studied in the Schrödinger picture than in the Heisenberg picture. So still keep in mind this Schrödinger picture framework. The measurement problem is a problem between two dynamical rules that are taught to us in a textbook. We spoke of the collapse in textbooks, but there's rule number one, which is, what's quantum theory, basically? We describe systems with some mathematical formalism that is a tentative description of reality, and this state evolves in time according to laws of motion. Again, analogous of F equals ma in classical mechanics is basically the Schrödinger equation in quantum theory. It's a differential equation that tells you, if my wave function is like this at time zero, then it's going to evolve like that at time one. And the Schrödinger equation is deterministic, meaning that if you know the state at time zero, you know what's going to be the final state.

Yes.

It's linear.

Yes, linear.

Reversible, in principle, just like if you have the state at time one, you can go back to the state at time zero. It's local, because whatever affects your wave function is only depending on the nearby systems or the potentials that are affecting it.

And then there's rule number two. So the basic textbook says, in all contexts except in measurements, the equation applies. And then the textbook says, but in a measurement, it's a radically different rule that applies. It's one that is discontinuous, irreversible, non-local, and stochastic, instead of being non-probabilistic.

That was the other thing I was looking for. It's suddenly stochastic. The question is why? Is there something in our consciousness that causes the wave function, the Schrödinger equation, to suddenly no longer apply the same way? It invites a lot of questions.

One part of the problem is the clash between these two dynamical rules, or these two rules, and the other part of the problem is that we don't have a precise criterion of what a measurement is. If at least we had a theory where we have a very precise criterion for what's a measurement, and that would postulate, perhaps have proto-explanations as for why there's this boundary, then maybe we could make more peace with this clash. But it's not the case. A measurement is not defined.

And as you correctly mentioned, I thought measurement apparatus were also made of atoms.

Yeah.

And that therefore they should also obey quantum mechanics.

Exactly. And that they should also obey the Schrödinger equation. And this is where Everett's brilliant idea came up. I want to right away say that Everett's idea is not to declare that in a measurement many worlds happen and the observer splits. That is not the assumption. Everett was puzzled by the problem we named, this clash of dynamical rules, this undefined boundary of what counts as a measurement, and he said, let's study, just for fun, what would happen if we only apply rule number one.

Yes.

Schrödinger equation, unitary evolution. Everything is deterministic, everything is reversible, the universal wave function, nothing is stochastic. He did indeed call this theory the theory of the universal wave function. He did not call it the many worlds interpretation.

Yes.

I think his choice of title is a better title.

So many worlds is the interpretation that there are parallel universes. It's a very rough way of saying it, but sort of an analogy. But many worlds came, I believe, 20 years or something after Hugh Everett put this paper out. I think it was 1957, and he was just really focused on applying, regardless of whether it's an observer or not. And the branching was, I think, brought about by Bryce DeWitt. I think he brought forward many worlds. But you don't need to believe many worlds in order to agree with Everett's good remarks.

Yes. I would just add the clarification that Everett's published work of 1957 is sadly an amputated work. So he has a paper in 1957, it's called... well, it speaks of relative states. This was sufficiently within the trend of the epoch, to speak of relative states, because you could save subjectivist program of relative on mean the system is, and that. But it's sadly missing the point of Everett's full work. Everett's full work has to be read in what was published in 1973 by Bryce DeWitt and Neill Graham, and is titled The Many Worlds Interpretation of Quantum Theory.

Yeah, that's the name of the book.

You open this book, and the first huge chapter is Everett's original PhD thesis, which was completed in '56.

Oh, okay, that makes sense.

And it's a long thesis, 137 pages, much longer than the published version of 1957, much more into the details of how it works, why it works. And that was titled The Theory of the Universal Wave Function.

Okay.

Not the 1957 paper.

Right, okay.

These are little historical remarks, but I think it helps recast the focus, because the focus is not to declare many worlds. I like to say that, but honestly, if my lecturer in quantum mechanics one would have said, "So when there's a measurement, the state does not collapse, but the universe splits," I would have gone, "I don't want to buy that either. Why would I buy 'the universe splits' as a better explanation than 'this wave function collapses'?" If that was a dichotomy, I think I would have sided with the wave function collapse worldview. But I insist that this is just pop science bad representation of Everett's theory.

Everett's theory, finally going to get there, is to say, we have those two rules. And I strongly encourage history chapter one of his Theory of the Universal Wave Function, available in The Many Worlds Interpretation by DeWitt and Graham. He says that there's these two rules, let's look at what happens if we only apply rule number one. Very nice question. And he was probably not the first to ask this question. There's evidence that Schrödinger thought about that.

Yes, applying his equation all the way through.

There's actually a quote where he says that he thought it was, I think, apparently ridiculous to apply rule one at certain points and rule two at other points. Everett was probably the first one who realized that applying rule one all the way through is not contradictory.

Yeah, it's elegant and self-consistent.

So let's do it, just quickly, so we kind of go through this solution to the measurement problem by Everett.

So how did he apply just rule one, right?

He said, okay, we have a quantum system we care to measure, say a spin. That's a typical system, especially back in the '50s. A silver atom has some spin. You can prepare it spinning one way, spinning another way, and when you throw it in a magnetic field, if it's spinning, say, clockwise, it's going to go up, and if it's spinning counterclockwise, it's going to go down, in the inhomogeneous magnetic field. This setup is known as a Stern-Gerlach measurement apparatus.

And what happens: if you spin it clockwise, it goes up, and then you have a detector that is going to be hit by the trajectory of the atom going upwards. The detector is made of atoms. So we're going to have to apply quantum theory to the first atom of the detector.

Yes.

So Everett also had this nice idea that you don't need to resolve the partial differential equations to have an exact solution to tell what's going to happen. You can kind of use bras and kets in a coarse-grained way, which is getting you the right story without solving the precise microphysics.

So the idea is that, well, if the atom is going upwards, just before it hits the detector, the first atom of the detector is unexcited, but a second after, or a fraction of a second after, the first atom is going to be excited. And meanwhile, note that the atoms that are building the detector on the downward path are unexcited. So if you are to characterize everything quantum mechanically, not just the silver atom, but also the atoms in the detector that is up there, the detector that is down there, well, you have this nice state where the atom was spinning clockwise, it went upwards, and it has excited the first atom of the upward detector, left the downward detector unchanged.

And then you keep advancing time, and there's a cascade reaction in the atoms of the upward detector, to the point that it couples to green light. And then this green light eventually reaches your retina, but light and retinas and optic nerves are also quantum mechanical systems. So Everett said, "Now I'm not reaching the observer, I'm still... Guess what? I'm still going to use quantum mechanics to study what happens to the observer. I'm not going to retreat into, 'And then some magic unicorn happens.'" No, no, no. Let's bite the bullet, carry through.

And you read, well, if the atom spins counterclockwise, well, then, the big chain reaction, eventually the wave function, or the way we're describing quantum mechanically the collection of atoms that is composing an observer, is going to be in a state that has seen green light.

It gets entangled with that state. And so progressively you get a chain of entanglements that grows until it progressively becomes a separate branch.

You're slightly ahead of my story. Because right now I said, what if the atom spins clockwise? I'm only studying the clockwise case. And if you only study the clockwise case, technically there's no entanglement, because everything can factor out. And then we could do the counterclockwise case, and then we study what happens. And while the atom will go downwards, it will hit the downward detector, but not the upward detector, and it will be coupled to a red light. And you and I will see red light, and we'll be in a state where our body, especially our degrees of freedom in our brains, are compatible with the fact that we've recorded red light.

Right.

And entanglement comes in when you say, "Oh, well, quantum mechanical systems can be not only spinning clockwise or counterclockwise. They can be in a state that they're spinning clockwise plus spinning counterclockwise."

Yes, this is just a superposition of quantum systems.

And it's obviously an irreducible element of the theory that's required to explain much of the phenomena we have in quantum theory. So we prepare this atom spinning clockwise plus spinning counterclockwise and see what happens. And you were right to bring up linearity earlier, because by linearity of the Schrödinger equation, what we have is that if you have a solution to what happens when it spins clockwise...

Right.

And you have a solution to what happens when it spins counterclockwise, well, when you're adding those two initial conditions, the atom is spinning clockwise plus it's spinning counterclockwise, then the solution to the Schrödinger equation is just that you have to carry on each of these trajectories in your terms.

Yeah, separately.

So this is where you start getting into a huge entangled state, because, as I said, Everett was in the business of applying physics to the whole thing, not just to the little thing we call the silver atom. And so the quantum state of the whole thing evolves into, roughly speaking, because I'm going to use the past verb tense to make the story simpler, but it evolves into: the atom was spinning clockwise, it went upwards, it hit the upward detector atoms but not the downward detector atoms, it emitted green light but not red light, and Charles saw green light and he didn't see red light...

Yes.

Plus the other case: it went downwards, it hit the down detector, not the up detector, it emitted red light, not green light, and Charles saw red light, not green light.

Yes.

And this is an entangled state, because these two terms cannot be factored, one for each system. And if we look at the progression of these two terms, we have a branching structure. For example, initially, before my retina saw light, I was still a Charles in an "I haven't seen any light" state, and as soon as the two terms are propagating in time, well, then I branch into a Charles sees green light and a Charles sees red light, in a different term of the wave function.

Right. So now we have two Charleses, one that saw the green light, one that saw the red light, and eventually that entire element is going to keep growing, of course, until it takes up the whole universe.

Yeah, because not only Charles is the witness of this measurement. And I think that's a very important lesson, is that we're not putting the observer at the center of anything here.

Right, we're just one other recording device.

Yes. But as many of the luminaries of this studying the emergence of the classicality program have pointed out, all of these witnesses, like the photon fields, is going to be also carrying information about the green light that was emitted. And therefore, what turns out happening is that these two terms of the wave function, for all practical purposes, have no chance to re-interact together. Because to have two terms of the wave function re-interact together, you need to find a way to put them back into a common state.

Yes.

But now there's so many witnesses that have witnessed the outcome is up, and one of the new developments we can deduct them down. There's no chance of re-interfering that into a quantum experiment to produce a sharp outcome. Unlike what would happen for a person inside a quantum computer, who would be perfectly shielded from this environmental interaction. It will evolve into a collection of persons, or states, for the quantum computer, and the idea of a quantum computer is to keep those coherent, shielded from the environment, so that they can re-interfere back and produce a common state.

Yes.

It is only explainable with the various terms of the wave function, the various worlds. Now here are these two worlds. They're separated, and so for all practical purposes, forget the other ones.

Yeah, because the entanglement, as it grows, starts growing more exponentially, because more and more particles get entangled with it. And so if you were to try to come back to the initial state, it gets harder and harder, because you have to put them back in the original states, which becomes exponentially harder as you get more and more particles, and it takes a lot of the particles, and it just gets worse and worse.

But putting it all back to the initial state is one way of creating interference.

Yes.

But another valid way of calling it interference is to put it into the same state.

Yes.

But since they're so different on so many degrees of freedom, it's for all practical purposes impossible to do so. And I believe this is the point where even today prominent physicists are still confused, is that they still take Schrödinger's reductio ad absurdum argument seriously. So suppose, I'm no historian, I haven't studied these letters, but suppose Schrödinger went as far as to consider the fact that if he applies his equation all the way through, you would get to an observer in a superposition of states. I think the very legit idea here is to say, "Oh, but that's nonsense."

Yeah.

Because we only observe one outcome, right? We never observe some form of superposition of cat is dead and alive simultaneously. So we never observe red and green light simultaneously, in my example. So that's nonsense, and therefore Everett's program cannot hold.

Yes.

But then I think you know the answer. What did Everett say?

I don't know what specifically Everett said here, but it's not because you don't see the other outcome that it's not true. Well, the mathematical terms are there, so you need to take them literally.

Yeah, that's an important piece of the explanation. And I think another one is also: study your whole structure. I have these two states with many witnesses of the green light, "I saw green light," da-da-da-da-da, plus many witnesses of the red light, "I saw red light." Nowhere in this structure there is a Charles who sees both lights. There's only a Charles who sees green light, and elsewhere there's a Charles who sees red light. But nowhere we have this thing we were worried about, which was that we're going to observe a superposition. No, we don't.

Yeah.

We only observe one outcome. And plus, we can cash out many of the features of the collapse. For example, if we re-measure our quantum system, well, the Charles who has measured green light... So for example, I still have access to my silver atom and I re-measure it. Well, then, because I'm in that term, I'm going to re-measure that the atom was spinning clockwise.

Yes.

And so we have the illusion of a collapse.

You're entangled.

Yeah, well, we have a collapse.

Yes.

And in the other branch of the wave function, well, then I'm going to re-measure that it's spinning counterclockwise.

Yes.

And that's why we also have intersubjective agreement in the multiple observers. Because if you were also sitting next to me, if I see green light, you'll also see green light, because we got entangled together. But that's written in your theory. So it's a very important objection, "But we don't see two outcomes, so this is ridiculous." But then the beauty is that we used the same theory, namely quantum mechanics in the fully unitary regime, to answer that.

It's a beautiful story. But in the early days of these debates on Everett, I don't want to dare to claim who it was, but at some point somebody said, "But this precise thing, we don't feel branching, we don't feel multiple outcomes." And the argument that was made was, well, Newton's theory, enlightened also with heliocentrism, says that the Earth is a spinning ball, and we have a valid concern: hold on, if it was a spinning ball, we would feel it, right? We would feel the ball spinning.

Yeah.

Very valid point. And the answer is not to declare, "You will not feel it." It is to calculate. Hold on, let me take your objection seriously. You calculate, and according to Newton's laws and the velocity of one turn per day of the Earth and the radius of the Earth, you realize that, well, for your own little life, you would not feel it.

Yes.

But by the way, thanks for pointing it out, because we have Coriolis forces and so on. And in fact, it's a very valid point, and we learn stuff from this.

Yes.

But it's not an uppercut. In fact, it survives this test.

Yes.

And many things here happen too in quantum theory, where we don't feel branching. But then the most interesting parts of these emergence of quasi-classical regimes are when they're in fact quasi-classical, namely, we don't send orthogonal states to orthogonal states, but we let a little bit of fuzzy quantumness in the way the two terms slowly separate, and we observe weak quantum effects. And it gives rise to a classical reality, which is even more compelling, because it's basically exactly like our own, because it gives rise to some emergent classical structures. But if you would look at places in your emergent structures where they're sort of shielded from this vastly entangling, many witnesses of the measurement outcomes, you would see some form of quantum effects. And guess what, this is the world we live in. If you start looking at very small structures, we have weak quantum effects. But it's not because... and that's another misconception of quantum theory. It's not because quantum theory only applies to the small. It applies to everything. It's just that these characteristically quantum effects of interference are not going to be observed once massive witnesses have entangled.

Yes, but they're still observable at a small scale.

Tie back to our original Bell, Bob and Alice, what is the explanation then for how they're able to get to the 85 percent?

In quantum theory, as we said earlier, these entangled systems are defined such that they have one common wave function for two particles, and these two particles could actually be remote. And so if you look at what's the branching structure that gives rise to that: if Alice and Bob are sharing an entangled state, say 00 plus 11, what happens is that when Alice would measure, this whole state would evolve into: Alice's system is zero, Bob's system is zero, and Alice measured that her system is zero, plus Alice's system is one, Bob's system is one, and Alice measured that her system is one. And then we have these two sort of worlds generating.

So they get entangled with the measurements.

She gets entangled with the measurement, but she also gets entangled with Bob's particle.

Right, yeah.

And so if you jump in Alice's shoes, and you're like, "I'm Alice who saw one, outcome one."

Yes.

"And for a strange reason, I'm in the same branch as Bob's particle, which will be in state one."

Yes, yes. Okay.

And so this is where the nature of entanglement in the Schrödinger picture portrays a somewhat misleading account of these branching effects, that may in fact look non-local. Again, it's not a non-locality of literally having an action there, but it's strange that Alice, who sees one, right away is in the world with Bob's particle being one. And suppose that Bob would also be measuring, Bob one would also be in the story. And so Alice one and Bob one would be right away identified across space.

There we go. Crash course on Heisenberg quantum mechanics. So quantum theory was discovered twice, first by Heisenberg and then by Schrödinger. Heisenberg's story was a story of: we're going to have our physical quantities we care about, and we're going to promote them to matrices. So things like spin of something, which was just a discrete structure in a classical theory, now is a matrix. Things like position is also going to be encoded as a very, very large matrix, infinite-dimensional operator-valued. I don't want to dive into the math, there's no point for it. But in short, it's a story of: we describe physical objects as time-evolving matrices. And Schrödinger came up with his wave mechanics account, which was very different. Things are waves, or wave functions, and they evolve in time according to such and such properties.

Now, the work of John von Neumann was huge, because he managed to build the mathematical arena, okay, he was not alone, but to build a mathematical arena that could kind of unify those two theories together, with these so-called structures of Hilbert spaces, and bounded operators, and vectors in Hilbert spaces. And the short story is that a calculation in quantum mechanics looks like that, where you have a state vector here. For the viewer, this would be a ket. This would be a bra. It's confusing. So these are the wave function thing. And in the middle, there's a bunch of matrices, and then you have also evolution operators in the middle. So you have a state vector, evolution operator, matrix, evolution operator, state vector.

And then the Schrödinger view says, "Oh, the evolution operators, the unitary evolutions, they should apply to the state vectors, to these wave functions." And the Heisenberg picture view is to say, "Oh no, we should evolve the matrices in the middle." And typically, because all calculations in quantum theory have this form, we realize that it doesn't really matter. If what you're after is to compute a number, you can have it the way you run. You can have the unitary operators acting this way or that way, but you're going to get the same number, because this calculation here, this sandwich I'm making up with my hands, at the end of the day, it's a number. And so von Neumann declared the two theories to be equivalent.

But as I like to point out in my latest chapter in the book by Alyssa Ney, edited by... the book is titled Local Quantum Mechanics, Oxford University Press, just released last month.

Buy it.

It's a good book, yeah. That argument that von Neumann made, and that the physics community took for granted, is an instrumentalist argument. It is, if what you care about is predictions of measurement outcomes, the numbers...

The numbers, they could be committed both ways, but the explanatory power is not the same.

So, power, yes, but also structure. There's another way we could... So for a realist, we're in the business of saying, well, physics is not just about calculating predictions. It's of course nice to calculate predictions, but physics is in the business of trying to figure out how the world works. And we're aware that all our work is guesswork, it's conjectural, but we're going to stress test our ideas, we're going to back them against the wall. However, if you come up with a theory and we say "the state of the system is," what we mean is that the state of the system is. It's a conjecture about how the system is out there, independent of our preferences and our opinions.

So if you're a realist, then you say, hold on, that gives us two different stories. The Schrödinger story is that we have a ket, a state vector or a wave function, it's called by different names, that is evolving in time. And the Heisenberg story is that we have a bunch of matrices evolving in time. Now, we could declare these two theories equivalent even for a realist, if we would have what the mathematicians would call an isomorphism between the two structures. The interesting part is when you start declaring isomorphism between structures that prima facie do not look like they're the same.

Suppose I have the natural numbers, 1, 2, 3, 4, 5, 6, and I have two copies of them, plus I add a zero. Plus I tell you that one copy is kind of the negative sign of the other copy. But it's really like two sets of natural numbers going this way, and one of them has some negative signs, so that the arithmetic has changed, and I prescribe you the arithmetic in the precise way. I don't want to go into the details, because we're going to be wasting time. But then someone could realize, hey, hold on, we could have the integers, which goes all the way plus infinity to minus infinity. So one, two, three, four, five, and then we have zero, minus one, minus two, minus... And one could prove that, oh, well, the two structures are isomorphic. Because I came up with two sort of stories of telling you, but one of them, I was kind of hiding the fact that I had negative numbers, the other one I was making explicit. But who cares, because we have a one-to-one map: for every number in theory one, there's a corresponding number in theory two, and vice versa. And plus, that's just a bijection so far, but the isomorphism also preserves the structures. So if I have addition in one theory, and also have a counterpart of the addition in the second theory. That's why you go like, "Oh, it's the same thing." And a realist would have been convinced that the Heisenberg picture and the Schrödinger picture are equivalent, also for a realist, if you would have such a one-to-one map, bijective map and isomorphic, that also preserves the structures, like time evolution and what happens when we... and so on. But there's no such map.

So the general account is that if you give me the Heisenberg picture description of the system, it corresponds to a unique Schrödinger picture description of the system, so there's a unique wave function, ket. But not the other way around. If you only specify the wave function of the system, the state vector of the system, the Schrödinger picture description of the system, there are many possible Heisenberg picture states that correspond to it.

Basically, there's more information captured in the Heisenberg system than the Schrödinger system, which means that one is basically richer, the other lesser. So you can only do things one way, not the other way, basically.

So I'm aware that some experts listening here might say, "Well, the true account of the Schrödinger picture is not just the time-evolved state. It's also the dynamical operators," these U's I've put in the middle, "alongside the initial algebra of observables," these matrices in the middle. But then, sure, of course, because you're giving all the ingredients of quantum theory. But no one declares that the state in the Schrödinger picture is this thing that is enriched with a part of the evolution operators, but not all of it, because you still want locality. So you don't want that your description of Alice's system depends on whatever Bob is doing.

I said no one, modulo the fact that the work of Mordecai Waegell at Chapman University is kind of taking seriously these locality structures. You can have them, and he's developing Schrödinger picture versions of what it would be like. But he would also agree that the objects he's calling states are nothing like the usual Schrödinger state. So we have this many-to-one ontology, so why would we work with more structures?

Yeah, of course, if we're still in the shut up and calculate framework, it doesn't make a difference, the better. I want to crank up numbers. But if we're in the business of trying to explain the world, we want to take what works best.

Yes. And it turns out that the Heisenberg picture descriptions provide a fully local account of local systems. At least to me, was news when I read the work of David Deutsch and Patrick Hayden, published in 2000, worked out in 1999, where they spell out what Heisenberg picture quantum theory looks like for quantum computation. And in short, it provides what looks like the impossible. It provides a way to describe entangled systems. So an entangled pair of qubits: you have a qubit, I have a qubit, my qubit has its own descriptor. They had to call it by another name, but really it's a state. But if you use the word state, people load it and associate it with Schrödinger, so they call it a descriptor. And my descriptor remains unchanged if you play with your system, which is this locality aspect.

Yes.

Schrödinger picture descriptions can sometimes use the so-called reduced density matrices, and they have this property: the reduced density matrix of a system is unchanged when somebody else plays with his system. But the reduced density matrices are too thin a description. If we put both of our reduced density matrices together, it's a way of describing systems in the Schrödinger picture, but that omits too much important information, because the collection of two reduced density matrices cannot get back the whole system when they're entangled. Whereas descriptors have that property. So not only are they local, like the reduced density matrices, but if you put them back together, you can recover the whole Schrödinger entangled state. Or, if you're an advocate of the Heisenberg picture, you don't care so much about recovering the Schrödinger state, but it permits to cash out the distributions of any measurements that might be performed on the joint system.

We have to carry out the calculations of what happens to these crystals when Alice measures and when Bob measures. There's a lot to recover there, because when Alice will measure her system, she will be affected by the system in a way that Alice's descriptor will evolve into a sum of two entities. This was developed by Sam Kuipers and David Deutsch in 2021. They basically recovered the basics of Everett's analysis in the Heisenberg picture for descriptors. So whenever with Everett we realized that we had a sum of two state vectors, and that these two state vectors no longer interact with each other, they become autonomous, and they have a Charles who sees green light and a Charles who sees red light, well, what's the story with descriptors, with Heisenberg picture descriptors?

And here it is, roughly speaking: you have an Alice evolving into Alice sees zero, plus, literally a plus... therefore there's something else to capture. Everett's idea, where we don't need to declare that only one exists. We make peace with the fact that ascribing to is pretending that there's something bigger, and we're only a substructure of that something bigger. So I'm Alice who sees zero, there's Alice who sees one. If we were to compute probabilities at that moment, we would compute that Alice obtains zero with probability a half, Alice obtains one with probability a half. But really, we don't care so much about priorities at that stage. We carry on. We have two outgoing Alices. They don't see each other, and it's fully local. So we don't have this awkward thing where the state was described by something that also depended on Bob. Now we have only Alice's local descriptor spreading into two entities, autonomous entities.

Right. So instead of having the faster than light communication or something, Alice just gets entangled with the descriptor, and that's how the puzzle is answered.

Well, not yet. We haven't got to the 85, but we're getting there. It was a long detour. We were discussing the CHSH game maybe 30 minutes ago, but it was a long detour to explain the measurement problem correctly, the value of jumping into the Heisenberg picture description, and now we're finally going to cash it out.

The first thing to mention is that splitting of Alice is purely local. Alice splits into two entities because her local descriptor splits into two entities. And when Bob measures his crystal, he will likewise locally split into two Bobs, Bob who sees zero, Bob who sees one. And those branches are not tied, they're not identified yet.

What happens there is, this is my Alices, this is my Bobs. Alice saw zero, Bob saw zero, in the Schrödinger picture, already tied.

Yes. And so we kind of know that when they're going to compare their results, Alice who sees zero is going to meet with a Bob who sees zero, and Alice who sees one is going to meet with a Bob who sees one. But in the Heisenberg picture so far, it's just local entities. Of course, because we still have a deterministic theory, we can compute what would happen if they then compare their notes. And we would find that Alice who sees zero meets with a Bob who sees zero with 85% divided by two probability, Alice who sees one will meet with the Bob who sees one with 85% divided by two probability, and the mismatches with 15% probability.

But that's kind of going too fast. What matters is, and that's an idea as old as Don Page and Frank Tipler, is the idea that there's an interesting mechanism coming up here. Sorry, I just said that Don Page and Frank Tipler are old. As old as their work. So Don Page was studying the comparison interaction in the EPR setting. Tipler raised it up for the Bell scenario, but he was studying in the Schrödinger picture, so could not cash out as sharp an idea as what we're coming up here. And also, Deutsch and Hayden studied the Bell scenario, and they were after localizing the information flow, but they correctly identified, I believe that would be section four of their paper, that a Bell inequality violation is only done once Alice and Bob come back together. And so that's crucial.

And you might say, well, what is the change? Well, it changes the fact that now, since we have multiple Alices, one who sees zero, one who sees one, multiple Bobs, one who sees zero and one who sees none, it's no longer clear how this is going to generate four joint records, the 00 record, 01, 10 and 11 record. In a single world orthodoxy, if there's only a single world, I have Alice who sees zero here and Bob who sees one here, there's only one answer.

Yes.

When they're going to join their results, it's going to be zero and one. Nothing can happen. But since we're in a quantum orthodoxy...

Yeah. We have multiple Alices, multiple Bobs.

Then you might say, "Oh, there's freedom here."

Yes. Even though it's 50, Alice 0, Alice 1, 50-50, if the computer property is there, and same with Bob.

The thing is, when we look at the descriptors, they're made of algebraic structures that may interplay, and that's precisely what is ending up happening. So what I calculated in my Explaining Bell Locally paper, which is basically the technical version of this book chapter, is that we need to calculate what happens to a joint record. A Charlie in the middle is a four-level system. He's back on Earth, and he's waiting to write down the communication of Alice and waiting to write down the communication of Bob into one single localized record that will be the joint record.

And what are we going to apply as a theory for that Charlie? Are we going to apply A, our pet theory of what classical theory should be like, or what classical information processing should be like? Or are we going to apply B, quantum theory? Because the name of the game is to explain the classical with quantum theory. Obviously B. But this is where intuitions can go wrong. Because we might say, "Oh no, that changes nothing. Let's just do a shortcut and say that Charlie's record is going to be an element in the set 00, 01, 10, 11." Well, sorry, but sets 00 comma 01 comma 10 comma 11 are discrete structures, which are very alien to quantum theory.

Yes.

What you want to do is to apply quantum mechanics to Charlie. And so what happens is, when he processes Alice's outcome...

Yes.

He also locally splits into two instances.

Yes.

Charlie who sees Alice with zero and Charlie who sees Alice with one.

Right.

These measures are still 50-50.

Yes.

But then, when he processes Bob, each of these sub-measures splits again, and the split is non-trivial. Charlie who saw Alice zero now splits 35, no, 42.5, 8.5. Charlie is going to see Alice who saw zero and Bob who saw zero.

Yes.

And the 8.5 is going to be Charlie saw Alice who saw zero and Bob saw one, the mismatch. And similarly for the other Charlie. And so we have four emerging Charlies with exactly the right weights of the CHSH distribution.

Really, the whole point of this exercise is to then show that you can have this 85% while not having faster than light communication, while not requiring retrocausal models, and while having a fully local explanation, which is very, very powerful.

And I would like to add, without wishful thinking either. It's not just "it would be nice if we could have that." We also have that by studying unitary quantum theory in the Heisenberg picture. So I think it's important, because unlike the superdeterministic program, say, who's trying to...

Yeah, we're not making crazy things about...

And be willing to reconsider huge hypotheses. Yes, I'm sympathetic to that, but bold conjectures are kind of hard to come by, to be good. And here it looks like I'm positing this radical story where Alice splits, and somehow the way she meets with Bob is unintuitive. And, "How did you come up with this?" Well, calculate it.

Yeah, it's literally the math.

Exactly. If you calculate it in the Heisenberg picture of unitary quantum theory. So I think that's also the important thing to mention.

Yeah, it's not just wanting to save the program with a local story. It's a local story that follows from quantum mechanics.

Yeah, it's all rooted in the mathematics. There's two remarks I'd like to make, if I could.

Let's go.

One of them is about relativity. I said that Alice who sees zero is not yet identified with Bob who sees zero. Could I be more precise?

Yes.

It seems like it's unavoidable that the Alice who sees zero is going to meet with the Bob after Alice has measured and after Bob has measured. We call this a hyper sheet of space. It's a sheet of space in space-time, okay? Hypersurface, it's usually called. Time goes this way. But now I'm after both measurement interactions. It seems like an absolute that Alice who sees zero is going to meet up, with sub-measure 85%, with Bob who sees zero. But it's not an absolute. It's not an absolute, because the Bob who sees zero and the Bob who sees one, we said it's hard, but in principle they can unmeasure. If they're able to run after all the witnesses of the measurement interaction, they can untangle, reproduce the crystal's state, change the way they turn their crystal before measuring, and re-measure. And that would basically screw Alice's bet.

Yes.

Because then she would meet with a different Bob. For example, we could arrange the twisting of the crystals such that it's sure that she meets with Bob 1. So Alice 0 meets with Bob 1 if this unmeasurement is performed, and re-twisting.

And I think an analogy I like is that it's exactly similar to the traveling twins. A listener might say, "Oh, the traveling twins are already counterintuitive, but I'm going to put another layer of counterintuitiveness." The typical scenario is that we have Charlie and Dalton, I'm changing names. They're twins. Charlie stays on Earth. Dalton goes on a big voyage in the galaxy. And while he's far away, one could ask, suppose they eventually reunite, who will be the younger? And you might remember from your relativity courses, or some of the good YouTube videos you might have watched, that the traveler is going to be the younger, and that's super counterintuitive.

That's true if we assume the continuation of the story, which is that Dalton comes back to Earth and Charlie doesn't move. But that was not my question. My question was, Charlie stayed on Earth, Dalton went on a voyage, and while he was far away, I asked the question.

Yeah.

But suppose that I make a twist. A different continuation of the story is such that Charlie, because he's waited so long on Earth, now has access to way more powerful means of transportation.

Yeah.

And he goes to a different galaxy and comes back, by the time... compute your speed of light limits. But suppose he's able to reach far closer the frontier of the speed of light, compared to the means of transportation given to Dalton. When they reunite, Charlie will be the younger, because he will be considered the traveler with respect to Dalton, which almost looks stationary in his poor little trip around the galaxy. So the continuation of the story matters. And this is precisely why we cannot declare whose twin is going to be the younger when they reunite, until we have an actual implementation of this reunion.

Same thing here. Alice zero meets with Bob zero if we continue the story as it is expected. But if Bob unmeasures, twists the crystal and re-measures, the continuation may change.

I think you mentioned a second thing you wanted to mention.

I think it's important, because at that stage, I hope every competent physicist would be extremely critical of the account I've given, saying, "Charles, that's kind of nice, but there's one thing we know." Where this uneven skewing of the measures, when Alice meets, or Charlie, when he processes Bob's signal, starts splitting like 42.5 and 8.5, that looks like a quantum effect. And maybe most people will be willing to think that after measurement, we can keep a quantum ontology like Everett did, by having many worlds, and, okay, fine. But typically, once we reach measurement, and many, many records, no more quantum effects happen.

Yes.

So how dare I pretend that this uneven skewing of the media part of the work?

Great question. Good criticism. In my Explaining Bell Locally paper, the second last section is titled Classicality, because I have this precise case to answer. And the answer is, when you're playing the CHSH game, do not mess with the crystals while they are on their way to Mercury and Jupiter. They're extremely precious. They need to remain shielded and quantum, otherwise you're ruining...

Yes.

That is well known. This is what people will, in the common language, say: "Oh, it's a quantum system, it needs to remain quantum." Sure. But after Alice's measurement, we don't care. There's so many witnesses.

Yeah.

And so I modeled many witnesses after Alice's measurement, in the way that there could be an environmental system that also interacts and keeps measuring Alice, so that Alice is effectively evolving into a decohered state, with many witnesses. And you model this with quantum theory. Of course, if you would compute the reduced density matrices, you would get this usual story we've been discussing. But you model this not as "this magic happens, a system becomes decohered, and therefore classical." No, no, no. We're after explaining classicality, not positing it. Well, what I said is in a way true, but don't take classicality as being fundamental.

So the descriptor of Alice inherits many structures that is kind of a sign of having interacted with many degrees of freedom of their environment. So I'm modeling this classicality, and yet this skewed branching, rebranching of Charlie, still works. So it answers the case. I think the big lesson here is, I've insisted on that already, but it's quantum theory.

Yes.

Not necessarily the quantum theory we're all used to work with. It's the Heisenberg picture. We're not chained. And every time there's something like comparing notes, you have to think, "Oh, how is that done physically?"

Yes, it's part of quantum theory. Of course. Whenever we write notes, it doesn't come out from thin air.

Yes.

We're actually taking a pen and writing it down, and that's a physical process.

And also, a little reaction to your account, which is amazing. Wherever you use the word entanglement, you could have used also local splitting of Alice into two entities, and then same for Bob. And then Charlie locally splits when he processes Alice's input first, she splits into two, and then each of those sub-versions splits again into two as he's acquiring the signal by Bob. Because sometimes entanglement, especially for a non-expert, may sound like a link.

Yeah. Entanglement still exists in the Heisenberg picture, of course, but it does not have the definition of having one single state for two objects, because Heisenberg picture quantum theory is able to literally have fully local and complete description of individual systems. So entanglement typically means, in the Heisenberg picture, that if systems A and B are entangled and you only have access to system A, you won't be able to produce a sharp outcome with deterministic, "I will only see zero," outgoing branch.

Right.

And same for the other one. But if I put them back together and I make them play with them, then I could produce a sharp outcome for the joint systems.

Well, thank you very much, Charles. This was a pleasure. We'll have to do a second episode to tackle everything else that we have planned for today. But thank you so much for your time. This was great.

It was a true pleasure. Thank you, Maxime, for this fascinating conversation. And if you want more, have a look at Bold Conjectures, Volume 2, edited by Logan Chipkin. It's a fun collection of essays. I had the great honor to write pieces with Sam Kuipers, Chiara Marletto, Vlatko Vedral, David Wallace, Julian Barbour, and many more, Maria Violaris, Simone Rijavec. Many nice, interesting thinkers in this volume, and it's written for an accessible readership.

You're truly at the edge of physics if you read this book.

Literally, without mathematics. We want to distill the ideas.

Yeah, exactly. And this is your copy.

Thank you so much.

Awesome. Well, see you back soon.
