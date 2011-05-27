Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7694B4C8043A
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 16:55:50 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 May 2011 14:55:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; 
   d="scan'208";a="3152889"
Received: from doubt.jf.intel.com (HELO [10.24.155.80]) ([10.24.155.80])
	by azsmga001.ch.intel.com with ESMTP; 27 May 2011 14:55:49 -0700
Message-ID: <4DE01DD3.80506@linux.intel.com>
Date: Fri, 27 May 2011 14:55:31 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1306420608.git.tom.zanussi@intel.com>
	<f113449eb132df7c8a4c45ad8719ecc3ec84a6b5.1306420608.git.tom.zanussi@intel.com>
In-Reply-To: <f113449eb132df7c8a4c45ad8719ecc3ec84a6b5.1306420608.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-intel: fix BBFILE_COLLECTIONS overrides
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
X-List-Received-Date: Fri, 27 May 2011 21:55:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/26/2011 08:40 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Several BBFILE_COLLECTIONS assignments in the layer.confs for these
> meta-intel layers added unwanted machine overrides, resulting in
> truncated values for this variable - remove them.

Why the difference between crownbay and the other BSPs? Crownbay uses
_append.

--
Darren

> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  meta-crownbay/conf/layer.conf     |    4 ++--
>  meta-fishriver/conf/layer.conf    |    2 +-
>  meta-jasperforest/conf/layer.conf |    2 +-
>  meta-sugarbay/conf/layer.conf     |    2 +-
>  4 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/meta-crownbay/conf/layer.conf b/meta-crownbay/conf/layer.conf
> index cee4ba2..d15579d 100644
> --- a/meta-crownbay/conf/layer.conf
> +++ b/meta-crownbay/conf/layer.conf
> @@ -5,10 +5,10 @@ BBPATH := "${BBPATH}:${LAYERDIR}"
>  BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>  	${LAYERDIR}/recipes-*/*/*.bbappend"
>  
> -BBFILE_COLLECTIONS_crownbay += "crownbay"
> +BBFILE_COLLECTIONS_append_crownbay += "crownbay"
>  BBFILE_PATTERN_crownbay := "^${LAYERDIR}/"
>  BBFILE_PRIORITY_crownbay = "6"
>  
> -BBFILE_COLLECTIONS_crownbay-noemgd += "crownbay-noemgd"
> +BBFILE_COLLECTIONS_append_crownbay-noemgd += "crownbay-noemgd"
>  BBFILE_PATTERN_crownbay-noemgd := "^${LAYERDIR}/"
>  BBFILE_PRIORITY_crownbay-noemgd = "6"
> diff --git a/meta-fishriver/conf/layer.conf b/meta-fishriver/conf/layer.conf
> index 595bbe3..9162b5e 100644
> --- a/meta-fishriver/conf/layer.conf
> +++ b/meta-fishriver/conf/layer.conf
> @@ -5,6 +5,6 @@ BBPATH := "${BBPATH}:${LAYERDIR}"
>  BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>  	${LAYERDIR}/recipes-*/*/*.bbappend"
>  
> -BBFILE_COLLECTIONS_fishriver += "fishriver"
> +BBFILE_COLLECTIONS += "fishriver"
>  BBFILE_PATTERN_fishriver := "^${LAYERDIR}/"
>  BBFILE_PRIORITY_fishriver = "6"
> diff --git a/meta-jasperforest/conf/layer.conf b/meta-jasperforest/conf/layer.conf
> index 564bb1d..8125659 100644
> --- a/meta-jasperforest/conf/layer.conf
> +++ b/meta-jasperforest/conf/layer.conf
> @@ -7,6 +7,6 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>  	${LAYERDIR}/../common/recipes-*/*/*.bb \
>  	${LAYERDIR}/../common/recipes-*/*/*.bbappend"
>  
> -BBFILE_COLLECTIONS_jasperforest += "jasperforest"
> +BBFILE_COLLECTIONS += "jasperforest"
>  BBFILE_PATTERN_jasperforest := "^${LAYERDIR}/"
>  BBFILE_PRIORITY_jasperforest = "6"
> diff --git a/meta-sugarbay/conf/layer.conf b/meta-sugarbay/conf/layer.conf
> index e23d123..d5f78e1 100644
> --- a/meta-sugarbay/conf/layer.conf
> +++ b/meta-sugarbay/conf/layer.conf
> @@ -7,6 +7,6 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>  	${LAYERDIR}/../common/recipes-*/*/*.bb \
>  	${LAYERDIR}/../common/recipes-*/*/*.bbappend"
>  
> -BBFILE_COLLECTIONS_sugarbay += "sugarbay"
> +BBFILE_COLLECTIONS += "sugarbay"
>  BBFILE_PATTERN_sugarbay := "^${LAYERDIR}/"
>  BBFILE_PRIORITY_sugarbay = "6"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

