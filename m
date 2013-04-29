Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B908E0137F
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 02:09:44 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 29 Apr 2013 02:09:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,572,1363158000"; d="scan'208";a="325870317"
Received: from unknown (HELO helios.localnet) ([10.255.12.140])
	by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2013 02:09:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Apr 2013 10:09:41 +0100
Message-ID: <1419490.bYp03IPXpY@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
MIME-Version: 1.0
Cc: Zafrullah Syed <zafrullahmehdi@gmail.com>
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
X-List-Received-Date: Mon, 29 Apr 2013 09:09:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 29 April 2013 11:01:54 Zafrullah Syed wrote:
> I am trying to
> build<http://gumstix.org/software-development/yocto-project.html>a bitbake
> target for my Overo
> Series RobOvero board(PCB 30019-R3277). In poky build directory when i give
> the command *bitbake gumstix-console-image* i get an error:* **
> ERROR: Nothing PROVIDES 'gumstix-console-image'.
> **
>  *
> 
> Previously when i built core-image-minimal. it successfully runs and i am
> able to run with qemu emulator.
> 
> I do not know why poky throws *Nothing Provides* error.

gumstix-console-image would need to be provided by a layer enabled in your 
configuration; apparently this image recipe comes from meta-gumstix [1], so you 
would need to have that layer cloned and its directory added to your 
conf/bblayers.conf file under your build directory for that image to be 
available.

Cheers,
Paul

[1] http://layers.openembedded.org/layerindex/layer/meta-gumstix/

-- 

Paul Eggleton
Intel Open Source Technology Centre

