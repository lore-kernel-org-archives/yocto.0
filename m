Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 828FCE00C05; Mon, 22 Aug 2016 09:48:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB27FE00A92
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 09:48:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 22 Aug 2016 09:47:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,560,1464678000"; d="scan'208";a="1018578112"
Received: from peggleto-mobl.ger.corp.intel.com ([10.7.197.226])
	by orsmga001.jf.intel.com with ESMTP; 22 Aug 2016 09:47:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Manjukumar Harthikote Matha <manjukumar.harthikote-matha@xilinx.com>
Date: Mon, 22 Aug 2016 09:47:55 -0700
Message-ID: <10227417.bNpvINI2jx@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.6.6-200.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <ebf6a9f3-caad-9d46-b949-d91cbd4dedf7@xilinx.com>
References: <ebf6a9f3-caad-9d46-b949-d91cbd4dedf7@xilinx.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: eSDK errors and sstate signature issues
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
X-List-Received-Date: Mon, 22 Aug 2016 16:48:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Manju,

Sorry for the delayed reply.

On Mon, 15 Aug 2016 17:43:23 Manjukumar Harthikote Matha wrote:
> I am trying to build Yocto eSDK with OE_core and meta-xilinx layers.
> 
> Having issues while extracting the eSDK, it warns quite a bit on
> signature mismatch. Can this happen due to the fact that I am using
> external tool chain??
> 
> And eventually bails stating
> ERROR: Unexpected tasks or setscene left over to be executed:
> 
> meta-xilinx/recipes-kernel/linux/linux-xlnx_4.6.bb, do_fetch
> meta-xilinx/recipes-kernel/linux/linux-xlnx_4.6.bb, do_unpack
> meta-xilinx/recipes-kernel/linux/linux-xlnx_4.6.bb, do_kernel_configme
> ....
> 
> How do I go about investigating why set scene was corrupted or not
> executed correctly while building kernel?

So it looks like linux-xlnx is attempting to build for some reason and yet we 
don't expect it to be because it's locked. It may or may not be related to the 
use of an external toolchain - I'm not sure because it's not a scenario I have 
tested.

Are the layers / toolchain you are using downloadable, i.e. could I reproduce 
the issue here?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

