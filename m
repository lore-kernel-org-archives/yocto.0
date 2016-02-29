Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5572CE00CDF; Mon, 29 Feb 2016 13:19:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20860E00D7C
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:19:42 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id p65so9165782wmp.1
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=aUnMHw7VmL4hcRqv4US6t0QSIb1xbJ2vHVAda9fqnxo=;
	b=mXlVleEs/jQC2qihSl5thF3XYhBjDvSPlWpfmw7x+hbNXh8yvn3oO+B/b2rSqphyIS
	ui3FWmAq42HBcO1S8MVxXY1HJ0JHPPGFPHclDRMbNuT4Q1R3AtsmxgcxqZHmvFVb6o2F
	lrvuE1Q3WkPJG9rfHJ5POGhklkk0NV7gzIdz0/zjkONmNR8hWdp9XpHmgtdj9GtXquUT
	OIsGrD8U/gt/X2baO5g5fD88wL61hM9i/21Baq0mrQ/Q4DNTwsd42lYG4giZpCc3ema2
	pSvJSsColjWQPkqqlSC4I0XoQAkbujyEpzmeFLF3GY8sWB4bYwOD6mpnL7sJ3LH58G8W
	iASw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=aUnMHw7VmL4hcRqv4US6t0QSIb1xbJ2vHVAda9fqnxo=;
	b=DIR6fZSevM42soi5iRR1GW+6G5/McUMIBeTBEIPxfi0B0b+oVjBq3AygaGnd2oJHi8
	J2n9OAD/EJO2gJoxtnG5pN5LQ3DMBU57FDWC7ZkYbh0rxxwRw/+jyqW+0BwHjUzd+FRg
	AwTbsX7PxpFM+kGk2JE2e0SOIExIM9Qa60U7+JBzfirztnW03SWND0BhphtK2AN7lCJv
	py/i5sZLhRltRxMPhcYq2xkdCS+HzEQqrZP1tiD5dFGdO+88nm4OKNKj4o0Jl76HlzcA
	bAvfCv9pWaalC2jhag2+TrKXQ+f8O5WpWHSxXG3EB0U6RRKEU8AuuT0Cv/Mx+dQw/P1E
	thuA==
X-Gm-Message-State: AD7BkJIPDNSUnaCkV2U8Sz1A6CA7I9I2QRFA7fjLPb7nWlRlD/hOd/mjXrmQcCv8Y6XmKw==
X-Received: by 10.194.77.193 with SMTP id u1mr16858507wjw.73.1456780781953;
	Mon, 29 Feb 2016 13:19:41 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	j18sm18210591wmd.2.2016.02.29.13.19.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Feb 2016 13:19:40 -0800 (PST)
Date: Mon, 29 Feb 2016 22:19:38 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160229211938.GE2087@resin.home>
References: <cover.1456586389.git.raj.khem@gmail.com>
	<4a620edab062f114ec0cc2535126c5cfb5bc7b19.1456586389.git.raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <4a620edab062f114ec0cc2535126c5cfb5bc7b19.1456586389.git.raj.khem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 19/23] rpi-config: Upgrade to tip of tree to get GPU_MEM_1024
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
X-List-Received-Date: Mon, 29 Feb 2016 21:19:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 27, 2016 at 03:26:58PM +0000, Khem Raj wrote:
> Document it in README
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  README                                  | 2 ++
>  recipes-bsp/bootfiles/rpi-config_git.bb | 5 ++++-
>  2 files changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/README b/README
> index 16ac1cb..efe885b 100644
> --- a/README
> +++ b/README
> @@ -90,6 +90,8 @@ GPU_MEM_256 : GPU memory in megabyte for the 256MB Raspberry Pi. Ignored by the
>                512MB RP. Overrides gpu_mem. Max 192. Default not set.
>  GPU_MEM_512 : GPU memory in megabyte for the 512MB Raspberry Pi. Ignored by the
>                256MB RP. Overrides gpu_mem. Max 448. Default not set.
> +GPU_MEM_1024: GPU memory in megabyte for the 1024MB Raspberry Pi. Ignored by the
> +              256MB/512MB RP. Overrides gpu_mem. Max 944. Default not set.
>
>  2.C.Optional - Add purchased license codecs:
>  ============================================
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> index aa11b25..4cdffca 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384
>
>  COMPATIBLE_MACHINE = "raspberrypi"
>
> -SRCREV = "5d2ca5f9bcb1b239c051e20c05a233fd79cf09d5"
> +SRCREV = "648ffc470824c43eb0d16c485f4c24816b32cd6f"
>  SRC_URI = "git://github.com/Evilpaul/RPi-config.git;protocol=git;branch=master \
>            "
>
> @@ -54,6 +54,9 @@ do_deploy() {
>      if [ -n "${GPU_MEM_512}" ]; then
>          sed -i '/#gpu_mem_512/ c\gpu_mem_512=${GPU_MEM_512}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>      fi
> +    if [ -n "${GPU_MEM_1024}" ]; then
> +        sed -i '/#gpu_mem_1024/ c\gpu_mem_1024=${GPU_MEM_1024}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +    fi
>
>      # Video camera support
>      if [ -n "${VIDEO_CAMERA}" ]; then

Hi Raj,

Merged to master. Thank you.

--
Andrei Gherzan

