Return-Path: <parthiban@ulivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEE28E00948; Thu,  5 Feb 2015 04:13:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8823EE0082D
	for <yocto@yoctoproject.org>; Thu,  5 Feb 2015 04:13:31 -0800 (PST)
Received: by mail-oi0-f54.google.com with SMTP id v63so874669oia.13
	for <yocto@yoctoproject.org>; Thu, 05 Feb 2015 04:13:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=91vjT8Qjlgm9bXRSi1i2IVf+Bu7AGVWFaaG9FwCBfo8=;
	b=E2k0SHYltppn098jab7od6D7+wu8IoH+FB3oLDN8ZPq/IAtW6HRexPdDtGhjF+3lxX
	1mm4m/KF85IEiLaY9oMVZzsYUmCInggO8rwVZ/sucyUcPYn/tnxSVQcCc8SS9+wlK3CV
	wMFP/93xNg1GHh1X2LozhfVK3kW1W//rRSuOw6wGS3YwYwJEboRv7ABMfXrceeKMTyIz
	osatPIkjx208y2NsNTXU+vdlrbHCaD2uVQssblII6TFKlY1eJqHXY89Pfb7RsbVAPykn
	hEdO9uHqwQhrAh8BdSqLYJ3kvJluHllmbwsRQa7v45b3bVuz6vzzLQHy2SZ+nQwuPQB/
	i95w==
X-Gm-Message-State: ALoCoQmF33KoRGAltiL12bijjODQk9dVzHAIX+OKIdeR7GQpDB0xn3aDTOv7GpAN2B6GygeGZRrk
MIME-Version: 1.0
X-Received: by 10.60.118.74 with SMTP id kk10mr2175332oeb.20.1423138411342;
	Thu, 05 Feb 2015 04:13:31 -0800 (PST)
Received: by 10.60.61.39 with HTTP; Thu, 5 Feb 2015 04:13:31 -0800 (PST)
Date: Thu, 5 Feb 2015 17:43:31 +0530
Message-ID: <CABNKipLeXK-jMOnwkyVhjD2PBSANTj5AtikTC2pOzmu93FuFsA@mail.gmail.com>
From: Parthiban Kandasamy <parthiban@ulivesystems.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 05 Feb 2015 11:02:28 -0800
Subject: SDKMACHINE settings
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
X-List-Received-Date: Thu, 05 Feb 2015 12:13:41 -0000
Content-Type: multipart/alternative; boundary=047d7b3a9b0a798101050e563b9f

--047d7b3a9b0a798101050e563b9f
Content-Type: text/plain; charset=UTF-8

entirely i am new to embedded linux. first i did bitbake of
core-image-minimal it came out very well. then again i tried sdk toolchain
development using bitbake -k meta-toolchain-qte. it gives so many error. so
could you provide details for how do i start to develop BSP for
beagleboard-XM. i am entirely confused to understand yocto online document.

-- 
thanks and regards,
parthiban
      +919790329795

--047d7b3a9b0a798101050e563b9f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">entirely i am new to embedded linux. first i did bitbake o=
f core-image-minimal it came out very well. then again i tried sdk toolchai=
n development using bitbake -k meta-toolchain-qte. it gives so many error. =
so could you provide details for how do i start to develop BSP for beaglebo=
ard-XM. i am entirely confused to understand yocto online document.<br clea=
r=3D"all"><div><br>-- <br><div class=3D"gmail_signature"><div style=3D"text=
-align:right">thanks and regards,<br>parthiban =C2=A0 =C2=A0 =C2=A0 <br><di=
v style=3D"text-align:right">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +919790329795=
=C2=A0=C2=A0 <br></div></div></div>
</div></div>

--047d7b3a9b0a798101050e563b9f--
