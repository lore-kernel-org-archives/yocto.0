Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 861A14C800FB
	for <yocto@yoctoproject.org>; Tue, 17 May 2011 14:46:51 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 May 2011 12:46:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,226,1304319600"; 
   d="scan'208";a="3534924"
Received: from unknown (HELO [10.255.12.109]) ([10.255.12.109])
	by fmsmga001.fm.intel.com with ESMTP; 17 May 2011 12:46:50 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Otavio Salvador <otavio@ossystems.com.br>
In-Reply-To: <1305656845-15849-1-git-send-email-otavio@ossystems.com.br>
References: <1305656845-15849-1-git-send-email-otavio@ossystems.com.br>
Date: Tue, 17 May 2011 14:45:51 -0500
Message-ID: <1305661551.21191.677.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] README.sources: use git.yoctoproject.org as server for the BSP repository
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 17 May 2011 19:46:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-05-17 at 11:27 -0700, Otavio Salvador wrote:
> Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
> ---

Thanks for noticing and updating this!

Pulled into meta-intel/master.

Tom

>  meta-crownbay/README.sources     |    2 +-
>  meta-emenlow/README.sources      |    2 +-
>  meta-fishriver/README.sources    |    2 +-
>  meta-jasperforest/README.sources |    2 +-
>  meta-n450/README.sources         |    2 +-
>  meta-sugarbay/README.sources     |    2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/meta-crownbay/README.sources b/meta-crownbay/README.sources
> index 8814e70..5c8b5c7 100644
> --- a/meta-crownbay/README.sources
> +++ b/meta-crownbay/README.sources
> @@ -14,4 +14,4 @@ addition to the code contained in this BSP, can also be found at the
>  following locations:
>  
>  git://git.yoctoproject.org/poky.git
> -git://git.pokylinux.org/meta-intel
> +git://git.yoctoproject.org/meta-intel
> diff --git a/meta-emenlow/README.sources b/meta-emenlow/README.sources
> index 8814e70..5c8b5c7 100644
> --- a/meta-emenlow/README.sources
> +++ b/meta-emenlow/README.sources
> @@ -14,4 +14,4 @@ addition to the code contained in this BSP, can also be found at the
>  following locations:
>  
>  git://git.yoctoproject.org/poky.git
> -git://git.pokylinux.org/meta-intel
> +git://git.yoctoproject.org/meta-intel
> diff --git a/meta-fishriver/README.sources b/meta-fishriver/README.sources
> index 8814e70..5c8b5c7 100644
> --- a/meta-fishriver/README.sources
> +++ b/meta-fishriver/README.sources
> @@ -14,4 +14,4 @@ addition to the code contained in this BSP, can also be found at the
>  following locations:
>  
>  git://git.yoctoproject.org/poky.git
> -git://git.pokylinux.org/meta-intel
> +git://git.yoctoproject.org/meta-intel
> diff --git a/meta-jasperforest/README.sources b/meta-jasperforest/README.sources
> index 8814e70..5c8b5c7 100644
> --- a/meta-jasperforest/README.sources
> +++ b/meta-jasperforest/README.sources
> @@ -14,4 +14,4 @@ addition to the code contained in this BSP, can also be found at the
>  following locations:
>  
>  git://git.yoctoproject.org/poky.git
> -git://git.pokylinux.org/meta-intel
> +git://git.yoctoproject.org/meta-intel
> diff --git a/meta-n450/README.sources b/meta-n450/README.sources
> index 8814e70..5c8b5c7 100644
> --- a/meta-n450/README.sources
> +++ b/meta-n450/README.sources
> @@ -14,4 +14,4 @@ addition to the code contained in this BSP, can also be found at the
>  following locations:
>  
>  git://git.yoctoproject.org/poky.git
> -git://git.pokylinux.org/meta-intel
> +git://git.yoctoproject.org/meta-intel
> diff --git a/meta-sugarbay/README.sources b/meta-sugarbay/README.sources
> index 8814e70..5c8b5c7 100644
> --- a/meta-sugarbay/README.sources
> +++ b/meta-sugarbay/README.sources
> @@ -14,4 +14,4 @@ addition to the code contained in this BSP, can also be found at the
>  following locations:
>  
>  git://git.yoctoproject.org/poky.git
> -git://git.pokylinux.org/meta-intel
> +git://git.yoctoproject.org/meta-intel



