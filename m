Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50B3DE00C31; Fri, 15 Sep 2017 13:44:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7BD9E008D2
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 13:44:44 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id p5so2146529pgn.7
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 13:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=K77JQ1PnzYAKY8gi6r+V/4boq+VcpHFAqh6FpQ6zDF8=;
	b=obQpx/nX5lP3QPAerrpYD1nUIMbQ/nljTCEFjY8ztc+CUI+MR89Wc0C7T/z29nWGRB
	ulbGAvfqpMPMD7UpvqExx+WlCE3wYRFP8xqx8NFe4V1UZ+cC7+eCiA2mz6ADcPnBfANB
	m/DCCh9QWT3GAnk85AgR0Ak14wAY3hfTWQNUW3Mz0K+7c3fYlvODk1nVCxhTDWFK7q4H
	k2NkB7tH/I9GDXqNaqMn3Vwh/Y3y20tgeNB0/rS6wnvDpYDkRroOV5oSCx/7c18X2GE6
	oak94SzqnAhaBXyBvyshoT0SCHbWU9C+uuMbsElYBjAPPunTe1OFvsc2cbIQVCwGVC1R
	/URw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=K77JQ1PnzYAKY8gi6r+V/4boq+VcpHFAqh6FpQ6zDF8=;
	b=cThUrsDceWS76sszxKoqrugWi0zNObOaCpV4iHYGAHPQ/G68EOIuaDniJxsfSZ3Z6u
	1G1Ik2HeTLfippZrngBWCeogdnl+v6612VujaSNjS9ZeOZtAGkghTqV0Bp6ZGbfjdDhf
	I8h7tnoW75vlkLN/pPke+ZgImgTjc38wph7/OWAEkHjadgRJgnzsA80bKKl4YBop4uze
	ZH5HwcVX2dL6EOybT0uMVFtsr16Ps2TUJdiiyBeXLIGqPeYGjXrAaeKSwJ2TOVBzmyyW
	oxpEFphI1NgCF/JLLwxVebBR/WK0/+OHnifO60Hp5vdKu2Ck7co18ZRHu6KTRlxQkvVd
	pdxQ==
X-Gm-Message-State: AHPjjUgJ92Ilx/irDJUK5Lz95rZ3hX4l0eSc9PAgV6ngHUYZ0mbspGgO
	6njSLz/KylofMa5TOZkZfw==
X-Google-Smtp-Source: AOwi7QBpX8kDiVgXdsLtsAMHhxrFVcUc7IbnZZI2zmBAZ9Pb1LSO6H8+MxoGyl/gdpJBV57Xh9epQQ==
X-Received: by 10.84.234.194 with SMTP id i2mr6380829plt.420.1505508283451;
	Fri, 15 Sep 2017 13:44:43 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:8059:611f:1111:1f0c?
	([2601:202:4001:9ea0:8059:611f:1111:1f0c])
	by smtp.gmail.com with ESMTPSA id
	j10sm3484486pfj.116.2017.09.15.13.44.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 15 Sep 2017 13:44:42 -0700 (PDT)
To: jackie.huang@windriver.com, yocto@yoctoproject.org
References: <20170915091720.16948-1-jackie.huang@windriver.com>
From: akuster <akuster@mvista.com>
Message-ID: <73773caa-5ec9-ccb2-1350-42b08dd0eacc@mvista.com>
Date: Fri, 15 Sep 2017 13:44:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170915091720.16948-1-jackie.huang@windriver.com>
Subject: Re: [meta-security][PATCH] packagegroups: fix invalid license file
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
X-List-Received-Date: Fri, 15 Sep 2017 20:44:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 09/15/2017 02:17 AM, jackie.huang@windriver.com wrote:
> From: Jackie Huang <jackie.huang@windriver.com>
>
> Use '${COMMON_LICENSE_DIR}/MIT' for MIT License to fix the warning:
>
> | WARNING: packagegroup-core-security do_populate_lic:
>    ${COREBASE}/LICENSE is not a valid license file, please use
>    '${COMMON_LICENSE_DIR}/MIT' for a MIT License file in LIC_FILES_CHKSUM.
>    This will become an error in the future
>
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>

merged,
Thanks,
Armin
> ---
>   meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb | 2 +-
>   meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb     | 2 +-
>   meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb    | 2 +-
>   meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb    | 2 +-
>   recipes-security/packagegroup/packagegroup-core-security.bb         | 2 +-
>   5 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
> index 2d93aca..3b9d271 100644
> --- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
> +++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
> @@ -1,6 +1,6 @@
>   DESCRIPTION = "Security packagegroup for TPM i2c support"
>   LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
> +LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>   
>   inherit packagegroup
> diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
> index 2db8521..25126ef 100644
> --- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
> +++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
> @@ -1,6 +1,6 @@
>   DESCRIPTION = "Security packagegroup for Poky"
>   LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
> +LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>   
>   inherit packagegroup
> diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
> index 57b0722..13b505f 100644
> --- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
> +++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
> @@ -1,6 +1,6 @@
>   DESCRIPTION = "Security packagegroup for Poky"
>   LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
> +LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>   
>   inherit packagegroup
> diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
> index f7eee7c..2e9394f 100644
> --- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
> +++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
> @@ -1,6 +1,6 @@
>   DESCRIPTION = "Security packagegroup for Poky"
>   LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
> +LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>   
>   inherit packagegroup
> diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
> index cfd7918..6682d29 100644
> --- a/recipes-security/packagegroup/packagegroup-core-security.bb
> +++ b/recipes-security/packagegroup/packagegroup-core-security.bb
> @@ -1,6 +1,6 @@
>   DESCRIPTION = "Security packagegroup for Poky"
>   LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
> +LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>   
>   inherit packagegroup


