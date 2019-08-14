Return-Path: <pmarks@soeffects.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83796E00CDF; Wed, 14 Aug 2019 09:39:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CC83E00BD5
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 09:39:43 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id m206so73799202oib.12
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 09:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=soeffects-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=QVG0eDOE3e+dv1brLMAPzJwGKChC74K21Rw+fV3HU2A=;
	b=QtCZroCek93dkYy9tFeU7eObAW79lFuNFyRiy+4JkmXtlI5m2bSxiqbp1W0OVqk5x9
	S65i7WUD/euqMgsYLop3iI0q0hvhp904LQwUqzwe6Ehh0CUueu1ktcRm7Bwy+1JY+3rC
	FyhPcAIGaR+Sj3em7lRyqvKSpIXld8ec+t9hWBsIoaTFZq8nNllTraBBmoj46t1xh6H3
	FrdlVPyoTnPxvjNisanLdY4AU5V+PlcqY3JzT4MpsH9qFZQPV1Vu6MiLm/quz3GzIj+4
	oFxNnLmlUZbH6q1Pf0v5cRG6ISQx3ArKqWXWP2rU8p/yGQXV1EbQ+zFK6a+6SoHXjgnh
	uMUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=QVG0eDOE3e+dv1brLMAPzJwGKChC74K21Rw+fV3HU2A=;
	b=NGQt4iA8XQmDIrdDBgyGy5MFBi41rYqJc0wXlN7c0lTcG/NEWratnzRC4XMzkozzCG
	SpeFicddUUXirCiAYkxATnAGqdSMRjPmOaxWDPR5bxK1ioL33cYrSNklL22h9NcWmcRN
	WIe75i1rkK3TkoGwwZ3Lnm1JViRQViA8T6CMkBnIpPmsMeWGJYOLPObl+u/Ck2OmFV1o
	/E4zAZVNRt1+NGaBIkbADhnoWGVRAIrlLpCtLz3ZVtR/dDUW7FeeaMBPY3R0xcaq4GnO
	nRr2XXOxMhfRwXt24h0zhe2fINcmZhyZLkkDYW1b1UMy8t8BS0VoArjZG3pJKHewn/0A
	ruSg==
X-Gm-Message-State: APjAAAUEtdm6yeK4H68vO1kQD/Dzz2UzmKrVr38qIqVKRc/o4GkEHfco
	44xh5s5nqvaMwd1XjaLcRlKTjQuZWn0zpgyriyoqjhuX194=
X-Google-Smtp-Source: APXvYqwpXlQZbTakbL7hwQeIjAHZHN7AIx0FGddTB3qlSMa5JRHCOBevo3xqEKebo9LYPS1Eg0jUutCreTEL3u4mlgk=
X-Received: by 2002:a02:ba99:: with SMTP id g25mr278533jao.20.1565800783143;
	Wed, 14 Aug 2019 09:39:43 -0700 (PDT)
MIME-Version: 1.0
From: Phillip Marks <pmarks@soeffects.com>
Date: Wed, 14 Aug 2019 09:39:32 -0700
Message-ID: <CAMOxz4cBzWU_L-VK-m1Q65H_VVY3U1ekYkj=8Mejxf2XU6rnWQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 19 Aug 2019 02:32:48 -0700
Subject: [meta-raspberrypi] Issues building bcm2835_bootfiles in Thud
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
X-List-Received-Date: Wed, 14 Aug 2019 16:39:44 -0000
Content-Type: multipart/alternative; boundary="00000000000077fb7605901667cf"

--00000000000077fb7605901667cf
Content-Type: text/plain; charset="UTF-8"

We are building Thud for a raspberry-pi0+wifi and we've noticed that the
recipe bcm2835_bootfiles under meta-raspberrypi/recipes-bsp/bootfiles is
not pulling in the proprietary *.dtb modules from the firmware repository.
This is causing linux-raspberrypi to fail as it tries to build those
modules and fails on "no target found for bcm2708-rpi-0-w.dtb". How does
bcm2835_bootfiles pull in the Broadcom firmware modules and where in build
does it store them? We don't see them in tmp/work.

- Phillip Marks

--00000000000077fb7605901667cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We are building Thud for a raspberry-pi0+wifi and we&#39;v=
e noticed that the recipe bcm2835_bootfiles under=C2=A0meta-raspberrypi/rec=
ipes-bsp/bootfiles is not pulling in the proprietary *.dtb modules from the=
 firmware repository. This is causing linux-raspberrypi to fail as it tries=
 to build those modules and fails on &quot;no target found for=C2=A0bcm2708=
-rpi-0-w.dtb&quot;. How does bcm2835_bootfiles pull in the Broadcom firmwar=
e modules and where in build does it store them? We don&#39;t see them in t=
mp/work.=C2=A0<br clear=3D"all"><div><br></div>- Phillip Marks<div dir=3D"l=
tr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
<div><div dir=3D"ltr"><div><div dir=3D"ltr"><p style=3D"font-size:12.8px;ma=
rgin-right:0in;margin-bottom:7.5pt;margin-left:0in"><font size=3D"1"></font=
></p></div></div></div></div></div></div></div></div></div></div></div></di=
v></div>

--00000000000077fb7605901667cf--
