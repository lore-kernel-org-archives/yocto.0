Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF24FE0167D
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 09:27:57 -0700 (PDT)
Received: by mail-pb0-f49.google.com with SMTP id xb12so4040723pbc.36
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 09:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=NhwsA1XRohvtPNc8rHTnG0Eijnoa1tynR12P6rSsAxs=;
	b=Es6zxZl+fbTuxYQvB0o0dTFsh2KlCrXZ2vy60Xarjfhzz1M8eTiAhVgclW+CGs1c3t
	8d7IaHQCeUdylvYE5vJ/bzf0PrhiuQLpD1qt7W9a3dxs7wkxqjhnK7eWFW2n3rdcMqh2
	gXC0Bn+OExdPFZM+0f/UiIlPCS6Ds1wVJ4Zy+ORKLYLIo7Yl6IvY+dud+3AahSYmdK4H
	gOKbd9RrbdSXPpR1dOTI8qp8dEezGK+MaYKtMf0ERNiLW8MSCaGSeVQwLKivfrIHUoS1
	72uFozdcSrlADVh5tghIZ3dq3x8Y3I61U+gzhAhaMPj+177NA+FLvGFN/fIRfQfY2NRD
	8xxw==
X-Received: by 10.68.178.36 with SMTP id cv4mr3816499pbc.39.1382113676927;
	Fri, 18 Oct 2013 09:27:56 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	gf5sm3356515pbc.22.2013.10.18.09.27.55 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 18 Oct 2013 09:27:56 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C605CF998@BLRINMSMBX01.bglrodc.lntinfotech.com>
Date: Fri, 18 Oct 2013 09:27:56 -0700
Message-Id: <FA049645-E75B-4FA9-B807-89B35CCFA36B@gmail.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C605CF998@BLRINMSMBX01.bglrodc.lntinfotech.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
X-Mailer: Apple Mail (2.1510)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to enable LTP support in "core-image-basic"
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
X-List-Received-Date: Fri, 18 Oct 2013 16:27:57 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


On Oct 18, 2013, at 12:17 AM, Amit Kumar <Amit.Kumar@lntinfotech.com> =
wrote:

> Hi,
>            I wants to use the LTP test suite provided by yocto =
project. But I don=92t know how to enable it for =93core-image-basic=94.
> Can anyone help me to enable the LTP in =93core-image-basic=94?

Several ways to do it. In your local.conf you could add=20

CORE_IMAGE_EXTRA_INSTALL +=3D "ltp"

You can also modify image recipe itself and add it to RDEPENDS
or write a bbappend to the image recipe in your layer and then
add RDEPEND_${PN} +=3D "ltp" to it.

> =20
> =20
> Thanks & Regards
> Amit K
>=20
> The contents of this e-mail and any attachment(s) may contain =
confidential or privileged information for the intended recipient(s). =
Unintended recipients are prohibited from taking action on the basis of =
information in this e-mail and using or disseminating the information, =
and must notify the sender and delete it from their system. L&T Infotech =
will not accept responsibility or liability for the accuracy or =
completeness of, or the presence of any virus or disabling code in this =
e-mail"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


