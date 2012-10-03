Return-Path: <raj.khem@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10DB4E01199
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 23:38:21 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id hn14so1623747wib.11
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 23:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=8tXK/fUPFE9zebSDroB4snQCEgRm3qVFqtNd1coWjPE=;
	b=ZcJsOIX4Q0Mwfc0m9OxdnBI9/hYUZgYX7VlwBNmzAE2ggRHMwUuAmpWtFWjlxFXGJq
	dgo+Qr8T1ZcPhZfOshbs7LvgE53MM/q3W/1e2vEemVMNOwe1WsRgiPxUHCpF9/MzBVO7
	xGZ1ihM5wA3GhxB048iC6j8LPcUYDICHP40MwRcy7MSkrBP0gns7oH6x5CD0jLu7Ut+i
	lVgdxHklWHXjXXv9RyzA4jQ+kmuJsnKBtzrYca9Vk7aZP740uDDiZQzN737X6x9+emyJ
	5FSVMqJFflflKkeB7ak6BP720br6upD3N3FJzwR//6vh8GTH6Qmn80d27RNGZB7AtX+a
	BsoQ==
Received: by 10.216.56.82 with SMTP id l60mr639061wec.18.1349246301027; Tue,
	02 Oct 2012 23:38:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.28.38 with HTTP; Tue, 2 Oct 2012 23:37:50 -0700 (PDT)
In-Reply-To: <159BFF45-059D-4E33-9AE6-EC78B620FA0F@jusst.de>
References: <CAMAb8ZO1-psKwMhPNrVXroo-jEO37WpigX7xC0VYavTioo6PEg@mail.gmail.com>
	<20121002212223.GE15881@jama.jama.net>
	<159BFF45-059D-4E33-9AE6-EC78B620FA0F@jusst.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 2 Oct 2012 23:37:50 -0700
Message-ID: <CAMKF1sqjEs8RcX6p2FNR+A0pKA_ULPMhkvr6WuY=DHyyJt5rdw@mail.gmail.com>
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
X-List-Received-Date: Wed, 03 Oct 2012 06:38:22 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 2, 2012 at 2:38 PM, Julian Scheel <julian@jusst.de> wrote:
>
> Am 02.10.2012 um 23:22 schrieb Martin Jansa <martin.jansa@gmail.com>:
>
>> On Tue, Oct 02, 2012 at 05:17:23PM -0400, Evade Flow wrote:
>>> I'm trying to build core-image-sato for my Pandaboard ES, following the
>>> instructions posted here:
>>>
>>>  - http://maniacbug.wordpress.com/2012/08/03/pandayocto/
>>>
>>> Thus, my OE build configuration looks like this:
>>>
>>>> OE Build Configuration:
>>>> BB_VERSION        = "1.15.2"
>>>> TARGET_ARCH       = "arm"
>>>> TARGET_OS         = "linux-gnueabi"
>>>> MACHINE           = "pandaboard"
>>>> DISTRO            = "poky"
>>>> DISTRO_VERSION    = "1.2.1"
>>>> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
>>>> TARGET_FPU        = "vfp-neon"
>>>> meta
>>>> meta-yocto        = "denzil:65ffa7395055f7e012cb973f63f92380828eed0d"
>>>> meta-ti           = "(nobranch):30fb40ebc13614a74c2e237927c60ac43e01d1bc"
>>>
>>> I have these lines in my .gitconfig:
>>>
>>>> [http]
>>>>    proxy=http://user:passwd@usaprox.lightning.com:8080
>>>
>>> so I'd expect URLs like this one (from the meta-ti layer's
>>> linux-omap4_3.1.0.bb recipe) to work fine:
>>>
>>>> SRC_URI = "http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=git;branch=ti-ubuntu-3.1-1282 \
>>
>> This url seems wrong, it should start with git:// if you want to clone
>> git repo.
>>
>> Because it starts with http:// normal fetch (like wget) was used so it
>> downloaded probably some http code (see that kernel-ubuntu.git file)
>> instead of any relevant source.
>
> I ran into the same issue a few days ago. It seems yocto only supports git fetch
> through servers providing the repositories through the git protocol. A way to use
> git repositories which are provided through http or https would be quite a good
> thing to have.

bitbake fetchers deduce the fetching method from xxx:// and whatever
protocol that fetch method's defaults are is used unless protocol=
parameter is specified. Its not 1 to 1 copy
of what you would do on cmdline manually although it seems very close to that.

>
> -Julian
>
>>
>>>>           file://0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch \
>>>>           file://defconfig \
>>>>           "
>>>
>>> From what I can tell, though, bitbake isn't handling this SRC_URI
>>> correctly, and I get:
>>>
>>>> ERROR: Command Error: exit status: 1  Output:
>>>> Applying patch 0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch
>>>> patching file scripts/Makefile.fwinst
>>>> Hunk #1 FAILED at 27.
>>>> 1 out of 1 hunk FAILED -- rejects in file scripts/Makefile.fwinst
>>>> Patch 0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch does not apply (enforce with -f)
>>>> ERROR: Function failed: patch_do_patch
>>>
>>> If I examine the folder:
>>>
>>>  build/tmp/work/pandaboard-poky-linux-gnueabi/linux-omap4-3.1.0-r0
>>>
>>> I see that it contains no source code. It does, however, contain a file
>>> named 'kernel-ubuntu.git', whose content is exactly the same as you'd
>>> get if you typed:
>>>
>>>  wget http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git
>>>
>>> This seems like a bug, possibly related to one of these:
>>>
>>>  - http://bugzilla.yoctoproject.org/show_bug.cgi?id=3119
>>>  - http://bugzilla.yoctoproject.org/show_bug.cgi?id=3175
>>>
>>>
>>> Maybe this has been fixed since denzil, but... everything I read about
>>> the current state of support for the Pandaboard suggests sticking with
>>> denzil/gcc 4.6. Is there some workaround I can use to get past this
>>> error?  Also, assuming these instructions worked for the author of the
>>> original blog post, I wonder what the difference is with my setup.
>>>
>>> Here are my mods to conf/local.conf, in case it's helpful:
>>>
>>>> MACHINE = "pandaboard"
>>>> BBMASK = "meta-ti/recipes-misc"
>>>> PACKAGE_CLASSES = "package_ipk"
>>>> CONNECTIVITY_CHECK_URIS=""
>>>> BB_GENERATE_MIRROR_TARBALLS = "1"
>>>> SOURCE_MIRROR_URL ?= "file:///home/evadeflow/projects/poky-mirror/"
>>>> INHERIT += "own-mirrors"
>>>
>>> And this is my bblayers.conf:
>>>
>>>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>>>> # changes incompatibly
>>>> LCONF_VERSION = "4"
>>>>
>>>> BBFILES ?= ""
>>>> BBLAYERS ?= " \
>>>>  /home/evadeflow/projects/poky-git/meta \
>>>>  /home/evadeflow/projects/poky-git/meta-yocto \
>>>>  /home/evadeflow/projects/poky-git/meta-ti \
>>>>  "
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> --
>> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

