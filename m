Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CC08E00975
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 00:21:19 -0700 (PDT)
Received: by mail-lb0-f172.google.com with SMTP id c11so287385lbj.31
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 00:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=NEAib9Z1+PxXEsFYGLTAat4nm3aNhv37MWLilzwPcgc=;
	b=x7DIm7qZrK4agVqS9rd+DeT2JKTU/EVLuIytOd/DYfkphIPG90PD4GbyIr7mVxXTSp
	aJj0hbRRjEynskpFCM+mhhJ7V4e8ZPThsXr12vc/v3r5JRJj49lG2rUIuXkDgsTigKRw
	TkmSgWS3+5d9Pxt4RKctfMd1poz9Oihcl7EVvfutKaFNdBCoM+Yh0T1HUjZ+wZwOMR9G
	JqCh7aVWyFgoCGiqfFI5QW5nwGBHB0eKUK6anLJGdvq4RBvKFPCOWXh9d8hdCrffLHAs
	SoG1Om2/dgB2YgLQfFI9kAY3TwO/kd9srlPyvLvQqxD/oVPUJuQz7x9WNCEgUs1Vf7b7
	vmSQ==
MIME-Version: 1.0
X-Received: by 10.152.22.37 with SMTP id a5mr29188270laf.4.1395300077742; Thu,
	20 Mar 2014 00:21:17 -0700 (PDT)
Received: by 10.112.170.166 with HTTP; Thu, 20 Mar 2014 00:21:17 -0700 (PDT)
In-Reply-To: <CABhkJRebWkHYUWXu77n2kg20Ti3P8bYgE2UzfY8UO6T5K_tYew@mail.gmail.com>
References: <CABhkJRebWkHYUWXu77n2kg20Ti3P8bYgE2UzfY8UO6T5K_tYew@mail.gmail.com>
Date: Thu, 20 Mar 2014 03:21:17 -0400
Message-ID: <CADkTA4NdOJHnmcPcJqMx2i5ZmEMUw+QV2QvuPvts9TE=quWTqw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Ashish Dalela <ashish.dalela@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto not packaging "m" kernel modules
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
X-List-Received-Date: Thu, 20 Mar 2014 07:21:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 20, 2014 at 2:48 AM, Ashish Dalela <ashish.dalela@gmail.com> wrote:
>
> In my build I see that the kernel modules which are specified as modular (
> "m" in the kernel config) are not being packaged withe rootfs. The modules
> specified as built-in ("y" in the kernel config) are being packaged in the
> rootfs. This seems to be reverse of what it should be.
>
> As an example, I have the following options for my kernel config specified
> additionally as part of my BSP layer. The modules "y" are packaged with
> rootfs but "m" are not.
>
> CONFIG_USB_NET_CDCETHER=y
> CONFIG_USB_NET_CDC_EEM=m
> CONFIG_USB_NET_CDC_NCM=y
> CONFIG_USB_NET_SMSC75XX=m
> CONFIG_USB_NET_CDC_SUBSET=y
>
> How do I fix this? Making everything "y" is not a good idea if I want to
> avoid loading these until really needed.


Have you specified "kernel-modules" in your image types installed packages ?
Or listed the individual module packages in the RDEPENDS of either the
image recipe, or recipes that require them ?

They'll be built and packaged automatically, but they won't be in the
rootfs until
something depends on them, or they are added to the install.

Bruce

>
> Thanks
> -Ashish
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

