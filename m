Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34BFAE00E4D; Wed, 13 Nov 2019 22:30:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE6A2E00E4B
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 22:30:54 -0800 (PST)
Received: by mail-pl1-f194.google.com with SMTP id w8so2164125plq.5
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 22:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:user-agent:mime-version:content-transfer-encoding;
	bh=dyb3gbUC5aKMBtPlVyofUVHETvr9Jf79EI+OzmMc674=;
	b=nmfPvHy26L+VH4l7ddt0Q5G6MZIaMZumy22qxziw6B/+3gbLm6Xdtz9inP5yzOMg5X
	n3U42AT/b7LrycPxOYV7O5tvYJ95FU+WTEHscvuCXR0btyZ+X7gnBa/EAFhJeo5qPQxX
	7HBQWjOluGpHmcy7EVIeFipi2dtkQ/8d32bAPzh4YGTOM2NuqdRPYsRa8At+8DTHb78O
	OzkqD/ojMl4Lw9EG1r4OMQu4pLs4AA9Wv3yKKmgoOsLh9Uqu8bM9OIVji32j1bQX4cl+
	ATMybEksJt5yN2G+ZhnzbBQxS1PnmEXUPZwV0pkBwlFVPNiePDxEWI6TC0tajXxLMG30
	3DFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:organization:user-agent:mime-version
	:content-transfer-encoding;
	bh=dyb3gbUC5aKMBtPlVyofUVHETvr9Jf79EI+OzmMc674=;
	b=mWWyNNr9Lk8WQHfkgCaRaia994hNFhTeSPhEsfxLDJnR7A7G2K3fPfLv38EWejf4+p
	CqNN3I6Hyc0rhRg/a/3McBQ96rKcfV8Q7R1eT2VSOKW7iUHT2qg8h+Cuibhrc3s1Rsco
	mA0KMK7Nph3axkMB8klHSMH+zQ+CM1Gpl0wZetHLIFJ/VUbkL6zptnGTLf8mHljKWuKL
	+ruoAkwez0nF43ct2pXuY5Olz7tmnHFMWNTF2jQXUaJXS7j+aT10G8YpX6YBhRub39A/
	R9ts2cDS68fAP6yL3SuwlKh7S0CLjTRMDnMw7tiN0rO/SwHXozTexN0fEnXpF4rNZozR
	8xWA==
X-Gm-Message-State: APjAAAVAyKNA3UFdg6H08zB/Gpq/UNRQc7//YfuQ2XeeVl7Gr31WPA+R
	X4RJP6NdJmS6ltoUoX5OSfPE8dZ83IA=
X-Google-Smtp-Source: APXvYqwQGW1gdarMc93X5bHNiTObBnacTxiNabUISw+D5t08nPMfOvTCUpDAqDBb1iqwHvB3Drfzgw==
X-Received: by 2002:a17:902:8494:: with SMTP id
	c20mr8080138plo.123.1573713052637; 
	Wed, 13 Nov 2019 22:30:52 -0800 (PST)
Received: from tyche ([2601:646:8500:1c20::367e])
	by smtp.gmail.com with ESMTPSA id u3sm4415452pjn.0.2019.11.13.22.30.51
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 13 Nov 2019 22:30:51 -0800 (PST)
Message-ID: <9b25d589f66bb9a4a7850e089a5828b62ddb0bde.camel@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Hongxu Jia <hongxu.jia@windriver.com>, yocto@yoctoproject.org, 
	pjtexier@koncepto.io
Date: Wed, 13 Nov 2019 22:30:51 -0800
In-Reply-To: <20191114060410.37069-1-hongxu.jia@windriver.com>
References: <20191114060410.37069-1-hongxu.jia@windriver.com>
Organization: HIMVIS LLC
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
Subject: Re: [meta-raspberrypi][PATCH] wic: add swap partition and set /root and /swap size
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
X-List-Received-Date: Thu, 14 Nov 2019 06:30:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-11-14 at 06:04 +0000, Hongxu Jia wrote:
> - Add swap partition to workaround memory limitation
> 
> - Support to set /root and /swap size, 4G /root and 1G /swap by
> default
> 
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ---
>  conf/machine/include/rpi-base.inc                           | 5
> ++++-
>  wic/{sdimage-raspberrypi.wks => sdimage-raspberrypi.wks.in} | 3 ++-
>  2 files changed, 6 insertions(+), 2 deletions(-)
>  rename wic/{sdimage-raspberrypi.wks => sdimage-raspberrypi.wks.in}
> (75%)
> 
> diff --git a/conf/machine/include/rpi-base.inc
> b/conf/machine/include/rpi-base.inc
> index 36a8daf..de2f366 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -6,7 +6,10 @@ SOC_FAMILY = "rpi"
>  include conf/machine/include/soc-family.inc
>  
>  IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
> -WKS_FILE ?= "sdimage-raspberrypi.wks"
> +
> +PI_WKS_ROOT_SIZE ?= "--size=4096M --overhead-factor 1"

this means we need minimum 4G cards.

> +PI_WKS_SWAP_SIZE ?= "--size=1024M --overhead-factor 1"

I think these options should be not set here. if someone wants they
should be injected by local config.

> +WKS_FILE ?= "sdimage-raspberrypi.wks.in"
>  
>  XSERVER = " \
>      xserver-xorg \
> diff --git a/wic/sdimage-raspberrypi.wks b/wic/sdimage-
> raspberrypi.wks.in
> similarity index 75%
> rename from wic/sdimage-raspberrypi.wks
> rename to wic/sdimage-raspberrypi.wks.in
> index 01fbaea..81707c7 100644
> --- a/wic/sdimage-raspberrypi.wks
> +++ b/wic/sdimage-raspberrypi.wks.in
> @@ -3,4 +3,5 @@
>  # Raspberry Pi. Boot files are located in the first vfat partition.
>  
>  part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat 
> --label boot --active --align 4096 --size 20
> -part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label root
> --align 4096
> +part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label root
> --align 4096 ${PI_WKS_ROOT_SIZE}
> +part swap --ondisk mmcblk0 --size 44 --label swap --fstype=swap
> ${PI_WKS_SWAP_SIZE}

its using --size 44, perhaps thats default if its not set via
PI_WKS_SWAP_SIZE

> -- 
> 2.17.1
> 


