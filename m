Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5302AE00344
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 03:49:35 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Jul 2012 03:49:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="191681715"
Received: from unknown (HELO helios.localnet) ([10.252.121.24])
	by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2012 03:49:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 12 Jul 2012 11:49:33 +0100
Message-ID: <2591725.ClqI3bH3Yi@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <1342043026-7382-1-git-send-email-kevin.strasser@linux.intel.com>
References: <1342043026-7382-1-git-send-email-kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [meta-baryon] add build documentation
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
X-List-Received-Date: Thu, 12 Jul 2012 10:49:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 11 July 2012 14:43:46 Kevin Strasser wrote:
> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  README |   24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/README b/README
> index 2a9c77d..10a338a 100644
> --- a/README
> +++ b/README
> @@ -27,6 +27,30 @@ to yocto@yoctoproject.org with '[meta-baryon]' in the subject.
>  
>  
>  
> +Building the meta-baryon layer
> +------------------------------
> +
> +After you download meta-baryon, be sure to add its location to bblayers.conf.
> +
> +The meta-baryon layer uses the 'lame' package, which has a license that
> +must be whitelisted by adding the string "commercial" to the
> +LICENSE_FLAGS_WHITELIST variable in your local.conf. For example:
> +
> +  LICENSE_FLAGS_WHITELIST = "commercial"
> +
> +Optionally, you can set the DISTRO flag to both identify the image as Baryon 
> +and cut down DISTRO_FEATURES to something more appropriate for a headless NAS 
> +type device. For example:
> +
> +  DISTRO = "baryon"
> +
> +You should then be able to build the image as such:
> +
> +  $ . ./oe-init-build-env
> +  $ bitbake baryon-image
> +
> +
> +
>  License
>  -------


Merged to meta-baryon master, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

