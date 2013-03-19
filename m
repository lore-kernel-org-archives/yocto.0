Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1627DE006AD
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:35:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 19 Mar 2013 09:35:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,872,1355126400"; d="scan'208";a="216484401"
Received: from unknown (HELO helios.localnet) ([10.255.13.154])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Mar 2013 09:35:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Christopher Larson <kergoth@gmail.com>
Date: Tue, 19 Mar 2013 16:35:26 +0000
Message-ID: <1596761.mqT2hCOboR@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-25-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <1363660410-31689-1-git-send-email-kergoth@gmail.com>
References: <1363660410-31689-1-git-send-email-kergoth@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt3][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 16:35:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 18 March 2013 19:33:30 Christopher Larson wrote:
> From: Christopher Larson <chris_larson@mentor.com>
> 
> bitbake handles immediate expansions of LAYERDIR for us automatically.
> 
> Signed-off-by: Christopher Larson <chris_larson@mentor.com>
> ---
>  conf/layer.conf | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/conf/layer.conf b/conf/layer.conf
> index f4597db..84ab5f7 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -1,10 +1,10 @@
>  # We have a conf and classes directory, add to BBPATH
> -BBPATH := "${BBPATH}:${LAYERDIR}"
> +BBPATH .= ":${LAYERDIR}"
> 
>  # We have a packages directory, add to BBFILES
> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb"
> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb"
> 
>  BBFILE_COLLECTIONS += "qt3"
> -BBFILE_PATTERN_qt3 := "^${LAYERDIR}/"
> +BBFILE_PATTERN_qt3 = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_qt3 = "6"

Merged, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

