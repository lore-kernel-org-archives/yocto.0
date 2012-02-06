Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 839AEE0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 08:18:01 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Feb 2012 08:18:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="121484925"
Received: from unknown (HELO helios.localnet) ([10.252.122.246])
	by fmsmga002.fm.intel.com with ESMTP; 06 Feb 2012 08:18:00 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 06 Feb 2012 16:17:59 +0000
Message-ID: <1405123.nGGmjXUAYO@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-15-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <4F2AFBF7.8010307@linux.intel.com>
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<4F2AE4E8.3080809@linux.intel.com>
	<4F2AFBF7.8010307@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [pull-sys940x 2/4] ranpwd: Add ranpwd recipe
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
X-List-Received-Date: Mon, 06 Feb 2012 16:18:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 02 February 2012 13:11:19 Joshua Lock wrote:
> Apologies. I'm wrong here. It was PRIORITY which we agreed to drop.

It's worth noting however, at the same time PRIORITY removal was discussed it 
was acknowledged that SECTION was questionable. Logical grouping of 
recipes/packages is a useful thing but coming up with groupings that are 
meaningful in all contexts is hard :(

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

