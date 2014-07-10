Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6230AE00736; Thu, 10 Jul 2014 09:12:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE6EE006F3
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 09:12:47 -0700 (PDT)
Received: by mail-pa0-f47.google.com with SMTP id kq14so11368811pab.34
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 09:12:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=7XgrdoVx0SRBjmt3/OrHfZB1PDKlfntn80rA35+2bG4=;
	b=kOms4D7cDp3ZKjhdlo/ZF+Yux7V2NKmxrrJXN8ImJ7O9QT0ySLECOxdQmFXWTmYmgf
	oAvmKSN1Bk1DZDPM5iyOQZF3t6o7XdP1ELdEqg/mZzxgK1TGArLN6B/rSxldVRk7mGU1
	6cUboQkD9RrrvICkzdzJ5yHSwxSATcTnJYKCnY57TaQEefiQ6+se5n3xRKJUKV4xX587
	88zwM7VpkaK0T0C1ZQrBsEGT2wqmvUuJoKInmoWSHeuhsCotToNJLTYRPATjt6KzxQuM
	87Sm6yyJ4KzfUHjyMNHh3IsUpBs3hL/n2nt0aGJv11lSBQxS95ErPWBfLlNFY5jdjCHg
	IUlA==
X-Gm-Message-State: ALoCoQnyBIYNvWKbshMkQK5ASo1eCUb+Zyb/YwOU9q7wpoQxVjIVWoIpxZqvEGOCLOwB0/ga+SE7
X-Received: by 10.70.129.81 with SMTP id nu17mr14333341pdb.56.1405008765965;
	Thu, 10 Jul 2014 09:12:45 -0700 (PDT)
Received: from [172.16.1.20] (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	u13sm33030206pdi.34.2014.07.10.09.12.44 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 10 Jul 2014 09:12:45 -0700 (PDT)
Message-ID: <53BEBB7B.9060501@mvista.com>
Date: Thu, 10 Jul 2014 09:12:43 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1405008639-3207-1-git-send-email-akuster@mvista.com>
In-Reply-To: <1405008639-3207-1-git-send-email-akuster@mvista.com>
Subject: Re: [meta-security][PATCH] V2 packagegroup: Add initial set of package groups
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
X-List-Received-Date: Thu, 10 Jul 2014 16:12:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

oops.

ignore this.

- Armin

On 07/10/2014 09:10 AM, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>   recipes-security/packagegroup/packagegroup-core-security.bb | 2 --
>   1 file changed, 2 deletions(-)
>
> diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
> index 1acc4a9..25f9f1f 100644
> --- a/recipes-security/packagegroup/packagegroup-core-security.bb
> +++ b/recipes-security/packagegroup/packagegroup-core-security.bb
> @@ -3,8 +3,6 @@ LICENSE = "MIT"
>   LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>
> -PR = "r0"
> -
>   inherit packagegroup
>
>   PACKAGES = "\
>

