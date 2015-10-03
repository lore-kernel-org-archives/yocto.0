Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F8B9E00D25; Sat,  3 Oct 2015 13:07:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15ACEE00349
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 13:07:25 -0700 (PDT)
Received: by igcrk20 with SMTP id rk20so38195332igc.1
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 13:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=yl8KRII+xepMQDrOVfOxrypsm/AuK5cHS5nv8C8zj20=;
	b=pFDQxZwb83k/FKq5myEf6GVWepK66yw1rXmmaTb9VELtbCSM+2e0TfGosMsh/0+zlr
	l78j0U2d7+UZzSFoUszE5skvBtqPX+mmUY3UEjofD+LCuBgmcrkA242euGuqTcvo7KDW
	rqSKGcKD6nr/Augt34T+UpAqJxtgeVcBs9epVFcYBvnabw9rutzynL+r2ZnTaDuUcBBj
	RWEmkI0lVWaIStCL/66DQ5VAUYbI1D0jMO+hi35E5fFJQe6KkbCwR4DQIQuMVYas1UAS
	Vl0zkwozDHSSWIbAFJl3m7ZbOIaiHzlPPTdAr4kF8UAksQIYz57yRIJ+fHf9sptojIuN
	NMgQ==
X-Received: by 10.50.20.67 with SMTP id l3mr2993873ige.75.1443902845057; Sat,
	03 Oct 2015 13:07:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.130 with HTTP; Sat, 3 Oct 2015 13:06:55 -0700 (PDT)
In-Reply-To: <20151003191846.GB24208@resin>
References: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
	<20151003182433.GA23956@resin>
	<CAMKF1spKaSO=k-UWitbbN8=KV-PEri6i5AwFn47EoRn1-Eqkqw@mail.gmail.com>
	<20151003190310.GA24208@resin>
	<CAMKF1so00WoUcYDPN4mY67P1Rp_ognr=9WgKpkt4b=u2Euss_w@mail.gmail.com>
	<20151003191846.GB24208@resin>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 3 Oct 2015 13:06:55 -0700
Message-ID: <CAMKF1sre0u-rv4trRYYuy1_p1zTcgVg61V715_nXdY+fs7AY8Q@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
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
X-List-Received-Date: Sat, 03 Oct 2015 20:07:26 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 3, 2015 at 12:18 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> I tested with and without - same result.
> DISTRO_FEATURES="alsa argp bluetooth ext2 irda largefile pcmcia usbgadget
> usbhost wifi xattr nfs zeroconf pci 3g nfc x11 ipv4 ipv6 libc-backtrace
> libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt
> libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab
> libc-ftraverse                  libc-getlogin libc-idn libc-inet-anl libc-libm
> libc-locales libc-locale-code                   libc-memusage libc-nis
> libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc
> libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp
> libc-posix-regexp-glibc                     libc-posix-wchar-io largefile
> opengl ptest multiarch wayland pulseaudio sysvinit bluez5"
>
> No modification to the default poky distro.

hmm I am using angstrom and it works there and for verification I now
tried with OE-Core ( alone ) it works there too, can you check some
other parameters that are there in your sandbox ? here is my build

 MACHINE=raspberrypi2 bitbake userland
Parsing recipes: 100%
|######################################################################################################################################################################################################|
ETA:  00:00:00
Parsing of 918 .bb files complete (0 cached, 918 parsed). 1350
targets, 59 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.28.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "arm-oe-linux-gnueabi"
MACHINE           = "raspberrypi2"
DISTRO            = "nodistro"
DISTRO_VERSION    = "nodistro.0"
TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
vfpv4 cortexa7"
TARGET_FPU        = "vfp-vfpv4-neon"
meta-raspberrypi  = "kraj/master:a903a9cd18ae556121265da93ed74f857944a0da"
meta              = "kraj/master:602e512b92bcc78403144fedeb4211bbf56ff1c8"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 454 tasks of which 315 didn't need to
be rerun and all succeeded.

