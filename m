Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0001EE00723
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 03:05:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 May 2012 03:05:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="139573358"
Received: from unknown (HELO helios.localnet) ([10.252.120.59])
	by orsmga002.jf.intel.com with ESMTP; 03 May 2012 03:05:31 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 03 May 2012 11:05:30 +0100
Message-ID: <1657960.F0vr4RlV7E@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-19-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <FD311A9D-4B4D-479A-BEC6-10C37BF6AF47@gmail.com>
References: <FD311A9D-4B4D-479A-BEC6-10C37BF6AF47@gmail.com>
MIME-Version: 1.0
Subject: Re: meta-gumstix.git layer dependencies
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
X-List-Received-Date: Thu, 03 May 2012 10:05:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 03 May 2012 08:01:58 Elvis Dowson wrote:
> Isn't openembedded-core shared with yocto's poky? If so, do I really need to
> add openembedded-core to my bblayers.conf file?

Yes, poky includes OE-Core already, so you don't need to add anything for 
this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

