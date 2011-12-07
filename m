Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B671E00747
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 06:18:42 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Dec 2011 06:18:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="83878341"
Received: from unknown (HELO helios.localnet) ([10.252.122.2])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2011 06:18:40 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Date: Wed, 07 Dec 2011 14:18:40 +0000
Message-ID: <1333155.b8vtGcSuh6@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-13-generic-pae; KDE/4.7.3; i686; ; )
In-Reply-To: <76DD6E9A-929F-476D-A80E-255DF8B092BC@dominion.thruhere.net>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<2008188.zyrPGc484p@helios>
	<76DD6E9A-929F-476D-A80E-255DF8B092BC@dominion.thruhere.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Variable locality too restricted.
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
X-List-Received-Date: Wed, 07 Dec 2011 14:18:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 07 December 2011 15:14:28 Koen Kooi wrote:
> A kernel buld will generate packages and thanks to kernel.bbclass they will
> have similar names.

Right, I had missed that important point. I guess the only way at the moment 
is to have separate machines.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

