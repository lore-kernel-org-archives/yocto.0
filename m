Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB607E00B9F; Wed, 14 Jun 2017 23:05:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0F22E00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 23:05:08 -0700 (PDT)
Received: by mail-lf0-f54.google.com with SMTP id m77so2364733lfe.0
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 23:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=whH4YiMOXbcKYpmcaTkAVH9J4d7mv4l3/WqSRXqD4AA=;
	b=NVvO6iAmRyjdARyOzS8Eh1SEYHDpXYDQHEQcQpB3zb3aYIu7pGE9GdiTQM96GOQhxp
	lM4yq6wcLzTEoj4/8An8lTG8GwFdmwujnnzHVbNwR+T//ePAeAmxm/mLuzuO/Km3vemM
	fGruk7Eks8iEmyT033/lXwenmjUDQQnTL+c+ymiI7a7m4pCvoYMUqkwMGxO6SEDlA8tl
	Ei/r3yTAJ++//zgw3kDWaYCf9EZjbVr4dxtGBWg5kbZBJp3bzarHIltkn0B7V7bAPvds
	h9UCXvmAp8/t3YXx2WguW5u6BRBUDnCnEAOmgn4ebR3AOXEfo3xC47qpBhLwEid/oC9X
	rVIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=whH4YiMOXbcKYpmcaTkAVH9J4d7mv4l3/WqSRXqD4AA=;
	b=mvsZKFn2JPdu13Tycw8PPZMQDTS9JZRGfgaRY5/hqdha60XeYSA6bFQX0/kP/7z0Jp
	pKl2sX/zN8FSOIEldKGtMv+806ujnDJNPXxMnLx3GYhTKORKL8x+gdJlBD8qArcJUBQs
	SKRFvdF6baVN8fYO9Dxw40sidEeYxcmUqErO6iVp6ydNMic9fTvRo0dcWG/Yi+qHa589
	RDkG1ToVHJSd6d8O4Ap5UNTE6Q59b3DKXl3wHFRIET5lgTSORgv6HYYF4FiU9CwCB7sC
	OgV2S/Ym1G3xpSAEyVfy00DZqwORzsNu98LW6SWUMO4jpbqEF97LJBXcGFcmMj2b2gXM
	FJHQ==
X-Gm-Message-State: AKS2vOxXP0K0kUGEz24lgy8ETj4G/N2w3G2zY2P4+wWy60XHnVUyfEHE
	sfxaTrPc/AASPFnjju66NnOLotKv+Q==
X-Received: by 10.25.198.73 with SMTP id w70mr1215846lff.118.1497506707316;
	Wed, 14 Jun 2017 23:05:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.17.96 with HTTP; Wed, 14 Jun 2017 23:05:06 -0700 (PDT)
In-Reply-To: <1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 15 Jun 2017 08:05:06 +0200
Message-ID: <CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FriendlyArm Mini6410 ?
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
X-List-Received-Date: Thu, 15 Jun 2017 06:05:10 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Riko,

On Thu, Jun 15, 2017 at 7:53 AM, Riko Ho <antonius.riko@gmail.com> wrote:
> Hello Everyone,
>
> I want to use Yocto for my FriendlyArm Mini6410,
> Where should I begin to start ?
Please read following thread:
https://lists.yoctoproject.org/pipermail/yocto/2014-June/020009.html
>
> Thanks
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

