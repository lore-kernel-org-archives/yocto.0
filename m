Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E26D9E017BD
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 21:11:08 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id ar20so4072309iec.0
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 21:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=8lIUEUPdz03XrxjD15oKmF/h0BHPitFiYiuptwOh/xY=;
	b=ie28tPunxeDFfyldGmZ7hwn5U5EFs2OJUKn2fjLBxxmsdtHSB9TTIebqgQZx6Uc2+6
	Cf9A+9GTMjY5/Cx1RkwTcdrx+CJBxM8g6dtVtkLwrKvLbjV2OqS0kWcMPUlyA3sQqPqA
	3w/eJbq/y96fmKrts6cXoX2++q5LkMtEEIABAMR1rmv47fwoEXndm5gDAotuTI1Sls/B
	HIEHKGlZJCJ5ydSMMpRb/D7Va0W0U9N+Z4Cz8rgddpVNDv8QMOBDQzOD6MBvg3iIlmHL
	diu4mrJq7A1Ky7HitxabA8fcSRq4fJtk03/CiOFRNpUqnx2jmGPmAiovCqBJ3P+BSkEM
	R1Mg==
X-Received: by 10.42.50.209 with SMTP id b17mr63024icg.112.1383192664693; Wed,
	30 Oct 2013 21:11:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Wed, 30 Oct 2013 21:10:34 -0700 (PDT)
In-Reply-To: <5266850B.7060005@einfochips.com>
References: <5266850B.7060005@einfochips.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Oct 2013 21:10:34 -0700
Message-ID: <CAMKF1sqfgirkHsgkQL_SX4EbvwM3dcZHE6mqvVUhiWc_OvkuOQ@mail.gmail.com>
To: Rohit Borse <rohit.borse@einfochips.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Customizing u-boot,kernel and rootfs
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
X-List-Received-Date: Thu, 31 Oct 2013 04:11:15 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 22, 2013 at 7:00 AM, Rohit Borse <rohit.borse@einfochips.com> wrote:
> Hi,
>      I need to customize u-boot, kernel and root file system for my
> Bluegiga-APx4 board using bitbake platform. Does yocto has any documentation
> or steps to configure and build customized BSP using bitbake for
> Bluegiga-APx4 module?

there is lot of information on creating BSPs you can look through the
manual and also wiki and other resources. However if you are looking
preexisting support for your board that may be harder to find.

>
> Regards,
> Rohit Borse
>
> ---------------------------------------------------------------------------------------------
> Notice: This message has been scanned by Trend Micro Mail Security scanner
> and is believed to be clean
> ---------------------------------------------------------------------------------------------
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

