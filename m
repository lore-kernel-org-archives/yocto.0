Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63A68E00D08; Thu,  4 Apr 2019 21:59:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75FD3E00CD6
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 21:59:55 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44b70T1ddFz3n;
	Fri,  5 Apr 2019 06:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1554440393;
	bh=dPTruWwCirt6Iihv7NJjLAb13d7LyrxXXtbuYPU07OA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UHXUe8UJ5pemyoNpsEMhsV3awmZXESmziaA5KevvfyLbHdpDgU2bqqoK67gmQBjuw
	Gk7D7i3I0VMlVBqcDH1BNGUmpSEpNqIkEK+T9r50rhZkfSry5sRqvCTNeqZovXLkVZ
	p4AN2sqnEWfGsvUdAVBZWjx4hvKr4aAqBjaeB/F7WFLxVOLrtEEI98vpw8gv/ZEDiX
	tFlh4cvD3cc1euDCSeuzWX6kyO4sWsAQ2McRfEJMNenrx5U482M6ZYy8SSn4W/N9Wg
	VGPcDvzQI6d7iNPSm2okLvKUTzJfGQB3EeqOmtr2DcKgOj5lP2pgItF3WjzFvz4a5N
	04aBSTEcT4jA8bu20RrIWpwo7jUW3aF4J8QczSFHh7BfVgnor/P3lPU/6F/CcsuDSk
	koe5jbATIa5p9Zn/mpn+Naig2K2NVe4G09rHH8OzO2+cYEKav7sl7Nd7lo9yOlQDHs
	mkYBuJMUil8I4AfiJJg1qawxMpG9EIpTzEf/zFpqICWZ0P1RQSQ//sSr0qf5OizILO
	f/7Ey5W7VVbfW92aqQ8FkN4gaZDxfH2z3a4DWuj7NmgtrI/V+br75NUsfQQE+V6M7P
	rVoJ7P3LgN+R5wuM0L7NkoRGZD81og3GXWvS/aMzdsGmsO2PoG+/1N9Bf/RO69AM+V
	Zmv79Lq9VEPSRhqCQk4L6lXI=
Date: Fri, 5 Apr 2019 07:59:51 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Armin Kuster <akuster808@gmail.com>
Message-ID: <20190405045951.GA28935@localhost>
References: <1554416266-28620-1-git-send-email-akuster808@gmail.com>
	<1554416266-28620-2-git-send-email-akuster808@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1554416266-28620-2-git-send-email-akuster808@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/2] sssd: add DISTRO_FEATURE sssd
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
X-List-Received-Date: Fri, 05 Apr 2019 04:59:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri, Apr 05, 2019 at 03:47:46AM +0530, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/sssd/sssd_1.16.4.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
> index 34bc8c8..d6a308c 100644
> --- a/recipes-security/sssd/sssd_1.16.4.bb
> +++ b/recipes-security/sssd/sssd_1.16.4.bb
> @@ -16,7 +16,7 @@ SRC_URI[sha256sum] = "6bb212cd6b75b918e945c24e7c3f95a486fb54d7f7d489a9334cfa1a1f
>  
>  inherit autotools pkgconfig gettext python-dir distro_features_check
>  
> -REQUIRED_DISTRO_FEATURES = "pam"
> +REQUIRED_DISTRO_FEATURES = "pam sssd"
>...

Adding a distro feature for a leaf package is wrong.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


