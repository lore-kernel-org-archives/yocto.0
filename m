Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9F31E00E0E; Sat, 10 Mar 2018 06:41:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7369BE007E1
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2018 06:41:38 -0800 (PST)
Received: by mail-lf0-f46.google.com with SMTP id h127-v6so17095268lfg.12
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2018 06:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CxXIzpjwDBjPPHWWf0rr4qNhk5xNT92c2Az2VwSf2eM=;
	b=WmxVxcbE3tsyyJ5KoY6tIsM7u8hlNpKCifvkc9h/dUvGoovug+oFR2elQapyUnWVaK
	lX0hG5dkvBzA0BekkiYoaC/1VgzU6E69W9YUb0czNPrY6SlkA2c1ACPP5ygxlc1lqw+b
	9RVhdIqAud8IcYB3riB2SKNemZ0pO2X58FPFycQEf4nbqxp55ws58M9eDhrIrhGR3V4a
	GgoGvUt7eFwQ7F3+9UideP4PS7omZH3bxyWTe9v/S0r3mktpQZd/Hv3BBr9YBsyd0Tpu
	OOOtIQgfElIOKe1Au+GxVeFaLQOWwZ6jFZU852KtgFKiRxEaedgmhEXYXKvt5Te+ZM3Q
	f+HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CxXIzpjwDBjPPHWWf0rr4qNhk5xNT92c2Az2VwSf2eM=;
	b=cyxqfqOPMkFt8n5G2tE/hJL0X4QxuoHv7RLHJHQGrQghAVz29yJ17vlcySbZcidPdr
	sTWwr+lkBJAw6h927uGYa999v3Xtk8USeVPU5tXkCya5OjcwioIM+27n6nnrv6YJhloc
	syf5IK0sFbxzUpO9aWNyaSAEv6oq2iB+kV9e9lxRlEZSf/YpWobhx1aaxZo7uZg3XQuo
	flaiDzMIH1wkiHW0DekRtvVTBt3v3wrtpbO2FMOxXE9PYXmOUXLq3epWP5Wj868+z6zz
	6TEAYQQmzUQDU70iZGMFjjOUPQK5Uhu1N2s7jK7XOMzDWXTALISjqqcV+hl5DTgaveeC
	t9jg==
X-Gm-Message-State: AElRT7E7F08GtGLP/KpAUUzanbcwk6ZlugrafSr02auyCGdegJefWa+o
	ht+imt4aYcz02EzY6VqyxihvRGXFKEizNzYIkpg8Pg==
X-Google-Smtp-Source: AG47ELsskoiQ+RS2Z5UYgTp8B+VqyHpBoIJem1cU4ySBssaBXw+pwPoeIkwyMbI16VJD1nLQeTm4JXh2fCdQl/sl3q8=
X-Received: by 2002:a19:1586:: with SMTP id 6-v6mr972495lfv.17.1520692897922; 
	Sat, 10 Mar 2018 06:41:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a19:5a9c:0:0:0:0:0 with HTTP; Sat, 10 Mar 2018 06:41:36
	-0800 (PST)
In-Reply-To: <CAFq4t4gHeuROOaP3q7k3_i2BthqH2GQtf93OCTOcb6XhA1ANvw@mail.gmail.com>
References: <CAFq4t4gHeuROOaP3q7k3_i2BthqH2GQtf93OCTOcb6XhA1ANvw@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Sat, 10 Mar 2018 15:41:36 +0100
Message-ID: <CAOT_U5Z_Oph_QdPy3XsG-0Wi-e8AYU=BJv4TX+UYjX-F87WdmQ@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: python-pyqt
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
X-List-Received-Date: Sat, 10 Mar 2018 14:41:40 -0000
Content-Type: text/plain; charset="UTF-8"

Seems like the name of the package is: python-pyqt5

A recipe with that name does exist in meta-qt5:
https://layers.openembedded.org/layerindex/recipe/60914/

As on why bitbake didn't automatically set the recipe for execution
(based on RDEPENDS) but you would need to manually add it to
IMAGE_INSTALL_append
I don't know.

Do you have meta-qt5 in your layers?


On Sat, Mar 10, 2018 at 1:53 PM, Peter Balazovic
<balazovic.peter@gmail.com> wrote:
> Dears,
>
>
>
> per Yocto build from fsl-arm-yocto-bsp.git - i.MX Linux BSP Release Yocto
> Project manifests of imx-morty branch I have built fsl-image-qt5 image, I
> need to add qt5 python support, how to add to the image?
>
>
>
> Modifying local.conf not works
>
> IMAGE_INSTALL_append += "python-pyqt"
>
>
> I end up with errors...
>
>
> ERROR: Nothing RPROVIDES 'python-pyqt5' (but
> /home/ubuntu/work/morty/fsl-release-bsp-imx6/sources/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/images/fsl-image-qt5.bb
> RDEPENDS on or otherwise requires it)
>
> NOTE: Runtime target 'python-pyqt5' is unbuildable, removing...
>
> Missing or unbuildable dependency chain was: ['python-pyqt5']
>
> ERROR: Required build target 'fsl-image-qt5' has no buildable providers.
>
> Missing or unbuildable dependency chain was: ['fsl-image-qt5',
> 'python-pyqt5']
>
>
>
> How to add python QT5 support to Yocto image build?
>
>
> Thank you.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

