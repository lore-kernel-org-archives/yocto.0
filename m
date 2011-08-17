Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F15F3E011C6
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 10:25:21 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Aug 2011 10:25:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,240,1312182000"; d="scan'208";a="40678490"
Received: from unknown (HELO envy.home) ([10.255.14.197])
	by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2011 10:25:32 -0700
Message-ID: <4E4BF98A.5090501@linux.intel.com>
Date: Wed, 17 Aug 2011 10:25:30 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <9391ba93d0385e0768062df5c4c087d9673a827b.1313598804.git.tom.zanussi@intel.com>
	<0bb19ed262106171280812cbd463b6697e848d4d.1313598804.git.tom.zanussi@intel.com>
In-Reply-To: <0bb19ed262106171280812cbd463b6697e848d4d.1313598804.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 10/12] meta-fri2: make the use of emgd-driver-bin COMMERCIAL
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
X-List-Received-Date: Wed, 17 Aug 2011 17:25:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/17/2011 09:51 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> The emgd-driver-bin recipe now automatically downloads and installs
> EMGD using the new click-through-free tarball, but since the binaries
> still fall under a non-free license, we need to prevent it from being
> accidentally installed in an image.
> 
> We therefore make sure it's labeled in the fri2 layer with
> 'COMMERCIAL_LICENSE'.  In order to build an fri2 image, the user
> now needs to add a 'COMMERCIAL_LICENSE = ""' line to local.conf.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  meta-fri2/conf/layer.conf |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/meta-fri2/conf/layer.conf b/meta-fri2/conf/layer.conf
> index 261cccc..eb17336 100644
> --- a/meta-fri2/conf/layer.conf
> +++ b/meta-fri2/conf/layer.conf
> @@ -10,3 +10,5 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>  BBFILE_COLLECTIONS += "fri2"
>  BBFILE_PATTERN_fri2 := "^${LAYERDIR}/"
>  BBFILE_PRIORITY_fri2 = "6"
> +
> +COMMERCIAL_LICENSE += "emgd-driver-bin"

Can't this be done in the common emgd driver recipe? Seems wrong to have
to specify commercial license for recipe in a machine config... A
different machine could just omit it and the user would not have to add
COMMERCIAL_LICENSE = "" to their local.conf and it would be fine?


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

