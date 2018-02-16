Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB3A8E00E94; Thu, 15 Feb 2018 20:54:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39620E00D99
	for <yocto@yoctoproject.org>; Thu, 15 Feb 2018 20:54:53 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Feb 2018 20:54:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,519,1511856000"; d="scan'208";a="20581600"
Received: from anmitta2-mobl1.gar.corp.intel.com (HELO [10.255.162.132])
	([10.255.162.132])
	by fmsmga002.fm.intel.com with ESMTP; 15 Feb 2018 20:54:51 -0800
To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	richard.purdie@linuxfoundation.org
References: <cover.1517934700.git.bruce.ashfield@windriver.com>
	<2d69d47f2413a8e1b969303c9d985869b9abc847.1517934700.git.bruce.ashfield@windriver.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <7b1631bc-be63-91c5-04b0-085432488822@intel.com>
Date: Fri, 16 Feb 2018 12:54:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <2d69d47f2413a8e1b969303c9d985869b9abc847.1517934700.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/3] poky: update default kernel to v4.15
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
X-List-Received-Date: Fri, 16 Feb 2018 04:54:54 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Bruce,

On 02/07/2018 12:34 AM, Bruce Ashfield wrote:
> Updating the default kernel for qemu* to be v4.15. This allows easy
> integration of the latest fixes/features for new BSPs. 4.14 is also
> available as a LTS kernel option.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  meta-poky/conf/distro/poky.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 3dac26fa3c7b..441986c190bf 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -21,7 +21,7 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
>  
>  DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
>  
> -PREFERRED_VERSION_linux-yocto ?= "4.12%"
> +PREFERRED_VERSION_linux-yocto ?= "4.14%"

Should this have been 4.15?

Thanks,
Anuj

>  
>  SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
>  SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
> 


