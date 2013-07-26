Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBA09E013EC
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 08:43:19 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 26 Jul 2013 08:43:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,752,1367996400"; d="scan'208";a="273780654"
Received: from unknown (HELO helios.localnet) ([10.252.122.182])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Jul 2013 08:43:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Stickel <michael@cubic.org>
Date: Fri, 26 Jul 2013 16:43:15 +0100
Message-ID: <5903342.56urMyNeCS@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <51EA5750.9020105@cubic.org>
References: <51EA5750.9020105@cubic.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Adding a new target architecture
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
X-List-Received-Date: Fri, 26 Jul 2013 15:43:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Michael,

On Saturday 20 July 2013 11:24:32 Michael Stickel wrote:
> is there any documentation on how to add a new target architecture
> (openrisc and sparc)?
> 
> The poky-handbook states in chapter 3. that it's not part of that
> chapter and there is no other chapter explaining porting to a new
> architecture.

We don't have specific documentation on new architectures, but it should just 
be an extention of adding a BSP, so see the BSP guide for general stuff:

http://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.html

You may find the tune files in meta/conf/machine/include/ instructive as well; 
you could also use some of the other BSP layers as examples since some of them 
add support for architectures that aren't supported as part of the core.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

