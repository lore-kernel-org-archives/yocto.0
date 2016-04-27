Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87AFAE00DA1; Wed, 27 Apr 2016 06:23:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76592E00D9C
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 06:23:29 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id d62so45961052iof.2
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 06:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=GveFnVdeur/00uRFKUYl5D8+lnIejr5bLX9ewpqGQUE=;
	b=pA35qSF2XJiNIPe4VLQP3YN3umbom9cRNrVtmW7SZKHGGXV6ug2DuybuJMKgUqANrt
	FhLC+o+O8mH0AWirjPnbXjKjTMssZKacw05w37L+kP/M+IOQi/4ui0fSLl+DsaaCRJGl
	uiTbDWji4rvF3Pt6jyW3m8Le93qJMoz9Z8NgZH8BJbi+8p1G3F20+/GhnXquqxd9kuLF
	McPcVC0xi+xJ0+uaz3KuxUy2APf8Xf65/XCVXeqeT3haC8riU1idl8wKsotBMAzs56Fc
	c33iLhyxstFuDDhtHW9rZhuwIxQwrfgrm1O32j3OwqG5J0MCkR/eDDORNndxi6bfeV4+
	hEUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=GveFnVdeur/00uRFKUYl5D8+lnIejr5bLX9ewpqGQUE=;
	b=gaABBZwrZ5D4b97WX7xnx9vJSAEUkvQPtxSV1YeheJM2kYUOIS85Z/XQaZBrdER39g
	imhufCFw+7WmlvRGwuxpV5EKO6m5U7Rr97nLxouyzd7JQnufUsdSiYP2ACXSTQHeOCtG
	SnfHBfWA/RaikXZqiQJ1E8h/J6TQVMpOwhfZAzPG7JP3wd2RUkTVr9IOQg2+go/vnShs
	KJZ4NNrMNvFELaz4Gb9P8E6PKXhnT8NE/SdRaUQ4ES+onruGoW66C7KOYFIJ7W6WVf2H
	R0jAy43Jptpt26PtLwJmPaReGNmw0DMOYAWAbWTT0FZBvE1iBVogRH3XPFr1QxKMxO7H
	aKpQ==
X-Gm-Message-State: AOPr4FUho5EAR3NPOnHcjOE72pPeqnL2xbqosgu/Ni53KK4DZBIcuKYe8ZyIPRV8UGO/Pw==
X-Received: by 10.107.8.85 with SMTP id 82mr9846448ioi.85.1461763408076;
	Wed, 27 Apr 2016 06:23:28 -0700 (PDT)
Received: from linux-yxv0 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	y198sm4436389iof.10.2016.04.27.06.23.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Apr 2016 06:23:26 -0700 (PDT)
Date: Wed, 27 Apr 2016 09:23:18 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160427132318.GB32572@linux-yxv0>
References: <1460399310-15649-1-git-send-email-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1460399310-15649-1-git-send-email-twoerner@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [meta-chip][PATCH] u-boot-chip: fix md5sum
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
X-List-Received-Date: Wed, 27 Apr 2016 13:23:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

ping?

it's been over 2 weeks now

On Mon 2016-04-11 @ 02:28:30 PM, Trevor Woerner wrote:
> The u-boot master and chip/stable branches have diverged such that the md5sums
> of the License README files are now different. The latest master branch has
> added a "SIL OPEN FONT LICENSE (OFL-1.1)" license.
> 
> diff:
> 	--- chip/stable-README	2016-04-10 02:05:30.783023170 -0400
> 	+++ upstream-README	2016-04-11 13:48:34.973027406 -0400
> 	@@ -67,4 +67,5 @@
> 	 IBM PIBS (PowerPC Initialization and		IBM-pibs			ibm-pibs.txt
> 		Boot Software) license
> 	 ISC License					ISC		Y		isc.txt			https://spdx.org/licenses/ISC
> 	+SIL OPEN FONT LICENSE (OFL-1.1)		OFL-1.1		Y		OFL.txt			https://spdx.org/licenses/OFL-1.1.html
> 	 X11 License					X11				x11.txt			https://spdx.org/licenses/X11.html
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  recipes-bsp/u-boot/u-boot-chip_git.bb | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb b/recipes-bsp/u-boot/u-boot-chip_git.bb
> index 2342478..60db3e0 100644
> --- a/recipes-bsp/u-boot/u-boot-chip_git.bb
> +++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
> @@ -2,6 +2,8 @@ require recipes-bsp/u-boot/u-boot.inc
>  
>  DESCRIPTION = "U-Boot port for C.H.I.P. boards"
>  
> +LIC_FILES_CHKSUM = "file://Licenses/README;md5=0507cd7da8e7ad6d6701926ec9b84c95"
> +
>  DEPENDS += "dtc-native"
>  PROVIDES += "u-boot"
>  
> -- 
> 2.7.0.rc3
> 

