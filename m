Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21EABE002A8
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 04:10:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jul 2012 04:10:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="191208682"
Received: from unknown (HELO helios.localnet) ([10.252.120.253])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2012 04:10:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Date: Wed, 11 Jul 2012 12:10:16 +0100
Message-ID: <1673385.fOrKr77KPT@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <1341950817-8026-1-git-send-email-kevin.strasser@linux.intel.com>
References: <1341950817-8026-1-git-send-email-kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] meta-baryon: add build documentation
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
X-List-Received-Date: Wed, 11 Jul 2012 11:10:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 10 July 2012 13:06:57 Kevin Strasser wrote:
> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  README |   18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/README b/README
> index 2a9c77d..bdd2269 100644
> --- a/README
> +++ b/README
> @@ -27,6 +27,24 @@ to yocto@yoctoproject.org with '[meta-baryon]' in the
> subject.
> 
> 
> 
> +Building the meta-baryon layer
> +------------------------------
> +
> +After you download meta-baryon, be sure add its location to bblayers.conf.
> +
> +The meta-baryon layer uses the 'lame' package, which has a license that
> +must be whitelisted by adding the string "commercial" to the
> +LICENSE_FLAGS_WHITELIST variable in your local.conf. For example:
> +
> +  LICENSE_FLAGS_WHITELIST = "commercial"
> +
> +You should then be able to build the image as such:
> +
> +  $ source oe-init-build-env
> +  $ bitbake baryon-image
> +
> +
> +
>  License
>  -------

Great stuff. Only thing missing is setting DISTRO = "baryon" in your local.conf 
- this is optional, but setting it will cut down DISTRO_FEATURES to something 
a bit more appropriate for a headless NAS type device as well as identify the 
resulting image as Baryon.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

