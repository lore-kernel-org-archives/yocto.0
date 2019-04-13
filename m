Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CC39E00BCE; Sat, 13 Apr 2019 12:52:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66B06E00BAA
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2019 12:52:28 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id w5so15007896qtb.11
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2019 12:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=YcUeyUSOupNAJcpQI6NP2YJkpmmLdSkgGsCoS+Ygdw8=;
	b=WADLhtaVUeCQ5ghgzJmZ6jdIegGF3g10U+BpKyqSkb7xX7xGGrfMB4cybhoHwpPRNd
	dancraJVnQI/sce0Udp+3qd19vZX0c4B846drSmbo6/2sl2RzGFt6wsXnGUMHAHB991s
	oVL6Zl2Sm8JLp1hBW0sN46EpvD//XlhScCMzSnOe103RsvzQ6OLSmy5+y61LT7M4wItX
	MQd1eCHad4s/f+rHQetipUuluI4LHHB7ip7UbtGsOckueMNEbAXWV7DudFHzQbvF57V3
	vlhTdbzVB52JxdjOtk3DYMvhQeLi2K3q6krml9+1rLV/zFLw9lQKxt0BPdRnVVn7z2cY
	93Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=YcUeyUSOupNAJcpQI6NP2YJkpmmLdSkgGsCoS+Ygdw8=;
	b=J1mv/q5F6FCa0qyyHBdRkGFoyWQLzyJJNcaX8k0hywDC1rDormOscRnxxrYRV5A0Uf
	8rpVekRB+J52soX7n1wBZsmOw7dnNl6NtNElIzT8whWwpA+Joq/Pi3so8hItke3eqrx7
	paaz4BbC47aCaFh5xbtk0G9sEDuhphOvAAxHqe+vEGn6IKR2HADtLOmdrHi5XIQI1F7o
	nbiltIxbB+CBI2kR5Pnt68lDqN/0D1i58+ACRrijVMKbfVf8tvPFeBmEv2YkZI/uViWP
	I2vJF9qFFAhYHbR3eZAgyjoi9/fMq7EZPZQzBLFPoTwVN2kpGNyp48qHkBWRf5QNVt7o
	X0jw==
X-Gm-Message-State: APjAAAXdETEFHLogKN246iDYWhPjx01KEZvLJI1E0o//qz4mUfjW3Vuz
	asQJxpL5nbXIKlNy2gtL56QN+CBS3dhAgidvgze20TK34YM=
X-Google-Smtp-Source: APXvYqy9EOVt5iaqjopybWDyztV3G/MI3H+9SiUlsqUEi1c3kNTWGLTqQf1afcq7XLKsX6kwKQTEP3JyLLQm+cth1JA=
X-Received: by 2002:ac8:262c:: with SMTP id u41mr54986841qtu.198.1555185147440;
	Sat, 13 Apr 2019 12:52:27 -0700 (PDT)
MIME-Version: 1.0
References: <AM0PR08MB384222BB52BB6A610551BC11EB280@AM0PR08MB3842.eurprd08.prod.outlook.com>
In-Reply-To: <AM0PR08MB384222BB52BB6A610551BC11EB280@AM0PR08MB3842.eurprd08.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 13 Apr 2019 12:52:00 -0700
Message-ID: <CAMKF1spi3DC01+9hHpn_xg1sCGxkTL1FaiH3LRcZZJy57cLzvA@mail.gmail.com>
To: Patrick Schneider <patrick.schneider@bhtronik.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compiling on target - building buildessentials error
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
X-List-Received-Date: Sat, 13 Apr 2019 19:52:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You may want to add following in local.conf

EXTRA_IMAGE_FEATURES_append =3D " tools-sdk tools-debug dbg-pkgs"

that should get you going. Then you can install the additional
packages you need.

On Sat, Apr 13, 2019 at 12:26 PM Patrick Schneider
<patrick.schneider@bhtronik.de> wrote:
>
> Hi guys,
> I am trying to use gcc on my target board. In order to do that I added pa=
ckagegroup-core-buildessentials to my image. At least I tried to.
> When building I get that error:
> packagegroup-core-buildessential : Depends: libstdc++-dev but it is not i=
nstallable
> After trying a lot of things and playing around with different packages i=
t seems that I am generally not able to add *-dev packages to my image, or =
at least build them with bitbake to add them manually. Everything I try wit=
h *-dev involved throws an error. For example if I am adding 'dev-pkgs' to =
my EXTRA_IMAGE_FEATURES variable I get over 200 errors with all dev-package=
s missing just like that above.
> I must have something misconfigured in my local/distro/machine/image conf=
 files but I can't figure out what.
> Any help appreciated.
>
> Best regards,
> Patrick Schneider
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

