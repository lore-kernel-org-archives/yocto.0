Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D38DE0169D
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 02:08:38 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 03 Oct 2013 02:08:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1024,1371106800"; d="scan'208";a="404673915"
Received: from unknown (HELO helios.localnet) ([10.252.120.147])
	by fmsmga001.fm.intel.com with ESMTP; 03 Oct 2013 02:08:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Date: Thu, 03 Oct 2013 10:08:28 +0100
Message-ID: <5732112.ULB9IMbfHf@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <17797116383D4341B029FDF34C22BF6A5D7F9676DD@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.7042.1376600669.19864.yocto@yoctoproject.org>
	<229904476.ZkVfXfKkUW@helios>
	<17797116383D4341B029FDF34C22BF6A5D7F9676DD@GUREXMB01.ASIAN.AD.ARICENT.COM>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: yocto query on SR_URI creation
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
X-List-Received-Date: Thu, 03 Oct 2013 09:08:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Rohit,

On Thursday 03 October 2013 09:13:51 Rohit2 Jindal wrote:
> I want to download open source toolchain version 4.4.5 . Can u suggest me
> the git source from where I can download it using Yocto. And please also
> suggest me the steps to compile it for mips64 processors .
> 
> How to override gcc_4.7 etc bitbake files in meta/recipes-devtools for the
> same for compile it for mips specific boards.

We don't directly support a toolchain that old, I'm afraid. I'm sure it would 
be possible to set up with some work, but it's not something we support out of 
the box.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

