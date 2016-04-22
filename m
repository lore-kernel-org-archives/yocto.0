Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AB68E00DEC; Fri, 22 Apr 2016 07:26:47 -0700 (PDT)
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
	*      [209.85.223.196 listed in list.dnswl.org]
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4565E00C89
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 07:26:43 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id s2so14825029iod.3
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 07:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=1XGf7gACej9kbNPgdFsUQXmUqxtgVKRJinUN8RGt5ok=;
	b=AFJ1wmngqKuklTZipUxiP9x8/uwwI9q0c+5Vfn38Ue4dXsVmiiMh4Rxq7Ui5umkMjw
	e/C6iB5oIg0+WO41BQcX2KEYmz7EppCg1qvJgGLwgIJuUgpaKMuVhjPADUyRdHLTBZ07
	NT6ivAUmQ+MJutnc6hiAXX9KAd5X36dbEmGuVNcsnkHrawVMMZrTuzt0ByTposo7S5ne
	kdbXMKR9A6fsB2JjMlchdqJb8MGHMVMv0TjUkzMCghIZNDzCnIqKvg+xMFB7WTfT4DrG
	avBN84gokYQbW5aSZOIrZ80jLG4EtLHoNevR0VSsK5yRuslHh74WOHUTdh6kRz+tl0FS
	PMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=1XGf7gACej9kbNPgdFsUQXmUqxtgVKRJinUN8RGt5ok=;
	b=NItMeT7lHCYtlqn01jfvTfbhb9wsTEcGf1piRmE4zw2hvWPNjnlOKxW3JWpP7Snw33
	ntV9o9e5wLbfhAMbPhTcrP5LSVBbSaXpll8Dr1zIj50wRd0mONsAFvctv2L5523rktqh
	ca6BN6ZxK8Ru5CxV2zM9s6JwzKPhdSZOeb6azVFpzCdMORPOtgkksiKydhCGQPNXWtg0
	PdDyqmPw2JT4VDV3veI9ltjkJEXc1uiinvvFpjvnmI9zb/cL5r7qOpgKOFbAB1yOLaqO
	R4QPRo3fD/zIzdCq1XFQlpry65Y8xbX2g1GqulWrGRlAVEIHg+Pth2l2c5n00XsiXSuw
	CXqA==
X-Gm-Message-State: AOPr4FVyItELAxTDTdM7OF+kScCm2fHwPjdQFljOY/Yja0Kg9Ifa772Otw1gs33DdAvmfA==
X-Received: by 10.107.152.85 with SMTP id a82mr16765486ioe.46.1461335202804;
	Fri, 22 Apr 2016 07:26:42 -0700 (PDT)
Received: from linux-yxv0 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	207sm4079300iou.33.2016.04.22.07.26.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 22 Apr 2016 07:26:42 -0700 (PDT)
Date: Fri, 22 Apr 2016 10:26:38 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160422142638.GA23308@linux-yxv0>
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
X-List-Received-Date: Fri, 22 Apr 2016 14:26:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

ping?

(this is needed to build successfully)

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

