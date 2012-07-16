Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43966E0034D
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 16:07:53 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jul 2012 16:07:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="193621453"
Received: from unknown (HELO helios.localnet) ([10.252.121.26])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jul 2012 16:07:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Jul 2012 00:07:51 +0100
Message-ID: <6049950.TBxx1H5yMr@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <1342221542-17995-1-git-send-email-kevin.strasser@linux.intel.com>
References: <1342221542-17995-1-git-send-email-kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [meta-baryon][PATCH 1/2] ffmpegthumbnailer: enable jpeg support
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
X-List-Received-Date: Mon, 16 Jul 2012 23:07:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 13 July 2012 16:19:01 Kevin Strasser wrote:
> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  .../ffmpeg/ffmpegthumbnailer_2.0.7.bb              |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-multimedia/ffmpeg/ffmpegthumbnailer_2.0.7.bb
> b/recipes-multimedia/ffmpeg/ffmpegthumbnailer_2.0.7.bb index
> ec6d625..92e484c 100644
> --- a/recipes-multimedia/ffmpeg/ffmpegthumbnailer_2.0.7.bb
> +++ b/recipes-multimedia/ffmpeg/ffmpegthumbnailer_2.0.7.bb
> @@ -6,11 +6,11 @@ LICENSE = "GPLv2"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
>  SRC_URI =
> "http://ffmpegthumbnailer.googlecode.com/files/${PN}-${PV}.tar.gz"
> 
> -DEPENDS = "ffmpeg libpng"
> +DEPENDS = "ffmpeg jpeg libpng"
> 
>  SRC_URI[md5sum] = "2b5726894792ef484793dce9568a065a"
>  SRC_URI[sha256sum] =
> "a71155339d17201a13fc3ebb649b0d00c7ab2d5a8880da071c8157a69c6f612b"
> 
> -PR = "r0"
> +PR = "r1"
> 
>  inherit autotools

Merged these two to meta-baryon master, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

