Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AB31E00CF6; Fri,  8 Sep 2017 05:18:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CBFBE00CF2
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 05:17:48 -0700 (PDT)
Received: by mail-vk0-f49.google.com with SMTP id o22so3220817vke.1
	for <yocto@yoctoproject.org>; Fri, 08 Sep 2017 05:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fJPAR8iacM1MANr9jp2iCnUhTYmYGsNf2LPECdc9AOU=;
	b=LNAO5Fjn6LBpwKfLmuMkX27uMib2G2xco5JK/9FvSKhjaZbCvqeqPS6OhJMvg273Vw
	9saLwuC4891SUYLU/L6m522PYF46zVFWaW++j59KZ8myU+E0e/GmPny8zyFUZfF6DuTV
	OMD5hFpb0/YL8WTkEot2/zrMisTPSNSV1acFAUxfXCYWseXlA6fKN/sslbeEJVdeAxpK
	vPwRuyDmHMck/4c1DkB9B69gmqpkmcpa8wXssuDAe5Beu120GuUimXxB8syYtileGEGU
	u4gewhuE3gboELS59FY01DKo3hagCB4UrS8+GQtwSL3qvo80F5V2pnaQYCPKNqBic+JD
	9izw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fJPAR8iacM1MANr9jp2iCnUhTYmYGsNf2LPECdc9AOU=;
	b=V+OTpYxJk6JuhwY8GowYwY4mgwwf04H8kguEXdlRK/tYStvLkyI6AC9iyBNGTqPagh
	ajJjDrGQlydRS3a6WerIjjUb30wW5j2TRlLC0tYUATZVrY3vArqcJ43GmQXZQhzQ0+R3
	NUznn+wjaLjuKwyZjzTW+VG4mlTtTWOcnrShIXvwN72WgulLrRCXlWtivx54WsKyRxwS
	ZtVPb+DDdx+Wsju+daOtYbVLYKkMOLJJNv1uW0h5CWEh4PdOMktVfG3OH7gN1M1fME5J
	OA9GpxyLBmEnJkK7IRc54lphCBk6Uo9ubn1EidGSisMLZHvoq1au151oykjQ3NMv4Fc9
	qmfQ==
X-Gm-Message-State: AHPjjUh+a+7LnTYcxfKJal+b7zjXLCh8sdWdKhxihlofFFJvwmgIDgeg
	JHttU9/sZVlpDillefMZsbr5qcb2hA==
X-Google-Smtp-Source: AOwi7QAw5EyN10HFnaUNpQ0sgY4Qwtj1Fx6zuN+MbOEP3P1LTXjYPmG3SidI9mSPu4WBDflOkHOICMm9D76kx5fcyMM=
X-Received: by 10.31.199.7 with SMTP id x7mr1362626vkf.184.1504873067435; Fri,
	08 Sep 2017 05:17:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.193 with HTTP; Fri, 8 Sep 2017 05:17:46 -0700 (PDT)
In-Reply-To: <CAPyrkgwvwMJ7rmDLVpq1HmmSpqLy35+vDiBXBdPon7WUNwqqHA@mail.gmail.com>
References: <BD59C156-6B9B-442C-B8B8-92D2194902C0@korgrd.com>
	<CAMKF1soJ2=jwPnfefEvDppJGBxPutA_usc0E--XbWY9txredpg@mail.gmail.com>
	<6668FC5E-F4CC-4E92-8857-3B3BC71C7045@korgrd.com>
	<CAMKF1sreAs1W_TA9yFSKLhVvjNOcXJMTLjLU=cjZ+EJYQuxVqQ@mail.gmail.com>
	<CAPyrkgziawJVn2cDbwAziEF78LZDNq1=e1jhHrM6rL41GtK0NQ@mail.gmail.com>
	<CAC+thW1aSXs-C03_7rgenyLXNypJBRBBQsJEpZrUJyRj1OKb_g@mail.gmail.com>
	<CAPyrkgwvwMJ7rmDLVpq1HmmSpqLy35+vDiBXBdPon7WUNwqqHA@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 8 Sep 2017 14:17:46 +0200
Message-ID: <CAC+thW3U4=wzkAaRm-Uy4hSPOehT8vL2QDx==MBi7v8f96AtTA@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
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
X-List-Received-Date: Fri, 08 Sep 2017 12:18:01 -0000
Content-Type: multipart/alternative; boundary="001a114dc8509dde980558ac90bc"

--001a114dc8509dde980558ac90bc
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 8, 2017 at 11:22 AM, Paul Barker <pbarker@toganlabs.com> wrote:

> On Fri, Sep 8, 2017 at 10:18 AM, Andrea Galbusera <gizero@gmail.com>
> wrote:
> > Hi!
> >
> > On Mon, Sep 4, 2017 at 10:31 PM, Paul Barker <pbarker@toganlabs.com>
> wrote:
> >>
> >> On Fri, Aug 25, 2017 at 6:27 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >> > On Fri, Aug 25, 2017 at 10:14 AM, Bill Jenkins <bill@korgrd.com>
> wrote:
> >> >>
> >> >> On Aug 25, 2017, at 9:42 AM, Khem Raj <raj.khem@gmail.com> wrote:
> >> >>
> >> >>
> >> >> On Fri, Aug 25, 2017 at 9:39 AM Bill Jenkins <bill@korgrd.com>
> wrote:
> >> >>>
> >> >>> I am trying to just get the simple 64-bit rpi-basic-image to work,
> but
> >> >>> the
> >> >>> Raspberry Pi 3 seems to hang with the rainbow screen at startup.
> >> >>
> >> >>
> >> >> Can you plugin a serial cable and see if that worked or try to add
> ssh
> >> >> daemon on target and try to ssh into pi
> >> >>>
> >> >>>
> >> >>
> >> >> That was a good call. I can login with the ssh daemon, so it does
> >> >> successfully boot. I just
> >> >> cannot access it from the HDMI port. (I do not have the hardware for
> a
> >> >> serial connection
> >> >> at the moment)
> >> >>
> >> >> Any ideas on how to get the HDMI port to function the same way as it
> >> >> does
> >> >> for the
> >> >> 32-bit case?
> >> >>
> >> >
> >> > Readding the mailing list.
> >> >
> >> > what you have is exactly what I had when I submitted the port to
> >> > meta-raspberrypi. Haven;t had a chance to revisit it. but this could
> >> > be related to device tree files we are using here. I have had reports
> >> > from other devs of having been able to boot into graphics using older
> >> > kernels but I never got
> >> > that far myself.
> >>
> >> I'm seeing the same issue on builds from both pyro and master
> >> branches. I've confirmed this isn't a HW issue by trying out an
> >> OpenSUSE Leap 42.2 64-bit build for Raspberry Pi 3.
> >>
> >> Khem, are you saying this is the current expected state of Raspberry
> >> Pi 3 64-bit support? If so I'd really like us to document this in the
> >> readme and open a bug so we don't lose track of it.
> >
> >
> > Reading this thread made me curious to get back to building/testing for
> > raspberrypi3-64 myself as I used to do for a while till a few months ago.
> > Not really in the need for that now, but, it would be nice to help
> keeping
> > the support healthy if possible. Then tonight I added back
> > MACHINE=raspberrypi3-64 bitbake myimage to the builds I run daily with
> > master branches of poky and meta-raspberrypi and felt into a even earlier
> > showstopper than the boot issue described here. My kernel build fails
> with:
> >
> > Build Configuration:
> > BB_VERSION        = "1.35.0"
> > BUILD_SYS         = "x86_64-linux"
> > NATIVELSBSTRING   = "universal"
> > TARGET_SYS        = "aarch64-poky-linux"
> > MACHINE           = "raspberrypi3-64"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "2.3+snapshot-20170908"
> > TUNE_FEATURES     = "aarch64"
> > TARGET_FPU        = ""
> > meta
> > meta-poky
> > meta-yocto-bsp    = "HEAD:8b4f16a9cbbaf521461f699b7264fac2ac872581"
> > meta-raspberrypi  = "HEAD:e59132bdcc092597ed5f08a77e7160b0f3bb3547"
> >
> > Initialising tasks: 100%
> > |###########################################################
> ############################################################
> ############################################################
> ##################|
> > Time: 0:00:11
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > ERROR: linux-raspberrypi-1_4.9.41+gitAUTOINC+4153f509b4-r0 do_compile:
> > oe_runmake failed
> > ERROR: linux-raspberrypi-1_4.9.41+gitAUTOINC+4153f509b4-r0 do_compile:
> > Function failed: do_compile (log file is located at
> > /workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-
> poky-linux/linux-raspberrypi/1_4.9.41+gitAUTOINC+4153f509b4-r
> > 0/temp/log.do_compile.8392)
> > ERROR: Logfile of failure stored in:
> > /workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-
> poky-linux/linux-raspberrypi/1_4.9.41+gitAUTOINC+
> 4153f509b4-r0/temp/log.do_compile.8392
> > Log data follows:
> > | DEBUG: Executing shell function do_compile
> > | NOTE: make -j 8 HOSTCC=gcc  HOSTCPP=gcc  -E uImage
> > CC=aarch64-poky-linux-gcc   -fuse-ld=bfd
> > --sysroot=/workdir/bsl/build-poky/tmp-poky/work/
> raspberrypi3_64-poky-linux/linux-raspberrypi/1_4.9.41+
> gitAUTOINC+4153f509b4-r0/recipe-sysroot
> > -
> > ffile-prefix-map=/workdir/bsl/build-poky/tmp-poky/work-
> shared/raspberrypi3-64/kernel-source=/kernel-source/
> > LD=aarch64-poky-linux-ld.bfd
> > --sysroot=/workdir/bsl/build-poky/tmp-poky/work/
> raspberrypi3_64-poky-linux/linux-raspberrypi/1_4.
> > 9.41+gitAUTOINC+4153f509b4-r0/recipe-sysroot LOADADDR=0x00008000
> > | make[2]: *** No rule to make target 'uImage'.  Stop.
> > | Makefile:150: recipe for target 'sub-make' failed
> > | make[1]: *** [sub-make] Error 2
> > | Makefile:24: recipe for target '__sub-make' failed
> > | make: *** [__sub-make] Error 2
> > | ERROR: oe_runmake failed
> > | WARNING: exit code 1 from a shell command.
> > | ERROR: Function failed: do_compile (log file is located at
> > /workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-
> poky-linux/linux-raspberrypi/1_4.9.41+gitAUTOINC+
> 4153f509b4-r0/temp/log.do_compile.8392)
> > ERROR: Task
> > (/workdir/bsl/build-poky/conf/../../layers/meta-raspberrypi/
> recipes-kernel/linux/linux-raspberrypi_4.9.bb:do_compile)
> > failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 4764 tasks of which 4763 didn't need to be
> > rerun and 1 failed.
> >
> > The only particular configuration I have here (and probably did not have
> > when testing it a while ago) as you can guess by the missing target name
> is
> > that i boot to U-Boot with KERNEL_IMAGETYPE = "uImage". Does this ring a
> > bell to anyone?
>
> Good timing, this is what I'm actually looking at today! The arm64
> arch does not support the legacy "uImage" format. We need to use the
> "Image" format (or "Image.gz") and use "booti" in u-boot instead of
> "bootm".
>
> For now, you'll need to build without u-boot for raspberrypi3-64 by
> unsetting KERNEL_IMAGETYPE.


Understood, maybe we can test transitioning toward using "booti" and any of
the modern image formats for both raspberrypi3 and raspberrypi-64? This
should keep the platforms more aligned hence easing layer maintenance...

--001a114dc8509dde980558ac90bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Sep 8, 2017 at 11:22 AM, Paul Barker <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:pbarker@toganlabs.com" target=3D"_blank">pbarker@toganlabs.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><di=
v class=3D"h5">On Fri, Sep 8, 2017 at 10:18 AM, Andrea Galbusera &lt;<a hre=
f=3D"mailto:gizero@gmail.com">gizero@gmail.com</a>&gt; wrote:<br>
&gt; Hi!<br>
&gt;<br>
&gt; On Mon, Sep 4, 2017 at 10:31 PM, Paul Barker &lt;<a href=3D"mailto:pba=
rker@toganlabs.com">pbarker@toganlabs.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Fri, Aug 25, 2017 at 6:27 PM, Khem Raj &lt;<a href=3D"mailto:ra=
j.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; On Fri, Aug 25, 2017 at 10:14 AM, Bill Jenkins &lt;<a href=3D=
"mailto:bill@korgrd.com">bill@korgrd.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Aug 25, 2017, at 9:42 AM, Khem Raj &lt;<a href=3D"mail=
to:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Fri, Aug 25, 2017 at 9:39 AM Bill Jenkins &lt;<a href=
=3D"mailto:bill@korgrd.com">bill@korgrd.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; I am trying to just get the simple 64-bit rpi-basic-i=
mage to work, but<br>
&gt;&gt; &gt;&gt;&gt; the<br>
&gt;&gt; &gt;&gt;&gt; Raspberry Pi 3 seems to hang with the rainbow screen =
at startup.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Can you plugin a serial cable and see if that worked or t=
ry to add ssh<br>
&gt;&gt; &gt;&gt; daemon on target and try to ssh into pi<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; That was a good call. I can login with the ssh daemon, so=
 it does<br>
&gt;&gt; &gt;&gt; successfully boot. I just<br>
&gt;&gt; &gt;&gt; cannot access it from the HDMI port. (I do not have the h=
ardware for a<br>
&gt;&gt; &gt;&gt; serial connection<br>
&gt;&gt; &gt;&gt; at the moment)<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Any ideas on how to get the HDMI port to function the sam=
e way as it<br>
&gt;&gt; &gt;&gt; does<br>
&gt;&gt; &gt;&gt; for the<br>
&gt;&gt; &gt;&gt; 32-bit case?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Readding the mailing list.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; what you have is exactly what I had when I submitted the port=
 to<br>
&gt;&gt; &gt; meta-raspberrypi. Haven;t had a chance to revisit it. but thi=
s could<br>
&gt;&gt; &gt; be related to device tree files we are using here. I have had=
 reports<br>
&gt;&gt; &gt; from other devs of having been able to boot into graphics usi=
ng older<br>
&gt;&gt; &gt; kernels but I never got<br>
&gt;&gt; &gt; that far myself.<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m seeing the same issue on builds from both pyro and master<=
br>
&gt;&gt; branches. I&#39;ve confirmed this isn&#39;t a HW issue by trying o=
ut an<br>
&gt;&gt; OpenSUSE Leap 42.2 64-bit build for Raspberry Pi 3.<br>
&gt;&gt;<br>
&gt;&gt; Khem, are you saying this is the current expected state of Raspber=
ry<br>
&gt;&gt; Pi 3 64-bit support? If so I&#39;d really like us to document this=
 in the<br>
&gt;&gt; readme and open a bug so we don&#39;t lose track of it.<br>
&gt;<br>
&gt;<br>
&gt; Reading this thread made me curious to get back to building/testing fo=
r<br>
&gt; raspberrypi3-64 myself as I used to do for a while till a few months a=
go.<br>
&gt; Not really in the need for that now, but, it would be nice to help kee=
ping<br>
&gt; the support healthy if possible. Then tonight I added back<br>
&gt; MACHINE=3Draspberrypi3-64 bitbake myimage to the builds I run daily wi=
th<br>
&gt; master branches of poky and meta-raspberrypi and felt into a even earl=
ier<br>
&gt; showstopper than the boot issue described here. My kernel build fails =
with:<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.35.0&quot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot=
;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;universal&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;aarch64-poky-linux&quo=
t;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;raspberrypi3=
-64&quot;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<b=
r>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;2.3+snapshot-20170908&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;aarch64&quot;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;<br>
&gt; meta<br>
&gt; meta-poky<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;HEAD:<wbr>8b4f16a9cbbaf521461f69=
9b7264fa<wbr>c2ac872581&quot;<br>
&gt; meta-raspberrypi=C2=A0 =3D &quot;HEAD:<wbr>e59132bdcc092597ed5f08a77e7=
160<wbr>b0f3bb3547&quot;<br>
&gt;<br>
&gt; Initialising tasks: 100%<br>
&gt; |#############################<wbr>##############################<wbr>=
##############################<wbr>##############################<wbr>#####=
#########################<wbr>##############################<wbr>##########=
########|<br>
&gt; Time: 0:00:11<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; ERROR: linux-raspberrypi-1_4.9.41+<wbr>gitAUTOINC+4153f509b4-r0 do_com=
pile:<br>
&gt; oe_runmake failed<br>
&gt; ERROR: linux-raspberrypi-1_4.9.41+<wbr>gitAUTOINC+4153f509b4-r0 do_com=
pile:<br>
&gt; Function failed: do_compile (log file is located at<br>
&gt; /workdir/bsl/build-poky/tmp-<wbr>poky/work/raspberrypi3_64-<wbr>poky-l=
inux/linux-raspberrypi/<wbr>1_4.9.41+gitAUTOINC+<wbr>4153f509b4-r<br>
&gt; 0/temp/log.do_compile.8392)<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /workdir/bsl/build-poky/tmp-<wbr>poky/work/raspberrypi3_64-<wbr>poky-l=
inux/linux-raspberrypi/<wbr>1_4.9.41+gitAUTOINC+<wbr>4153f509b4-r0/temp/log=
.do_<wbr>compile.8392<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | NOTE: make -j 8 HOSTCC=3Dgcc=C2=A0 HOSTCPP=3Dgcc=C2=A0 -E uImage<br>
&gt; CC=3Daarch64-poky-linux-gcc=C2=A0 =C2=A0-fuse-ld=3Dbfd<br>
&gt; --sysroot=3D/workdir/bsl/build-<wbr>poky/tmp-poky/work/<wbr>raspberryp=
i3_64-poky-linux/<wbr>linux-raspberrypi/1_4.9.41+<wbr>gitAUTOINC+4153f509b4=
-r0/<wbr>recipe-sysroot<br>
&gt; -<br>
&gt; ffile-prefix-map=3D/workdir/bsl/<wbr>build-poky/tmp-poky/work-<wbr>sha=
red/raspberrypi3-64/kernel-<wbr>source=3D/kernel-source/<br>
&gt; LD=3Daarch64-poky-linux-ld.bfd<br>
&gt; --sysroot=3D/workdir/bsl/build-<wbr>poky/tmp-poky/work/<wbr>raspberryp=
i3_64-poky-linux/<wbr>linux-raspberrypi/1_4.<br>
&gt; 9.41+gitAUTOINC+4153f509b4-r0/<wbr>recipe-sysroot LOADADDR=3D0x0000800=
0<br>
&gt; | make[2]: *** No rule to make target &#39;uImage&#39;.=C2=A0 Stop.<br=
>
&gt; | Makefile:150: recipe for target &#39;sub-make&#39; failed<br>
&gt; | make[1]: *** [sub-make] Error 2<br>
&gt; | Makefile:24: recipe for target &#39;__sub-make&#39; failed<br>
&gt; | make: *** [__sub-make] Error 2<br>
&gt; | ERROR: oe_runmake failed<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; | ERROR: Function failed: do_compile (log file is located at<br>
&gt; /workdir/bsl/build-poky/tmp-<wbr>poky/work/raspberrypi3_64-<wbr>poky-l=
inux/linux-raspberrypi/<wbr>1_4.9.41+gitAUTOINC+<wbr>4153f509b4-r0/temp/log=
.do_<wbr>compile.8392)<br>
&gt; ERROR: Task<br>
&gt; (/workdir/bsl/build-poky/conf/<wbr>../../layers/meta-raspberrypi/<wbr>=
recipes-kernel/linux/linux-<wbr>raspberrypi_4.9.bb:do_compile)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 4764 tasks of which 4763 didn&#39;t nee=
d to be<br>
&gt; rerun and 1 failed.<br>
&gt;<br>
&gt; The only particular configuration I have here (and probably did not ha=
ve<br>
&gt; when testing it a while ago) as you can guess by the missing target na=
me is<br>
&gt; that i boot to U-Boot with KERNEL_IMAGETYPE =3D &quot;uImage&quot;. Do=
es this ring a<br>
&gt; bell to anyone?<br>
<br>
</div></div>Good timing, this is what I&#39;m actually looking at today! Th=
e arm64<br>
arch does not support the legacy &quot;uImage&quot; format. We need to use =
the<br>
&quot;Image&quot; format (or &quot;Image.gz&quot;) and use &quot;booti&quot=
; in u-boot instead of<br>
&quot;bootm&quot;.<br>
<br>
For now, you&#39;ll need to build without u-boot for raspberrypi3-64 by<br>
unsetting KERNEL_IMAGETYPE.</blockquote><div><br></div><div>Understood, may=
be we can test transitioning toward using &quot;booti&quot; and any of the =
modern image formats for both raspberrypi3 and raspberrypi-64? This should =
keep the platforms more aligned hence easing layer maintenance...</div></di=
v><br></div></div>

--001a114dc8509dde980558ac90bc--
