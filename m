Return-Path: <tylerjones64@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45935E00723
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 17:17:51 -0700 (PDT)
Received: by lboj14 with SMTP id j14so3118717lbo.35
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 17:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=dbQ9Slargt9cuduh6QqKktk1Z6wA69ZNtY8cXiNEF8Y=;
	b=Emeg59RP9jcFrN5Wh1mhtRfaq1Z02SpqEb+V1g7cBd2jOZcDMiuZCWEQmcXEsuJxVL
	xJfhSvH2shcTnu3THQ8kwMEnDwHvMUSCAUcCbX40SVzhREeXQ9CP2xrxSm70fgAL6k/L
	zDdKOpebooxBItZAFk5SumLUmAfqYGcWL44Bvf1+qTkS5HYlrly1i4IVVc1Q+CF1DRwc
	d3GoVL04PrI3xJnXHZo5Yqok+wv0C02CDMRb0ElXVpSzACsb5Viz84YR7WBFVIPNbQDj
	cHKKbXXzL0jkkoOuVXWqbw0hdFbSNdg0bcv5QNVGQTzKo1/tQBn1FZ8/kh9ABXpoBqrg
	oVpw==
Received: by 10.152.46.232 with SMTP id y8mr3675170lam.18.1339719469802; Thu,
	14 Jun 2012 17:17:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.48.10 with HTTP; Thu, 14 Jun 2012 17:17:29 -0700 (PDT)
From: Tyler Jones <tylerjones64@gmail.com>
Date: Thu, 14 Jun 2012 17:17:29 -0700
Message-ID: <CAN57a28DC3Xge0Sk8JH5fEji1q6nmxcDKxmbxTUfMPXKVU+Yeg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Setting architecture of only DEB files (arm vs armel)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Jun 2012 00:17:51 -0000
Content-Type: multipart/alternative; boundary=bcaec552420618a38504c277bf10

--bcaec552420618a38504c277bf10
Content-Type: text/plain; charset=ISO-8859-1

I am compiling a distro for my hardware using DEBs for my package
management. In meta/classes/package_deb.bbclass I need DPKG_ARCH = "armel"
instead of TARGET_ARCH (which is "arm"). When I run dpkg on my device armel
is the architecture, not arm, but yocto wants my TARGET_ARCH to be set to
"arm". Is there a non hackish way to do this from my BSP layer or config
file?

The dpkg error I get is:
  package architecture (arm) does not match system (armel)

-Tyler Jones

--bcaec552420618a38504c277bf10
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>I am compiling a distro for my hardware using DEBs for my package mana=
gement. In meta/classes/package_deb.bbclass I need DPKG_ARCH =3D &quot;arme=
l&quot; instead of TARGET_ARCH (which is &quot;arm&quot;). When I run dpkg =
on my device armel is the architecture, not arm, but yocto wants my TARGET_=
ARCH to be set to &quot;arm&quot;. Is there a non hackish way to do this fr=
om my BSP layer or config file?</div>


<div><br></div><div>The dpkg error I get is:</div><div>=A0=A0package archit=
ecture (arm) does not match system (armel)</div><div><br></div>-Tyler Jones=
<br>

--bcaec552420618a38504c277bf10--
