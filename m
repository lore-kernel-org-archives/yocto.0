Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C80ACE00CCD; Fri,  8 Sep 2017 02:22:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f172.google.com (mail-wr0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01E7DE00CCB
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 02:22:32 -0700 (PDT)
Received: by mail-wr0-f172.google.com with SMTP id v109so3558697wrc.1
	for <yocto@yoctoproject.org>; Fri, 08 Sep 2017 02:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=/zQT3w6aiFFOty7pk188tg4SMxtRWiu3H7J19lZ0IQY=;
	b=q0UiOyJDObDt5M+zLlYCCd5p51w5e+jjpa9XTMEZhv6A3ewU2k39tgQ3gfjHr6kqyz
	318WJwUh8svw97TcdvqM3l5ct26n/7SmorLrqbQqMuERbNoTrT3pC5h6qEe2gt88UW51
	mfleoQHZiBzyWrPf6NOVPlyBn4ysKvwJqM4xbseuHo6g0dNt9zscBaLN2wsFFSHVOv/u
	d/gt56HEXAI0iNFD66Yu1Ag/NOkhwcPAKhK87cHpydADqENrMsEX94AJS79NmeM97dAV
	yH+TI4JDTF4IXCU29U4F7shCZX5jRydXbxAju8TcrlL8Hi7aoDMJIQPrsbqwYchjqFEa
	cM8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=/zQT3w6aiFFOty7pk188tg4SMxtRWiu3H7J19lZ0IQY=;
	b=E2F3EaE0vCVOt03ZMT1Ew5uEoTUu6REOJQD+z3l5AFmze0pStkdR03tHkllz8E2vOr
	xHNHEU0GwlPLMyQwA36ETqD3qE5CqzbT+o5w+J4VUxJF1kwK0il5nsHthixEXMtFDYn0
	rL03vZD2juRb66BiMwsNMHLdiMPtAOHjlgEOmUQYUnQTvPwsDhh/czjlOp7BodH6NXLw
	QSENU2bYLmKK5RG7iZuBESuikGojAd8oK0e2eLP2zRsYUJvzgHZYl3QNi8pOsh05TQmB
	45k2DxbLRuNkky2M78Ym29FgYlUcdzH8yZaChcRoLLgyVCTLnqzveVn7Zq5bmGOoFBYH
	0tXg==
X-Gm-Message-State: AHPjjUg2DjTecnKdpxK7Kxw4z7FBJ/umydFbIUiUgFrqX4fvLI2M9sYL
	y5Hjt33CEiVZTBW6kWj7MgOJE4EtRvs/
X-Google-Smtp-Source: ADKCNb6LGhUXyXaYr0FwFMfNYfQDVPlVFfOzfwErQSdpgNP0MyQgvd7JtGR5wl3SNaz5PPNucoaj4tqlByOWI+s0J4o=
X-Received: by 10.223.179.10 with SMTP id j10mr1366333wrd.273.1504862551443;
	Fri, 08 Sep 2017 02:22:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.155.157 with HTTP; Fri, 8 Sep 2017 02:22:30 -0700 (PDT)
In-Reply-To: <CAC+thW1aSXs-C03_7rgenyLXNypJBRBBQsJEpZrUJyRj1OKb_g@mail.gmail.com>
References: <BD59C156-6B9B-442C-B8B8-92D2194902C0@korgrd.com>
	<CAMKF1soJ2=jwPnfefEvDppJGBxPutA_usc0E--XbWY9txredpg@mail.gmail.com>
	<6668FC5E-F4CC-4E92-8857-3B3BC71C7045@korgrd.com>
	<CAMKF1sreAs1W_TA9yFSKLhVvjNOcXJMTLjLU=cjZ+EJYQuxVqQ@mail.gmail.com>
	<CAPyrkgziawJVn2cDbwAziEF78LZDNq1=e1jhHrM6rL41GtK0NQ@mail.gmail.com>
	<CAC+thW1aSXs-C03_7rgenyLXNypJBRBBQsJEpZrUJyRj1OKb_g@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Fri, 8 Sep 2017 10:22:30 +0100
Message-ID: <CAPyrkgwvwMJ7rmDLVpq1HmmSpqLy35+vDiBXBdPon7WUNwqqHA@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: raspberrypi3-64 target not booting
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
X-List-Received-Date: Fri, 08 Sep 2017 09:22:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 8, 2017 at 10:18 AM, Andrea Galbusera <gizero@gmail.com> wrote:
> Hi!
>
> On Mon, Sep 4, 2017 at 10:31 PM, Paul Barker <pbarker@toganlabs.com> wrot=
e:
>>
>> On Fri, Aug 25, 2017 at 6:27 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> > On Fri, Aug 25, 2017 at 10:14 AM, Bill Jenkins <bill@korgrd.com> wrote=
:
>> >>
>> >> On Aug 25, 2017, at 9:42 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> >>
>> >>
>> >> On Fri, Aug 25, 2017 at 9:39 AM Bill Jenkins <bill@korgrd.com> wrote:
>> >>>
>> >>> I am trying to just get the simple 64-bit rpi-basic-image to work, b=
ut
>> >>> the
>> >>> Raspberry Pi 3 seems to hang with the rainbow screen at startup.
>> >>
>> >>
>> >> Can you plugin a serial cable and see if that worked or try to add ss=
h
>> >> daemon on target and try to ssh into pi
>> >>>
>> >>>
>> >>
>> >> That was a good call. I can login with the ssh daemon, so it does
>> >> successfully boot. I just
>> >> cannot access it from the HDMI port. (I do not have the hardware for =
a
>> >> serial connection
>> >> at the moment)
>> >>
>> >> Any ideas on how to get the HDMI port to function the same way as it
>> >> does
>> >> for the
>> >> 32-bit case?
>> >>
>> >
>> > Readding the mailing list.
>> >
>> > what you have is exactly what I had when I submitted the port to
>> > meta-raspberrypi. Haven;t had a chance to revisit it. but this could
>> > be related to device tree files we are using here. I have had reports
>> > from other devs of having been able to boot into graphics using older
>> > kernels but I never got
>> > that far myself.
>>
>> I'm seeing the same issue on builds from both pyro and master
>> branches. I've confirmed this isn't a HW issue by trying out an
>> OpenSUSE Leap 42.2 64-bit build for Raspberry Pi 3.
>>
>> Khem, are you saying this is the current expected state of Raspberry
>> Pi 3 64-bit support? If so I'd really like us to document this in the
>> readme and open a bug so we don't lose track of it.
>
>
> Reading this thread made me curious to get back to building/testing for
> raspberrypi3-64 myself as I used to do for a while till a few months ago.
> Not really in the need for that now, but, it would be nice to help keepin=
g
> the support healthy if possible. Then tonight I added back
> MACHINE=3Draspberrypi3-64 bitbake myimage to the builds I run daily with
> master branches of poky and meta-raspberrypi and felt into a even earlier
> showstopper than the boot issue described here. My kernel build fails wit=
h:
>
> Build Configuration:
> BB_VERSION        =3D "1.35.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "universal"
> TARGET_SYS        =3D "aarch64-poky-linux"
> MACHINE           =3D "raspberrypi3-64"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "2.3+snapshot-20170908"
> TUNE_FEATURES     =3D "aarch64"
> TARGET_FPU        =3D ""
> meta
> meta-poky
> meta-yocto-bsp    =3D "HEAD:8b4f16a9cbbaf521461f699b7264fac2ac872581"
> meta-raspberrypi  =3D "HEAD:e59132bdcc092597ed5f08a77e7160b0f3bb3547"
>
> Initialising tasks: 100%
> |########################################################################=
###########################################################################=
##################################################|
> Time: 0:00:11
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: linux-raspberrypi-1_4.9.41+gitAUTOINC+4153f509b4-r0 do_compile:
> oe_runmake failed
> ERROR: linux-raspberrypi-1_4.9.41+gitAUTOINC+4153f509b4-r0 do_compile:
> Function failed: do_compile (log file is located at
> /workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-poky-linux/linux-ra=
spberrypi/1_4.9.41+gitAUTOINC+4153f509b4-r
> 0/temp/log.do_compile.8392)
> ERROR: Logfile of failure stored in:
> /workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-poky-linux/linux-ra=
spberrypi/1_4.9.41+gitAUTOINC+4153f509b4-r0/temp/log.do_compile.8392
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 8 HOSTCC=3Dgcc  HOSTCPP=3Dgcc  -E uImage
> CC=3Daarch64-poky-linux-gcc   -fuse-ld=3Dbfd
> --sysroot=3D/workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-poky-li=
nux/linux-raspberrypi/1_4.9.41+gitAUTOINC+4153f509b4-r0/recipe-sysroot
> -
> ffile-prefix-map=3D/workdir/bsl/build-poky/tmp-poky/work-shared/raspberry=
pi3-64/kernel-source=3D/kernel-source/
> LD=3Daarch64-poky-linux-ld.bfd
> --sysroot=3D/workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-poky-li=
nux/linux-raspberrypi/1_4.
> 9.41+gitAUTOINC+4153f509b4-r0/recipe-sysroot LOADADDR=3D0x00008000
> | make[2]: *** No rule to make target 'uImage'.  Stop.
> | Makefile:150: recipe for target 'sub-make' failed
> | make[1]: *** [sub-make] Error 2
> | Makefile:24: recipe for target '__sub-make' failed
> | make: *** [__sub-make] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-poky-linux/linux-ra=
spberrypi/1_4.9.41+gitAUTOINC+4153f509b4-r0/temp/log.do_compile.8392)
> ERROR: Task
> (/workdir/bsl/build-poky/conf/../../layers/meta-raspberrypi/recipes-kerne=
l/linux/linux-raspberrypi_4.9.bb:do_compile)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 4764 tasks of which 4763 didn't need to be
> rerun and 1 failed.
>
> The only particular configuration I have here (and probably did not have
> when testing it a while ago) as you can guess by the missing target name =
is
> that i boot to U-Boot with KERNEL_IMAGETYPE =3D "uImage". Does this ring =
a
> bell to anyone?

Good timing, this is what I'm actually looking at today! The arm64
arch does not support the legacy "uImage" format. We need to use the
"Image" format (or "Image.gz") and use "booti" in u-boot instead of
"bootm".

For now, you'll need to build without u-boot for raspberrypi3-64 by
unsetting KERNEL_IMAGETYPE.

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

