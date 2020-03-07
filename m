Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web11.21034.1583619490039983015
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Mar 2020 14:18:10 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 2602040C2E;
	Sat,  7 Mar 2020 22:18:09 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lLAJpWwRO596; Sat,  7 Mar 2020 22:18:09 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id E8C5E40AB5;
	Sat,  7 Mar 2020 22:18:07 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 52492174455; Sat,  7 Mar 2020 17:18:07 -0500 (EST)
Date: Sat, 7 Mar 2020 17:18:07 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: akuster <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-security][PATCH] libseccomp: update to 2.4.3
Message-ID: <20200307221807.GG1578@denix.org>
References: <20200307203849.3117-1-akuster808@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200307203849.3117-1-akuster808@gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Mar 07, 2020 at 08:38:49PM +0000, akuster wrote:
> dropped patch now included in update

Do you want to remove the patch?


> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  .../libseccomp/{libseccomp_2.4.2.bb => libseccomp_2.4.3.bb}    | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>  rename recipes-security/libseccomp/{libseccomp_2.4.2.bb => libseccomp_2.4.3.bb} (90%)
> 
> diff --git a/recipes-security/libseccomp/libseccomp_2.4.2.bb b/recipes-security/libseccomp/libseccomp_2.4.3.bb
> similarity index 90%
> rename from recipes-security/libseccomp/libseccomp_2.4.2.bb
> rename to recipes-security/libseccomp/libseccomp_2.4.3.bb
> index 07db82a..9ca41e6 100644
> --- a/recipes-security/libseccomp/libseccomp_2.4.2.bb
> +++ b/recipes-security/libseccomp/libseccomp_2.4.3.bb
> @@ -4,10 +4,9 @@ SECTION = "security"
>  LICENSE = "LGPL-2.1"
>  LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
>  
> -SRCREV = "1b6cfd1fc0b7499a28c24299a93a80bd18619563"
> +SRCREV = "1dde9d94e0848e12da20602ca38032b91d521427"
>  
>  SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.4 \
> -           file://0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch \
>             file://run-ptest \
>  "
>  
> -- 
> 2.17.1
> 

> 

