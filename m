Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54A03E00D20; Tue, 15 Aug 2017 10:14:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C4C8E00B01
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 10:14:21 -0700 (PDT)
Received: by mail-ua0-f193.google.com with SMTP id x24so665184uah.5
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 10:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+SXsLzWHpN09QAYnJ7HFWp8XhwoOIjcyth2O96Gf/XM=;
	b=PoYWE4f09CjuedGurr57AfbP/+suud8vLHF+HEWr5x1/rfclzFnwS7wEr1hiITb6od
	VHy1IAf1PFeCcPjoPiT3c0M93BtG6A+AyjN+Y0k1yPtpu17+SLi01/AMe94UQfO3tlb0
	bPH2jy1ppuJSje2pyS6cWY7ivKF9EhI3ylmoKsWtjdY+2PKN9H17gJOVNZCcfsjiLh87
	EVxsfUF27iASQ9BL+CQg8U6lcOMDKeTFN5HtQjVmHYVVKct3ybACzgwEiYn7r/8o3APy
	0mdP99V0f33dydkGoMw0VDDJUVDB+hL4KRX/Xf6XZb2woWHeLrGFU32pHwmbW5VEPYv2
	BMWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+SXsLzWHpN09QAYnJ7HFWp8XhwoOIjcyth2O96Gf/XM=;
	b=H2VhH5UE4nHXnkZs4vcH1eHami+XSuOKXxa+TN+DOngAFaR2U+fjE9l7owYtK4cbW+
	N3x8ZKge11i2LEcO6cDpmffeSzadvmslH3WMMag+ttPa+BIGbYUG8i6ny94A7z0vbKcn
	EFQXype7wKivWbZd1QKNXYButRPcCpeTiWu096kf9G0uDxvYPdKqxodb0T0PupsZhkhN
	T7tUUn8HMDEtWCqP9V/pkd0rsTKzru+flu+Lv75S2fBr/saE/ciZX4NlmiHO9jmia0oh
	swPZTlacKz7Z48IPhK+tmpu9ch/K9Mrmj02i/2wDbixQ3hmysJWczMLr7NVavb6By8Yu
	EeGQ==
X-Gm-Message-State: AHYfb5jVl6EPzw0H9vt9o9c40LZKM5K60860ApwWNwDdunMXW5EqfCch
	Lyn0FYM4R01naKILe51iPnw3Fd9zRQ==
X-Received: by 10.176.80.193 with SMTP id d1mr19721426uaa.124.1502817261136;
	Tue, 15 Aug 2017 10:14:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.122.88 with HTTP; Tue, 15 Aug 2017 10:14:20 -0700 (PDT)
In-Reply-To: <136a41eb-bf9a-cfb9-a075-7c82d6670fb9@gmail.com>
References: <0649cefe-8c90-7268-f363-10ea09f6cd74@gmail.com>
	<CAMKF1srETgqU+m-X99t7ZXAFLTezSX0cbfxVKs7K7Fr8UVBLwA@mail.gmail.com>
	<255b8a2d-8036-76cf-327b-a3128b83ba51@gmail.com>
	<136a41eb-bf9a-cfb9-a075-7c82d6670fb9@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 15 Aug 2017 19:14:20 +0200
Message-ID: <CA+chaQcwAHKigQ9n5OTD41OeSy+E8267ehr3KZqLbeuFL9e-9Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Riko <antonius.riko@gmail.com>, "N:" <yocto@yoctoproject.org>
Subject: Re: ERROR: gcc-source-6.3.0-6.3.0-r0 do_fetch: Fetcher failure for URL: 'file://0002-uclibc-conf.patch'. Unable to fetch URL from any source.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 Aug 2017 17:14:27 -0000
Content-Type: multipart/alternative; boundary="94eb2c19211e032f0f0556cde9dd"

--94eb2c19211e032f0f0556cde9dd
Content-Type: text/plain; charset="UTF-8"

He is mixing poky/pyro with oe-core/master. All recent issues reported by
Riko are caused by that.

On Tue, Aug 15, 2017 at 5:49 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> Thanks for sharing your build configuration. It says you are on
> pyro release and I see this patch is there. So something else is
> triggering it. Do you have any local changes ?
>
> On 8/14/17 10:35 PM, Riko wrote:
> > Do you mean this one ?
> >
> > Build Configuration:
> > BB_VERSION        = "1.34.0"
> > BUILD_SYS         = "x86_64-linux"
> > NATIVELSBSTRING   = "universal"
> > TARGET_SYS        = "arm-poky-linux-gnueabi"
> > MACHINE           = "beaglebone"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "2.3.1"
> > TUNE_FEATURES     = "arm armv7a vfp neon callconvention-hard cortexa8"
> > TARGET_FPU        = "hard"
> > meta
> > meta-poky
> > meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
> > meta              = "master:5a25ed1071f0d9b7d95edcc2b5b4545f960d5f95"
> > meta-oe
> > meta-xfce
> > meta-gnome
> > meta-python
> > meta-multimedia
> > meta-networking   = "master:a8b54e300be027fefe8a774ca1861d0fb8e80d99"
> > meta-browser      = "master:e3c3aa0591506672245904227a46519a276957e0"
> >
> >
> > On 15/08/17 13:30, Khem Raj wrote:
> >> On Mon, Aug 14, 2017 at 9:42 PM, Riko <antonius.riko@gmail.com> wrote:
> >>> Dear Team Yocto Member,
> >>>
> >>> How can I get gcc6.30 ?
> >>>
> >>> I got error :
> >>>
> >>> ERROR: gcc-source-6.3.0-6.3.0-r0 do_fetch: Fetcher failure for URL:
> >>> 'file://0002-uclibc-conf.patch'. Unable to fetch URL from any source.
> >>>
> >> what branch are you using and if you are using additonal layers which
> >> ones
> >> are those and what branches are they on.
> >>
> >>> Here's the log :
> >>>
> >>> =======
> >>>
> >>> DEBUG: Executing python function clean_recipe_sysroot
> >>> DEBUG: Python function clean_recipe_sysroot finished
> >>> DEBUG: Executing python function extend_recipe_sysroot
> >>> NOTE: Direct dependencies are []
> >>> NOTE:
> >>> DEBUG: Python function extend_recipe_sysroot finished
> >>> DEBUG: Executing python function do_fetch
> >>> DEBUG: Executing python function base_do_fetch
> >>> DEBUG: Searching for 0001-gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch in
> >>> paths:
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc/poky
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/arm
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/arm
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/arm
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/files/arm
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> >>> DEBUG: Searching for 0002-uclibc-conf.patch in paths:
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc/poky
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/arm
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/arm
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/arm
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/files/arm
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> >>> DEBUG: Defaulting to
> >>> /home/bianchi/poky/build/downloads/0002-uclibc-conf.patch for
> >>> 0002-uclibc-conf.patch
> >>> DEBUG: Trying PREMIRRORS
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: Trying Upstream
> >>> WARNING: Failed to fetch URL file://0002-uclibc-conf.patch, attempting
> >>> MIRRORS if available
> >>> DEBUG: Fetcher failure: Unable to find file
> >>> file://0002-uclibc-conf.patch
> >>> anywhere. The paths that were searched were:
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc/poky
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/arm
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/arm
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/arm
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/files/arm
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> >>>      /home/bianchi/poky/build/downloads
> >>> DEBUG: Trying MIRRORS
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()]
> to
> >>> ['ftp', 'gcc.gnu.org', '/pub/gcc/releases/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()]
> to
> >>> ['ftp', 'gd.tuwien.ac.at', '/gnu/gcc/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()]
> to
> >>> ['http', 'mirrors.rcn.net', '/pub/sourceware/gcc/releases/', '', '',
> >>> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()]
> to
> >>> ['http', 'gcc.get-software.com', '/releases/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()]
> to
> >>> ['http', 'gcc.get-software.com', '/releases/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['https', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'snapshot.debian.org',
> >>> '/archive/debian-archive/20120328T092752Z/debian/pool', '', '',
> >>> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'snapshot.debian.org',
> >>> '/archive/debian-archive/20110127T084257Z/debian/pool', '', '',
> >>> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'snapshot.debian.org',
> >>> '/archive/debian-archive/20090802T004153Z/debian/pool', '', '',
> >>> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.de.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.au.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.cl.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.hr.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.fi.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.hk.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.hu.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.ie.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.it.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.jp.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.no.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.pl.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.ro.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.si.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.es.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.se.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ftp.tr.debian.org', '/debian/pool', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.gnu.org', '/gnu', '', '', OrderedDict()] to
> >>> ['https', 'mirrors.kernel.org', '/gnu', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'cdn.kernel.org', '/pub', '', '', OrderedDict()] to
> >>> ['http', 'www.kernel.org', '/pub', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '',
> >>> OrderedDict()]
> >>> to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '',
> >>> OrderedDict()]
> >>> to ['ftp', 'ftp.franken.de',
> >>> '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '',
> >>> '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '',
> >>> OrderedDict()]
> >>> to ['ftp', 'mirrors.dotsrc.org', '/gcrypt', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '',
> >>> OrderedDict()]
> >>> to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', '', '',
> >>> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '',
> >>> OrderedDict()]
> >>> to ['http', 'ctan.unsw.edu.au', '/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '', '',
> >>> OrderedDict()]
> >>> to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', '', '',
> >>> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/', '', '',
> >>> OrderedDict()] to ['http', 'mirror.switch.ch',
> >>> '/ftp/mirror/infozip/src/',
> >>> '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/', '', '',
> >>> OrderedDict()] to ['ftp', 'sunsite.icm.edu.pl',
> >>> '/pub/unix/archiving/info-zip/src/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
> >>> '', '',
> >>> OrderedDict()] to ['ftp', 'ftp.cerias.purdue.edu',
> >>> '/pub/tools/unix/sysutils/lsof/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
> >>> '', '',
> >>> OrderedDict()] to ['ftp', 'ftp.tau.ac.il', '/pub/unix/admin/', '', '',
> >>> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
> >>> '', '',
> >>> OrderedDict()] to ['ftp', 'ftp.cert.dfn.de',
> >>> '/pub/tools/admin/lsof/', '',
> >>> '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
> >>> '', '',
> >>> OrderedDict()] to ['ftp', 'ftp.fu-berlin.de',
> >>> '/pub/unix/tools/lsof/', '',
> >>> '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
> >>> '', '',
> >>> OrderedDict()] to ['ftp', 'ftp.kaizo.org', '/pub/lsof/', '', '',
> >>> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
> >>> '', '',
> >>> OrderedDict()] to ['ftp', 'ftp.tu-darmstadt.de',
> >>> '/pub/sysadmin/lsof/', '',
> >>> '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
> >>> '', '',
> >>> OrderedDict()] to ['ftp', 'ftp.tux.org',
> >>> '/pub/sites/vic.cc.purdue.edu/tools/unix/lsof/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
> >>> '', '',
> >>> OrderedDict()] to ['ftp', 'gd.tuwien.ac.at',
> >>> '/utils/admin-tools/lsof/', '',
> >>> '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
> >>> '', '',
> >>> OrderedDict()] to ['ftp', 'sunsite.ualberta.ca', '/pub/Mirror/lsof/',
> >>> '',
> >>> '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
> >>> '', '',
> >>> OrderedDict()] to ['ftp', 'the.wiretapped.net',
> >>> '/pub/security/host-security/lsof/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'archive.apache.org', '/dist', '', '',
> >>> OrderedDict()] to
> >>> ['http', 'www.us.apache.org', '/dist', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'archive.apache.org', '/dist', '', '',
> >>> OrderedDict()] to
> >>> ['http', 'archive.apache.org', '/dist', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'downloads.sourceforge.net', '/watchdog/', '', '',
> >>> OrderedDict()] to ['http', 'fossies.org', '/linux/misc/', '', '',
> >>> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'download.savannah.gnu.org', '/releases', '', '',
> >>> OrderedDict()] to ['http', 'download-mirror.savannah.gnu.org',
> >>> '/releases',
> >>> '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'download.savannah.nongnu.org', '/releases', '',
> '',
> >>> OrderedDict()] to ['http', 'download-mirror.savannah.nongnu.org',
> >>> '/releases', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['https?$', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['npm', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '',
> OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['https?$', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['npm', '.*', '/.*', '', '', OrderedDict()] to ['http',
> >>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'search.cpan.org', '/CPAN', '', '', OrderedDict()]
> to
> >>> ['http', 'cpan.metacpan.org', '/', '', '', OrderedDict()]
> >>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
> >>> OrderedDict()]
> >>> comparing ['http', 'search.cpan.org', '/CPAN', '', '', OrderedDict()]
> to
> >>> ['http', 'search.cpan.org', '/CPAN/', '', '', OrderedDict()]
> >>> ERROR: Fetcher failure: Unable to find file
> >>> file://0002-uclibc-conf.patch
> >>> anywhere. The paths that were searched were:
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc/poky
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> poky
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> beaglebone
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> armv7a
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/arm
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/arm
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/arm
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/files/arm
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3/backport/
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/
> recipes-devtools/gcc/gcc-6.3.0/
> >>>
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> >>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> >>>      /home/bianchi/poky/build/downloads
> >>> ERROR: Fetcher failure for URL: 'file://0002-uclibc-conf.patch'.
> >>> Unable to
> >>> fetch URL from any source.
> >>> DEBUG: Python function base_do_fetch finished
> >>> DEBUG: Python function do_fetch finished
> >>> ERROR: Function failed: base_do_fetch
> >>>
> >>> Regards,
> >>>
> >>> Riko
> >>>
> >>> --
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c19211e032f0f0556cde9dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">He is mixing poky/pyro with oe-core/master. All recent iss=
ues reported by Riko are caused by that.</div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On Tue, Aug 15, 2017 at 5:49 PM, Khem Raj <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">r=
aj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
br>
Thanks for sharing your build configuration. It says you are on<br>
pyro release and I see this patch is there. So something else is<br>
triggering it. Do you have any local changes ?<br>
<br>
On 8/14/17 10:35 PM, Riko wrote:<br>
&gt; Do you mean this one ?<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.34.0&=
quot;<br>
&gt; BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x8=
6_64-linux&quot;<br>
&gt; NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;universal&quot;<br>
&gt; TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-pok=
y-linux-gnueabi&quot;<br>
&gt; MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;beaglebone&quot;<br>
&gt; DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;poky&quot;<br>
&gt; DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;2.3.1&quot;<br>
&gt; TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm armv7a vfp neon ca=
llconvention-hard cortexa8&quot;<br>
&gt; TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;hard&qu=
ot;<br>
&gt; meta<br>
&gt; meta-poky<br>
&gt; meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;pyro:<wbr>4a39979c8d1e560fa=
54240e99734a6<wbr>51dfbaa63a&quot;<br>
&gt; meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;master:<wbr>5a25ed1071f0d9b7d95edcc2b5b454<wbr>5f960=
d5f95&quot;<br>
&gt; meta-oe<br>
&gt; meta-xfce<br>
&gt; meta-gnome<br>
&gt; meta-python<br>
&gt; meta-multimedia<br>
&gt; meta-networking=C2=A0=C2=A0 =3D &quot;master:<wbr>a8b54e300be027fefe8a=
774ca1861d<wbr>0fb8e80d99&quot;<br>
&gt; meta-browser=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:<wbr>e3c3a=
a0591506672245904227a4651<wbr>9a276957e0&quot;<br>
&gt;<br>
&gt;<br>
&gt; On 15/08/17 13:30, Khem Raj wrote:<br>
&gt;&gt; On Mon, Aug 14, 2017 at 9:42 PM, Riko &lt;<a href=3D"mailto:antoni=
us.riko@gmail.com">antonius.riko@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; Dear Team Yocto Member,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; How can I get gcc6.30 ?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I got error :<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; ERROR: gcc-source-6.3.0-6.3.0-r0 do_fetch: Fetcher failure for=
 URL:<br>
&gt;&gt;&gt; &#39;file://0002-uclibc-conf.<wbr>patch&#39;. Unable to fetch =
URL from any source.<br>
&gt;&gt;&gt;<br>
&gt;&gt; what branch are you using and if you are using additonal layers wh=
ich<br>
&gt;&gt; ones<br>
&gt;&gt; are those and what branches are they on.<br>
&gt;&gt;<br>
&gt;&gt;&gt; Here&#39;s the log :<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; =3D=3D=3D=3D=3D=3D=3D<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; DEBUG: Executing python function clean_recipe_sysroot<br>
&gt;&gt;&gt; DEBUG: Python function clean_recipe_sysroot finished<br>
&gt;&gt;&gt; DEBUG: Executing python function extend_recipe_sysroot<br>
&gt;&gt;&gt; NOTE: Direct dependencies are []<br>
&gt;&gt;&gt; NOTE:<br>
&gt;&gt;&gt; DEBUG: Python function extend_recipe_sysroot finished<br>
&gt;&gt;&gt; DEBUG: Executing python function do_fetch<br>
&gt;&gt;&gt; DEBUG: Executing python function base_do_fetch<br>
&gt;&gt;&gt; DEBUG: Searching for 0001-gcc-4.3.1-ARCH_FLAGS_FOR_<wbr>TARGET=
.patch in<br>
&gt;&gt;&gt; paths:<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/poky<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<wbr>poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/<wbr>beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<wbr>beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/<wbr>armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<wbr>armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>arm<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/arm<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/arm<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/arm<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/arm<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<br>
&gt;&gt;&gt; DEBUG: Searching for 0002-uclibc-conf.patch in paths:<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/poky<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<wbr>poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/<wbr>beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<wbr>beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/<wbr>armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<wbr>armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>arm<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/arm<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/arm<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/arm<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/arm<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<br>
&gt;&gt;&gt; DEBUG: Defaulting to<br>
&gt;&gt;&gt; /home/bianchi/poky/build/<wbr>downloads/0002-uclibc-conf.<wbr>=
patch for<br>
&gt;&gt;&gt; 0002-uclibc-conf.patch<br>
&gt;&gt;&gt; DEBUG: Trying PREMIRRORS<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;bzr&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;cvs&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;git&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;gitsm&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;=
&#39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;hg&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#3=
9;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;osc&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;p4&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#3=
9;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;svn&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: Trying Upstream<br>
&gt;&gt;&gt; WARNING: Failed to fetch URL file://0002-uclibc-conf.patch, at=
tempting<br>
&gt;&gt;&gt; MIRRORS if available<br>
&gt;&gt;&gt; DEBUG: Fetcher failure: Unable to find file<br>
&gt;&gt;&gt; file://0002-uclibc-conf.patch<br>
&gt;&gt;&gt; anywhere. The paths that were searched were:<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/poky<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<wbr>poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/<wbr>beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<wbr>beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/<wbr>armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<wbr>armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>arm<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/arm<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/arm<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/arm<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/arm<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<br>
&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 /home/bianchi/poky/build/<wbr>downloa=
ds<br>
&gt;&gt;&gt; DEBUG: Trying MIRRORS<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.gnu.org"=
 rel=3D"noreferrer" target=3D"_blank">ftp.gnu.org</a>&#39;, &#39;/gnu/gcc&#=
39;, &#39;&#39;, &#39;&#39;, OrderedDict()] to<br>
&gt;&gt;&gt; [&#39;ftp&#39;, &#39;<a href=3D"http://gcc.gnu.org" rel=3D"nor=
eferrer" target=3D"_blank">gcc.gnu.org</a>&#39;, &#39;/pub/gcc/releases/&#3=
9;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.gnu.org"=
 rel=3D"noreferrer" target=3D"_blank">ftp.gnu.org</a>&#39;, &#39;/gnu/gcc&#=
39;, &#39;&#39;, &#39;&#39;, OrderedDict()] to<br>
&gt;&gt;&gt; [&#39;ftp&#39;, &#39;<a href=3D"http://gd.tuwien.ac.at" rel=3D=
"noreferrer" target=3D"_blank">gd.tuwien.ac.at</a>&#39;, &#39;/gnu/gcc/&#39=
;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.gnu.org"=
 rel=3D"noreferrer" target=3D"_blank">ftp.gnu.org</a>&#39;, &#39;/gnu/gcc&#=
39;, &#39;&#39;, &#39;&#39;, OrderedDict()] to<br>
&gt;&gt;&gt; [&#39;http&#39;, &#39;<a href=3D"http://mirrors.rcn.net" rel=
=3D"noreferrer" target=3D"_blank">mirrors.rcn.net</a>&#39;, &#39;/pub/sourc=
eware/gcc/releases/<wbr>&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.gnu.org"=
 rel=3D"noreferrer" target=3D"_blank">ftp.gnu.org</a>&#39;, &#39;/gnu/gcc&#=
39;, &#39;&#39;, &#39;&#39;, OrderedDict()] to<br>
&gt;&gt;&gt; [&#39;http&#39;, &#39;<a href=3D"http://gcc.get-software.com" =
rel=3D"noreferrer" target=3D"_blank">gcc.get-software.com</a>&#39;, &#39;/r=
eleases/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.gnu.org"=
 rel=3D"noreferrer" target=3D"_blank">ftp.gnu.org</a>&#39;, &#39;/gnu/gcc&#=
39;, &#39;&#39;, &#39;&#39;, OrderedDict()] to<br>
&gt;&gt;&gt; [&#39;http&#39;, &#39;<a href=3D"http://gcc.get-software.com" =
rel=3D"noreferrer" target=3D"_blank">gcc.get-software.com</a>&#39;, &#39;/r=
eleases/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&=
#39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;https&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;=
&#39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://snapshot.debian.org=
" rel=3D"noreferrer" target=3D"_blank">snapshot.debian.org</a>&#39;,<br>
&gt;&gt;&gt; &#39;/archive/debian-archive/<wbr>20120328T092752Z/debian/pool=
&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://snapshot.debian.org=
" rel=3D"noreferrer" target=3D"_blank">snapshot.debian.org</a>&#39;,<br>
&gt;&gt;&gt; &#39;/archive/debian-archive/<wbr>20110127T084257Z/debian/pool=
&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://snapshot.debian.org=
" rel=3D"noreferrer" target=3D"_blank">snapshot.debian.org</a>&#39;,<br>
&gt;&gt;&gt; &#39;/archive/debian-archive/<wbr>20090802T004153Z/debian/pool=
&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.de.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.de.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.au.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.au.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.cl.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.cl.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.hr.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.hr.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.fi.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.fi.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.hk.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.hk.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.hu.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.hu.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.ie.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.ie.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.it.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.it.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.jp.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.jp.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.no.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.no.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.pl.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.pl.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.ro.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.ro.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.si.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.si.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.es.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.es.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.se.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.se.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.debian.o=
rg" rel=3D"noreferrer" target=3D"_blank">ftp.debian.org</a>&#39;, &#39;/deb=
ian/pool&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ftp.tr.debian.org" =
rel=3D"noreferrer" target=3D"_blank">ftp.tr.debian.org</a>&#39;, &#39;/debi=
an/pool&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.gnu.org"=
 rel=3D"noreferrer" target=3D"_blank">ftp.gnu.org</a>&#39;, &#39;/gnu&#39;,=
 &#39;&#39;, &#39;&#39;, OrderedDict()] to<br>
&gt;&gt;&gt; [&#39;https&#39;, &#39;<a href=3D"http://mirrors.kernel.org" r=
el=3D"noreferrer" target=3D"_blank">mirrors.kernel.org</a>&#39;, &#39;/gnu&=
#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://cdn.kernel.o=
rg" rel=3D"noreferrer" target=3D"_blank">cdn.kernel.org</a>&#39;, &#39;/pub=
&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()] to<br>
&gt;&gt;&gt; [&#39;http&#39;, &#39;<a href=3D"http://www.kernel.org" rel=3D=
"noreferrer" target=3D"_blank">www.kernel.org</a>&#39;, &#39;/pub&#39;, &#3=
9;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;https&#39;, &#39;<a href=3D"http://www.gnupg.o=
rg" rel=3D"noreferrer" target=3D"_blank">www.gnupg.org</a>&#39;, &#39;/ftp/=
gcrypt&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;ftp&#39;, &#39;<a href=3D"http://ftp.gnupg.org" rel=
=3D"noreferrer" target=3D"_blank">ftp.gnupg.org</a>&#39;, &#39;/gcrypt&#39;=
, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;https&#39;, &#39;<a href=3D"http://www.gnupg.o=
rg" rel=3D"noreferrer" target=3D"_blank">www.gnupg.org</a>&#39;, &#39;/ftp/=
gcrypt&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;ftp&#39;, &#39;<a href=3D"http://ftp.franken.de" rel=
=3D"noreferrer" target=3D"_blank">ftp.franken.de</a>&#39;,<br>
&gt;&gt;&gt; &#39;/pub/crypt/mirror/<a href=3D"http://ftp.gnupg.org/gcrypt"=
 rel=3D"noreferrer" target=3D"_blank">ftp.gnupg.<wbr>org/gcrypt</a>&#39;, &=
#39;&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;https&#39;, &#39;<a href=3D"http://www.gnupg.o=
rg" rel=3D"noreferrer" target=3D"_blank">www.gnupg.org</a>&#39;, &#39;/ftp/=
gcrypt&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;ftp&#39;, &#39;<a href=3D"http://mirrors.dotsrc.org" =
rel=3D"noreferrer" target=3D"_blank">mirrors.dotsrc.org</a>&#39;, &#39;/gcr=
ypt&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://dante.ctan.or=
g" rel=3D"noreferrer" target=3D"_blank">dante.ctan.org</a>&#39;, &#39;/tex-=
archive&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;ftp&#39;, &#39;<a href=3D"http://ftp.fu-berlin.de" re=
l=3D"noreferrer" target=3D"_blank">ftp.fu-berlin.de</a>&#39;, &#39;/tex/CTA=
N&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://dante.ctan.or=
g" rel=3D"noreferrer" target=3D"_blank">dante.ctan.org</a>&#39;, &#39;/tex-=
archive&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://sunsite.sut.ac.jp" =
rel=3D"noreferrer" target=3D"_blank">sunsite.sut.ac.jp</a>&#39;, &#39;/pub/=
archives/ctan/&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://dante.ctan.or=
g" rel=3D"noreferrer" target=3D"_blank">dante.ctan.org</a>&#39;, &#39;/tex-=
archive&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;http&#39;, &#39;<a href=3D"http://ctan.unsw.edu.au" r=
el=3D"noreferrer" target=3D"_blank">ctan.unsw.edu.au</a>&#39;, &#39;/&#39;,=
 &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://ftp.gnutls.or=
g" rel=3D"noreferrer" target=3D"_blank">ftp.gnutls.org</a>&#39;, &#39;/gcry=
pt/gnutls&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; to [&#39;https&#39;, &#39;<a href=3D"http://www.gnupg.org" rel=
=3D"noreferrer" target=3D"_blank">www.gnupg.org</a>&#39;, &#39;/ftp/gcrypt/=
gnutls&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.info-zip=
.org" rel=3D"noreferrer" target=3D"_blank">ftp.info-zip.org</a>&#39;, &#39;=
/pub/infozip/src/&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;http&#39;, &#39;<a href=3D"http://mirr=
or.switch.ch" rel=3D"noreferrer" target=3D"_blank">mirror.switch.ch</a>&#39=
;,<br>
&gt;&gt;&gt; &#39;/ftp/mirror/infozip/src/&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://ftp.info-zip=
.org" rel=3D"noreferrer" target=3D"_blank">ftp.info-zip.org</a>&#39;, &#39;=
/pub/infozip/src/&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;ftp&#39;, &#39;<a href=3D"http://sunsi=
te.icm.edu.pl" rel=3D"noreferrer" target=3D"_blank">sunsite.icm.edu.pl</a>&=
#39;,<br>
&gt;&gt;&gt; &#39;/pub/unix/archiving/info-zip/<wbr>src/&#39;, &#39;&#39;, =
&#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://lsof.itap.pur=
due.edu" rel=3D"noreferrer" target=3D"_blank">lsof.itap.purdue.edu</a>&#39;=
, &#39;/pub/tools/unix/lsof/&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;ftp&#39;, &#39;<a href=3D"http://ftp.c=
erias.purdue.edu" rel=3D"noreferrer" target=3D"_blank">ftp.cerias.purdue.ed=
u</a>&#39;,<br>
&gt;&gt;&gt; &#39;/pub/tools/unix/sysutils/<wbr>lsof/&#39;, &#39;&#39;, &#3=
9;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://lsof.itap.pur=
due.edu" rel=3D"noreferrer" target=3D"_blank">lsof.itap.purdue.edu</a>&#39;=
, &#39;/pub/tools/unix/lsof/&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;ftp&#39;, &#39;<a href=3D"http://ftp.t=
au.ac.il" rel=3D"noreferrer" target=3D"_blank">ftp.tau.ac.il</a>&#39;, &#39=
;/pub/unix/admin/&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://lsof.itap.pur=
due.edu" rel=3D"noreferrer" target=3D"_blank">lsof.itap.purdue.edu</a>&#39;=
, &#39;/pub/tools/unix/lsof/&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;ftp&#39;, &#39;<a href=3D"http://ftp.c=
ert.dfn.de" rel=3D"noreferrer" target=3D"_blank">ftp.cert.dfn.de</a>&#39;,<=
br>
&gt;&gt;&gt; &#39;/pub/tools/admin/lsof/&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://lsof.itap.pur=
due.edu" rel=3D"noreferrer" target=3D"_blank">lsof.itap.purdue.edu</a>&#39;=
, &#39;/pub/tools/unix/lsof/&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;ftp&#39;, &#39;<a href=3D"http://ftp.f=
u-berlin.de" rel=3D"noreferrer" target=3D"_blank">ftp.fu-berlin.de</a>&#39;=
,<br>
&gt;&gt;&gt; &#39;/pub/unix/tools/lsof/&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://lsof.itap.pur=
due.edu" rel=3D"noreferrer" target=3D"_blank">lsof.itap.purdue.edu</a>&#39;=
, &#39;/pub/tools/unix/lsof/&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;ftp&#39;, &#39;<a href=3D"http://ftp.k=
aizo.org" rel=3D"noreferrer" target=3D"_blank">ftp.kaizo.org</a>&#39;, &#39=
;/pub/lsof/&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://lsof.itap.pur=
due.edu" rel=3D"noreferrer" target=3D"_blank">lsof.itap.purdue.edu</a>&#39;=
, &#39;/pub/tools/unix/lsof/&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;ftp&#39;, &#39;<a href=3D"http://ftp.t=
u-darmstadt.de" rel=3D"noreferrer" target=3D"_blank">ftp.tu-darmstadt.de</a=
>&#39;,<br>
&gt;&gt;&gt; &#39;/pub/sysadmin/lsof/&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://lsof.itap.pur=
due.edu" rel=3D"noreferrer" target=3D"_blank">lsof.itap.purdue.edu</a>&#39;=
, &#39;/pub/tools/unix/lsof/&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;ftp&#39;, &#39;<a href=3D"http://ftp.t=
ux.org" rel=3D"noreferrer" target=3D"_blank">ftp.tux.org</a>&#39;,<br>
&gt;&gt;&gt; &#39;/pub/sites/<a href=3D"http://vic.cc.purdue.edu/tools/unix=
/lsof/" rel=3D"noreferrer" target=3D"_blank">vic.cc.purdue.edu/<wbr>tools/u=
nix/lsof/</a>&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://lsof.itap.pur=
due.edu" rel=3D"noreferrer" target=3D"_blank">lsof.itap.purdue.edu</a>&#39;=
, &#39;/pub/tools/unix/lsof/&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;ftp&#39;, &#39;<a href=3D"http://gd.tu=
wien.ac.at" rel=3D"noreferrer" target=3D"_blank">gd.tuwien.ac.at</a>&#39;,<=
br>
&gt;&gt;&gt; &#39;/utils/admin-tools/lsof/&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://lsof.itap.pur=
due.edu" rel=3D"noreferrer" target=3D"_blank">lsof.itap.purdue.edu</a>&#39;=
, &#39;/pub/tools/unix/lsof/&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;ftp&#39;, &#39;<a href=3D"http://sunsi=
te.ualberta.ca" rel=3D"noreferrer" target=3D"_blank">sunsite.ualberta.ca</a=
>&#39;, &#39;/pub/Mirror/lsof/&#39;,<br>
&gt;&gt;&gt; &#39;&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;<a href=3D"http://lsof.itap.pur=
due.edu" rel=3D"noreferrer" target=3D"_blank">lsof.itap.purdue.edu</a>&#39;=
, &#39;/pub/tools/unix/lsof/&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;ftp&#39;, &#39;<a href=3D"http://the.w=
iretapped.net" rel=3D"noreferrer" target=3D"_blank">the.wiretapped.net</a>&=
#39;,<br>
&gt;&gt;&gt; &#39;/pub/security/host-security/<wbr>lsof/&#39;, &#39;&#39;, =
&#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://archive.apac=
he.org" rel=3D"noreferrer" target=3D"_blank">archive.apache.org</a>&#39;, &=
#39;/dist&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to<br>
&gt;&gt;&gt; [&#39;http&#39;, &#39;<a href=3D"http://www.us.apache.org" rel=
=3D"noreferrer" target=3D"_blank">www.us.apache.org</a>&#39;, &#39;/dist&#3=
9;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://archive.apac=
he.org" rel=3D"noreferrer" target=3D"_blank">archive.apache.org</a>&#39;, &=
#39;/dist&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to<br>
&gt;&gt;&gt; [&#39;http&#39;, &#39;<a href=3D"http://archive.apache.org" re=
l=3D"noreferrer" target=3D"_blank">archive.apache.org</a>&#39;, &#39;/dist&=
#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://downloads.so=
urceforge.net" rel=3D"noreferrer" target=3D"_blank">downloads.sourceforge.n=
et</a>&#39;, &#39;/watchdog/&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;http&#39;, &#39;<a href=3D"http://foss=
ies.org" rel=3D"noreferrer" target=3D"_blank">fossies.org</a>&#39;, &#39;/l=
inux/misc/&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://download.sav=
annah.gnu.org" rel=3D"noreferrer" target=3D"_blank">download.savannah.gnu.o=
rg</a>&#39;, &#39;/releases&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;http&#39;, &#39;<a href=3D"http://down=
load-mirror.savannah.gnu.org" rel=3D"noreferrer" target=3D"_blank">download=
-mirror.savannah.gnu.<wbr>org</a>&#39;,<br>
&gt;&gt;&gt; &#39;/releases&#39;,<br>
&gt;&gt;&gt; &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://download.sav=
annah.nongnu.org" rel=3D"noreferrer" target=3D"_blank">download.savannah.no=
ngnu.org</a>&#39;<wbr>, &#39;/releases&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()] to [&#39;http&#39;, &#39;<a href=3D"http://down=
load-mirror.savannah.nongnu.org" rel=3D"noreferrer" target=3D"_blank">downl=
oad-mirror.savannah.<wbr>nongnu.org</a>&#39;,<br>
&gt;&gt;&gt; &#39;/releases&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br=
>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;cvs&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;svn&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;git&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;hg&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#3=
9;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;bzr&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;p4&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#3=
9;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;osc&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;https?$&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#3=
9;&#39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;npm&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://downloads.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">downloads.yoctoproject.org</a>&#39;, &#39;/mirror=
/sources/&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;cvs&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://sources.openembedded.org" rel=3D"norefe=
rrer" target=3D"_blank">sources.openembedded.org</a>&#39;, &#39;/&#39;, &#3=
9;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;svn&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://sources.openembedded.org" rel=3D"norefe=
rrer" target=3D"_blank">sources.openembedded.org</a>&#39;, &#39;/&#39;, &#3=
9;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;git&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://sources.openembedded.org" rel=3D"norefe=
rrer" target=3D"_blank">sources.openembedded.org</a>&#39;, &#39;/&#39;, &#3=
9;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;hg&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#3=
9;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://sources.openembedded.org" rel=3D"norefe=
rrer" target=3D"_blank">sources.openembedded.org</a>&#39;, &#39;/&#39;, &#3=
9;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;bzr&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://sources.openembedded.org" rel=3D"norefe=
rrer" target=3D"_blank">sources.openembedded.org</a>&#39;, &#39;/&#39;, &#3=
9;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;p4&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#3=
9;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://sources.openembedded.org" rel=3D"norefe=
rrer" target=3D"_blank">sources.openembedded.org</a>&#39;, &#39;/&#39;, &#3=
9;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;osc&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://sources.openembedded.org" rel=3D"norefe=
rrer" target=3D"_blank">sources.openembedded.org</a>&#39;, &#39;/&#39;, &#3=
9;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;https?$&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#3=
9;&#39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://sources.openembedded.org" rel=3D"norefe=
rrer" target=3D"_blank">sources.openembedded.org</a>&#39;, &#39;/&#39;, &#3=
9;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;ftp&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://sources.openembedded.org" rel=3D"norefe=
rrer" target=3D"_blank">sources.openembedded.org</a>&#39;, &#39;/&#39;, &#3=
9;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;npm&#39;, &#39;.*&#39;, &#39;/.*&#39;, &#39;&#=
39;, &#39;&#39;, OrderedDict()] to [&#39;http&#39;,<br>
&gt;&gt;&gt; &#39;<a href=3D"http://sources.openembedded.org" rel=3D"norefe=
rrer" target=3D"_blank">sources.openembedded.org</a>&#39;, &#39;/&#39;, &#3=
9;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://search.cpan.=
org" rel=3D"noreferrer" target=3D"_blank">search.cpan.org</a>&#39;, &#39;/C=
PAN&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()] to<br>
&gt;&gt;&gt; [&#39;http&#39;, &#39;<a href=3D"http://cpan.metacpan.org" rel=
=3D"noreferrer" target=3D"_blank">cpan.metacpan.org</a>&#39;, &#39;/&#39;, =
&#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;0002-uclibc-c=
onf.patch&#39;, &#39;&#39;, &#39;&#39;,<br>
&gt;&gt;&gt; OrderedDict()]<br>
&gt;&gt;&gt; comparing [&#39;http&#39;, &#39;<a href=3D"http://search.cpan.=
org" rel=3D"noreferrer" target=3D"_blank">search.cpan.org</a>&#39;, &#39;/C=
PAN&#39;, &#39;&#39;, &#39;&#39;, OrderedDict()] to<br>
&gt;&gt;&gt; [&#39;http&#39;, &#39;<a href=3D"http://search.cpan.org" rel=
=3D"noreferrer" target=3D"_blank">search.cpan.org</a>&#39;, &#39;/CPAN/&#39=
;, &#39;&#39;, &#39;&#39;, OrderedDict()]<br>
&gt;&gt;&gt; ERROR: Fetcher failure: Unable to find file<br>
&gt;&gt;&gt; file://0002-uclibc-conf.patch<br>
&gt;&gt;&gt; anywhere. The paths that were searched were:<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/poky<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<wbr>poky<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/<wbr>beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<wbr>beaglebone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/<wbr>armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<wbr>armv7a<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>arm<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/arm<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/arm<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/arm<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/arm<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3/<wbr>backport/<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc-6.3.<wbr>0/<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/gcc/<br>
&gt;&gt;&gt; /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-de=
vtools/gcc/files/<br>
&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 /home/bianchi/poky/build/<wbr>downloa=
ds<br>
&gt;&gt;&gt; ERROR: Fetcher failure for URL: &#39;file://0002-uclibc-conf.<=
wbr>patch&#39;.<br>
&gt;&gt;&gt; Unable to<br>
&gt;&gt;&gt; fetch URL from any source.<br>
&gt;&gt;&gt; DEBUG: Python function base_do_fetch finished<br>
&gt;&gt;&gt; DEBUG: Python function do_fetch finished<br>
&gt;&gt;&gt; ERROR: Function failed: base_do_fetch<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Regards,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Riko<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a><br>
&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listi=
nfo/yocto</a><br>
&gt;<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c19211e032f0f0556cde9dd--
