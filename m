Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92D5FE009C9; Sat, 18 Mar 2017 13:21:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44D7EE00867
	for <yocto@yoctoproject.org>; Sat, 18 Mar 2017 13:21:11 -0700 (PDT)
Received: by mail-ua0-f194.google.com with SMTP id f54so7945227uaa.0
	for <yocto@yoctoproject.org>; Sat, 18 Mar 2017 13:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lygJo9oBeVZ4uQxKNv7HFEBqRDYdwMyfSAD7HT7gS5k=;
	b=HC/fkR53cD1vzkB8TAeibK7uGWm3GIMOy6yj0PkQ4iRcNq8+ByJWnQcuXUAEHZso58
	0vDOc+VnHuN9hs8IKKu1pwzUogGQ8Z/JbjIXK9I39EwtIsr0k0/j75iIcebYkBEjt3sl
	aTpGsuyfV6VEYJSOcnBpWe/R1Uk3LsCtJD4QsMnPHjuBXUTv1InTLcV5PC/MjBrBofc2
	ImNVpFi/3k+0TpcgViB1206Br7OM+EhgQUCPYGBvqhyunKtrXD1o0HdfJDqebw4sGW1i
	UdGKG7x9QD9Q5ZzJWdoehAMNY9uAUnu7YrJpz0996w8vmTx4bo/AfH7pHBkLZM9E0PWD
	amzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lygJo9oBeVZ4uQxKNv7HFEBqRDYdwMyfSAD7HT7gS5k=;
	b=b6506cXj3rZJNKfCNiBAv1qMFKht/oi3qyaQ68s21pd09pvUWC2FgkZrnUMVfwelFO
	i4rpSWN/+BWmLVxdks1Vx5sHUSgaHqhQVysxvHvtAEJGDKUZXSbXpTIVC3hnDF/Yzubg
	uZFOEOtLxYGhd7ZM2M0D2vJ0wH2NGpBzBzAU1NQljiwTDf/5xoQGBSB6JkdsjXYoD3kD
	kKVFYo+syG2WNUx7K9riBnzYGISW21HYvDXxcue4ttQgl0+oTK30xu53udykMqr1IFcJ
	q9ulFozjD84KMFhipyiaHzLhHpvFqPkGimWs629ZqgH2VEo4ElfaqwGPw1feGDimnm+O
	yYOw==
X-Gm-Message-State: AFeK/H3wu31ATAlTHGNEWamEyDnkRb79F3PEZ9dO++qYWqvdf9zcVxl/sGeEiFxGVSepnp/ylEhV8RJo2qTAJw==
X-Received: by 10.176.93.30 with SMTP id u30mr9152286uaf.179.1489868471201;
	Sat, 18 Mar 2017 13:21:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.43.65 with HTTP; Sat, 18 Mar 2017 13:21:10 -0700 (PDT)
In-Reply-To: <CAJrj+DNkdC_LCDp4kAZwoQUMOeiUL3T+1i2pukb87eMyvvx72A@mail.gmail.com>
References: <20170318065804.27967-1-twoerner@gmail.com>
	<CAJrj+DNkdC_LCDp4kAZwoQUMOeiUL3T+1i2pukb87eMyvvx72A@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Sat, 18 Mar 2017 16:21:10 -0400
Message-ID: <CAHUNapRHRSTMTws0CCDgKOMaLOcPB_sVyO1GAnDP9QZO8uTUTw@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH] machine: rk3288: don't hard-code kernel choice
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
X-List-Received-Date: Sat, 18 Mar 2017 20:21:14 -0000
Content-Type: text/plain; charset=UTF-8

Hi Eddie, thank you for your review! :-)

On Sat, Mar 18, 2017 at 9:48 AM, Eddie Cai <eddie.cai.linux@gmail.com> wrote:
>
>
> 2017-03-18 14:58 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
>>
>> Allow the user to ultimately choose the kernel. Make 'linux' the
>> _preferred_,
>> not the _required_.
>>
>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>
> Reviewed-by: Eddie Cai <eddie.cai.linux@gmail.com>
>>
>> ---
>>  conf/machine/include/rk3288.inc | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/conf/machine/include/rk3288.inc
>> b/conf/machine/include/rk3288.inc
>> index 964d8b0..88acbbf 100644
>> --- a/conf/machine/include/rk3288.inc
>> +++ b/conf/machine/include/rk3288.inc
>> @@ -6,7 +6,7 @@ SOC_FAMILY = "rk3288"
>>  require conf/machine/include/tune-cortexa17.inc
>>  require conf/machine/include/soc-family.inc
>>
>> -PREFERRED_PROVIDER_virtual/kernel = "linux"
>> +PREFERRED_PROVIDER_virtual/kernel ?= "linux"
>>  SERIAL_CONSOLES = "115200;ttyS2"
>>  KERNEL_IMAGETYPE = "zImage"
>>  KBUILD_DEFCONFIG = "multi_v7_defconfig"
>> --
>> 2.12.0.rc1.48.g076c053
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

