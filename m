Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12F65E013DE
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 05:48:24 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Apr 2013 05:46:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,572,1363158000"; d="scan'208";a="304965695"
Received: from unknown (HELO helios.localnet) ([10.255.12.140])
	by orsmga001.jf.intel.com with ESMTP; 29 Apr 2013 05:48:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Satya Swaroop Damarla <satyaswaroop.damarla@gmail.com>,
	Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Mon, 29 Apr 2013 13:48:21 +0100
Message-ID: <1432842.YTVMpTaA9y@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAFMfyzL+CvD4Y5gg-j7zSqCV45CGzLFzJAQR_ZbHepqhAOnMNQ@mail.gmail.com>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
	<5560552.0ejHhnttl9@helios>
	<CAFMfyzL+CvD4Y5gg-j7zSqCV45CGzLFzJAQR_ZbHepqhAOnMNQ@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky: Bitbake nothing provides error
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
X-List-Received-Date: Mon, 29 Apr 2013 12:48:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 29 April 2013 14:39:23 Satya Swaroop Damarla wrote:
> For example consider the recipe "networkmanager"... First check if there is
> a basic recipe "networkmanager" in any of the layers becuase if there is no
> basic recipe then it makes no sense in appending the recipe in your BSP
> layer..
> 
> Try the following command
> 
> find  /home/zaif/ -name "networkmanager*"
> 
> If there is none then you have to create one but if there is one already
> then possibly chnage the version number in meta-gumstix layer to the one
> which is already present in the other layer or viceversa...

If you use the following command instead it will confirm whether your build 
system configuration knows anything about the named recipe:

 bitbake-layers show-recipes "networkmanager*"

If you want to find recipes that exist anywhere in publicly available layers, 
use the recipe search function within the OE layer index:

 http://layers.openembedded.org/layerindex/recipes/

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

