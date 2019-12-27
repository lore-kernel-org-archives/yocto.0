Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.20])
 by mx.groups.io with SMTP id smtpd.web10.2076.1577477812752766666
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Dec 2019 12:16:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=NhbPjniN;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 85.215.255.20, mailfrom: prvs=12645a6e24=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1577477811;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=TZ5P/HbIUN+SuceBi9QgecNmVZHYBfmZaUZarr7T/KY=;
	b=NhbPjniNmx3nWfaefzKmflO+gwbR3M8A3vOz96Jd7RjJyf5LfWiAR9ERjuQPcHZCDq
	bzZasQrLPmVVNBSao0ceZ3ad6GiEKArEaGJ26HkP3WSwf9AingjANbIVSFBZFDEimujt
	09usJ+NHf4Zujgf4V+D7Nv8iFzUZRIG68TaNU6nWVeGTUSdwSTInOVsHqkEyEinjHUnD
	Y0Kxij1w+XFu89K7SHYeYWWiYXCs9CZSCbXOetCNk7XOaAT0M1W7S+XQ9zJeNGGbPEvZ
	fxceZz7i5IPnt4M4rCTTkk12PbFCx22JqfAg2X7VNWdFg83QpNUj5LlPxEJ/uhDtkI3j
	GKeA==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.1.3 AUTH)
	with ESMTPSA id v0563bvBRKGo6iD
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Fri, 27 Dec 2019 21:16:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1577477810; x=1578082610;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=TZ
	5P/HbIUN+SuceBi9QgecNmVZHYBfmZaUZarr7T/KY=; b=ydETjLm1N2LVkvDzmB
	Z5zb8v+1g/tlPn7fImsoGRrdnmOTJ9O1JFDG50hjct0fm6th98aD+9srp715ePc1
	6bbqS+fyJ49rhoUVM/baIQGltNNq9G8XwVQUPxev2UehT6fe8yaLYKD/Ce2ytcF3
	CA8Zz7dKO9ZxXh3Wj6L7xhRC0=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.3) with ESMTPSA id md50000230334.msg; 
	Fri, 27 Dec 2019 21:16:49 +0100
X-Spam-Processed: mail.rsi-elektrotechnik.de, Fri, 27 Dec 2019 21:16:49 +0100
	(not processed: message from trusted or authenticated source)
X-MDRemoteIP: 178.27.65.232
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Fri, 27 Dec 2019 21:16:49 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=12645a6e24=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Fri, 27 Dec 2019 21:16:34 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] OEM supplied yocto image is impossible to work with
Message-ID: <20191227201634.7lcmxythihq3nzvh@jholzmayr.localdomain>
References: <CAK4PFCUfSofY8JoK_QNhRA1ThTGVCKJM187BepSkXR4aypG-pQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK4PFCUfSofY8JoK_QNhRA1ThTGVCKJM187BepSkXR4aypG-pQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hello Kent!

Sorry to hear that your presumably first contact with Yocto respectively
OpenEmbedded technology is being so painful. Please find some thought
and comments inline.

On Fri, Dec 27, 2019 at 12:00:13PM -0500, Kent Dorfman wrote:
> Oh, and this is the THIRD time I've tried posting this...you certainly
> don't make the yocto mailing lists easy to subscribe to.
> 
> Lemme appologize in avance because parts of this are going to come
> across as rants directed at both our OEM and yocto.  Hopefully "yinz"
> have thick skins.

We have, by now.

> I've been doing embedded system design since the beginning of the
> millenium (mostly VXworks, with some linux intel embedded, PPC
> cross-dev chain stuff, and bare metal C/C++ microcontrollers) and now
> I'm tasked with implementing a very mission critical set of embedded
> processors in an aerospace project.  I've not used yocto before.  The
> closest thing being buildroot.

"close" is really somewhat relative here. The words that trigger my
alarm here are "mission critical" and "aerospace". Anything that I will
write below is no legal advice, and not fit for any form of
certification or audit. If these are your requirements, then there are
companies in the Yocto ecosystem that are willing to offer their
services.
 
> Anyway, the OEM for our boards was chosen before I came on board and
> while I can find no fault with the zynq based hardware, their software
> SDK and support is fracking terrible.

BSPs are a constant cause of pain for us giving Yocto support too. If
a board vendor screws up, we get to pick up the pieces too many times.

> Like most OEMs, their prefered model is to give the customer just
> enough information to try and force us to pay them to build a turnkey
> solution on our behalf, which is not an option in our enterprise.

Little to add, besides... that it might have been a bad choice or
negotiation, if you're only now learning that they want to charge you
additionally. Thats something we obviously can't help you with.
 
> Their minimal yocto based SDK and reference implementation:
> 
> 1) as is, isn't suitable for our mission needs, where we must make
> changes to the base image,  kernel, and initramfs.  They seem to
> expect customers to only add on apps to the UBI rootfs and not screw
> with anything else.

If they are not willing to hand out all sources plus metadata layers,
then thats a total red flag. Yet again, not something we could change.

> 2) has many closed source packages in it that will only build from
> source when in their local intranet.  Deleting the cache and
> attempting a complete source level rebuild consistently fails.

Red flag. Once again.

> 3) isn't documented at all, and they will only answer direct, well
> phrased questions, instead of volunteering information that meets our
> stated goals.

And another one.

> 4) them being a multinational company causes additional legal,
> information sharing, and logistical problems

Sorry, I mean... didn't you request at least some form of eval kit? Demo
boards? To actually understand what you are buying?

Up to this point, yes, I can feel your frustration, but there's little
to say other than that you probably have a bad partnership by now.

So now, on to things that I can hopefully say more positive things.

> Questions/problems in yocto where the documentation kind of sucks, are:
> 
> 1) the necessity to "clean build" is inherent in any software
> endeavour, yet the simple equivalent of "make clean && make image" is
> nowhere to be easily found in yocto.  It is implied that deleting the
> tmp/ and sstate_cache/ directories should have the same affect, but is
> that safe?  What will it break?  I need to be confident in the process
> when I go scream at the OEM, telling them that their build tool is
> incomplete for our air-gapped environment.

The cleanest without throwing away the whole build that you can do is
remove everything in the build directory besides "conf". Yet there are
probably two sides to your actual question. a "bitbake -c clean
$YOURRECIPE" is the perfect equivalent to make clean, "bitbake
$YOURRECIPE" equivalates to "make". Wiping tmp and sstate cache is
pretty close to a full clean rebuild of the whole system, and no, it
shall not break. If it does, there is either something wrong with your
build setup (can happen) or you hit a bug (happens less often, but
happens too). The second side is actually running a full system rebuild,
which includes the complete build setup. Actually there is no
Yocto-inhernt way to do it, as different people have different needs -
and nobody managed a one size fits all solution until now. You can look
at the autobuilder as provided by the Yocto Project, and at the various
approaches here [1];

> 2) related to above, yocto needs a much better description of the
> expected directory tree within a project.

Within a project? Could you please elaborate? 
 
> 3) the relationship between bitbake and devtool needs to be better
> documented and both utilities need to be better documented themselves.
> trying to run bitbake manually causes path errors (null entry in path)
> when in fact, bitbake itself is setting a path somewhere incorrectly.
> my path has no null entries or "." in it.

bitbake and devtool can and should be used side by side. Running bitbake
manually, as you put it, is the definitively primary way of doing
things. So if that eeks out for, there is probably something strange
with your setup. If you can provide a more extensive log or error
message, we will happily...erm, at least honestly try to help.

> 4) yocto documentation fails in presenting a good explanation of the
> difference between packages, layers, recipes, and images.  Also, I've
> seen cases where virtual/kernel is used to check-out the kernel to
> work on it, yet no virtual/kernel directory exists in the layers
> directory tree, so a better explanation of the mapping between real
> directories and virtual names is warranted. ... and yes, I know what
> BB files are for.

I tend to agree on the mapping part.

> 5) a big area that seems to be lacking is the ability to inquire in a
> yocto build as to what is included in it.  This is especially
> important if the responsible party didn't actually create the build,
> as is our case.  We're left with trying to guess what the OEM did, and
> why.

Now this is certainly not true. Even in the utmost default setup, a
manifest file will be created along the image which tells you which
packages including version and license that went into it.

bitbake -g $TARGETOFYOURCHOICE will give you a dot file to inspect the
complete dependency graph of your chosen target. This is a bit too much
in-depth at times, but extremely powerful.

And last but not least, its a good practise to have buildhistory enabled
[2]. This offers extremely detailed information about each and every
package and dependency that went into your build, down to each single
file, package size,...

> 6) the seeming inability of yocto to build reproducable binary images
> is a serious shortcoming in IA environments.  The first step in
> development for us is to baseline the reference build provided by the
> OEM and then make incremental changes to it, but yocto doesn't seem to
> have a way to validate that the build done in-house is identical to
> the pre-built images supplied on the board.  Is there a way to "forced
> sequentialize" the yocto process so that images can be reproducable?

There is work being done on reproductible builds, but we're not there
yet. Might not be the answer you want or need, but the honest state of
affairs.

> 7) a large part of me wants to throw away the OEM build and start from
> scratch, but I have no information about how to correctly import their
> "blob only" packages into a separate yocto project.  Hell, I am not
> convinced that their blobs will remain persistent if I delete the
> cache because I don't know whether they were created in their network
> and  expected to always live in the cache, thus negating the ability
> of a customer to do a "clean build"

Including pre-produced blobs in a Yocto build is not pretty, but often
handy or impossible to avoid. Please see [3] for the documentation on
it.
 
> Anyway, yes, I've read what docs I can find on yocto, and aside from
> falling asleep several times in the process, the docs really are not
> helping me with the problem at hand: using an existing yocto build
> provided by a possibly unscrupulous vendor.

In a nutshell: whenever somebody hands you a binary build, without the
corresponding set of sources and metadata, then you are out of luck and
in for a lot of pain. That exactly the way of how to NOT use yocto when
selling hardware. Some do, and unfortunately we, as the Yocto community
can't do much about it, other than try and help the folks who struggle
with it. And go buy our hardware in another place.

Having said all this. Yes, we know that we have a very steep learning
curve and lots of places to go wrong - yet on the other hand if you make
it through *AND* if it fits your needs, then you are awarded with an
amount of power that is beyond comparison to about any other build
system. But those are two big ifs, yes, and the latter we cannot answer
for you. Only help in the first one.

This might not be the best time of the year as most of us are on
vacation, but feel free to head into #yocto on the freenode network,
where you can easily get in touch with us directly, and we really try to
offer good help and advice. Starting from Jan 7th, you can also expect
better response times :)

And while maybe not an exact fit for you, there still might be
interesting sessions in this playlist for you [4].

With that, I hope I could give a somewhat helpful but certainly
honest answer.

Greetz

[1] https://stackoverflow.com/questions/58863254/how-to-manage-meta-layers-for-a-yocto-project-build-configs-in-git/58865947#58865947
[2] https://www.yoctoproject.org/docs/3.0.1/dev-manual/dev-manual.html#maintaining-build-output-quality
[3] https://www.yoctoproject.org/docs/3.0.1/dev-manual/dev-manual.html#packaging-externally-produced-binaries
[4] https://www.youtube.com/playlist?list=PLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj

-- 
———————————————
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548 

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548

