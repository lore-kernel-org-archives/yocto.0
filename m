Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8110E011AB
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2012 02:36:17 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Dec 2012 02:36:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,313,1355126400"; d="scan'208";a="259579660"
Received: from unknown (HELO helios.localnet) ([10.252.122.248])
	by orsmga002.jf.intel.com with ESMTP; 19 Dec 2012 02:36:16 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Raul Rosetto Munoz <munoz0raul@gmail.com>
Date: Wed, 19 Dec 2012 10:36:15 +0000
Message-ID: <2089740.tnt0W30Y43@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-19-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <CANmVirhKN+g8YawraT9d3ieFrCrQtaTomEUC7Zv1X_DTZc7rmg@mail.gmail.com>
References: <CANmViriCGoKznqztTxC9TDP_+ZKizB_hUzbHLJ66NQ21H+re_g@mail.gmail.com>
	<CANmVirhKN+g8YawraT9d3ieFrCrQtaTomEUC7Zv1X_DTZc7rmg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to use JRE (Java Runtime) in Yocto Projects
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
X-List-Received-Date: Wed, 19 Dec 2012 10:36:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 19 December 2012 08:25:00 Raul Rosetto Munoz wrote:
> Hello all,
> I did some things like this wiki.
> 
> I added the meta-java layer but the only important diference is that I'm
> using meta poky (/poky/meta) and no meta oe-core (/oe-core/meta).
> 
> https://github.com/woglinde/meta-java/wiki
> 
> The fisrt probleme tha I have is that the package LLVM show me some errors.
> 
> here is what I have:
> 
> raul@phi04:/home/prjs/newcom0001/workspace/philinux/philinux-imx28-newcom$
> bitbake openjdk-6
> WARNING: Host distribution "Ubuntu 12.04.1 LTS" has not been validated with
> this version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
> NOTE: Error expanding variable populate_packages
> 
>                                                             | ETA:  00:00:38
> 
> NOTE: Error during finalise of
> /home/prjs/newcom0001/workspace/philinux/meta-java/recipes-core/llvm/
> llvm2.8_2.8.bb
> ERROR: Unable to parse
> /home/prjs/newcom0001/workspace/philinux/meta-java/recipes-core/llvm/
> llvm2.8_2.8.bb
> ERROR: Command execution failed: Traceback (most recent call last):
>   File "/home/prjs/poky/bitbake/lib/bb/command.py", line 84, in
> runAsyncCommand
>     self.cooker.updateCache()
>   File "/home/prjs/poky/bitbake/lib/bb/cooker.py", line 1202, in updateCache
> if not self.parser.parse_next():
>   File "/home/prjs/poky/bitbake/lib/bb/cooker.py", line 1669, in parse_next
>     self.virtuals += len(result)
> UnboundLocalError: local variable 'result' referenced before assignment
> 
> 
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> raul@phi04:/home/prjs/newcom0001/workspace/philinux/philinux-imx28-newcom$

Which version of the build system are you using?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

