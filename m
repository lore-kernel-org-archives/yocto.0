Return-Path: <sperez@indaba.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15657E00D04; Thu, 25 Feb 2016 07:18:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E0EEE00CCC
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 07:17:51 -0800 (PST)
Received: by mail-oi0-f44.google.com with SMTP id w5so41417995oie.3
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 07:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=indaba-es.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=G16TmqLM0X7BNKxhDtw6vMqTGU6kpMfg1wOZoTqz+CY=;
	b=APwL9xYn0rqHht2mhgtj9KLfb2XgX7FUxum11kuXXKkUYipBGsyljdBtEGWsIVvYSa
	fuFWJDoS1C8Ps6yEAnhNzSHY5U/KUlos2TezCPJ1dlMnNW9Jt6CZCZNw9Oa0Dh6wHFWA
	xQ5XHTqes/mJO+x5ZV0LK9fwQcMWqCV3Wofq2GEtIwYC/a6XTA1N4WxK91ANSy4rwBr2
	EIho1o8wgVaEIUpijq8j4RnJxN0zf6R9xMOLPqrzHaGNpuTfP0o3ZE/jhvizb6ok1UW9
	ROtfZOSRXpRlxjakHia908cq/kitB9rN1pGvEoM8JFQ0wqG4nwh1X++K57VrmbM3O4Oh
	S9Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=G16TmqLM0X7BNKxhDtw6vMqTGU6kpMfg1wOZoTqz+CY=;
	b=CO+sj4Ejo+TQEafq5tOI/ae4gL/sCQyYECQ2VaH5hoL4/EHdRxba2EGzNOZIlLf+R5
	PRdNr8JAtuQgProTrdfXuI1cmrZmTx3ln4+deKeQvuz0d+5RlrUCaB3+uqQyMTj5Y1R7
	0J/QqagA8Tw1ecgXdCVEaDFUDf40FQPn4nIqO4ZwTiRq9u5kD0KsLX6QI3sfHnwYCl9P
	40y1+AZb2tVkTVg3Xz16vd1uXmnk7Lg+A5JeWWKga4b7aJeWbKaxHTYEfZB648nXlm1i
	Nl+dYW2apfshPhy4q75BSvB+RRweicUxD9krhZ8g4VU+27DISN6l3kdjT4RcnjAdWyJW
	09KQ==
X-Gm-Message-State: AG10YOSqcLET1FNLdH26DaB4e0Dj9V21XUf4AwxAT7hI69DI10d62BIooaU2wqyPZ5CC9dvtyQPEdmXNbFsF8w==
MIME-Version: 1.0
X-Received: by 10.202.75.72 with SMTP id y69mr32587602oia.54.1456413470489;
	Thu, 25 Feb 2016 07:17:50 -0800 (PST)
Received: by 10.202.66.196 with HTTP; Thu, 25 Feb 2016 07:17:50 -0800 (PST)
X-Originating-IP: [213.172.51.204]
Date: Thu, 25 Feb 2016 16:17:50 +0100
Message-ID: <CAE=sG61pQSV-azk+Ey3veovXv6ATr6EE7xgFMPpjZxajEnnqFQ@mail.gmail.com>
From: =?UTF-8?B?U2FuZHkgUMOpcmV6?= <sperez@indaba.es>
To: yocto@yoctoproject.org
Subject: Coldplug is not working as expected
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
X-List-Received-Date: Thu, 25 Feb 2016 15:18:08 -0000
Content-Type: multipart/alternative; boundary=001a11c17d7a8e1fb8052c99af59

--001a11c17d7a8e1fb8052c99af59
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I=E2=80=99m testing the Freescale's Yocto BSP layer (
http://git.freescale.com/git/cgit.cgi/imx/fsl-arm-yocto-bsp.git/) on an
SBC2100 board manufactured by IC Nexus Co. More specifically, I=E2=80=99m u=
sing the
branch imx-3.10.53-1.1.1_patch which corresponds to Yocto 1.6.2 (Daisy). I
have a HUAWEI MS2131i-8 modem connected via USB to the board and some udev
rules to =E2=80=9Cmount=E2=80=9D this device on /dev/modem. Everything work=
 as expected
when I connect and disconnect the modem while the system is running, that
is, hotpluging is working right. However, if I reboot the system with the
modem connected, the /dev/modem link is not created; it seems like
coldpluging is not working at all.

During the boot process, a uevent file is created in the device directory
/sys/devices/soc0/soc.1/2100000.aips-bus/2184200.usb/ci_hdrc.1/usb1/1-1/1-1=
.4/1-1.4:1.0/ttyUSB0/tty/ttyUSB0
but it seems like nobody is using it.  Only one entry is found in the log
related to udev:

- imx6-sbc2100 daemon.info kernel: udevd[187]: starting version 182

On the other hand, if I execute the command:

# udevadm trigger --action=3Dadd

The /dev/modem link is created and everything work as expected. Am I
missing something? Must I configure something in order to trigger the
uevent after booting? Can it be related to this bub
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D6ec0e55375c9687=
c7ead49d1e01f81b197db7108
?

All suggestions are welcome. Thanks in advance.

Regards
<http://www.indaba.es/>

--001a11c17d7a8e1fb8052c99af59
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I=E2=80=99m testing t=
he Freescale&#39;s Yocto BSP layer (<a href=3D"http://git.freescale.com/git=
/cgit.cgi/imx/fsl-arm-yocto-bsp.git/">http://git.freescale.com/git/cgit.cgi=
/imx/fsl-arm-yocto-bsp.git/</a>) on an SBC2100 board manufactured by IC Nex=
us Co. More specifically, I=E2=80=99m using the branch imx-3.10.53-1.1.1_pa=
tch which corresponds to Yocto 1.6.2 (Daisy). I have a HUAWEI MS2131i-8 mod=
em connected via USB to the board and some udev rules to =E2=80=9Cmount=E2=
=80=9D this device on /dev/modem. Everything work as expected when I connec=
t and disconnect the modem while the system is running, that is, hotpluging=
 is working right. However, if I reboot the system with the modem connected=
, the /dev/modem link is not created; it seems like coldpluging is not work=
ing at all. =C2=A0</div><div><br></div><div>During the boot process, a ueve=
nt file is created in the device directory /sys/devices/soc0/soc.1/2100000.=
aips-bus/2184200.usb/ci_hdrc.1/usb1/1-1/1-1.4/1-1.4:1.0/ttyUSB0/tty/ttyUSB0=
 but it seems like nobody is using it.=C2=A0 Only one entry is found in the=
 log related to udev:</div><div><br></div><div>- imx6-sbc2100 <a href=3D"ht=
tp://daemon.info">daemon.info</a> kernel: udevd[187]: starting version 182<=
/div><div><br></div><div>On the other hand, if I execute the command:</div>=
<div><br></div><div># udevadm trigger --action=3Dadd</div><div><br></div><d=
iv>The /dev/modem link is created and everything work as expected. Am I mis=
sing something? Must I configure something in order to trigger the uevent a=
fter booting? Can it be related to this bub <a href=3D"http://git.yoctoproj=
ect.org/cgit/cgit.cgi/poky/commit/?id=3D6ec0e55375c9687c7ead49d1e01f81b197d=
b7108">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D6ec0e553=
75c9687c7ead49d1e01f81b197db7108</a>?</div><div><br></div><div>All suggesti=
ons are welcome. Thanks in advance.</div><div><br></div><div>Regards</div><=
div><div class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><a hre=
f=3D"http://www.indaba.es/" target=3D"_blank"></a></div></div></div></div>
</div>

--001a11c17d7a8e1fb8052c99af59--
