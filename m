Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28C0BE00D55; Sat,  3 Oct 2015 13:12:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C952E00349
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 13:12:00 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so72485858wic.1
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 13:11:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=htjlsLABCBIdvxxajYbW7PNfzo6fMAiIxtjdKJDGtE4=;
	b=VpxR/YHnClHo1coTDeIknD7tA8chGPG7WdsSLrZ8BlmiEUJWeM00827eCWQHcgwx3v
	6R90UrwGNuxfzUdgmWNwwwGLymsQriGkEpqvk4xmvLwQZVnf6kZOlae6PJV20ofGd8Z8
	950Vpa5MhLdiqAGcj8Pc1DS9LcAedoSxaFGTB+lYg+Ka/HQ55cf7VPyqV5LhaahuP6xa
	xt5Wq89LnBlEIdr1rOGjCLxyZx748JKOr/Sjpq7HXqBrrDdeehyaAKrR/nL4DuevkSXo
	GNjX0Z6AYUWwQY+nJx+dfZ2TUQGZTy2Chk7OfadYaXeIebE3rsbe6/zOdkqKkDVgaHJO
	/K5g==
X-Gm-Message-State: ALoCoQkpduSS3GagRo5bHzwBJpaNodEXNeNFWCoA6aYyoG7LYVqjjJAWKnfvBuA4eepq3W7KS5+I
X-Received: by 10.194.110.4 with SMTP id hw4mr22182091wjb.135.1443903119662;
	Sat, 03 Oct 2015 13:11:59 -0700 (PDT)
Received: from resin (ipservice-092-217-119-031.092.217.pools.vodafone-ip.de.
	[92.217.119.31]) by smtp.gmail.com with ESMTPSA id
	mc20sm5696533wic.16.2015.10.03.13.11.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Oct 2015 13:11:58 -0700 (PDT)
Date: Sat, 3 Oct 2015 22:11:56 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20151003201156.GC24208@resin>
References: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
	<20151003182433.GA23956@resin>
	<CAMKF1spKaSO=k-UWitbbN8=KV-PEri6i5AwFn47EoRn1-Eqkqw@mail.gmail.com>
	<20151003190310.GA24208@resin>
	<CAMKF1so00WoUcYDPN4mY67P1Rp_ognr=9WgKpkt4b=u2Euss_w@mail.gmail.com>
	<20151003191846.GB24208@resin>
	<CAMKF1sre0u-rv4trRYYuy1_p1zTcgVg61V715_nXdY+fs7AY8Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sre0u-rv4trRYYuy1_p1zTcgVg61V715_nXdY+fs7AY8Q@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V4 1/5] userland: Fix install prefix and generate pkgconfigs
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
X-List-Received-Date: Sat, 03 Oct 2015 20:12:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 03, 2015 at 01:06:55PM -0700, Khem Raj wrote:
> On Sat, Oct 3, 2015 at 12:18 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > I tested with and without - same result.
> > DISTRO_FEATURES="alsa argp bluetooth ext2 irda largefile pcmcia usbgadget
> > usbhost wifi xattr nfs zeroconf pci 3g nfc x11 ipv4 ipv6 libc-backtrace
> > libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt
> > libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab
> > libc-ftraverse                  libc-getlogin libc-idn libc-inet-anl libc-libm
> > libc-locales libc-locale-code                   libc-memusage libc-nis
> > libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc
> > libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp
> > libc-posix-regexp-glibc                     libc-posix-wchar-io largefile
> > opengl ptest multiarch wayland pulseaudio sysvinit bluez5"
> >
> > No modification to the default poky distro.
>
> hmm I am using angstrom and it works there and for verification I now
> tried with OE-Core ( alone ) it works there too, can you check some
> other parameters that are there in your sandbox ? here is my build
>
>  MACHINE=raspberrypi2 bitbake userland
> Parsing recipes: 100%
> |######################################################################################################################################################################################################|
> ETA:  00:00:00
> Parsing of 918 .bb files complete (0 cached, 918 parsed). 1350
> targets, 59 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.28.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "arm-oe-linux-gnueabi"
> MACHINE           = "raspberrypi2"
> DISTRO            = "nodistro"
> DISTRO_VERSION    = "nodistro.0"
> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
> vfpv4 cortexa7"
> TARGET_FPU        = "vfp-vfpv4-neon"
> meta-raspberrypi  = "kraj/master:a903a9cd18ae556121265da93ed74f857944a0da"
> meta              = "kraj/master:602e512b92bcc78403144fedeb4211bbf56ff1c8"
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 454 tasks of which 315 didn't need to
> be rerun and all succeeded.

Here is my build configuration.

Build Configuration:
BB_VERSION        = "1.28.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Arch-rolling"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi2"
DISTRO            = "poky"
DISTRO_VERSION    = "2.0"
TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard vfpv4
cortexa7"
TARGET_FPU        = "vfp-vfpv4-neon"
meta
meta-yocto
meta-yocto-bsp    = "master:eac61f37e36099f74485dab398b57f3812826d17"
meta-raspberrypi  = "master:48da0cdc5fb147a20b41a77b2dfeef4efd483b32"
meta-oe
meta-multimedia   = "master:f4533380c8a5c1d229f692222ee0c2ef9d187ef8"


But anyway can you please check in your userland install dir for the header I'm
missing? Or in sysroot.

--
Andrei Gherzan

