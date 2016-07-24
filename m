Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC2D3E00C49; Sun, 24 Jul 2016 14:38:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8142FE00C31
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 14:38:12 -0700 (PDT)
Received: by mail-qt0-f193.google.com with SMTP id j37so7786051qta.0
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 14:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BUNiSXPRaHi8vJW+ziLqk20j84DNx1CHjPOlfAhaeTs=;
	b=Wid8HGTxCya+qnxsraQokoNUKW/Rf4GvgMTnrB0vN6Mdmj27j6xej3SSfBzKEh6fXd
	FWFXZo3+lBmyOrDUn0nWP5ef0oT6JGBOr+8osUGBONajq3Q8RAnRpL37rTvKg8QWIYgF
	YVcD6l1avUDwHmiWItSTCrFYdOzRx9RvBVZe1kXetRG35SOU9LSpCFoCoCmVfmsWdMDE
	glVeJ1ROfnY8maHzy8df3s9DMBg5GXg1WL3wlbZ4PpR9wkjnIAPCztv98/4lSlEbq3yu
	k5JqLiu+LZLz0nr/BFA2lEGVh039KSNLhtLp8fpXmOmVI2bYIblr/s3djcV4bXyr6+wH
	oOeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BUNiSXPRaHi8vJW+ziLqk20j84DNx1CHjPOlfAhaeTs=;
	b=OjCEHBFXKe+G0lVI+jThIYQpfAKwoJmZACIrVSvpIe63VdkwhBGx/QOpCFIYo3uQDG
	RfGsyJmwDGSl0GrxIzdn1374UAmaqS4SNfiJBoK0j8aLLhMXOC4mu+F0EKOfzdLiVGFn
	InsmKPxUcvVGW+KA9gkb4PK8WHXg57x8cK5IZGZl/5slftivDlwc8utnJASL++m8h4cK
	ujiVoIgg+aBhtLIgtXeiqJpvgXaWkjPHo6A3BENCnElwGSEJkF2oU1mluWEWsvaIV75c
	HkG9i/e4+yfMVrfQAXp/Sdjwzy0DRyTAWBCPrChhuPCzgCJQlk39tmDUwhsNnphSaXot
	WtWg==
X-Gm-Message-State: AEkooutYvQJG3FSttlrBIgK9KsS3ulOMPUPZAYVhApowPeidH3DXsKfOfb7E5H7+6eKkbQ9jtKg1kM8/7Jwl5Q==
X-Received: by 10.237.50.35 with SMTP id y32mr24580861qtd.98.1469396291399;
	Sun, 24 Jul 2016 14:38:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Sun, 24 Jul 2016 14:37:42 -0700 (PDT)
In-Reply-To: <3b9801df-33bc-ce6b-842b-7dc2f4ee083b@newforest-technology.co.uk>
References: <3b9801df-33bc-ce6b-842b-7dc2f4ee083b@newforest-technology.co.uk>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 24 Jul 2016 14:37:42 -0700
Message-ID: <CAMKF1soM8ayvX3-g15dQgCAD8STBfSfuEZSb1W1f2=xRu+JgZg@mail.gmail.com>
To: Chris Sykes <chris@newforest-technology.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux-yocto: memory leak in krogoth 4.1.28 kernel
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
X-List-Received-Date: Sun, 24 Jul 2016 21:38:15 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Jul 24, 2016 at 11:42 AM, Chris Sykes
<chris@newforest-technology.co.uk> wrote:
> Hi,
>
> At the end of last week I hit a known kernel memory leak in the linux-yocto
> 4.1 branch, as delivered in 2.1 / krogoth.  It rather quickly results in an
> OOM kernel panic on my platform (x86, 1G RAM).
>
> The patch below fixed the problem for me:
> http://www.spinics.net/lists/stable/msg138760.html
>
> It's already queued for 4.1.29, but thought I'd mention it here for the
> benefit of the list. Perhaps it might be worth expediting a fix for 2.1?
>
> I also raised bugzilla 10014 - I hope this was the right thing to do...

Thanks for report, you did the right thing. Our Kernel maintainer will
take care of it.

>
> --
> Chris Sykes
> New Forest Technology Ltd.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

