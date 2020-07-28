Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.15570.1595952311100387021
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 09:05:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=s4g6C5QA;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57097E01F39; Tue, 28 Jul 2020 09:05:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 427F7E01F37
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2020 09:05:09 -0700 (PDT)
Received: by mail-qt1-f175.google.com with SMTP id 6so15239322qtt.0
        for <yocto@yoctoproject.org>; Tue, 28 Jul 2020 09:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=9WtNmBJbd1vu0TteOwuLDY1QR1TR+YLqrx5qEDszJl0=;
        b=s4g6C5QAtj2KoOwzKNiJlBfs0+pkborUZTm4jmKISO/PQVkBBRF/Wuy+UjnLrT+3V1
         n9tNHthAmCXUMhacqDg1uAP5yX3WiKdFzK9n7IzV1aF8I+GvBy2EdmzzB1mB3VWnuhw+
         oQfaO2j6PVB9bVCQcvNpNgj3O2b9/UFutNFKYLGjU1AAlVTWB4m/blZsyvK/1OXeggd+
         9FJ1IAZro9Cle9azBYdCt6/C1cC0a9FT/xwkWZfFQZV6SDaszsxyCv/0MFrJPHL6q8dd
         WwCtu/tR33TJ40C5Ut0BzO8lFTmqwGTfBKcOFUd25p5SiuK4EAUYrwZZt+tMmR4T9FeO
         gGzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=9WtNmBJbd1vu0TteOwuLDY1QR1TR+YLqrx5qEDszJl0=;
        b=SGnOFd+xCLoQoGXTkYc7Y2sZW9weFr6dIt1e3Xbk23fFAzOgu7SiYiMU6C6inelPC+
         KSQpGGHJOIBcH/KDqo5NQg+h8rYbSaUKTTapQGk84JDf0eejsmKDU7KRIlIR8sJF0oE6
         YJ7VS/XUnTkJFFvNR9RjRtxvGks5TPrj/TwKhRRe8ddX9Jfeg8bzXcgJ5A53ckgEytWk
         ULQ++MV15IlZqkAoxJPXpMjydgRYWReMiF3WPMTYsqg9YqaVZZRp2eAMiHeB/HMqaZmo
         NXsatrB9c7Y+2zsybxxgp2jmz0xhmr942MIXXrK9SwcsVRpmLGaidclFol3g20O2p/z3
         yg7g==
X-Gm-Message-State: AOAM5332nPc59RpasrqkI/cBpzuouOcXcw/E9U7HDsLxpomxtJtj4zDJ
	DGgghag8+ZHwGK6jhHx5kEODwzMht/DxAfMLDl5Y3ITz
X-Google-Smtp-Source: ABdhPJytBTCqCmrfb24GI3yGfuqEOX8FX/R1kTmEPZ9NZZYoCSWI3Yu2SPzA53lDwvBDUPes3pWRoyYL2bQ99yzRN4o=
X-Received: by 2002:ac8:4707:: with SMTP id f7mr28354843qtp.22.1595952308146;
 Tue, 28 Jul 2020 09:05:08 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720@MN2PR17MB3024.namprd17.prod.outlook.com>
 <CADkTA4MBSrRjgQQbnN=4XMhxVTB=b0RdH74zNPCb8pEwhg2GsA@mail.gmail.com>
 <MN2PR17MB30248E9C96341B99C68CC4BBD6730@MN2PR17MB3024.namprd17.prod.outlook.com>
 <CAGAf8LzT4EMXEmdbOLzNvoGA4_jE1J2-DOQB6UbXh=ZJdOPNeA@mail.gmail.com> <MN2PR17MB30245CF7109A455943CB5DE9D6730@MN2PR17MB3024.namprd17.prod.outlook.com>
In-Reply-To: <MN2PR17MB30245CF7109A455943CB5DE9D6730@MN2PR17MB3024.namprd17.prod.outlook.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 28 Jul 2020 18:04:57 +0200
Message-ID: <CAGAf8Lw8jMRUA6y6JGMwYEefJdFHe7-MN_75NgtW4-1oWy8P+A@mail.gmail.com>
Subject: Re: [yocto] How to enable preempt-rt in Yocto Zeus or Warrior?
To: Scott Whitney <sdw@inea.com>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Scott,

What I wanted to say here is that you do not change anything while
building a YOCTO load. You'll get all the components in:
.../tmp/deploy/images/$(PLATFORM) , namely:
XYZ,rootfs.cpio.zx
U-Boot
zImage
modules

But you can build a rt-kernel very conventionally, using out of YOCTO
classical kernel build.
[1] Download from the provider the normal kernel;
[2] Apply rt-patches to it (usually there is a script for it);
[3] make imx8_defconfig or whatever *_defconfig which suits to your platfo=
rm;
[4] make menuconfig (for checking which CONFIG_ options are included,
and if you need something more/less, to adjust it;
[5] make
[6] sudo make modules_install

This is in nutshell, you might need to use cross compiling options,
like I do for BBB:
https://github.com/ZoranStojsavljevic/MikroE_BeagleBone-Black_BSP-Integrat=
ion/blob/master/README.md

(please, find U-Boot and kernel classical building procedures in there)

The same for U-Boot, or even you can use YOCTO's U-Boot.

Then, if the whole system suits your requirements, you might go by
Bruce's advices (from his very last email).

Just an idea how to ease your initial pain...

Zoran
_______


On Tue, Jul 28, 2020 at 4:18 PM Scott Whitney <sdw@inea.com> wrote:
>
> Hi Zoran,
>
> Thank you for responding.  I confess I am still new to building Linux wi=
th Yocto, so some of your steps may seem obvious, but are a bit confusing t=
o a 'newbie'.
>
> I am using normal Yocto instruction provided by Variscite to build our r=
ootfs, U-Boot, and kernel.  However, I am not doing anything special to bui=
ld an rt-kernel, and that is what I am trying to find out how to do.
>
> For example, after downloading and installing prerequisite executables, =
I initialize our repo (example is for Yocto Warrior, but similar for Yocto =
Zeus):
>
> $ repo init -u https://github.com/varigit/variscite-bsp-platform.git -b =
fsl-warrior -m imx-4.19.35-1.1.0-var01.xml
> $ repo sync -j4
>
> Then I configure our machine, distro, and build directory:
>
> $ cd ~/var-fsl-yocto
> $ MACHINE=3Dimx8mm-var-dart DISTRO=3Dfsl-imx-xwayland . var-setup-releas=
e.sh -b build_xwayland
>
> Then I am in the build_xwayland directory, and create our SD card image =
using:
>
> $ bitbake fsl-image-qt5
>
> The SD card image ends up in the build_xwayland/tmp/deploy/images direct=
ory, and I use the following to flash the SD card:
>
> # For fsl-image-qt5 image (Qt5-XWAYLAND & Qt5-WAYLAND)
> $ zcat tmp/deploy/images/imx8mm-var-dart/fsl-image-qt5-imx8mm-var-dart.s=
dcard.gz | sudo dd of=3D/dev/sdX bs=3D1M conv=3Dfsync
>
> What steps are you suggesting to configure rt-linux?  I would appreciate=
 it if you could be specific, since some of the steps involved are new to m=
e.
>
> I have already added a .bbappend file to modify the device tree for our =
application, and have run bitbake -c menuconfig virtual/kernel to update th=
e kernel configuration.
>
> Thanks for your assistance and tolerance for my inexperienced questions.
>
> Scott D. Whitney
>
> sdw@inea.com    |     T: 781-801-1152    |     F: 781-801-1108    |     =
www.inea.com
>
> -----Original Message-----
> From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> Sent: Tuesday, July 28, 2020 10:05 AM
> To: Scott Whitney <sdw@inea.com>
> Cc: Bruce Ashfield <bruce.ashfield@gmail.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] How to enable preempt-rt in Yocto Zeus or Warrior?
>
> Hello Scott,
>
> I have a bit of a different idea about the whole YOCTO process.
>
> Let me suggest something else, actually a hybrid combination of the YOCT=
O build system.
>
> You can do the whole process of YOCTO, but why do you not use components=
 out of the YOCTO building process?
>
> For example, you can use rootfs built by YOCTO, and U-Boot and rt-kernel=
 built out of the YOCTO, for the beginning?
>
> Then, as an option, if you are satisfied with the reached architecture, =
you can write your own recipe for the rt-kernel (you need to incorporate a =
bunch of patches into the rt-kernel proprietary recipe).
>
> Zoran
> _______
>
>
> On Tue, Jul 28, 2020 at 2:45 PM Scott Whitney <sdw@inea.com> wrote:
> >
> > Hi Bruce,
> >
> >
> >
> > Yes, we are using Linux built by Yocto, but where is the preferred pro=
vider for the kernel set to linux-yocto-rt?
> >
> >
> >
> > Thanks for your help
> >
> >
> >
> > Scott D. Whitney
> >
> > sdw@inea.com    |     T: 781-801-1152    |     F: 781-801-1108    |   =
  www.inea.com
> >
> >
> >
> > From: Bruce Ashfield <bruce.ashfield@gmail.com>
> > Sent: Monday, July 27, 2020 10:04 PM
> > To: Scott Whitney <sdw@inea.com>
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] How to enable preempt-rt in Yocto Zeus or Warrior=
?
> >
> >
> >
> >
> >
> >
> >
> > On Mon, Jul 27, 2020 at 3:51 PM Scott Whitney <sdw@inea.com> wrote:
> >
> > Hi Yocto group,
> >
> >
> >
> > I=E2=80=99m working with a newly-released copy of Yocto Zeus from Vari=
scite for the i.MX8MM Mini, although the same option seems to apply to the =
previous Yocto Warrior.
> >
> >
> >
> > I understand that a Linux real-time kernel can be enabled by setting L=
INUX_KERNEL_TYPE =3D =E2=80=9Cpreempt-rt=E2=80=9D.  Where does this option =
need to be set so that when I bitbake fsl-image-qt5, I get the Linux =E2=80=
=
=9Cpreempt-rt=E2=80=9D kernel instead of the =E2=80=9Cstandard=E2=80=9D ke=
rnel?
> >
> >
> >
> > Is there a specific configuration file that needs to be modified, or a=
 new recipe in a layer?  I am confused and hoping that you can help.
> >
> >
> >
> > If you aren't using linux-yocto, you'll need to arrange for the preemp=
t-rt patch(es) to be applied to whatever kernel you are using. Which means =
you are creating a new recipe, bbappending an existing one, or if you are l=
ucky the kernel provider already has a -rt recipe available.
> >
> >
> >
> > If you are using linux-yocto, it's as simple as setting the preferred =
provider of the kernel as linux-yocto-rt  and building.
> >
> >
> >
> > Bruce
> >
> >
> >
> >
> >
> >
> >
> > Best regards,
> >
> >
> >
> > Scott D. Whitney
> >
> > Principal Software Engineer
> >
> >
> > Intertech Engineering Associates, Inc.
> > 100 Lowder Brook Drive, Suite 2500
> > Westwood, MA  02090
> > sdw@inea.com    |     T: 781-801-1152    |     F: 781-801-1108    |   =
  www.inea.com
> >
> >
> >
> >
> >
> >
> > --
> >
> > - Thou shalt not follow the NULL pointer, for chaos and madness await
> > thee at its end
> > - "Use the force Harry" - Gandalf, Star Trek II
> >
> >=20
