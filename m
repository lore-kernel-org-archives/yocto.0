Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2080E0073C
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 10:29:22 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id rp18so721638iec.19
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 10:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=jhgsZdk/bJfegIiPFPKM5a3kqqN1IhGK09yxePdWvRw=;
	b=YWSTW2ICRTv1e8YTj4C3qdP9rXjQZVnzdJUlcPdIY4tWvaOjqns4rbZPWJkBZzo8bT
	8yb7qKhv9OougE1M1aFzM9FsgtmUXMN/t9syORzMGZofZfw3MpTiUk3vdLHOLyfkW61W
	U8lb909g6gmkRER2/lC/hH7tktqr6L+iNgQg6ayNPjKgtUvQ/MG4plBd10HettI3ypDI
	jLHW/kud03lPzaFbVvxlnsnPtPiGvH32RCI10C4LmYGvfuYIDm2VKYzh4EJeaOKY7cHG
	nLSD8PbHMCmHMDuotzbbcPnd6WwfEY2sFi4elhGztKWgreCJP9oM8Jh8RJIvV9R8OSjf
	bh5Q==
X-Received: by 10.42.92.194 with SMTP id u2mr55333355icm.19.1395768562222;
	Tue, 25 Mar 2014 10:29:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Tue, 25 Mar 2014 10:28:52 -0700 (PDT)
In-Reply-To: <AF233D1473C1364ABD51D28909A1B1B7240CB168@pgsmsx105.gar.corp.intel.com>
References: <AF233D1473C1364ABD51D28909A1B1B7240CB168@pgsmsx105.gar.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 25 Mar 2014 10:28:52 -0700
Message-ID: <CAMKF1spyCqUnKC1ODZyEObOKvzn=KC+OTAz7kj=VR3+SPicsrQ@mail.gmail.com>
To: "Ong, Boon Leong" <boon.leong.ong@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Khade,
	Abhishek" <abhishek.khade@intel.com>
Subject: Re: Question on cross-compiling 32-bit application on 64-bit target platform
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
X-List-Received-Date: Tue, 25 Mar 2014 17:29:24 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 21, 2014 at 3:07 AM, Ong, Boon Leong
<boon.leong.ong@intel.com> wrote:
> Hi,
>         Could anyone comment on whether we can cross-compile a 32-bit application on a 64-bit Intel machine booted with core-image-sato-sdk hddimg.
>         If it is not enabled by default on the SDK image, how can I configure the recipe to do so when I build core-image-sato-sdk?
>         Could anyone shed some light on this. Much appreciated.
>

you would need to bundle 32bit target SDK along with. I am not sure if
its already done for you.
so adding something like lib32-packagegroup-core-sdk
lib32-packagegroup-core-standalone-sdk-target
to your image might take you further in this direction assuming you
have multilib enabled
>
> Thanks
> Boon Leong
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

