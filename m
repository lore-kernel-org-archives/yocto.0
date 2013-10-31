Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 297CEE017BC
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 20:48:33 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id aq17so4034766iec.10
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 20:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=6zemDZnMXJrp1lzW6rEShv7AxcSX4cmErge6CCx1h20=;
	b=rshiGftIIPoo66a0yfmDjMHb/U0U8pzZu7CkLWbStpon9uUWWmK4LxDv5CGZnjTI6J
	EYQm6a+3FnxH1gOspBsh7wFX+uHNdMEfZ6XzAtkS00dcuZ5hzQXWVKAEGqv7tJRM9Jpb
	Q/xANi2gjN7NXoLwGTFlx60Es7yVzs4B7VXm0rG35PHpApA+NEjhHin3WXq21D7GSE5p
	i7we2ovEEh53HdX3nzG585blBtDx8LLoPJ06vIpIVhBZ9R5Z3MmSWwIIuPdz9GWxI/am
	X+4niQs1UInX23FmDa0EIBRZVbplb8LL8C+Cdn4C2qyCytfas3sy0CO1e7ItnEp4BX1H
	Jm3A==
X-Received: by 10.50.23.103 with SMTP id l7mr4901083igf.3.1383191312932; Wed,
	30 Oct 2013 20:48:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Wed, 30 Oct 2013 20:48:02 -0700 (PDT)
In-Reply-To: <526E2B2D.8090904@hiramoto.org>
References: <526E2B2D.8090904@hiramoto.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Oct 2013 20:48:02 -0700
Message-ID: <CAMKF1spfKRChQKu1Qk74kiYyJzAGNH7MkMsma80kOowPv3P16g@mail.gmail.com>
To: Karl Hiramoto <karl@hiramoto.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: different EXTRA_OECONF per package based on image recipe
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
X-List-Received-Date: Thu, 31 Oct 2013 03:48:34 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 28, 2013 at 2:15 AM, Karl Hiramoto <karl@hiramoto.org> wrote:
>
> Hi,
>
> In my overlay i have different Machines with different images that are
> built.    In a couple of packages i need different autoconf configure args
> based on the  machine or image.

hmm, I would suggest to add PACKAGECONFIG but if you depend on machine
for deciding what options to use then you might turn these recipes
into machine specific and add EXTRA_OECONF_yourmachine = "x y z"
and stuff like that. Try to avoid machine dependencies on generic
recipes as much as you can.

>
> Is the best way to do this via PACKAGECONFIG, create multiple overlays for
> machine1, machine2, machine3, and common?     Is there a better way?
>
>
> Is there an example somewhere of different package configurations for
> different images?
>
> thanks
>
> Karl
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

