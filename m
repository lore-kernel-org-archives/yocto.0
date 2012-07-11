Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97C6FE00343
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 07:34:36 -0700 (PDT)
Received: by eekb45 with SMTP id b45so467811eek.35
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 07:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=U4ikj4orlKDtPVwUBTyHvrNZPV/BNOdTP+xdahyofNM=;
	b=XL+NurO4m32lPQXgB5ppWSyJYKenQSN8LpxPZMFwn1DP513IZYIKPo+n2JJfSGGCA1
	KmTwGPrrvpSAnuHVaEAS0EpAwFp9kHYLAhv3li3vTgZ1/JN/L3KErwuujoLVwfcsWZj6
	lbNqpwxFJesk4db2bK1VP/UtM1K/kssa6HyMMU1O/gdEq05wOafLW+WyhNT/+vxpnRSP
	xtHoiUsSVkitJEWVzdfHQ/+mr1K8mBHforJXW48bEO4A4ZMyATvkwi1JyxPszr7hBUgr
	dMnI/kkEJI4Fk4VQJqD1NNyUohtkLVI2EiOqGKDYpJ7Nol/oDpJiq1m8soZP38dZzqzm
	isEA==
Received: by 10.14.99.201 with SMTP id x49mr9886630eef.142.1342017275295; Wed,
	11 Jul 2012 07:34:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.210.199 with HTTP; Wed, 11 Jul 2012 07:34:05 -0700 (PDT)
In-Reply-To: <CA+Z6RkUQy_rcRPe8OAKek+aNs-LG106C3aXfXTwS1_0ZbZB-kw@mail.gmail.com>
References: <CA+Z6RkUQy_rcRPe8OAKek+aNs-LG106C3aXfXTwS1_0ZbZB-kw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 11 Jul 2012 07:34:05 -0700
Message-ID: <CAMKF1srSQB66-TmH_3Tt=ufFEVnN72=CY4u6QNodyHB79-AsYA@mail.gmail.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Error while adding a new recipe
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
X-List-Received-Date: Wed, 11 Jul 2012 14:34:37 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 11, 2012 at 5:28 AM, Navani Srivastava
<navani.srivastava@gmail.com> wrote:
> ERROR: QA Issue: Architecture did not match (40 to 3) on
> /work/armv6-vfp-poky-linux-gnueabi/colorado-1.0-r0/packages-split/colorado/home/Leica/Bin/colorado_gui_bk

what is this file ?
is it some precompiled binary or some firmware blob ?
you need to package is separately and then may be skip stripping just
that one package

