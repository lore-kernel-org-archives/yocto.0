Return-Path: <luke.leighton@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B59AE011B7
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 06:41:37 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyg13 with SMTP id 13so1129108gyg.35
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 06:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type;
	bh=4pJNJOkTk0GVcYm4dwGUKuWSCsipj5AmbRE7EpNqYXU=;
	b=pNrjdOmn/Rqv/k+UaV3xIK2Jzo3WPTjdEcD/66u6Fg/ltikh3cX1Pdx1t3CqAkmRWs
	eDFxM2Aq5oMV0lC1cNgEuo+5k6dkIOgLvGKFJ9mnMYYGP0OlLLagq/tabIWp0olePOgb
	UKW51iGy2G3WaUDGDGRt5g8H0pjDf93ABHvDk=
MIME-Version: 1.0
Received: by 10.100.245.35 with SMTP id s35mr4848082anh.84.1314193296936; Wed,
	24 Aug 2011 06:41:36 -0700 (PDT)
Sender: luke.leighton@gmail.com
Received: by 10.101.109.10 with HTTP; Wed, 24 Aug 2011 06:41:36 -0700 (PDT)
In-Reply-To: <efc47c3039402c1507d76f381a790115@mail.shatteredsilicon.net>
References: <20110809181534.GR10171@einval.com>
	<20110823161134.GV3053@linaro.org>
	<efc47c3039402c1507d76f381a790115@mail.shatteredsilicon.net>
Date: Wed, 24 Aug 2011 14:41:36 +0100
X-Google-Sender-Auth: aLzNbsELGb0hthJVarT4nQdgBGU
Message-ID: <CAPweEDwkVWH=r_moJj1_CKLxRUkkbBgHenZhwi8CzY9z3BO-Cw@mail.gmail.com>
From: Luke Kenneth Casson Leighton <lkcl@lkcl.net>
To: cross-distro@lists.linaro.org, Fedora ARM <arm@lists.fedoraproject.org>, 
	Debian ARM <debian-arm@lists.debian.org>, MeeGo Dev <meego-dev@meego.com>, 
	Gentoo Embedded <gentoo-embedded@lists.gentoo.org>, 
	OpenEmbedded Devel <openembedded-devel@lists.openembedded.org>, 
	Ubuntu Devel <ubuntu-devel@lists.ubuntu.com>,
	Mageia Dev <mageia-dev@mageia.org>, OLPC Devel <devel@lists.laptop.org>,
	LSB discuss <lsb-discuss@lists.freestandards.org>, 
	yocto@yoctoproject.org, cooker@mandrivalinux.org, 
	Linux on small ARM machines <arm-netbook@lists.phcomp.co.uk>,
	torvalds@linux-foundation.org, 
	Bruce Perens <bruce@perens.com>, Russell King <linux@arm.linux.org.uk>, 
	GCC developers <gcc@gcc.gnu.org>
X-Mailman-Approved-At: Wed, 24 Aug 2011 09:32:19 -0700
Subject: Re: [fedora-arm] ARM summit at Plumbers 2011
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Aug 2011 13:41:38 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 09, 2011 at 07:15:34PM +0100, Steve McIntyre wrote:
>Hi folks,
>
>Following on from the founding of the cross-distro ARM mailing list,
>I'd like to propose an ARM summit at this year's Linux Plumbers
>conference [1]. I'm hoping for a slot on Thursday evening, but this
>remains to be confirmed at this point.
>
>We had some lively discussion about the state of ARM Linux distros at
>the Linaro Connect [2] event in Cambridge last week. It rapidly became
>clear that some of the topics we discussed deserve a wider audience,
>so we're suggesting a meetup at Plumbers for that bigger
>discussion.

ok.  allow me to give some perspective and background as to why i
believe that a bigger discussion is important, and to whom that
discussion is important.

a few years ago i read what seems like a silly book, called "The
Strategy-Focussed Organisation".  sounds trite, but i was advised to
read it when i proposed some ideas and was confronted with the very
valid question "why should i [a lowly "developer"] _care_ about this
'strategy' that you are proposing?" (fortunately the person who asked
the question was the same one who advised me to read this "silly"
book).

 it's a tough one, isn't it?  why should any of us - as free software
developers - _care_ about the state of ARM Linux?  you're getting on
with the truly crucial task of managing the distro that you're
committed to.  it's a focussed job: it's a vital role, and you should
not let anyone tell you otherwise.

yet... and this is the bit that this silly book explained: it's just
as important to know where *your* role "fits in" with what else is
going on.  linaro, for example, as you no doubt well know, is tasked
(by its subscribers who pay $1m / year) with sorting out vital
underlying infrastructure that ties what *you* are doing in with the
subscriber's ARM CPUs.  you're doing the user-facing stuff; they're
doing the CPU-facing stuff.  that's *their* strategic role: in
concrete terms it means sorting out gcc with ARM optimisations, and it
means seeking out and/or increasing the number of areas of shared and
refactored code across as many places as possible, in order to reduce
the software development effort required of their subscribers.  linux
kernel.  device tree.  LSB.  (and, it has to be said, _if_ the stupid,
stupid 3D GPU companies got with the picture, linaro could well take
gallium3d for example under its wing, too).

so the key question is: if linaro is "taking care of" this aspect,
because that's linaro's role, then why _should_ any distro maintainer
care?  yes they should be aware of what's happening, but there's no
real incentive to get pro-actively involved, is there?  all that's
required is passive acceptance of the work filtering down from
linaro...

and this perhaps explains the lack of response to the proposed meetup, steve.

[the other reason is that yes, although _discussion_ can take place
about 3D GPUs, we as free software developers feel "powerless to act"
in the face of so much money.  despite the fact (which personally
makes me extremely angry) that without our overall contribution these
companies simply would not have a gnu/linux distro or a linux kernel
on which to make that money].

so, the important question to ask, then, is what *is* good motivation
to take action?  if, indeed, any action need be taken at all, which is
a perfectly reasonable conclusion to reach.  not that i personally
agree with that, but i can live with it :)

and, to answer that question, i feel it's important to take into
account some context and background.  many of these things you will
already be aware of, but let me put them all together, here.

take a deep breath...

* with the rise of android, Matt Codon shows us an empirical glimpse
into the blatant state of GPL violations by OEMs taking place on the
Linux Kernel and more: http://www.codon.org.uk/~mjg59/android_tablets/

* many android vendors have lost the right to use linux kernel source
code. this article is the most insightful and non-aggrandising i've
yet found into the GPL violations situation and its consequences:
http://fosspatents.blogspot.com/2011/08/most-android-vendors-lost-their-linux.html

* Our Linus declared in april that he was getting fed up with the
state of the ARM Linux Kernel.  my take on this is that there is an
overwhelming amount of "selfishness" creeping into the Linux Kernel
development. Our Linus has also recently stated that his passion is
actually low-level device driver development.
http://thread.gmane.org/gmane.linux.kernel/1114495/focus=112007

* Russell King, the ARM maintainer, has completely lost all motivation
to work on the task of merging ARM Linux patches.  with the amount of
selfishness that has been going on for so many years, i am surprised
he's tolerated it this long.
http://article.gmane.org/gmane.linux.kernel/1121096

* I've seen proposed solutions and many many descriptions of the
problems caused by the rise of ARM Linux, but none of them look at
this from an "overview" perspective, which is that the core of the
problem is lack of cooperation and collaboration - precisely counter
to the whole purpose of Free Software.  here, i hope and believe, is a
small insight into that, along with some references and links:
http://lkcl.net/linux/linux-selfish.vs.cooperation.html

* an attempt last year to motivate people to get together to buy an
early ARM Laptop (the CT-PC89E) which would have been available at the
time in mass-volume for $102, the design of which turned out to be
sponsored by China Telecom, found more than just GPL violations on the
Linux Kernel and u-boot source code.  from this chinese factory (who
were purely hardware assemblers and middle-men.  girls actually) one
of the ICs responsible for keyboard and mouse was "black" - no
markings; the gnu/linux distribution "mid-linux.com" was *also* a
GPL-violating distro which may have links to China's Great Firewalled
"Red Flag" Linux; the ODM (who licensed the design from China Telecom)
was instructed to offer us nothing more than China Telecom 3G CDMA
modems (useless for Europe which needs UMTS); successful
reverse-engineering of a linux kernel onto the device encountered
evidence of "security" attempts to lock the GPL-violating kernel to
the device (which we easily replaced); when my associate presented
Debian GNU/Linux running on the device at a meeting with the ODM and
told them it had an entirely GPL-compliant and entirely Free GNU/Linux
Distro on it, which we wanted to sell across the world, they went very
very quiet.  lastly, Frans, who created the Debian Installer Port for
the 20 people who bought the CT-PC89E samples, is dead.  by suicide.
i leave these as facts - stated facts - and allow YOU to sift through
them and choose which ones to put together, to make your own
conclusion(s).  they may OR MAY NOT be related.

* the FreedomBox Foundation has a clearly-stated goal, to create the
software around small boxes that provide "transition" technology off
of non-free and privacy-invasive servers that are all too tempting for
corporations and governments to interfere with or peek at... yet there
is a clear disconnect and a very wide gap between stating the goal and
actually taking any action to go about creating the software, which
has clearly not been addressed.  The Elephant is in the room, here...

* the UK government was praised by China for looking into possible
censorship of the Internet:
http://yro.slashdot.org/story/11/08/16/0019248/China-Praises-UK-Internet-Censorship-Plan
http://news.slashdot.org/story/11/08/22/217206/Twitter-To-Meet-With-UK-Government-About-Riots

* amongst many other things, the USA continues to take illegal control
of DNS zones, destroying the trust and sovereignty of the very fabric
of the Internet.

* nokia (who received a $EUR 0.5 billion loan from the European
Investment Bank just a few years ago) - our darlings who were using
debian as the basis for their smartphone strategy - bought the
proprietary and non-community-driven late-GPL-releasing Trolltech, and
then recently pulled out of meego _and_ the open-sourcing of Series 60
and out of free software entirely with the famous "burning platform"
quote from their CEO.

* HP has very wisely just fire-sold their entire tablet stock in a way
that will completely recoup their capital outlay (if it has a
resistive touchscreen then the BOM is an estimated $80 and the tablets
have sold out in a few days at $98: $18 is just enough wiggle-room for
shipping as well as possibly even a modest profit, particularly on the
32gb version @ retail $150.  if it's capacitive, the BOM will have an
extra appx $30 on top, meaning they'll get all the working capital
back... just).

* lastly and perhaps most crucially, it has to be said that this "Peak
Oil" thing, along with the "Global Warming" thing, is undeniably
taking a grip on the world, which leaves people with a choice to
*readily* face it (i.e. be prepared and better yet as well get _other
people_ prepared, as a secondary priority), or to face the upcoming
situation in a "Crisis" mode, which, if faced *as* a "Crisis" is quite
likely to result in your death.  people such as joey hess clearly get
it: joey now lives entirely off-grid, and yet still has an internet
connection. in a forest.  i live in a remote area of scotland, now, in
a place which has its own well, and we're growing our own food.  it's
still a work-in-progress.


i could continue with this, and expand it with more examples, but let
me make some summary points:

* we're intelligent people, who have achieved a great deal
* we're responsible for creating the software that underpins today's
computer technology
* governments are waltzing in and doing whatever they feel like.
* corporations are creating hardware WITHOUT taking us into account,
and are grabbing with both hands and returning nothing.

 in short: we - intelligent Free Software Developers - are having the
piss taken out of us, to put it mildly.

so - i tell you what: i'm going to stop there, for now.  i'm going to
leave it at that, for people to think, digest the above, and perhaps
come up with some answers [i have some ideas, but i want to know most
crucially if people are willing to hear them!].  and, to give you an
opportunity to think: is this my problem, at all?  do i actually care?
 what _is_ my role?  and, if i _do_ care, what could i do if i combine
with a number of other people who also care?

i trust that you can see that the scope of the background goes wayyy
beyond that which linaro is tasked with, so i hope - i really do -
that you feel that this really is something which you care about and
can actually feel motivated to consider that _some_ sort of action
needs to be taken, beyond the very valuable tasks and roles which you
are presently carrying out.

if, on an individual basis, you feel that the answer is "no", it's not
my problem, then i can only apologise for having taken up your time,
and wish you good luck with the future.

l.

