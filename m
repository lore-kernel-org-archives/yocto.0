Return-Path: <luke.leighton@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63DDFE011C1
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2011 14:02:10 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yib17 with SMTP id 17so2587563yib.35
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2011 14:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=/+FaLTo+/Px9otWyO95aKuYdTdQnMdJgwbnkuCn7LJ8=;
	b=XNGRBDGljojJhKioq52DpfK6vVqnYkfURFENuxPacJOllPf3mat1J1V58lppLxouli
	AWJsdgR2iw3EFfiKL0AYkjxQCXzRIBvUZo/OlaVs4KCeMA8dW3XHjUjO7FMettUQsrhq
	QEcFJPR0D0vl4vhxhSEWIUe3IcfIXNzI0VNBk=
MIME-Version: 1.0
Received: by 10.100.242.3 with SMTP id p3mr1656084anh.110.1314392529255; Fri,
	26 Aug 2011 14:02:09 -0700 (PDT)
Sender: luke.leighton@gmail.com
Received: by 10.101.106.27 with HTTP; Fri, 26 Aug 2011 14:02:09 -0700 (PDT)
In-Reply-To: <20110826163502.GB23469@n2100.arm.linux.org.uk>
References: <20110809181534.GR10171@einval.com>
	<20110823161134.GV3053@linaro.org>
	<efc47c3039402c1507d76f381a790115@mail.shatteredsilicon.net>
	<CAPweEDwkVWH=r_moJj1_CKLxRUkkbBgHenZhwi8CzY9z3BO-Cw@mail.gmail.com>
	<CADkCAuuaH5k2duuvUdmj1j9=6oaCKORN-NJGg4gt2ovEshHYmw@mail.gmail.com>
	<alpine.DEB.2.02.1108241648360.29431@asgard.lang.hm>
	<CADkCAut2sMMKcCLiG0g+Rwt5z4dXJgRZYyvUAzCQVTQQMPFJmA@mail.gmail.com>
	<20110826163502.GB23469@n2100.arm.linux.org.uk>
Date: Fri, 26 Aug 2011 22:02:09 +0100
X-Google-Sender-Auth: JISg7R4f5R84OUeRYccviBcz3HE
Message-ID: <CAPweEDxJO0=tFOHhiiiDvucQYZ-0EJZZbsqWwc7BHrZQ2=a5sQ@mail.gmail.com>
From: Luke Kenneth Casson Leighton <lkcl@lkcl.net>
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
X-Mailman-Approved-At: Tue, 30 Aug 2011 21:37:51 -0700
Cc: david@lang.hm, cross-distro@lists.linaro.org,
	Bill Gatliff <bgat@billgatliff.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Ubuntu Devel <ubuntu-devel@lists.ubuntu.com>,
	GCC developers <gcc@gcc.gnu.org>, yocto@yoctoproject.org,
	Gentoo Embedded <gentoo-embedded@lists.gentoo.org>,
	Bruce Perens <bruce@perens.com>,
	LSB discuss <lsb-discuss@lists.freestandards.org>,
	Debian ARM <debian-arm@lists.debian.org>,
	Fedora ARM <arm@lists.fedoraproject.org>,
	OLPC Devel <devel@lists.laptop.org>,
	OpenEmbedded Devel <openembedded-devel@lists.openembedded.org>,
	cooker@mandrivalinux.org, MeeGo Dev <meego-dev@meego.com>,
	Linux on small ARM machines <arm-netbook@lists.phcomp.co.uk>,
	torvalds@linux-foundation.org, Alan Cox <alan@lxorguk.ukuu.org.uk>,
	Mageia Dev <mageia-dev@mageia.org>
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
X-List-Received-Date: Fri, 26 Aug 2011 21:02:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

russell, good to hear from you.

can i recommend, that although this is a really wide set of
cross-posting on a discussion that underpins pretty much everything
(except gnu/hurd and minix) because it's linux kernel, that, just as
steve kindly advised, we keep this to e.g.
cross-distro@lists.linaro.org?  i'll be doing that from now on [after
this] perhaps including arm-netbooks as well, but will be taking off
all the distros.

so - folks, let's be clear: please move this discussion to
cross-distro@lists.linaro.org, and, if it's worthwhile discussing in
person, please do contact steve, so he can keep the slot open at the
Plumbers 2011 summit.

On Fri, Aug 26, 2011 at 5:35 PM, Russell King - ARM Linux
<linux@arm.linux.org.uk> wrote:
> On Fri, Aug 26, 2011 at 11:11:41AM -0500, Bill Gatliff wrote:
>> As such refactoring consolidated larger and larger chunks of kernel
>> code, new designs would gravitate towards those consolidated
>> implementations because they would be the dominant references.
>
> Don't bet on it. =C2=A0That's not how it works (unfortunately.)
>
> Just look at the many serial port inventions dreamt up by SoC designers -
> everyone is different from each other. =C2=A0Now consider: why didn't the=
y use
> a well established standard 16550A or later design?

 *sigh* because they wanted to save power.  or pins.  or... just be
bloody-minded.

> This "need to be different" is so heavily embedded in the mindset of the
> hardware people that I doubt "providing consolidated implementations"
> will make the blind bit of difference.

 i think... russell... after they are told, repeatedly, "no, you can't
have that pile of junk in the mainline linux kernel, Get With The
Programme", you'd think that, cumulatively if they end up having to
maintain a 6mb patch full of such shit, they _might_ get with the
programme?

 and if they don't, well.... who honestly cares?  if they don't, it's
not *your* problem, is it?  _they_ pay their employees to continue to
main a pile of junk, instead of spongeing off of _your_ time (and
linus's, and everyone else's in the Free Software Community).


> =C2=A0I doubt that hardware people
> coming up with these abominations even care one bit about what's in
> the kernel.

 then don't f******g make it _your_ problem, or anyone else's, upstream!! :=
)

 this is the core of the proposal that i have been advocating: if it's
"selfish", i.e. as bill and many many others clearly agree with "if
the bang-per-buck ratio is on the low side" then keep it *out* the
mainline linux kernel...

 ... and that really is the end of the matter.

the sensible people that i've been talking to about this are truly
puzzled as to why the principles of "cooperation and collaboration"
behind free software are just being... completely ignored, in
something as vital as The Linux Kernel, and they feel that it's really
blindingly obvious that the "bang-per-buck" ratio of patches to
mainline linux kernel need to go up.

 so the core of the proposal that is the proposed
"selfish-vs-cooperation patch policy" is quite simple: if the patch
has _some_ evidence of collaboration, cooperation, refactoring,
sharing - *anything* that increases the bang-per-buck ratio with
respect to the core fundamental principles of Free Software - it goes
to the next phase [which is technical evaluation etc. etc.].
otherwise, it's absolutely out, regardless of its technical
correctness, and that's the end of it.

 the linux kernel mainline source tree should *not* be a
dumping-ground for a bunch of selfish self-centred pathological
profit-mongering corporations whose employees end up apologising in
sheer embarrassment as they submit time-pressured absolutely shit
non-cooperative and impossible-to-maintain code.

 you're not the only one, russell, who is pissed off at having to tidy
up SoC vendors' patches.  there's another ARM-Linux guy, forget his
name, specialises in samsung: two years ago he said that he was
getting fed up with receiving yet another pile of rushed junk... and
that's *just* him, specialising in samsung ARM SoCs!

we're just stunned that you, the recipient of _multiple_ SoC vendors
piles of shite, have tolerated this for so long!

anyway - i've endeavoured to put together some examples, in case
that's not clear: i admit it's quite hard to create clear examples,
and would greatly appreciate help doing so.  i've had some very much
appreciated help from one of the openwrt developers (thanks!)
clarifying by creating another example that's similar to one which
wasn't clear.

   http://lkcl.net/linux/linux-selfish.vs.cooperation.html

this should be _fun_, guys.  it shouldn't be a chore.  if you're not
enjoying it, and not being paid, tell the people who are clearly
taking the piss to f*** off!

 but - i also would like to underscore this with another idea: "lead
by example" (which is why i've kept the large cross-distro list)  we -
the free software community - are seeing tons of nice lovely android
tablets, tons of nice lovely expensive bits of big iron and/or x86
laptops, and only in very small areas (OpenRD Ultimate, GuruPlug,
Pandaboard, IMX53QSB, Origen) are our needs for actual hardware which
_we_ want (and i'm *not* being presumptious here - i'm inviting people
to *say* what they want) just aren't being met.

 who wants a bloody 800x600 VIA VunnnderMedia ARM9 350mhz tablet, to
do linux kernel and gnu/linux distribution development on, _anyway_???
  and who the hell wants only 512mb of RAM (iMX51).  and who in their
right fucking mind dreamed up that 1024x600 LCD panel size?

 so here's what i propose:

 we, The Free Software Community, want Our Figureheads (linus, bruce,
alan, russell) to call us to arms (so to speak), to band together a la
KickStarter http://kickstarter.org (or other), so that we can create
the hardware platform(s) that *we* want, and, in the process, can take
the opportunity to sort out the Linux Kernel mainline tree in the
process (learning by doing, doing by leading, leading by example etc.
etc.)

 apart from anything - and this goes to you, linus and russell - i
think that you would be much happier taking a break from doing git
patch conflict management, _actually_ getting down and dirty with some
real device driver writing, and i think you'd be much happier doing
that knowing that the device you were writing those kernel drivers for
was something that actual real free software developers really really
wanted.

 now, as i said above: i don't _dare_ to presume that i know what
actual real free software developers want, in terms of hardware, but
there's a small sampling on the debian-arm mailing list... let me drop
you roughly in the middle of it, here:
http://lists.debian.org/debian-arm/2011/08/msg00045.html  mostly that
was focussed around those little engineering boards (panda, IMX53QSB,
origen etc.) but my aim here is to get people to think:

 what hardware, which is fully free-software-compliant, that you would
buy and recommend to others, that could also be attractive in
mass-volume, do _you_ want to see, that would be useful to _you_?

 i'm getting fed up of seeing stuff come out of factories that's
completely useless.  or gpl-violating.  and/or requires
reverse-engineering.
http://lkcl.net/linux/ideal-vs-reality.of.product.development.html for
some background.

 as a free software developer, what hardware do YOU want?

 answers on this one to arm-netbooks@lists.phcomp.co.uk (subscription
required, please remember)

 and, lastly - linus, russell, alan, bruce: there are people out there
who would really appreciate if you could take up this call.  not just
me.  we'd like to see you using your skills, and actually be happy and
enjoy doing nitty-gritty linux kernel development, to the benefit of
the free software community, instead of turning into patch
junkies^H^H^H^H^H^Hmonkeys^H^H^H^H^H^H^Hmanagers.

 l.

