Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E08FE0034C
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 06:57:27 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Jul 2012 06:57:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="167716536"
Received: from unknown (HELO helios.localnet) ([10.252.121.15])
	by azsmga001.ch.intel.com with ESMTP; 13 Jul 2012 06:57:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Date: Fri, 13 Jul 2012 14:57:24 +0100
Message-ID: <1961969.6JloXzyBcB@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <1342132831-4596-1-git-send-email-kevin.strasser@linux.intel.com>
References: <1342132831-4596-1-git-send-email-kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH] ffmpeg: ensure libjpeg dependency is included
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
X-List-Received-Date: Fri, 13 Jul 2012 13:57:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Kevin,

On Thursday 12 July 2012 15:40:31 Kevin Strasser wrote:
> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  recipes-core/base-files/base-files_3.0.14.bbappend |    2 +-
>  .../ffmpeg/ffmpegthumbnailer_2.0.7.bb              |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-core/base-files/base-files_3.0.14.bbappend b/recipes-core/base-files/base-files_3.0.14.bbappend
> index 593a37c..33217fb 100644
> --- a/recipes-core/base-files/base-files_3.0.14.bbappend
> +++ b/recipes-core/base-files/base-files_3.0.14.bbappend
> @@ -1,4 +1,4 @@
>  # Set a hostname
>  hostname_baryon = "baryon"
>  
> -PRINC = "2"
> +PRINC = "3"
> diff --git a/recipes-multimedia/ffmpeg/ffmpegthumbnailer_2.0.7.bb b/recipes-multimedia/ffmpeg/ffmpegthumbnailer_2.0.7.bb
> index ec6d625..4f70ab8 100644
> --- a/recipes-multimedia/ffmpeg/ffmpegthumbnailer_2.0.7.bb
> +++ b/recipes-multimedia/ffmpeg/ffmpegthumbnailer_2.0.7.bb
> @@ -6,7 +6,7 @@ LICENSE = "GPLv2"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
>  SRC_URI = "http://ffmpegthumbnailer.googlecode.com/files/${PN}-${PV}.tar.gz"
>  
> -DEPENDS = "ffmpeg libpng"
> +DEPENDS = "ffmpeg jpeg libpng"
>  
>  SRC_URI[md5sum] = "2b5726894792ef484793dce9568a065a"
>  SRC_URI[sha256sum] = "a71155339d17201a13fc3ebb649b0d00c7ab2d5a8880da071c8157a69c6f612b"
> 

A couple of things:

1) You've bumped PRINC on base-files, I think what you need to do instead is
bump PR on ffmpegthumbnailer.

2) The subject line (shortlog) should refer to ffmpegthumbnailer rather than 
ffmpeg.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

