Return-Path: <insop.song@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02F0BE00BE0; Wed,  4 Jun 2014 18:27:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.174 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (insop.song[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f174.google.com (mail-we0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B0B7E00B74
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 18:27:51 -0700 (PDT)
Received: by mail-we0-f174.google.com with SMTP id k48so292035wev.19
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 18:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=w7VatM9LQT/MP0Nm6nsWp3ZtEUrcENFTlyOGZImEHpw=;
	b=ymPIAregHZmIZkTSE52Ls56jcwX1JIrnGAeM2qBX3LI364ctmsKWXfM+Nm2EzVnT0T
	whVseKpofVuTob4+XnU0NqevC1zB46XTEB5L9ATru0DEgN2Wyh68+JWgEVSIpc+NW7Bi
	VzobMaDrLONdYVWmn9DEkvYbtKFkLVZjlT8VWK1mtxHnkCMgclY+HpvkrkZXOufozAdL
	whF9vSI8wYn8DhdNnQL3uoJExEJKDpj74pk6GFQv3fKUZ/3HwFFqFVBiLIsjjEAVGsPa
	9cpyLamqmZSOKLdD1KSYvhNukenaVXNodh7TdmWqhmrxzAPiQmlaBnDXaR1/UBJsGH+t
	Z88Q==
X-Received: by 10.180.84.7 with SMTP id u7mr10569344wiy.31.1401931670897; Wed,
	04 Jun 2014 18:27:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.89.5 with HTTP; Wed, 4 Jun 2014 18:27:30 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
Date: Wed, 4 Jun 2014 18:27:30 -0700
Message-ID: <CACzyEJ-WoUrc+Cvib3XHasdZPO1gk7rcyepTE1Xj5G2ndxaB+Q@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: how to specify if multiple bb files are existing
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
X-List-Received-Date: Thu, 05 Jun 2014 01:27:59 -0000
Content-Type: text/plain; charset=UTF-8

Hi All,

I want include "u-boot-fw-utils" to my image.

I want to include "u-boot-fw-utils_2013.01.01.bb", but
"u-boot-fw-utils_2011.06.bb" is included if I added it in my image
like following

IMAGE_INSTALL += " \
...
        u-boot-fw-utils \
"

Question:
- how to specify bb file when there are multiple of them like followings?



$ du . -a | grep u-boot-fw


12 ./meta/recipes-bsp/u-boot/u-boot-fw-utils_2013.01.01.bb
12 ./meta/recipes-bsp/u-boot/u-boot-fw-utils_2011.06.bb

Thank you,

ISS

