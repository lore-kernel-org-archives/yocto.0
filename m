Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27730E0059A
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 17:26:53 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Mar 2012 17:26:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="121726846"
Received: from unknown (HELO helios.localnet) ([10.252.123.223])
	by azsmga001.ch.intel.com with ESMTP; 21 Mar 2012 17:26:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 22 Mar 2012 00:26:49 +0000
Message-ID: <11107389.LZ9REiQeM5@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <4F6A5EE6.8070303@linux.intel.com>
References: <cover.1331666101.git.dvhart@linux.intel.com>
	<a7914fb82371af784c544d3efefefaa2c63afd4d.1331666101.git.dvhart@linux.intel.com>
	<4F6A5EE6.8070303@linux.intel.com>
MIME-Version: 1.0
Cc: Darren Hart <dvhart@linux.intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 1/1] ddimage: Add script for writing images to boot media
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
X-List-Received-Date: Thu, 22 Mar 2012 00:26:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 21 March 2012 16:06:14 Darren Hart wrote:
> Any objections to this going in?

No objections, looks like a really useful tool; a couple of suggestions though 
(sorry for not looking at it earlier):

* Is it worth checking if the target device is mounted and erroring out if so?
* Not sure but it may be worth waiting a few seconds after the sync before 
exiting; I've seen some hardware that returns control to userspace before the 
hardware has actually finished writing.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

