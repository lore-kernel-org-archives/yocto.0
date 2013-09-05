Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A866E01415
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 01:28:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Sep 2013 01:25:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,845,1371106800"; d="scan'208";a="398568002"
Received: from unknown (HELO helios.localnet) ([10.252.123.106])
	by orsmga002.jf.intel.com with ESMTP; 05 Sep 2013 01:28:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: JC <jc@vtkloud.com>
Date: Thu, 05 Sep 2013 09:28:04 +0100
Message-ID: <2442307.vOx7EiO6Oc@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <52283ED9.2070708@vtkloud.com>
References: <5227629A.5090505@vtkloud.com>
	<CANyK_8c=yXSFuaU7JT2i5PP7K=QfoVe0x62mh9Ax+KQk9shvVg@mail.gmail.com>
	<52283ED9.2070708@vtkloud.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: raspberry layer
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
X-List-Received-Date: Thu, 05 Sep 2013 08:28:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jay,

On Thursday 05 September 2013 10:20:41 JC wrote:
> ERROR: ParseError at
> /media/yocto/yocto/meta-openembedded/meta-oe/recipes-devtools/libgee/libgee.
> inc:12: Could not inherit file classes/vala.bbclass
> ERROR: Command execution failed: Exited with 1
> 
> 
> If this is not something you get with a head checkout of poky,
> meta-raspberrypi and meta-openembedded, I can retry a new fresh git
> clone to test again...

This looks to me like the branch you have checked out of meta-oe does not 
match up with the branch of poky. If you are using the "dylan" branch of poky 
you need to be using the "dylan" branch of meta-oe and meta-raspberrypi.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

