Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ABCAE00A0A; Thu,  2 Feb 2017 16:38:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DD97E00A04
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 16:37:58 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id y143so291668pfb.1
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2017 16:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=uCwK1O/ktE/wSuiLvV5NIneV+G1sfXxLNhbPF7uWfVM=;
	b=ILQRzVYQBcCyoTU/Xk1MXGAwirSmlOBT/mJTSKsq/cGDtdLiioKmFdoQJlNTradbGh
	dtxxAzz68f+XwWNsNOndtyM1qAFpYIvJvObT2Ucp+koxyez7IAZCyi/S90Frxb/Vok1J
	ubis77P8EC0UY4VKjEkWKFnn58HZneKzk5yyU4Yg3weVQcVfAcWkVgHNGSXmBeVuii6y
	BojsSe6UqDx++9IhN3sXtXLzp7gSp+EXwRFRWNNvoGRFPMdGRFd1LnQPpAFr/h79hBFh
	4V3UvCactiVwSBFyPuwifY02+tTz6V5w4TF1i6p6W4B/g2SmCYbL0920S2atuLakHWha
	kRkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=uCwK1O/ktE/wSuiLvV5NIneV+G1sfXxLNhbPF7uWfVM=;
	b=Kxh5Kxp3GmP0VVwq5bR8bbAOONDfuLzjgKcoCycmsI33duwToSszv8/Z/j/U+H6dsr
	IhFYakRILy7tMILrKPHrtvqk/Ah+T4RKIh37bVPROxdn6vmskf5vUXIiJ1b9AUTV5I3b
	PpETyc66oEwo4oBAu2Mb959U8r4LiM2kYGaKCFLJO/Yx/7i+6iF36Z2f1q3B+rHPoe5C
	uPaXVZDplSVJmRoQH4AeqtNmhbZVZOIPbuvPhFdI7FP7iS10/E1EhV19cmE01iT5Ouee
	DN9OwljwoF72gy0Cglj0NUL3/sniIUS7e/XT7j96+IJsQZAKMzSpAPB9Ix+iJfa5RhAL
	1GGw==
X-Gm-Message-State: AIkVDXI7CCuaLmqkforASLM8BWp9x7j/bEMe3g/ypVYf9m4UkvSSLcxPeYkt/mWq7cxOuw==
X-Received: by 10.84.217.216 with SMTP id d24mr16853005plj.101.1486082278124; 
	Thu, 02 Feb 2017 16:37:58 -0800 (PST)
Received: from [10.22.11.238] (50-233-148-156-static.hfc.comcastbusiness.net.
	[50.233.148.156]) by smtp.gmail.com with ESMTPSA id
	q22sm61445237pfj.77.2017.02.02.16.37.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 02 Feb 2017 16:37:57 -0800 (PST)
To: Armin Kuster <akuster808@gmail.com>, yocto@yoctoproject.org
References: <1486082196-29895-1-git-send-email-akuster808@gmail.com>
	<1486082196-29895-3-git-send-email-akuster808@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <a943e751-9405-f55b-3e98-09bff290e715@gmail.com>
Date: Thu, 2 Feb 2017 16:37:56 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1486082196-29895-3-git-send-email-akuster808@gmail.com>
Subject: Re: [meta-cgl][PATCH 3/3] initramfs: fix parsing issue with do to uboot inclusion
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
X-List-Received-Date: Fri, 03 Feb 2017 00:38:10 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

ignore this one. started at wrong location

-armin


On 02/02/2017 04:36 PM, Armin Kuster wrote:
> From: Armin Kuster <akuster@mvista.com>
>
> since the image type includes "uboot", need to inherit the class for it
>
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>   meta-cgl-common/images/core-image-cgl-initramfs.bb | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-common/images/core-image-cgl-initramfs.bb
> index 0777b7c..2ebbdf5 100644
> --- a/meta-cgl-common/images/core-image-cgl-initramfs.bb
> +++ b/meta-cgl-common/images/core-image-cgl-initramfs.bb
> @@ -12,8 +12,8 @@ export IMAGE_BASENAME = "core-image-cgl-initramfs"
>   IMAGE_LINGUAS = ""
>   
>   LICENSE = "MIT"
> -
> -IMAGE_FSTYPES = "cpio.gz.u-boot"
> +IMAGE_CLASSES = " image_types_uboot"
> +IMAGE_FSTYPES ??= "cpio.gz.u-boot"
>   
>   IMAGE_ROOTFS_SIZE = "8192"
>   


