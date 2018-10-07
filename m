Return-Path: <markus4dev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F405E009B8; Sun,  7 Oct 2018 03:07:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markus4dev[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B700E0090A
	for <yocto@yoctoproject.org>; Sun,  7 Oct 2018 03:07:20 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id a13-v6so17650741wrt.5
	for <yocto@yoctoproject.org>; Sun, 07 Oct 2018 03:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=ql/wUXsq2nqTiiyILMQglimgfB4ZOqKoUEttsACVdCk=;
	b=D3WTqt7WrfUok3c1lqtCZhsR40sZPZPR4w7qYsvMRaiiYo45f37dnl8E0MP/E9f3bO
	Vuxyq581iALvFlQpXv6KNxMVrlzjngh9KNYAR5mA8qd5R5d3zzO0zvOoG+We0ZUufI8b
	gLnT3Lj9kmTQsoW0m7slje22b6CIMsZl6U/3kaqdXXAZIiwsbJXGFRYgO13EXPn5xlU2
	ts5XE7hECNDJDyShuuzc7RuAEXQOlWDhYP0vr3xN91AYU5Jxj43ZoUri54e4JkeE+Hb2
	Yxz8n2iCGYsMeVBiXHE8mKDOTip34oRwaZnJhL7WEJG8k1wE/kjW+BeUx70IJtnNP2TN
	km3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=ql/wUXsq2nqTiiyILMQglimgfB4ZOqKoUEttsACVdCk=;
	b=F7uZxVv2dp2DP4CkzRH5N2Me7L9UsIlf9Lk2THvaXqy3FrhhwaR212AwCsKXjp4P+0
	p4l1QqLbmwdXc4BkYvgja+DaqeyGbuhfLObvmDMOYXArWQA0MiyyeAdfkAE/7Q16y81A
	T2faahJUcTOrMl5nf8tDpoqcxSsEPJASA7P9uR5MaCNonCyu5fstMa6+MKPOLRW7vHpS
	NgfzZeGQPzV3kghbMeSClcslh/5BJzd3oHdDg03PRxme6SSruAc1crcl8ZcH/FSP98Ao
	Kt7MENtPIH+Jt7cvRkNdxPjGFN76cqlsyC1+pXmz7JnyHcs4g3zl23IsdQyaE0xIqmlF
	lLtw==
X-Gm-Message-State: ABuFfogV/Bj+L+GFujmWs63fRv5ujy38I6tfow86eQbO8FKb5majQFgO
	Axht3r2Env/HJANQsy1JlYQ0zV0hxEHgVoYlXFkh/GLzs98=
X-Google-Smtp-Source: ACcGV61UVLN042VmXUv15knEUkvk8VdBA7MMxYh77T9SGCh6bX5PfAO1049df7Cyc1/Rge8PI/3fYdpJD5Ju01dZ/gQ=
X-Received: by 2002:adf:f4c3:: with SMTP id
	h3-v6mr8071419wrp.259.1538906839051; 
	Sun, 07 Oct 2018 03:07:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAFd=ocjm2E-pKH5sDbradN=qsTMYAvcWKyjXa2An-Rnb7MKWwA@mail.gmail.com>
	<CAK18fxFLb2dMSrXJ9PKtsEP60GE7un+VSJvZ==HiAf7PNUCHbQ@mail.gmail.com>
	<CAMKF1srZcR7YGuQ4JdV7qcYLR3-u-eZ19KTew4Ha4AfoCNxyPA@mail.gmail.com>
In-Reply-To: <CAMKF1srZcR7YGuQ4JdV7qcYLR3-u-eZ19KTew4Ha4AfoCNxyPA@mail.gmail.com>
From: Markus W <markus4dev@gmail.com>
Date: Sun, 7 Oct 2018 12:07:07 +0200
Message-ID: <CAFd=ociB1Fsfi3xenU7ryZ2T+JPnYZm=muOUQwbXpOD6zN-eKA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Problem enabling w1-gpio
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
X-List-Received-Date: Sun, 07 Oct 2018 10:07:21 -0000
Content-Type: multipart/alternative; boundary="0000000000007bf2e00577a0ab1a"

--0000000000007bf2e00577a0ab1a
Content-Type: text/plain; charset="UTF-8"

Hi again!

I should have mentioned that the image will also include a meta-mender
layer for updates. Additionally an extra layer for setting up the wifi &
ble for rpi and an application layer. So I am looking for an automated
approach where I can make production updates through mender.

I also have tried the RPI_EXTRA_CONFIG flag to set dtoverlay that didn't
make any difference.

INHERIT += "mender-full"
MACHINE = "raspberrypi3"
RPI_USE_U_BOOT = "1"

MENDER_PARTITION_ALIGNMENT = "4194304"
MENDER_BOOT_PART_SIZE_MB = "40"
IMAGE_INSTALL_append = " nodejs bluez5 kernel-image kernel-devicetree
mender-wait-for-timesync"
IMAGE_FSTYPES_remove += " rpi-sdimg"

DISTRO_FEATURES_append = " bluez5 bluetooth systemd"
VIRTUAL-RUNTIME_init_manager = "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
VIRTUAL-RUNTIME_initscripts = ""
IMAGE_FSTYPES = "ext4"
SDIMG_ROOTFS_TYPE = "ext4"

# SPI, i2c and w1-gpio settings
ENABLE_SPI_BUS = "1"
ENABLE_I2C = "1"
RPI_EXTRA_CONFIG = ' \n \
    dtoverlay=w1-gpio \n \
    '


On Sat, 6 Oct 2018 at 03:13, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Oct 5, 2018 at 9:27 AM Andrei Gherzan <andrei@gherzan.ro> wrote:
> >
> > Hi Markus,
> >
> > On Fri, Oct 5, 2018 at 4:28 PM Markus W <markus4dev@gmail.com> wrote:
> >>
> >> Hi!
> >>
> >> I'm creating a yocto image (sumo) for the raspberrypi and got stuck on
> how to enable the one-wire interface on boot.
> >>
> >> I have enabled the SPI bus and I2C in my local.conf file.
> >>
> >> ENABLE_SPI_BUS = "1"
> >> ENABLE_I2C = "1"
> >>
> >> and checked that they are loaded on boot.
> >>
> >> I'm struggling to figure out where to set  "dtoverlay=w1-gpio" and how
> to enable the w1-gpio module on boot. The /boot/config.txt file doesn't
> exist by default after startup. If I create this file with the line above
> directly on the rpi and reboot it, the w1-gpio interface is still not
> enabled.
> >
> >
> > /boot when you run up the image is on the rootfs while the file you are
> looking for is in the boot partition. You will need to mount (or set a boot
> mount - fstab, systemd etc) the boot partition (p1) and you will see the
> file afterwards. Alternatively, just mount the SD card's partitions on your
> working station and modify the file offline.
> >
>
> if one starts using wic image instead of old sd-card image types then
> boot is automounted.
>
> Just add
>
> IMAGE_FSTYPES += "wic.xz"
>
> for nice xz compressed wic image.
>
> > ---
> > Andrei
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000007bf2e00577a0ab1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi again!</div><div><br></div><div>I=
 should have=20
mentioned that the image will also include a meta-mender layer for=20
updates. Additionally an extra layer for setting up the wifi &amp; ble=20
for rpi and an application layer. So I am looking for an automated=20
approach where I can make production updates through mender. <br></div><div=
><br></div><div>I also have tried the RPI_EXTRA_CONFIG flag to set dtoverla=
y that didn&#39;t make any difference. <br></div><div><br></div><div>INHERI=
T +=3D &quot;mender-full&quot;<br>MACHINE =3D &quot;raspberrypi3&quot;<br>R=
PI_USE_U_BOOT =3D &quot;1&quot;<br><br>MENDER_PARTITION_ALIGNMENT =3D &quot=
;4194304&quot;<br>MENDER_BOOT_PART_SIZE_MB =3D &quot;40&quot;<br>IMAGE_INST=
ALL_append =3D &quot; nodejs bluez5 kernel-image kernel-devicetree mender-w=
ait-for-timesync&quot;<br>IMAGE_FSTYPES_remove +=3D &quot; rpi-sdimg&quot;<=
br><br>DISTRO_FEATURES_append =3D &quot; bluez5 bluetooth systemd&quot;<br>=
VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>DISTRO_FEATURES_BAC=
KFILL_CONSIDERED =3D &quot;sysvinit&quot;<br>VIRTUAL-RUNTIME_initscripts =
=3D &quot;&quot;<br>IMAGE_FSTYPES =3D &quot;ext4&quot;<br>SDIMG_ROOTFS_TYPE=
 =3D &quot;ext4&quot;</div><div><br></div><div># SPI, i2c and w1-gpio setti=
ngs<br></div><span class=3D"gmail-im"><div>ENABLE_SPI_BUS =3D &quot;1&quot;=
<br>
ENABLE_I2C =3D &quot;1&quot;</div></span></div><div dir=3D"ltr">RPI_EXTRA_C=
ONFIG =3D &#39; \n \<br>=C2=A0=C2=A0=C2=A0 dtoverlay=3Dw1-gpio \n \<br>=C2=
=A0=C2=A0=C2=A0 &#39;<br></div><div><br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr">On Sat, 6 Oct 2018 at 03:13, Khem Raj &lt;<a href=3D"mai=
lto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">On Fri, Oct 5, 2018 at 9:27 AM Andrei Gherzan &lt;<a=
 href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&=
gt; wrote:<br>
&gt;<br>
&gt; Hi Markus,<br>
&gt;<br>
&gt; On Fri, Oct 5, 2018 at 4:28 PM Markus W &lt;<a href=3D"mailto:markus4d=
ev@gmail.com" target=3D"_blank">markus4dev@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi!<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m creating a yocto image (sumo) for the raspberrypi and got =
stuck on how to enable the one-wire interface on boot.<br>
&gt;&gt;<br>
&gt;&gt; I have enabled the SPI bus and I2C in my local.conf file.<br>
&gt;&gt;<br>
&gt;&gt; ENABLE_SPI_BUS =3D &quot;1&quot;<br>
&gt;&gt; ENABLE_I2C =3D &quot;1&quot;<br>
&gt;&gt;<br>
&gt;&gt; and checked that they are loaded on boot.<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m struggling to figure out where to set=C2=A0 &quot;dtoverla=
y=3Dw1-gpio&quot; and how to enable the w1-gpio module on boot. The /boot/c=
onfig.txt file doesn&#39;t exist by default after startup. If I create this=
 file with the line above directly on the rpi and reboot it, the w1-gpio in=
terface is still not enabled.<br>
&gt;<br>
&gt;<br>
&gt; /boot when you run up the image is on the rootfs while the file you ar=
e looking for is in the boot partition. You will need to mount (or set a bo=
ot mount - fstab, systemd etc) the boot partition (p1) and you will see the=
 file afterwards. Alternatively, just mount the SD card&#39;s partitions on=
 your working station and modify the file offline.<br>
&gt;<br>
<br>
if one starts using wic image instead of old sd-card image types then<br>
boot is automounted.<br>
<br>
Just add<br>
<br>
IMAGE_FSTYPES +=3D &quot;wic.xz&quot;<br>
<br>
for nice xz compressed wic image.<br>
<br>
&gt; ---<br>
&gt; Andrei<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div></div>

--0000000000007bf2e00577a0ab1a--
