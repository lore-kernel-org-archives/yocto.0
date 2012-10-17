Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 186C6E013DB
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 14:07:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Oct 2012 14:07:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,602,1344236400"; d="scan'208";a="207351662"
Received: from unknown (HELO [10.255.14.120]) ([10.255.14.120])
	by orsmga001.jf.intel.com with ESMTP; 17 Oct 2012 14:07:26 -0700
Message-ID: <1350508046.5587.13.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Wed, 17 Oct 2012 16:07:26 -0500
In-Reply-To: <1350297001-10910-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1350297001-10910-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH] ffmpeg: set LICENSE_FLAGS
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
X-List-Received-Date: Wed, 17 Oct 2012 21:07:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-10-15 at 11:30 +0100, Paul Eggleton wrote:
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>  common/recipes-multimedia/ffmpeg/ffmpeg.inc |    2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg.inc b/common/recipes-multimedia/ffmpeg/ffmpeg.inc
> index 96da7c2..3ce950e 100644
> --- a/common/recipes-multimedia/ffmpeg/ffmpeg.inc
> +++ b/common/recipes-multimedia/ffmpeg/ffmpeg.inc
> @@ -5,6 +5,8 @@ SECTION = "libs"
>  PRIORITY = "optional"
>  LICENSE = "GPLv2+ & LGPLv2.1+"
>  
> +LICENSE_FLAGS = "commercial"
> +
>  ARM_INSTRUCTION_SET = "arm"
>  
>  DEPENDS = "zlib libogg libvorbis libtheora liba52 libva yasm-native"

Pulled into meta-intel/master.

Thanks,

Tom


