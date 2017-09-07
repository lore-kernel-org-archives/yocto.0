Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FCEEE00CBA; Thu,  7 Sep 2017 00:43:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68A62E00CAA
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 00:43:23 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id y68so16606625pfd.0
	for <yocto@yoctoproject.org>; Thu, 07 Sep 2017 00:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yXk1xPfYtY7kX6dsI39/mSeifCBZyat8G8ivLvdNkII=;
	b=RK+bN9xFkQhdA9hY2+ZyxurY4ZD5b/VO1rzy8b6kBj71qmG8sAhf1hUgzmH2AIFQhX
	oiaVgWsxGK/gS/jSiQL+hJAPWaVlGxskMS2sL5UWyAMGlBgkz4ZArEu4JkqpqMD6ewK4
	bZZKnuugezyblneJVB4gOa86MKsp/F7SU5RUMDtTCmS8sp/WOFq7iIFBL4k6Q7UpTjUf
	Iq5PfBcM6U3nn3yLvUgx/NErUrFftWjclwWzdL865zGpwD8SWWm/WaIjJl63AGZeG42b
	8yRwpmJ7Pf21CJOfAHYUxqG119KD7VoRjd7Ep9yMQ0rsF1ARpcVDvyX3qcn9zeWGEaMU
	/uxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yXk1xPfYtY7kX6dsI39/mSeifCBZyat8G8ivLvdNkII=;
	b=Xxe5D1YfbgKAEkXXx4wRjfNCdx9jXllOcZXah6OKyCKJ7zXkWErXROu+1Tl/UIfSKF
	1O0fAMgSzAAROtJEcUUUbFWL5u2TcnSC+0HWkBGsX3z9xZZ6aFEDTBdq2PovfNMfpzxr
	3nrS/DbJCo9d2KEq1QCOeVVDI89/0cxY4YA2/El+JmXE7D6xL/IK5HhcTDd62xtkVB9s
	3wBFdlPFR9phVhgKZoTfs9zTODVDvHCPDnoaoxTDi9/3rOp+BclXNOp8bW5jG3EWrNJj
	qspdHEQyf8nAxuhh3lVveLYxJ5Noz9JlYCQDTinemx5h3DdUK5rPJEhfE9CMoT1W0z1G
	ChCA==
X-Gm-Message-State: AHPjjUjk99p21gGFT1AFQ6yV9pSNKgxi8eE0YhHT1Jd2lRISQVYGA+1V
	A0/bEnSz/1hGhhGi1gzYqzUrCqJTVr9xYQqC2QA=
X-Google-Smtp-Source: ADKCNb7qEUIwnlJVlvC/tNWnX9cVQM0k9tLhbTGHsoz2vIsfFhF87TOMkjsdNFGHuhTs1fybEdtYqLUGwuPuSY/3G5k=
X-Received: by 10.98.202.138 with SMTP id y10mr1798959pfk.151.1504770203026;
	Thu, 07 Sep 2017 00:43:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.189.8 with HTTP; Thu, 7 Sep 2017 00:42:52 -0700 (PDT)
In-Reply-To: <CAGAf8Lype6p4Dqzab9O0sGfEUhzYUYczjrua49o80baw_OYvpA@mail.gmail.com>
References: <CAGAf8Lype6p4Dqzab9O0sGfEUhzYUYczjrua49o80baw_OYvpA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Sep 2017 00:42:52 -0700
Message-ID: <CAMKF1sqVUnLXf3AWSLjnnZRg0aiP_m08oAWwEeJJGE91RZ+XMQ@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: The basehash value changed from...
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
X-List-Received-Date: Thu, 07 Sep 2017 07:43:24 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 7, 2017 at 12:37 AM, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> While re-compiling the whole YOCTO load for freescale i.MX6, where I have
> added Qt5 layers (and it failed many times, so I needed to do some tricks
> there), I encounter the following warning (in ORANGE) and error (in RED)
> while finishing the build:
>
> WARNING: Duplicate inclusion for
> /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-toradex-bsp-common/conf/tdx_version.conf
> in
> /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-toradex-demos/recipes-images/images/tdx-image-fstype.inc
> ERROR: When reparsing
> /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-toradex-demos/recipes-images/images/angstrom-lxde-image.bb.do_image_teziimg,
> the basehash value changed from b7b4f312b8b657bfdd068ebd8e2dd104 to
> 1e71714a9c01964cdc724c52290abee4. The metadata is not deterministic and this
> needs to be fixed.
> NOTE: Tasks Summary: Attempted 7415 tasks of which 7394 didn't need to be
> rerun and all succeeded.
> NOTE: Writing buildhistory
>
> It built (after all) complete deploy with all the images. I kind of get what
> is going on here.
>
> Question: how to rebuild the complete deploy/images NOT deleting tmp/? It
> compiled overall (in two steps) > 10h. Do I need to touch some file?
>

if you keep your sstate-cache directory then delete tmp/ dir is what you need
to do. Rebuilding from sstate-cache is very quick

> Thank you,
> Zoran
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

