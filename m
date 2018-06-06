Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA7ABE010EE; Wed,  6 Jun 2018 14:30:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E602E00929
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 14:30:16 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id o138-v6so4732297vkd.3
	for <yocto@yoctoproject.org>; Wed, 06 Jun 2018 14:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Fnfw5lt11Qim/17ZoLydEiisC+UpfgYA9g7z6iw2On4=;
	b=ROiAD/DFzrZ4//j5fwqxTvmYVAQHH74JM3JXN7cXV4qljMQEJVpTsU1fRVsgrak1eW
	McjcJHpGqumWIrsEdBQnPxasOME+jHT8WNv2YH9Vnr5IONZmh5LALqJ4TCzQh18COBTq
	rMmN9NSgaKQG+zk+hPK1E/x6cbcXaZwO4eHyWXlt77VnCd8O8NCVz18MZ0HUQyhDvfd4
	mPpfiiGKgWv1x0xfH12VQWkDl+/A0qoqBJZZjOzNaS3XOAoVusarrbC5hvlq2NwIGmM2
	8B4kvfqu0TAT2TH0eqH4CDkLKUayp62yTImQzWMVwg7bsUmMzdfsi1v/r7JYQbz+IFPr
	NVww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Fnfw5lt11Qim/17ZoLydEiisC+UpfgYA9g7z6iw2On4=;
	b=Y0iAf1EcumKAgTF1G39zlvf+uPIhoVT/4Hs0NNUjqhrDutqB3s7mqyRnVFcTfq3nF4
	Tb3Ul+KaU5dsRH5h6mcvzZ5autUysvbmuMAshIO977uRti7dTySKpl+wLAJZPBEp/X2s
	eENgScsbV6iZ/gRNfZCzgsl//ePd0SnncoFcsNhpFIcMgV03DGXog4HzmDCIAMyW9Vlc
	GVAzpbTZ/DwpeHUxh6DhihUoAlHtFgbq54xuSRe+BJmXVp5V474mxQp+K624sNFE2MzF
	aZW5vhR1EVB5KskyjMf4GGkua2YbA0JevqiovSnlun2RQXpnx3xGsur2fpSia6fr6XH7
	ZcNg==
X-Gm-Message-State: APt69E14wTFgZBkG44iCBTaMbQQROs+UibWeFk/2Em28t9/k24kq0ejR
	79kYwvQl05LPVEvscrlQsfYUwOVuu+iq0ltPG1g=
X-Google-Smtp-Source: ADUXVKK+2lrlG+TCYnwwG2GZ/PWoMX8xN3UkfSupQJWiJ5q2khi+vBLeMt/1KZitOrb7Cmz5286znM1kjwCzPzd/2u4=
X-Received: by 2002:a1f:c3c7:: with SMTP id
	t190-v6mr2754047vkf.24.1528320615740; 
	Wed, 06 Jun 2018 14:30:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:28a:0:0:0:0:0 with HTTP;
	Wed, 6 Jun 2018 14:30:15 -0700 (PDT)
In-Reply-To: <a2161204-3806-e19a-c7e8-a256956ef704@qiio.com>
References: <a2161204-3806-e19a-c7e8-a256956ef704@qiio.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 6 Jun 2018 14:30:15 -0700
Message-ID: <CAJ86T=V4q9yBAx50nf52j0MfZ7U4ZANyWJ=jMkqdYmXxDUY3zQ@mail.gmail.com>
To: Jakob Hasse <jakob.hasse@qiio.com>
Cc: Yocto List <yocto@yoctoproject.org>,
	Andrii Voloshyn <andrii.voloshyn@qiio.com>
Subject: Re: Where to make image dependent kernel changes while hardware stays same
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
X-List-Received-Date: Wed, 06 Jun 2018 21:30:16 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 6, 2018 at 9:03 AM, Jakob Hasse <jakob.hasse@qiio.com> wrote:
> Hello,
>
> we would like to have different images with different kernel configs/device
> trees. E.g., we would like to have systemA with uart2 and systemB without
> uart2 but spi1 instead, with all the different configurations and device
> trees. The hardware does not change in this case.
>
> How can I make such kernel changes depending on the currently used image?

You can't. The kernel build can be influenced by global config files
such as the distro config, the machine config, local.conf, etc, but
it's not influenced by the image you choose to build.

> My first trail was  to make different machine configs anyway although
> technically the hardware doesn't change.

That's OK. There's no rule that says machine config files can only
contain HW related options. You can think of the machine config files
as just being a place to put global build configuration which is one
level below the distro configuration.

> Then I can append different kernel
> configs in the kernel recipe like this:
> SRC_URI_append_systemA = " file://defconfig"
> SRC_URI_append_systemB = " file://defconfig"
> ...with the corresponding defconfigs in their machine specific subdir.

Putting the machine specific defconfig files into machine specific
subdirectories is enough - you don't need to use machine specific
appends to SRC_URI. For reference, see "log.do_patch" in the kernel
working directory to see the file search paths. The machine specific
paths will be checked first for every file in SRC_URI automatically.

> But maybe there is a better way to reflect these kind of changes?

There are other ways, but the way you have chosen is a good one.

>
> All the Best,
> Jakob
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

