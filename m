Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2753BE0137A
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:59:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 May 2012 14:58:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="148572031"
Received: from unknown (HELO envy.home) ([10.7.199.162])
	by orsmga002.jf.intel.com with ESMTP; 25 May 2012 14:58:49 -0700
Message-ID: <4FC0005F.9020200@linux.intel.com>
Date: Fri, 25 May 2012 14:57:51 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1337979215.git.tom.zanussi@intel.com>
	<f64ab3a8c976b379195b459ca8e4c9e8ab440bd6.1337979216.git.tom.zanussi@intel.com>
In-Reply-To: <f64ab3a8c976b379195b459ca8e4c9e8ab440bd6.1337979216.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-intel: update README.sources with denzil link
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
X-List-Received-Date: Fri, 25 May 2012 21:59:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/25/2012 02:00 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Update the README.sources for all the meta-intel BSPs to reflect final
> Yocto tarball location for denzil.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  meta-cedartrail/README.sources   |    2 +-
>  meta-crownbay/README.sources     |    2 +-
>  meta-emenlow/README.sources      |    2 +-
>  meta-fishriver/README.sources    |    2 +-
>  meta-fri2/README.sources         |    2 +-
>  meta-jasperforest/README.sources |    2 +-
>  meta-n450/README.sources         |    2 +-
>  meta-romley/README.sources       |    2 +-
>  meta-sugarbay/README.sources     |    2 +-
>  meta-sys940x/README.sources      |    3 +--
>  10 files changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/meta-cedartrail/README.sources b/meta-cedartrail/README.sources
> index 8e006fb..76180f1 100755
> --- a/meta-cedartrail/README.sources
> +++ b/meta-cedartrail/README.sources
> @@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can be found at the
>  following location:
>  
> -http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
> +http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
>  
>  The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can also be found at the
> diff --git a/meta-crownbay/README.sources b/meta-crownbay/README.sources
> index 8e006fb..76180f1 100644
> --- a/meta-crownbay/README.sources
> +++ b/meta-crownbay/README.sources
> @@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can be found at the
>  following location:
>  
> -http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
> +http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
>  
>  The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can also be found at the
> diff --git a/meta-emenlow/README.sources b/meta-emenlow/README.sources
> index 8e006fb..76180f1 100644
> --- a/meta-emenlow/README.sources
> +++ b/meta-emenlow/README.sources
> @@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can be found at the
>  following location:
>  
> -http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
> +http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
>  
>  The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can also be found at the
> diff --git a/meta-fishriver/README.sources b/meta-fishriver/README.sources
> index 8e006fb..76180f1 100644
> --- a/meta-fishriver/README.sources
> +++ b/meta-fishriver/README.sources
> @@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can be found at the
>  following location:
>  
> -http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
> +http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
>  
>  The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can also be found at the
> diff --git a/meta-fri2/README.sources b/meta-fri2/README.sources
> index 8e006fb..76180f1 100644
> --- a/meta-fri2/README.sources
> +++ b/meta-fri2/README.sources
> @@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can be found at the
>  following location:
>  
> -http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
> +http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
>  
>  The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can also be found at the
> diff --git a/meta-jasperforest/README.sources b/meta-jasperforest/README.sources
> index 8e006fb..76180f1 100644
> --- a/meta-jasperforest/README.sources
> +++ b/meta-jasperforest/README.sources
> @@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can be found at the
>  following location:
>  
> -http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
> +http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
>  
>  The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can also be found at the
> diff --git a/meta-n450/README.sources b/meta-n450/README.sources
> index 8e006fb..76180f1 100644
> --- a/meta-n450/README.sources
> +++ b/meta-n450/README.sources
> @@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can be found at the
>  following location:
>  
> -http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
> +http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
>  
>  The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can also be found at the
> diff --git a/meta-romley/README.sources b/meta-romley/README.sources
> index 8e006fb..76180f1 100644
> --- a/meta-romley/README.sources
> +++ b/meta-romley/README.sources
> @@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can be found at the
>  following location:
>  
> -http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
> +http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
>  
>  The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can also be found at the
> diff --git a/meta-sugarbay/README.sources b/meta-sugarbay/README.sources
> index 8e006fb..76180f1 100644
> --- a/meta-sugarbay/README.sources
> +++ b/meta-sugarbay/README.sources
> @@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can be found at the
>  following location:
>  
> -http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
> +http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
>  
>  The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can also be found at the
> diff --git a/meta-sys940x/README.sources b/meta-sys940x/README.sources
> index c6cab4d..76180f1 100644
> --- a/meta-sys940x/README.sources
> +++ b/meta-sys940x/README.sources
> @@ -7,8 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can be found at the
>  following location:
>  
> -# FIXME: update the following link after the Yocto Project 1.2 release
> -http://www.yoctoproject.org/downloads/yocto-1.2/poky-RELEASENAME-6.0.tar.bz2
> +http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
>  
>  The metadata used to generate the images shipped with this BSP, in
>  addition to the code contained in this BSP, can also be found at the

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

