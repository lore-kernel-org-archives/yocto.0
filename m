Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56049E014F9
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 06:28:00 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 May 2013 06:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,597,1363158000"; d="scan'208";a="330296521"
Received: from unknown (HELO helios.localnet) ([10.255.12.165])
	by orsmga002.jf.intel.com with ESMTP; 02 May 2013 06:27:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: openembedded-core@lists.openembedded.org,
	openembedded-devel@lists.openembedded.org, yocto@yoctoproject.org
Date: Thu, 02 May 2013 14:27:58 +0100
Message-ID: <2924564.6VWmlqGvL5@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
MIME-Version: 1.0
Subject: Please submit your unindexed layers
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
X-List-Received-Date: Thu, 02 May 2013 13:28:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi all,

Even a cursory search of github reveals that there are a growing number of 
layers being worked on in the community that aren't currently listed in the OE 
layer index. I don't think it would be right for us to just add all of these 
in bulk as we don't necessarily have all the needed information to do so, and 
it's not clear if some of them are forks, or if they will continue to be 
published in the same place, etc. So, what we really need is for the 
maintainers of these layers to submit them to the layer index themselves, or 
have someone else do it on their behalf.

If you're maintaining a publicly accessible layer that already does something 
useful and is not currently in the OE layer index, please submit it so that 
other folks in the community can find it easily. The submission form doesn't 
need a login and is pretty straightforward to fill in:

  http://layers.openembedded.org/layerindex/submit/

If you have any problems or concerns please let me know.

Thanks!

Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

