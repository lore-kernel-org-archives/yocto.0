Return-Path: <kergoth@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92E84E0044A
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 10:27:02 -0700 (PDT)
Received: by qcsd1 with SMTP id d1so2961691qcs.35
	for <yocto@yoctoproject.org>; Tue, 03 Apr 2012 10:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=5TebmyrCAj/mzj5x+Fp/PnpfcgznAkX/JIipG0DCITk=;
	b=NmMWyj/SX4XyR5dQgljkTz6NYCcms2prxcsYH6FabuIm1drzn0lVPl7OQfxxAcp4P1
	4wmyTZk2daNRhQCcsupsuQPSddXedLjk530gSuYqEzJQ/vrX25Rk63MkhdosJPPiyzfn
	5PpzGE3Fqvl6rnj2pqPn8gikEQj69wYCWemNi69F3hTZlbTs5rJm/6IoDWM4IXWaNhpF
	vM3qtVQTvcZ3En4bSV0VK8/4ojUcREVF4P1KWfyozpa1SwT3IO8huaGglM9VnvxgTJD9
	cFOSdeFGsO/0V5CH255GVl1z1WJ7zCo7WApB4PmgUo6Fd7Ree97V9dp9J5Au+/ej7XFV
	FEcQ==
Received: by 10.224.210.66 with SMTP id gj2mr2456054qab.3.1333474021848; Tue,
	03 Apr 2012 10:27:01 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.24.196 with HTTP; Tue, 3 Apr 2012 10:26:41 -0700 (PDT)
In-Reply-To: <20120403171540.GF4816@bill-the-cat>
References: <95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com> <20120402171356.GE4829@bill-the-cat>
	<4F7B1EBD.1030500@linux.intel.com>
	<20120403162541.GB3943@jama.jama.net>
	<4F7B261B.1090101@linux.intel.com>
	<20120403164432.GC3943@jama.jama.net>
	<4F7B2E9C.7040600@linux.intel.com> <20120403171540.GF4816@bill-the-cat>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 3 Apr 2012 10:26:41 -0700
X-Google-Sender-Auth: wm7SgODGie2J0bBac8ScMxFl24c
Message-ID: <CABcZANnBGC_uhsO0aE-U3s8QjYGP+1JDupdqoTPW=XpNcOEcFA@mail.gmail.com>
To: Tom Rini <tom.rini@gmail.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Tue, 03 Apr 2012 17:27:02 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 3, 2012 at 10:15 AM, Tom Rini <tom.rini@gmail.com> wrote:
> On Tue, Apr 03, 2012 at 10:08:44AM -0700, Darren Hart wrote:
>> -----BEGIN PGP SIGNED MESSAGE-----
>> Hash: SHA1
>> On 04/03/2012 09:44 AM, Martin Jansa wrote:
>> > On Tue, Apr 03, 2012 at 09:32:27AM -0700, Darren Hart wrote:
>> >> -----BEGIN PGP SIGNED MESSAGE----- Hash: SHA1
>> >> On 04/03/2012 09:25 AM, Martin Jansa wrote:
>> >>> On Tue, Apr 03, 2012 at 09:01:01AM -0700, Darren Hart wrote:
>> >>>> -----BEGIN PGP SIGNED MESSAGE----- Clear reproducible
>> >>>> testing results. Whether or not a pair of git clones and some
>> >>>> tinkering can result in the same thing as a poky repository
>> >>>> or not isn't relevant in my opinion. I believe that we need a
>> >>>> consistent mode of validating support for a Yocto Project X.Y
>> >>>> release. Now if that is accomplished by building with the
>> >>>> poky repository of the same vintage or by running some script
>> >>>> that pulls the right bits together independently.... I
>> >>>> honestly don't care, but I do think it should be consistent.
>> >>>
>> >>> so teach setup script something like: poky.sh checkout X.Y
>> >>> (which checkouts whatever parts are needed for X.Y) poky.sh
>> >>> update X.Y (dtto)
>> >>>
>> >>> Which creates the same structure like poky repository has, but
>> >>> by checkouting upstream repositories or using submodules or
>> >>> whatever.
>> >>>
>> >>> That's what oebb.sh and SHR makefile does for master/shr HEADs,
>> >>> but can be extended do it for particular version too.
>> >>>
>> >>
>> >>
>> >> This is certainly doable, but it doesn't address the
>> >> stabilization buffer poky provides that I mentioned.
>> >
>> > And is it? OE @ ~ $ diff -rq openembedded-core/ projects/poky/ |
>> > grep -v '\.git' Files openembedded-core/README and
>> > projects/poky/README differ Only in projects/poky/:
>> > README.hardware Only in projects/poky/: bitbake Only in
>> > openembedded-core/: dev Only in projects/poky/: documentation Only
>> > in openembedded-core/meta/conf: bblayers.conf.sample Only in
>> > openembedded-core/meta/conf: local.conf.sample Only in
>> > openembedded-core/meta/conf: local.conf.sample.extended Only in
>> > openembedded-core/meta/conf: site.conf.sample Only in
>> > projects/poky/: meta-yocto Only in projects/poky/scripts: lib Files
>> > openembedded-core/scripts/oe-setup-builddir and
>> > projects/poky/scripts/oe-setup-builddir differ Only in
>> > projects/poky/scripts: yocto-bsp Only in projects/poky/scripts:
>> > yocto-kernel
>> >
>> > OE @ ~ $ diff -rq projects/bitbake/ projects/poky/bitbake/ | grep
>> > -v '\.git' Only in projects/bitbake/: MANIFEST.in Only in
>> > projects/bitbake/: TODO Only in projects/poky/bitbake/bin:
>> > bitbake-runtask Only in projects/bitbake/: classes Only in
>> > projects/bitbake/: conf Only in projects/bitbake/lib/bb: fetch Only
>> > in projects/poky/bitbake/lib/bb: shell.py Only in
>> > projects/bitbake/: setup.py
>> >
>> > Those changes doesn't look like stabilization buffer.. which is
>> > fine we don't need bigger diff between oe-core repo and poky copy,
>> > smaller would be nice.
>> >
>> > And "dangerous" changes are stopped to oe-core AFAIK, see e.g. my
>> > 13 pending patches...
>>
>> I expect the buffer to be empty at times. Hopefully *MOST* of the time.
>
> I really think what you're calling a stabilization buffer is what others
> of us see when we branch the repo(s) we're working on until we're happy
> with the changes.

I really don't see what the issue is here. If you want a stable
branch, we can look into creating such a thing upstream, though I'm
personally of the opinion that master should remain release-quality,
and make better use of feature branches, potentially a
next/integration branch for forthcoming features, than trying to
cherry pick onto a "stable" branch. There's nothing poky's structure
provides that can't also be provided via branching policy in the
individual repositories.
-- 
Christopher Larson

