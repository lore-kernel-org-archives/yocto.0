Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 058A4E00C5B; Fri, 13 Nov 2015 01:51:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90DB8E00C9B
	for <yocto@yoctoproject.org>; Fri, 13 Nov 2015 01:51:20 -0800 (PST)
Received: by lffz63 with SMTP id z63so49492460lff.0
	for <yocto@yoctoproject.org>; Fri, 13 Nov 2015 01:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan_ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=P5sWYgyjAvYTABe3Q5uK5MNgqhgTFt4XsW5kdPGPLY0=;
	b=UO9qPTOWoSrf8oXt5ahBXDVNE+rVHHu/044+O8AzjSA75MlKFZzUhvnNAl321wMBgp
	VKL3V9dXLB9hM5y5hHEITu4R/0kVj2KANzaORh9XD2wjWL9vMRomuiy0pvVG2LI6AbXg
	5ux8dRgZgEnvYxGotLtvFx3/GSKarzLgbwztOY4fMpbl5cXDpQ5bG1ZspiZ/QmwoRptL
	Cm47QS4tI9Cod929jgfdU9EYciXzASLRA6yxjS4jqagg84RsflZE3C3k7Bjz/i78j76K
	JtONigDCxvdn5DqKtUYdOoz9/mO6gNvPkDOoAYhaQtwpMCwOKq8R+FXti1ZNKg+c2pxB
	SeAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=P5sWYgyjAvYTABe3Q5uK5MNgqhgTFt4XsW5kdPGPLY0=;
	b=cHbkzCxixr+8oiTCwhZp94Etb7RgMxPJghpR/jNQC1WIlgWbOAPNATfsZ0A0FPMalg
	XQ6qo0C/QpUcUwoxFO2dOyyKO8Jad1YjnIRYnLbrSRZ+wzeGPKTSx5jNTY5J61nXRN8T
	G4RRQspiudE4BniavO92vSXw99SE/3Weo3Lx3LDg+sTtpthOCUa0QXmt1RLfodgDz4Ex
	sKUF6p0/gz8w1B8k5R32FwS3fPioEfnSRCraIIOG6pXmsL9t0JbxwtwBWFBebPj3JhNx
	y7EBdQGlk4swgom4lOiKZ2znAkaKZgvrPN6n/R9blXurBR/gGViPsk0lPHWrC48HnISy
	DcJA==
X-Gm-Message-State: ALoCoQnI1aAwNU4pY1SruWxanR5Pp/ds1MyroGmv+9EVXvNAG/btaTwaIgTUNmowAReZsFm0/yCG
X-Received: by 10.25.20.97 with SMTP id k94mr9506061lfi.71.1447408278520; Fri,
	13 Nov 2015 01:51:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.61.195 with HTTP; Fri, 13 Nov 2015 01:50:39 -0800 (PST)
X-Originating-IP: [92.217.115.210]
In-Reply-To: <CAK3ATuEWnEdvmK=qiFBsOAzVSDP0gx8HYipwqiN4FJEv2ZFRyQ@mail.gmail.com>
References: <CAK3ATuEWnEdvmK=qiFBsOAzVSDP0gx8HYipwqiN4FJEv2ZFRyQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 13 Nov 2015 10:50:39 +0100
Message-ID: <CAK18fxGRhdKbkMQcCc2joTuiuWpbixu3fhXgkjaP-jhwrKVnNw@mail.gmail.com>
To: Raj Jar <jarraj400@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: raspberrypi create_image.rpi-sdimg fails
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
X-List-Received-Date: Fri, 13 Nov 2015 09:51:44 -0000
Content-Type: multipart/alternative; boundary=001a11406b6249623505246900b4

--001a11406b6249623505246900b4
Content-Type: text/plain; charset=UTF-8

Hi,

1. could you please keep the emails thread? receiving a new email for each
of your replies is not funny.
2. could you please use the proper raspberrypi tag in the subject? check
README.txt
3. I asked additional questions. could you please reply?
4. can you try to replicate on meta-rpi master?

Thanks,

--
Andrei Gherzan

On Fri, Nov 13, 2015 at 5:43 AM, Raj Jar <jarraj400@gmail.com> wrote:

> Hi,
>
> This is my poky version
>
> Build Configuration:
> BB_VERSION        = "1.26.0"
> BUILD_SYS         = "i686-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.8.1"
> TUNE_FEATURES     = "arm armv6 vfp arm1176jzfs callconvention-hard"
> TARGET_FPU        = "vfp"
> meta
> meta-yocto
> meta-yocto-bsp    = "fido:b74ea963cefffad9fbd91d4eb9b240f6a8c86cd0"
> meta-raspberrypi  = "fido:b896a7da70dd7a16ba7ffd664f7747cb37e1d142"
>
> >
> > I have 60GB space in my build system still i face
> >
> > NOTE: Preparing RunQueue
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > ERROR: Error: The image creation script
> >
> '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg'
> > returned 1:
> > Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
> > 0+0 records in
> > 0+0 records out
> > 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
> > Model:  (file)
> > Disk
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:
> > 105MB
> > Sector size (logical/physical): 512B/512B
> > Partition Table: msdos
> > Disk Flags:
> >
> > Number  Start  End    Size    Type    File system  Flags
> >  1      4194kB  25.2MB  21.0MB  primary              boot, lba
> >  2      25.2MB  105MB  79.7MB  primary
> >
> > mkfs.vfat 2.11 (12 Mar 2005)
> > Disk full
> > WARNING:
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1
> > exit 1 from
> >  mcopy -i
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
> > -s
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin
> > ::kernel.img
> >
> > ERROR: Function failed: do_rootfs
> > ERROR: Logfile of failure stored in:
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
> > ERROR: Task 7
> >
> (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> > rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
> > rerun and 1 failed.
> > No currently running tasks (1953 of 1955)
> >
> > Summary: 1 task failed:
> >
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> > rpi-hwup-image.bb, do_rootfs
> >
>
> --
> Regards,
> RAJ M
> Mob. # +91-9597208150
>
>
> Have a great day ahead.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11406b6249623505246900b4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>1. could you please keep the emails=
 thread? receiving a new email for each of your replies is not funny.</div>=
<div>2. could you please use the proper raspberrypi tag in the subject? che=
ck README.txt</div><div>3. I asked additional questions. could you please r=
eply?</div><div>4. can you try to replicate on meta-rpi master?</div><div><=
br></div><div>Thanks,<br><div class=3D"gmail_extra"><br clear=3D"all"><div>=
<div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>=
--</div>Andrei Gherzan</div></div></div></div></div>
<br><div class=3D"gmail_quote">On Fri, Nov 13, 2015 at 5:43 AM, Raj Jar <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:jarraj400@gmail.com" target=3D"_blank"=
>jarraj400@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">Hi,<br>
<br>
This is my poky version<br>
<br>
Build Configuration:<br>
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.26.0&quot;<br>
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i686-linux&quot;<br>
NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-14.04&quot;<br>
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot=
;<br>
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;raspberrypi&quot;=
<br>
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>
DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.8.1&quot;<br>
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv6 vfp arm1176jzfs callco=
nvention-hard&quot;<br>
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;vfp&quot;<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;fido:b74ea963cefffad9fbd91d4eb9b240f6=
a8c86cd0&quot;<br>
meta-raspberrypi=C2=A0 =3D &quot;fido:b896a7da70dd7a16ba7ffd664f7747cb37e1d=
142&quot;<br>
<br>
&gt;<br>
&gt; I have 60GB space in my build system still i face<br>
&gt;<br>
&gt; NOTE: Preparing RunQueue<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; ERROR: Error: The image creation script<br>
&gt; &#39;/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/=
work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image=
.rpi-sdimg&#39;<br>
&gt; returned 1:<br>
&gt; Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB=
<br>
&gt; 0+0 records in<br>
&gt; 0+0 records out<br>
&gt; 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s<br>
&gt; Model:=C2=A0 (file)<br>
&gt; Disk<br>
&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deplo=
y/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-s=
dimg:<br>
&gt; 105MB<br>
&gt; Sector size (logical/physical): 512B/512B<br>
&gt; Partition Table: msdos<br>
&gt; Disk Flags:<br>
&gt;<br>
&gt; Number=C2=A0 Start=C2=A0 End=C2=A0 =C2=A0 Size=C2=A0 =C2=A0 Type=C2=A0=
 =C2=A0 File system=C2=A0 Flags<br>
&gt;=C2=A0 1=C2=A0 =C2=A0 =C2=A0 4194kB=C2=A0 25.2MB=C2=A0 21.0MB=C2=A0 pri=
mary=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 boot, lba<br>
&gt;=C2=A0 2=C2=A0 =C2=A0 =C2=A0 25.2MB=C2=A0 105MB=C2=A0 79.7MB=C2=A0 prim=
ary<br>
&gt;<br>
&gt; mkfs.vfat 2.11 (12 Mar 2005)<br>
&gt; Disk full<br>
&gt; WARNING:<br>
&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/=
raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-=
sdimg:1<br>
&gt; exit 1 from<br>
&gt;=C2=A0 mcopy -i<br>
&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/=
raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img<br>
&gt; -s<br>
&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deplo=
y/images/raspberrypi/Image-raspberrypi.bin<br>
&gt; ::kernel.img<br>
&gt;<br>
&gt; ERROR: Function failed: do_rootfs<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/=
raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.134=
57<br>
&gt; ERROR: Task 7<br>
&gt; (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-c=
ore/images/<br>
&gt; <a href=3D"http://rpi-hwup-image.bb" rel=3D"noreferrer" target=3D"_bla=
nk">rpi-hwup-image.bb</a>, do_rootfs) failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn&#39;t nee=
d to be<br>
&gt; rerun and 1 failed.<br>
&gt; No currently running tasks (1953 of 1955)<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;<br>
&gt; /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-co=
re/images/<br>
&gt; <a href=3D"http://rpi-hwup-image.bb" rel=3D"noreferrer" target=3D"_bla=
nk">rpi-hwup-image.bb</a>, do_rootfs<br>
&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Regards,<br>
RAJ M<br>
Mob. # <a href=3D"tel:%2B91-9597208150" value=3D"+919597208150">+91-9597208=
150</a><br>
<br>
<br>
Have a great day ahead.<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div></div></div>

--001a11406b6249623505246900b4--
