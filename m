Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D547E014BD
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 07:27:19 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Apr 2013 07:27:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,574,1363158000"; d="scan'208";a="328235698"
Received: from unknown (HELO helios.localnet) ([10.255.12.140])
	by orsmga002.jf.intel.com with ESMTP; 29 Apr 2013 07:27:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Katu Txakur <katutxakurra@gmail.com>
Date: Mon, 29 Apr 2013 15:27:09 +0100
Message-ID: <1880759.tbsCZiBHaq@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAM1ZcoXyXBizAYoHG0rXXbyZ1QaAL6eUFD1ZstwoAGb_43qUmw@mail.gmail.com>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
	<1432842.YTVMpTaA9y@helios>
	<CAM1ZcoXyXBizAYoHG0rXXbyZ1QaAL6eUFD1ZstwoAGb_43qUmw@mail.gmail.com>
MIME-Version: 1.0
Cc: Zafrullah Syed <zafrullahmehdi@gmail.com>,
	Satya Swaroop Damarla <satyaswaroop.damarla@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 29 Apr 2013 14:27:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 29 April 2013 15:07:27 Katu Txakur wrote:
> The instructions in
> https://github.com/gumstix/Gumstix-YoctoProject-Repo/blob/master/README.md
> worked
> for me, at least you can get them and have a look at the
> build/conf/local.conf file.
> 
> Paul, how can get the recipes and related files that I find in the
> layerindex?

Typically, if you find a recipe in the layer index, assuming it isn't a 
distribution layer, you would add the layer it is contained in to your 
conf/bblayers.conf rather than trying to extract the single recipe and all the 
files it needs. To do this:

1) Click on the layer link on the right hand side of the recipe list or within 
the page for the recipe

2) Grab the git URL for the layer repository (assuming JavaScript is enabled 
in your browser you can click once on the arrow on the left to select the text 
and then you can copy it easily)

3) Clone that repository somewhere on your machine

4) Add the path to the layer (including the subdirectory if specified on the 
layer index page for the layer) to conf/bblayers.conf

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

