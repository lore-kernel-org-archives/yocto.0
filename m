Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E948FE0147A
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 02:48:40 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Mar 2013 02:48:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,870,1355126400"; d="scan'208";a="308671824"
Received: from unknown (HELO helios.localnet) ([10.255.13.154])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2013 02:48:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Christopher Larson <kergoth@gmail.com>, yocto@yoctoproject.org
Date: Tue, 19 Mar 2013 09:48:38 +0000
Message-ID: <2284053.in5ZnLsti8@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-25-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <1363655625-11817-1-git-send-email-kergoth@gmail.com>
References: <1363655625-11817-1-git-send-email-kergoth@gmail.com>
MIME-Version: 1.0
Subject: Re: [meta-baryon][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 09:48:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 18 March 2013 18:13:45 Christopher Larson wrote:
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
> index 0d33e3b..5515047 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -2,12 +2,12 @@
>  # Copyright 2011 Intel Corporation
> 
>  # We have a conf directory, prepend to BBPATH to prefer our versions
> -BBPATH := "${LAYERDIR}:${BBPATH}"
> +BBPATH =. "${LAYERDIR}:"
> 
>  # We have recipes-* directories, add to BBFILES
> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb
> ${LAYERDIR}/recipes-*/*/*.bbappend" +BBFILES +=
> "${LAYERDIR}/recipes-*/*/*.bb ${LAYERDIR}/recipes-*/*/*.bbappend"
> 
>  BBFILE_COLLECTIONS += "meta-baryon"
> -BBFILE_PATTERN_meta-baryon := "^${LAYERDIR}/"
> +BBFILE_PATTERN_meta-baryon = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_meta-baryon = "7"

Merged this and the denzil/danny versions, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

