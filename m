Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 278FCE00476;
	Thu,  6 Feb 2014 08:04:44 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Feb 2014 08:03:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,793,1384329600"; d="scan'208";a="477037763"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.123.186])
	by fmsmga002.fm.intel.com with ESMTP; 06 Feb 2014 08:02:13 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Edward Vidal <vidal.develone@gmail.com>
Date: Thu, 06 Feb 2014 16:02:06 +0000
Message-ID: <1590342.Kfn9U5XaVe@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.12.9-301.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <CANwz6nx3WLC6b7jjFnNDCc6hXJtvRbPK5yw0pZ+sVJ8foX5HRQ@mail.gmail.com>
References: <CANwz6nx3WLC6b7jjFnNDCc6hXJtvRbPK5yw0pZ+sVJ8foX5HRQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org,
	"meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>
Subject: Re: meta-oe x264
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
X-List-Received-Date: Thu, 06 Feb 2014 16:04:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 06 February 2014 08:22:06 Edward Vidal wrote:
> Hello All,
> In Dec 13 I used meta-oe on a dylan branch and x264 was included as part of
> meta-oe/meta-oe/recipes-multimedia/x264.
> Build Configuration:
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Fedora-18"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "zedboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4.2"
> TUNE_FEATURES     = " armv7a vfp neon zynq"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "dylan:4e399f08d596197859214fdb3b06403b87bf8789"
> meta-oe
> meta-multimedia   = "dylan:44754206632dd5b0725aeb43e99e4ff9e0245dca"
> meta-xilinx
> meta-kc705
> meta-zc702
> meta-zedboard     = "dylan:cf9571203be0af5fc654952d3f00e0a7e0fb1174"
> 
> I am working with the dora branch and this is now not included.
> Does anyone know the reason that x264 was removed from the dora branch or
> has is just not been added.  My custom-image includes it and it built okay.

x264 was moved to OE-Core in dora, so you should still have it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

