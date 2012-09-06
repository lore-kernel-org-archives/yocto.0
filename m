Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2D22E01385
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 08:29:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Sep 2012 08:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,380,1344236400"; d="scan'208";a="189678172"
Received: from unknown (HELO helios.localnet) ([10.252.121.173])
	by orsmga001.jf.intel.com with ESMTP; 06 Sep 2012 08:29:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 06 Sep 2012 16:29:19 +0100
Message-ID: <2515670.URCovxJbBq@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <FA3A0E24-467D-45F1-9809-BED60472FB8C@gmail.com>
References: <1CA12C40-FBBD-4CC7-B45A-5867AB64490A@gmail.com>
	<4865264.UZoJkHz8Ho@helios>
	<FA3A0E24-467D-45F1-9809-BED60472FB8C@gmail.com>
MIME-Version: 1.0
Cc: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Procedure to setup icecc for performing a distributed build
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
X-List-Received-Date: Thu, 06 Sep 2012 15:29:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 06 September 2012 19:23:53 Elvis Dowson wrote:
> Unfortunately no. I've got two machines, both with quad-core intel i7
> processors, but I just couldn't get icecc to work with yocto. I end up
> regularly perform fresh builds at least 5 to 6 times a day, and it takes me
> 2 hours to build core-image-minimal.

At its core, icecc.bbclass just sets things up so that icecc is called instead 
of the normal compiler. It would be worth verifying that that is actually 
taking effect by looking at the commands being used as reported in 
log.do_configure for specific recipes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

