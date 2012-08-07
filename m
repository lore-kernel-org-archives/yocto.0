Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CD66E013B2
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2012 13:31:27 -0700 (PDT)
Received: by eabd1 with SMTP id d1so8277eab.35
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2012 13:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=e8T+1X7N0utzQ6UY9z5Pp1Cej3cMcuwGP0WcsIA6xr8=;
	b=w8AyMx/61LnEEx4ll4jEnI+aRS+s3pGd2AbkyWuWoCvEcFC1HtYbEPUdfCAh0pOoMe
	HCaO0h3bOS6pm/BU/ZzYJEGV6+03PeEL3tNoSwvUFuV9InpqpKqXepmms/p/GhJDT0UA
	78oayauf7G8eV97a2rGfcO5R15y0izPDl4sGjWQoGqHmLsqqrtlxhnzB6idGkLlRVRiG
	pOWJlY2Ihi2mMAGLbnFr+mnapcIA4l8XM+zT/D2JFvDessw4AcSiWzf2RX1a8GA9US7q
	LUhXgt7hza0ABuFx6jKPpWC4PRMmvwHYfdD4MnTgHXLdDk610viJdgY4oX+R+ewH7fsw
	CDSQ==
Received: by 10.14.194.198 with SMTP id m46mr19233047een.13.1344371487255;
	Tue, 07 Aug 2012 13:31:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Tue, 7 Aug 2012 13:30:57 -0700 (PDT)
In-Reply-To: <AB2E7680-C057-47B0-91FD-62BD6BAC8170@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
	<299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
	<CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
	<5EE8E4F2-1FD4-47B7-A2A1-94BFBC4A46F8@gmail.com>
	<CAMKF1spzF44X-iKuz2UCaXfX8Dbf59BSJcG=0nodqvRUpQnmFw@mail.gmail.com>
	<C72B7149-B2B8-46D6-A270-23BB55DFC733@gmail.com>
	<CAMKF1sqiFrHqg6HNvRwX_1Wg=Nfq8_141-XaJ=E2qFQyUsSJEA@mail.gmail.com>
	<931ADA5B-6471-40DB-8943-D7D6CA564C35@gmail.com>
	<CAMKF1sr-=FLVGMZnW_X63YRnT=ms8eCLhhUkcoHujubM_1f5Ow@mail.gmail.com>
	<AB2E7680-C057-47B0-91FD-62BD6BAC8170@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 7 Aug 2012 13:30:57 -0700
Message-ID: <CAMKF1sowWjF4DYUyWus7A1p5qQbJ3qPhRDEGfeZBOeohG6012g@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Tue, 07 Aug 2012 20:31:28 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 7, 2012 at 1:24 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>
> Is there something that I can disable to get static bash to run to the
> prompt, with the core-image-minimal image?

well compile bash or dash as static and copy it manually into the
rootfile system
nfs root works well for such experiments. Do you have that option ?

