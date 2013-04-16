Return-Path: <liljegren.mats2@gmail.com>
Received: from mail-ea0-f171.google.com (mail-ea0-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB0A7E0146D
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 01:59:58 -0700 (PDT)
Received: by mail-ea0-f171.google.com with SMTP id b15so114888eae.30
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 01:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=n57XGQl9Hk1tVbCNKRg9eDuNUta7zurprx0n9PTfaXY=;
	b=XaeyD9xALs3GbLMd6+76E3nuTzmITHwdus1cvrNUQiN+eL3Oti3AmSf72xYbEzMFhW
	0I+TXc8IpMD25NnWxGaQuzp63QitFEDOmUe+HXt6uynaTvwU2RGyp8MnT3s+tX2aXr96
	7hNcv3q2vaTpC7Kre7GAZqf6UTkpYCOWSVUVR1xNRXEWEoiih6lmwPT541TjUy2r9PAK
	/S3I8lr3CeUDNDIVONbk6lvCVvEUk3qsgVRcSvAkYuALqaVCEO2hmbK0T+epckVxk8Rl
	ek6L5RIjVliONnCJAc41+82WJfzbo1xv1eK4K3hbvaubWgQN/oILoGU2PRGyyJynasUm
	rLKQ==
MIME-Version: 1.0
X-Received: by 10.14.39.5 with SMTP id c5mr4285332eeb.27.1366102797662; Tue,
	16 Apr 2013 01:59:57 -0700 (PDT)
Received: by 10.15.83.67 with HTTP; Tue, 16 Apr 2013 01:59:57 -0700 (PDT)
In-Reply-To: <20130416014746.GB2583@wrk>
References: <CA+xJJ19kDS-444AsV1esV_QRbqf+GRwsVgf+E498CQVNxxYAGA@mail.gmail.com>
	<20130412191507.GA32099@wrk>
	<CA+xJJ1-gQst69uEivqCteJWyRPyEkcFrjNrPKLd9c1Lv8UEF2Q@mail.gmail.com>
	<20130416014746.GB2583@wrk>
Date: Tue, 16 Apr 2013 10:59:57 +0200
Message-ID: <CA+xJJ18g0T1cNgaVnw_uqXi5pG7wQ-tPVPXyOJGhQ4nMLg0KhQ@mail.gmail.com>
From: Mats Liljegren <liljegren.mats2@gmail.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to archive source for a single package
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
X-List-Received-Date: Tue, 16 Apr 2013 08:59:59 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 16, 2013 at 3:47 AM, Kevin Strasser
<kevin.strasser@linux.intel.com> wrote:
> On Mon, Apr 15, 2013 at 09:39:48AM +0200, Mats Liljegren wrote:
>> I tried that but got the error shown below. This made me believe that
>> archive-patched-source wasn't built for being included from a recipe:
>
> Sorry, I had assumed you weren't using code that was any newer than
> danny release. Lately we have been working on adding sstate support to
> the various archive-*-source classes, so they are a bit more
> complicated than they used to be.
>
> I think your best bet is to inherit directly from archiver.bbclass and
> manually add the archive task in your kernel recipe.
> For example:
>
>   inherit archiver
>   do_patch[postfuncs] += "do_archive_patched_sources "
>
> Let me know if this does the trick.
>
> -Kevin

I replied using Outlook since this is what my company dictates, big mistake...

So I'll try Gmail instead:

Yes, that did the trick. Thanks!

/Mats

