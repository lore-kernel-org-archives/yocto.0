Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 134A7E00CE5; Sun, 31 Mar 2019 10:59:48 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0E69E00C38
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 10:59:46 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44XNXc0T7Bz60;
	Sun, 31 Mar 2019 19:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1554055184;
	bh=gCMr0HpIm/snOyILbNaxhDLqjCaabVuzMCllDYJ1uBQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EtUzR264d4wq4q8kgbGFdQtfmRVB9D8lnSAb/xsD0/00qHIhPhY9SiK8inD3yv2D3
	PBypYgX8c+A0PuFn3iMdAzg7bBbRDL8fpTl+jup4MBQiHm1TLB+/UaDTGlgEv3r4Ow
	vgEuVkIpZHiXgKibrnpvuJfu1+tBzmozM0BgPuX4NFlxBVv6fZiLxL3QyYJRNQ1IaG
	Jn/lXXMMAtb6i/OLmOpLOTf2VV0okRYq/qJgUOKQK7MTfqQX5x1Bg3PPeQ4f60mPCo
	2GKOrY694yjyZP31TMFj3Zp6V+ujcl3Csdt7Z9VwfcLKkTz40boB4VCq0xDOjpotfK
	MztKI/wT2qJiq5OgT/gtanozll1G3qOQDddUVUgsr4Z+eTRBpODglOtxxaH+D5QEov
	QcJ2bA4/nafnPil8XHKaHwlMRd8UdDIqt4kcMK6tC4GfGGN3UEc9SnSTVk3jyOOmvS
	aec+RCrmKbOZ7j4b8hWQBq5mvrfRslGrwEygvwm9hrM70NhNDz7wMFtAg3HKD1jtjX
	YW4UQjaePx7csFuKGAyNP/9hXpKzOtbxVHifkjpM02oTnmrVk0fSw8+p4svsPQ6Y1K
	R0umpkOV+A1a+OXEbvt7h+DvsUpRRfvsMDvSRqWKJNtP7Uky3kd2QCql1Goi8VLs8J
	TVGBpEAd7p8ICEsLfCbS4q5o=
Date: Sun, 31 Mar 2019 20:59:41 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Armin Kuster <akuster808@gmail.com>
Message-ID: <20190331175941.GB8149@localhost>
References: <20190331172900.28894-1-akuster808@gmail.com>
	<20190331172900.28894-3-akuster808@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190331172900.28894-3-akuster808@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 3/4] linux-yocto: make bbappend version neutral
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
X-List-Received-Date: Sun, 31 Mar 2019 17:59:48 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun, Mar 31, 2019 at 10:28:59AM -0700, Armin Kuster wrote:
> update apparmor configs
> 
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-kernel/linux/linux-yocto/apparmor.cfg        | 12 +++++++-----
>  .../linux/linux-yocto/apparmor_on_boot.cfg           |  1 +
>  ...nux-yocto_4.%.bbappend => linux-yocto_%.bbappend} |  1 +
>  3 files changed, 9 insertions(+), 5 deletions(-)
>  create mode 100644 recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
>  rename recipes-kernel/linux/{linux-yocto_4.%.bbappend => linux-yocto_%.bbappend} (78%)
> 
> diff --git a/recipes-kernel/linux/linux-yocto/apparmor.cfg b/recipes-kernel/linux/linux-yocto/apparmor.cfg
> index 1dc4168..b5f9bb2 100644
> --- a/recipes-kernel/linux/linux-yocto/apparmor.cfg
> +++ b/recipes-kernel/linux/linux-yocto/apparmor.cfg
> @@ -1,13 +1,15 @@
>  CONFIG_AUDIT=y
> -CONFIG_AUDITSYSCALL=y
> -CONFIG_AUDIT_WATCH=y
> -CONFIG_AUDIT_TREE=y
>  # CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
> +CONFIG_SECURITY_NETWORK=y
> +# CONFIG_SECURITY_NETWORK_XFRM is not set
>  CONFIG_SECURITY_PATH=y
>  # CONFIG_SECURITY_SELINUX is not set
>  CONFIG_SECURITY_APPARMOR=y
> -CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
>  CONFIG_SECURITY_APPARMOR_HASH=y
>  CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
> +# CONFIG_SECURITY_APPARMOR_DEBUG is not set
>  CONFIG_INTEGRITY_AUDIT=y
> -# CONFIG_DEFAULT_SECURITY_APPARMOR is not set
> +CONFIG_DEFAULT_SECURITY_APPARMOR=y
> +# CONFIG_DEFAULT_SECURITY_DAC is not set
> +CONFIG_DEFAULT_SECURITY="apparmor"
> +CONFIG_AUDIT_GENERIC=y
> diff --git a/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg b/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
> new file mode 100644
> index 0000000..fc35740
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
> @@ -0,0 +1 @@
> +CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
>...

This and some of the other touched options are removed in kernel 5.1, 
replaced with a different CONFIG_LSM mechanism.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


