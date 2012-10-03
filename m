Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 573DEE00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 07:04:38 -0700 (PDT)
Received: by eekb45 with SMTP id b45so4567619eek.35
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 07:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=SGHRKp6evcpt8jAYhQvjq1kdWng20DkMW6i0yBwJ8cI=;
	b=DZnkZE/UsPdOm4hoj72oZsb27UHYFTzwgHIVXFYTimK6UNLrNGwotGGrKRrJKudKnj
	KrAoK9p9lJz5pMrgubC9PK9tYybZtHhOjj77SRyBUd1bteBGplhkLUz2WJC3VBv5rue7
	Ag4xxjzXqhcXU6MBIrO/KoGI4ykuw43LvU4AG1hxhGiEbHMbENL9+ac8ogtlt8w4lnx8
	jekt0e9qogwzzohVYuMU5POopkMqGY79CUWUh+dbaUjSipZ4gak56KrCYXkdVljjkEcN
	8GbLcCFIij7U/NanY4hKivIfOqc6s2hgb3fJzuKxKDhjV4CvwXPBUQjB76cPXx1Nkd6P
	wmOg==
Received: by 10.14.4.201 with SMTP id 49mr2939500eej.0.1349273077032; Wed, 03
	Oct 2012 07:04:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.173.69 with HTTP; Wed, 3 Oct 2012 07:04:06 -0700 (PDT)
In-Reply-To: <1349249984.1469.2.camel@juli-workstation.net.jusst.de>
References: <CAMAb8ZO1-psKwMhPNrVXroo-jEO37WpigX7xC0VYavTioo6PEg@mail.gmail.com>
	<20121002212223.GE15881@jama.jama.net>
	<159BFF45-059D-4E33-9AE6-EC78B620FA0F@jusst.de>
	<20121002215259.GF15881@jama.jama.net>
	<1349249984.1469.2.camel@juli-workstation.net.jusst.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Oct 2012 07:04:06 -0700
Message-ID: <CAMKF1sr_-YjqDeaSY-T68tiFQbCKQeGG9Yu99MFcDKf1pZx-HA@mail.gmail.com>
To: Julian Scheel <julian@jusst.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't fetch git SRC_URI via HTTP
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
X-List-Received-Date: Wed, 03 Oct 2012 14:04:38 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 3, 2012 at 12:39 AM, Julian Scheel <julian@jusst.de> wrote:
> Am Dienstag, den 02.10.2012, 23:52 +0200 schrieb Martin Jansa:
>> On Tue, Oct 02, 2012 at 11:38:08PM +0200, Julian Scheel wrote:
>> >
>> > Am 02.10.2012 um 23:22 schrieb Martin Jansa <martin.jansa@gmail.com>:
>> >
>> > > On Tue, Oct 02, 2012 at 05:17:23PM -0400, Evade Flow wrote:
>> > >> I'm trying to build core-image-sato for my Pandaboard ES, following the
>> > >> instructions posted here:
>> > >>
>> > >>  - http://maniacbug.wordpress.com/2012/08/03/pandayocto/
>> > >>
>> > >> Thus, my OE build configuration looks like this:
>> > >>
>> > >>> OE Build Configuration:
>> > >>> BB_VERSION        = "1.15.2"
>> > >>> TARGET_ARCH       = "arm"
>> > >>> TARGET_OS         = "linux-gnueabi"
>> > >>> MACHINE           = "pandaboard"
>> > >>> DISTRO            = "poky"
>> > >>> DISTRO_VERSION    = "1.2.1"
>> > >>> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
>> > >>> TARGET_FPU        = "vfp-neon"
>> > >>> meta
>> > >>> meta-yocto        = "denzil:65ffa7395055f7e012cb973f63f92380828eed0d"
>> > >>> meta-ti           = "(nobranch):30fb40ebc13614a74c2e237927c60ac43e01d1bc"
>> > >>
>> > >> I have these lines in my .gitconfig:
>> > >>
>> > >>> [http]
>> > >>>    proxy=http://user:passwd@usaprox.lightning.com:8080
>> > >>
>> > >> so I'd expect URLs like this one (from the meta-ti layer's
>> > >> linux-omap4_3.1.0.bb recipe) to work fine:
>> > >>
>> > >>> SRC_URI = "http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=git;branch=ti-ubuntu-3.1-1282 \
>> > >
>> > > This url seems wrong, it should start with git:// if you want to clone
>> > > git repo.
>> > >
>> > > Because it starts with http:// normal fetch (like wget) was used so it
>> > > downloaded probably some http code (see that kernel-ubuntu.git file)
>> > > instead of any relevant source.
>> >
>> > I ran into the same issue a few days ago. It seems yocto only supports git fetch
>> > through servers providing the repositories through the git protocol. A way to use
>> > git repositories which are provided through http or https would be quite a good
>> > thing to have.
>>
>> That's what protocol param does;
>>
>> Change that to
>> git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=http;branch=ti-ubuntu-3.1-1282
>> and you'll get git fetch over http protocol.
>
> Nice to know. Actually when I had this issue I tried it the other way
> round. Use a http url and set protocol to git...
> Is this noted somewhere in the documentation? I could not find it. I
> think it would be worth mentioning it in the yocto reference manual as
> this seems to be a quite common thing to struggle with.
>

I think Paul posted a patch where bitbake will spit out a good error
message about such usage


> -Julian
>
>
>>
>> > -Julian
>> >
>> > >
>> > >>>           file://0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch \
>> > >>>           file://defconfig \
>> > >>>           "
>> > >>
>> > >> From what I can tell, though, bitbake isn't handling this SRC_URI
>> > >> correctly, and I get:
>> > >>
>> > >>> ERROR: Command Error: exit status: 1  Output:
>> > >>> Applying patch 0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch
>> > >>> patching file scripts/Makefile.fwinst
>> > >>> Hunk #1 FAILED at 27.
>> > >>> 1 out of 1 hunk FAILED -- rejects in file scripts/Makefile.fwinst
>> > >>> Patch 0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch does not apply (enforce with -f)
>> > >>> ERROR: Function failed: patch_do_patch
>> > >>
>> > >> If I examine the folder:
>> > >>
>> > >>  build/tmp/work/pandaboard-poky-linux-gnueabi/linux-omap4-3.1.0-r0
>> > >>
>> > >> I see that it contains no source code. It does, however, contain a file
>> > >> named 'kernel-ubuntu.git', whose content is exactly the same as you'd
>> > >> get if you typed:
>> > >>
>> > >>  wget http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git
>> > >>
>> > >> This seems like a bug, possibly related to one of these:
>> > >>
>> > >>  - http://bugzilla.yoctoproject.org/show_bug.cgi?id=3119
>> > >>  - http://bugzilla.yoctoproject.org/show_bug.cgi?id=3175
>> > >>
>> > >>
>> > >> Maybe this has been fixed since denzil, but... everything I read about
>> > >> the current state of support for the Pandaboard suggests sticking with
>> > >> denzil/gcc 4.6. Is there some workaround I can use to get past this
>> > >> error?  Also, assuming these instructions worked for the author of the
>> > >> original blog post, I wonder what the difference is with my setup.
>> > >>
>> > >> Here are my mods to conf/local.conf, in case it's helpful:
>> > >>
>> > >>> MACHINE = "pandaboard"
>> > >>> BBMASK = "meta-ti/recipes-misc"
>> > >>> PACKAGE_CLASSES = "package_ipk"
>> > >>> CONNECTIVITY_CHECK_URIS=""
>> > >>> BB_GENERATE_MIRROR_TARBALLS = "1"
>> > >>> SOURCE_MIRROR_URL ?= "file:///home/evadeflow/projects/poky-mirror/"
>> > >>> INHERIT += "own-mirrors"
>> > >>
>> > >> And this is my bblayers.conf:
>> > >>
>> > >>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>> > >>> # changes incompatibly
>> > >>> LCONF_VERSION = "4"
>> > >>>
>> > >>> BBFILES ?= ""
>> > >>> BBLAYERS ?= " \
>> > >>>  /home/evadeflow/projects/poky-git/meta \
>> > >>>  /home/evadeflow/projects/poky-git/meta-yocto \
>> > >>>  /home/evadeflow/projects/poky-git/meta-ti \
>> > >>>  "
>> > >> _______________________________________________
>> > >> yocto mailing list
>> > >> yocto@yoctoproject.org
>> > >> https://lists.yoctoproject.org/listinfo/yocto
>> > >
>> > > --
>> > > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>> > > _______________________________________________
>> > > yocto mailing list
>> > > yocto@yoctoproject.org
>> > > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

