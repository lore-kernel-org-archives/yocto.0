Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54872E006B5
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2011 01:41:33 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Dec 2011 01:41:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="92528074"
Received: from unknown (HELO helios.localnet) ([10.252.122.61])
	by orsmga002.jf.intel.com with ESMTP; 29 Dec 2011 01:41:31 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Date: Thu, 29 Dec 2011 09:41:29 +0000
Message-ID: <2207858.zQEpL41i6n@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-14-generic-pae; KDE/4.7.4; i686; ; )
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A010BDDB3@039-SN2MPN1-023.039d.mgd.msft.net>
References: <CA452391058F6D4E9715FB2C29D9312A010BDDB3@039-SN2MPN1-023.039d.mgd.msft.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Query about how Yocto handles the bbclass file when it exists in multi-layers
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
X-List-Received-Date: Thu, 29 Dec 2011 09:41:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 29 December 2011 09:37:07 Luo Zhenhua-B19537 wrote:
> If one bbclass exists in multi-layers, which one will Yocto pick up? It
> seems BBFILE_PRIORITY doesn't impact bbclass file.

I believe for bbclass files it's the order in which the layers are listed in 
your bblayers.conf.

We could fix this, however I'm not sure we should be encouraging duplication of 
class files - people should ideally be getting their functionality into the OE-
Core classes and not just overlaying their own version of the class.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

