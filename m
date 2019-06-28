Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65D7EE00D8F; Fri, 28 Jun 2019 06:45:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.169 listed in list.dnswl.org]
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D4A5E008E3
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 06:45:11 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id m14so4810978qka.10
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 06:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nTC12acVZ9Vs1BcBXOaHiu+1L0Dh3ILIibmzMrCCjho=;
	b=U/WDtWpdQcsSO/hYtbVTvvTcAt5vEapmafw0RkN+TKD6pLW+gduk4pHS12IQVPm0NB
	joBeEmjJLvuuTdMI3ZSpqETznkeitJGR4NslOyzd4L/Ll09t7xIHjoLGQyIfNAIfZl4D
	d15kVmisNmAd3AYnz42PM70qY+oF8JnZZqgaI2iv4OyX8goENPQcu+h711kInAaoDmtC
	ZoTGc+KBMq9UYMwgxMJqNFINAUGKmUVYCgB729ofPHTNrK0yeu9lWRH3448C/ldB67tR
	JqTAnyeAz2nSjAIJLdvIESjpkRfXMhkWRl/mmjDozoIK92vzWqHZieuh/hyDyxbs+agT
	xDuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nTC12acVZ9Vs1BcBXOaHiu+1L0Dh3ILIibmzMrCCjho=;
	b=PRONoh2UHTW0XUZ0B1raE07UAMigOD/XV1VGskMmyUqMbTPgH0LiCLf6+vbWYQwH5C
	MkQbKyBMgGyj2pkIlUxpaOKzEM/1VMZY7K//PSZx8vOAeErAG0kIV4BifeUmxNg8XflK
	4QArqajbs0wGUWjqoJSARreocmEsC6AqYvSKSwI3TUJ+gp8s1l58acIAUny3mtewwdwC
	v75rwl58tZh30MCLQ8sYn5QyPmwxQJh9TeL/ImE7up0PkwAtC7Gd5F3eTjex23Wmtlde
	o4iAj8JlHxmhqJsiP0DqC7lLwawIiZyYDHXoeuuaOatcxdy8di90ctgDr3DsDtQ/D844
	uZRw==
X-Gm-Message-State: APjAAAXjB1SKyStzjtO09GWZ7pAG+A5wESUB5zvd3ONxa2i6zbYnKKMU
	snwlK6bK7N3y8I3XRP2fvCYiTgYfscgMiNnJvBirqf4VdJs=
X-Google-Smtp-Source: APXvYqyZCtmqQSwwxik4kSec8SkE5iSbDO+neFbEW8mCltt0Bn1yvWkxBXuNVHAUyw29VY29pLTqW/VdufMtMUc5xQg=
X-Received: by 2002:a37:795:: with SMTP id 143mr8870115qkh.140.1561729511352; 
	Fri, 28 Jun 2019 06:45:11 -0700 (PDT)
MIME-Version: 1.0
References: <980292376.238401.1561633028960@email.ionos.com>
	<5239a45d-0756-6c85-9b2d-218b34d9168c@windriver.com>
In-Reply-To: <5239a45d-0756-6c85-9b2d-218b34d9168c@windriver.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 28 Jun 2019 15:45:00 +0200
Message-ID: <CAGAf8LxjwgmuH=uNU43x6=YkPzhpj5kjaR1Rd_mLcoyH3QVofA@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: Pawan Badganchi <pawan.b@elpisitsolutions.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-builds] Yocto build Issue
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
X-List-Received-Date: Fri, 28 Jun 2019 13:45:12 -0000
Content-Type: text/plain; charset="UTF-8"

Some hints again...

> I am adding IMAGE_INSTALL_append = "kernel-modules" in local.conf.
> When i build with  bitbake core-image-minimal command this kernel
> module is loading.while i build with bitbake atmel-qt5-demo-image
> command kernel module is not loading.
> Please tell us what is the issue.

Here is what local.conf I am using as included minimal kernel source
tree (also with systemd included). Please, try to experiment with it!
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-warrior/local.conf_full.

I use to compile the YOCTO Warrior minimal system for BBB the following command:
bitbake -k core-image-minimal

Hope this helps!

Best Regards,
Zoran


On Fri, Jun 28, 2019 at 11:41 AM ChenQi <Qi.Chen@windriver.com> wrote:
>
> Forward to this yocto mailing list.
> When you have problems regarding yocto, use this mailing list.
>
> Regards,
> Chen Qi
>
> On 06/27/2019 06:57 PM, Pawan Badganchi wrote:
>
> Hello sir,
>
>            I am adding IMAGE_INSTALL_append = "kernel-modules" in local.conf.When i build with  bitbake core-image-minimal command this kernel module is loading.while i build with bitbake atmel-qt5-demo-image command kernel module is not loading.
>
>           Please tell us what is the issue.
>
> Thanks & Regards,
>
> Pawan
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

