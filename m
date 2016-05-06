Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCC21E00E61; Fri,  6 May 2016 05:35:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f194.google.com (mail-ig0-f194.google.com
	[209.85.213.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12ACFE00C5D
	for <yocto@yoctoproject.org>; Fri,  6 May 2016 05:35:54 -0700 (PDT)
Received: by mail-ig0-f194.google.com with SMTP id c3so4924612igl.3
	for <yocto@yoctoproject.org>; Fri, 06 May 2016 05:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=omhoQqmAAFPFXL+fDIOHgp9Ak976AJFwBYhMUMhGuWU=;
	b=c4HZy9LMYdclIMwvJqFFKMrifC06qfHnH/jGR3mdaf1gulU9WL2p75Vs9w2q8aYiRe
	gjU51DZxTBCZOHXHVAYQoykZZgDM9oaEhfOC6maLGQQOVGKD+uZ8Dp1q/RZkXQTGDv9+
	NFL/6MrFeeQH87mfKF2p35TQrlXPJLRLwBCFFtqO+0H9gCJioNV7bYb5w3/QvdOsvWzX
	uE8HUfOgSc7i9HFWbwUrYqoA3ppb7TOi9ic7yIbcgN5wMx5JubIIU9srem77z2GXLYXZ
	5UQ9QnZAkcAh0C5lJyZa2JNgdT/zmfkqgdoDvNw5L2mXxQI9NIGlpUR1W26JYQz2ITU4
	Xytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=omhoQqmAAFPFXL+fDIOHgp9Ak976AJFwBYhMUMhGuWU=;
	b=Z04UeRT5HaqrPx4Brro8H4GTXNEyz8Spv/k0VdbPoG7VIs6PN+ITLnPuzvnSfvM4gg
	hjq3OYwofyUlIRoFXJvapgMlnHzB5YhZAZbnarxKtQYTBwl+CSQbAqsDFDqzLn7zTZ1u
	rLCmp85d4fDmlZi6Kzrj1SppMsI2i03POZ+IQwAYr25cEzQYDz0cndS/RMj3l7Uf7exj
	//UIsjPQSELgQWpB0WnCRIajDu8ZzM6eLAN63xebsrOx7Qn7YR7vjefo/tDU3xD9NI+i
	VeTot9pmCBdCaSYLR7Xp8M8QT0EKuG2JDC8VVcZJ5RVplodpi+eySPCjm3iFkFgndLHB
	ArJA==
X-Gm-Message-State: AOPr4FWp8UW3D9/dTARf8YpFMjfJjMiMUhyXK2fXu8xcsN6gxomNxOZiZDHkiXGZH7gJvQ==
X-Received: by 10.50.40.100 with SMTP id w4mr10481109igk.92.1462538154045;
	Fri, 06 May 2016 05:35:54 -0700 (PDT)
Received: from linux-fl6i (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id qd7sm4059193igb.0.2016.05.06.05.35.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 06 May 2016 05:35:52 -0700 (PDT)
Date: Fri, 6 May 2016 08:35:41 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160506123541.GA26163@linux-fl6i>
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
X-List-Received-Date: Fri, 06 May 2016 12:35:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

ping

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

