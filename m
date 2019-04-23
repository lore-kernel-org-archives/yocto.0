Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B28C6E00D43; Tue, 23 Apr 2019 01:12:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B132BE00B81
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 01:12:04 -0700 (PDT)
Received: by mail-io1-f65.google.com with SMTP id d19so7581368ioc.3
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 01:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ny+fx4mYm2V79uQqaoZTVfhGBd/nopuA1QiMrbbwpqM=;
	b=m1ssFEewU1dq/zm370Pa/RixVv/0mXjNcFNeelsBIsvDY6M4+BjLD7aV7MYRs7p0lx
	PanKu3EwtnseZYZg1PfR9mojHhybGHGlpd2LPqams8U0KaFIS5Et4Bp0JYrW/TQIwLNA
	Rg6Y8ZetMuz3EtXD5tupX1/BTXTmUOo+Kf2dywQqOB+nXbc7Fq2YNt0LLcjY6NNPB+ZU
	uGY5JR2Nga+w1JWxsuFywcdesqV6azgs2sPqmuORO4Uu4Do+JhjBzeHcYB6qxhiME75w
	9ZaUuwJ82cDDaYOzuidnrKd1KNsmAjYESNvckMUdbmCgzyBhKOtIIUU11XCOjhpxwMfy
	qufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ny+fx4mYm2V79uQqaoZTVfhGBd/nopuA1QiMrbbwpqM=;
	b=TlKVQXHjBQ4fWRHHY1Ilru+LauXsatFVmeTNhzNcTE64WN6P4sDC69n/DRfCd46MGh
	sTNvjXgg45+NNvoXLtdx9OXpWaFh/j1k4baVI+eVP3abAcLqdoPSv0gDqISo4CRx8RbP
	UAUbxBR0wF0S3R+wa2JmMMYoGXAuEKoO+ProzSfFK1u1sxKzJwUo99tierLaH05+no+P
	SbATSZjDOqpWBToX64F+X5PhvfV0Jyd0Np0hN1KbSBIZFH6WeT4knpE6KdjI8xrXEg/Z
	sUqfwWxxJXcJxV2ZSDBvpB1+Z9YGiOtUBIn4EHOjw2/NPHmhWWzgFqzy38Rw89TBN2B3
	5GzQ==
X-Gm-Message-State: APjAAAUxfdH40CplLlNnrrDy0UAdDmQJbq6ISfeWWsjYAlOTl2dCu0DG
	qkn+tfK/TA/uvy0wAyDhHK2K+SuO
X-Google-Smtp-Source: APXvYqyUl6J3gql8Pq/g15Bf3z2a4Tea7LEpxVqlT8gl3c4knnJKjYiQXZIM4cF5B4V8BL6z8i1cyA==
X-Received: by 2002:a5d:8594:: with SMTP id f20mr16736222ioj.38.1556007123048; 
	Tue, 23 Apr 2019 01:12:03 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	n199sm7429444itn.34.2019.04.23.01.12.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Apr 2019 01:12:02 -0700 (PDT)
Date: Tue, 23 Apr 2019 04:11:59 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Randy 'ayaka' Li <ayaka@soulik.info>
Message-ID: <20190423081159.GC12920@linux-uys3>
References: <20190421155339.6332-1-ayaka@soulik.info>
	<20190421155339.6332-6-ayaka@soulik.info>
MIME-Version: 1.0
In-Reply-To: <20190421155339.6332-6-ayaka@soulik.info>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 5/5] conf/machine: add support for rv1108
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
X-List-Received-Date: Tue, 23 Apr 2019 08:12:05 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun 2019-04-21 @ 11:53:39 PM, Randy 'ayaka' Li wrote:
> RV1108 is a SoC specific for video enhanced and
> recording. It is embedded with a DSP for digital
> process and an ARM Cortex-A7 single core processor
> for system and application.
> 
> Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
> ---
>  conf/machine/evb-rv1108.conf    | 10 ++++++++++
>  conf/machine/include/rv1108.inc | 12 ++++++++++++
>  2 files changed, 22 insertions(+)
>  create mode 100644 conf/machine/evb-rv1108.conf
>  create mode 100644 conf/machine/include/rv1108.inc
> 
> diff --git a/conf/machine/evb-rv1108.conf b/conf/machine/evb-rv1108.conf
> new file mode 100644
> index 0000000..3e85d80
> --- /dev/null
> +++ b/conf/machine/evb-rv1108.conf
> @@ -0,0 +1,10 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: EVB rv1108
> +
> +include conf/machine/include/rv1108.inc
> +
> +KERNEL_DEVICETREE = "rv1108-evb.dtb"
> +UBOOT_MACHINE = "evb-rk3288_defconfig"
> diff --git a/conf/machine/include/rv1108.inc b/conf/machine/include/rv1108.inc
> new file mode 100644
> index 0000000..1c70ef7
> --- /dev/null
> +++ b/conf/machine/include/rv1108.inc
> @@ -0,0 +1,12 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +SOC_FAMILY = "rv1108"
> +
> +require conf/machine/include/tune-cortexa7.inc
> +require conf/machine/include/soc-family.inc
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux"

There is no "linux", maybe you meant "linux-stable"?

> +SERIAL_CONSOLES = "1500000;ttyS2"
> +KERNEL_IMAGETYPE = "zImage"
> +KBUILD_DEFCONFIG = "multi_v7_defconfig"
> -- 
> 2.20.1
> 

