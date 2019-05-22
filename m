Return-Path: <coolveer07@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76EFCE00D5D; Wed, 22 May 2019 06:25:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (coolveer07[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CC02E00D32
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 06:25:58 -0700 (PDT)
Received: by mail-qt1-f182.google.com with SMTP id i26so2256272qtr.10
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 06:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=vKSWA+KAaca4HrN2z29yWV050U3gljXoEvS5N1Z6i6E=;
	b=ECPUJKk6Tu7bzOsdUrDoozW/zX/LlUru5LiYw6Vf0bPEgNIqe8enU7qANd8GXoBfGh
	JobmuSK2bCPH7H5MCDTCuDslb+wWmT1bfi8ximiPea2/l/KAEq9kjxpu2wpgyMl/v/VO
	DALZ4eB1zCN5CyU+SeICC6FrH68LNf0WncZzH6s+yoAqVjqwPzFFRmww4wB6RWGaM5pi
	q14u1wvGA3AGe6sFbR/Es7UT62lxfCB4udupuFzf+4RU9ZCmyY8XOWRGMQ7U75/VBdw6
	WNs5ZDLS8La7k0skWgySUeYzIREQsKx0ksBEQA7jMX3x9mZ3fgfvYDQUfXzpyUYALbPb
	DELg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=vKSWA+KAaca4HrN2z29yWV050U3gljXoEvS5N1Z6i6E=;
	b=oKYDAeOUI7aA0tyKeKDxbM8KEf/1+ZwCsSuE7ADCNIHbPXbTNiuIwmZsSysBvuKIWz
	Ycx8ewJBf3OSC5t33OeorocfEQxowEtkY83Yeyw8SipYoKiJ8m7V7ynEDBmnW6bLCVDd
	maaNx+gVjBY2RcMH0Y8jMFiI98OAFV/Go6IHDyjrlmxx7KaIqjpsms/v2GfPNW2wVA6q
	OogoFMZgqLdb4TLt7uDyxXGNOIEMKA1zzxBohkHB1HJiZ7NO5mIaS9YTfZdtmg8BnVoe
	wcz8WiuZE6u7TyaHJNQ78UgXw+MFf3Z0R95WyrYA1oolTaTQyxXpi78fMNia1tW93Old
	s+Xg==
X-Gm-Message-State: APjAAAV/BkSlq1y+1Cf+ANEJlb3MYBMdJrtLsk4zNb2tpoqQFndEDI8r
	LLz9dqHmf0RhFqk602eaZ2NkH3Eho0soNbEvM1J1/A==
X-Google-Smtp-Source: APXvYqzfybsZeox2ocu6qfghkVeaV02EW5h2GxpryIA/VSPHR9gaTVMXUCV9qaxOrdrb3eXwa80xAtYGS6fv16RjdlM=
X-Received: by 2002:a0c:929a:: with SMTP id b26mr70807849qvb.148.1558531557539;
	Wed, 22 May 2019 06:25:57 -0700 (PDT)
MIME-Version: 1.0
From: virendra kumar thakur <coolveer07@gmail.com>
Date: Wed, 22 May 2019 18:55:45 +0530
Message-ID: <CANGFfGamnoJ-YB=m7cvN4XBWieY8V53s+pRfg00e1-AwwqztBg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: GPLv3 package present in rootfs
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
X-List-Received-Date: Wed, 22 May 2019 13:25:59 -0000
Content-Type: multipart/alternative; boundary="000000000000dbc538058979e7b6"

--000000000000dbc538058979e7b6
Content-Type: text/plain; charset="UTF-8"

Hello team,

I want to remove some GPLv3 package from rootfs, but it is still present.

I am using INCOMPATIBLE_LICENSE = "GPL-3.0 LGPL-3.0 AGPL-3. 0"

still some package gnutls, libidn2, libassuan, are added into rootfs.

--000000000000dbc538058979e7b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello team,=C2=A0<div dir=3D"auto"><br></div><div dir=3D"=
auto">I want to remove some GPLv3 package from rootfs, but it is still pres=
ent.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">I am using IN=
COMPATIBLE_LICENSE =3D &quot;GPL-3.0 LGPL-3.0 AGPL-3. 0&quot;</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">still some package gnutls, libidn2, l=
ibassuan, are added into rootfs.=C2=A0</div></div>

--000000000000dbc538058979e7b6--
