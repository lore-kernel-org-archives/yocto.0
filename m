Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B7DEE0030B
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 08:55:59 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Feb 2012 08:55:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="112840511"
Received: from unknown (HELO helios.localnet) ([10.252.123.96])
	by azsmga001.ch.intel.com with ESMTP; 29 Feb 2012 08:55:55 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: John Toomey <john.toomey@linux.intel.com>
Date: Wed, 29 Feb 2012 16:55:54 +0000
Message-ID: <25108232.4I5JuH5juE@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <4F4E55E4.3050205@linux.intel.com>
References: <4F4E4512.7000505@linux.intel.com> <4241171.S03hq4heSm@helios>
	<4F4E55E4.3050205@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: RPROVIDES issue
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
X-List-Received-Date: Wed, 29 Feb 2012 16:55:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 29 February 2012 16:44:20 John Toomey wrote:
> You got me on the right track to fix it - apparently having a comment on
> the same line as the IMAGE_INSTALL += "..." causes it to break. I had
> all of the packates on seperate lines so I could easily comment in or
> out the ones I need and I had comments after a few of them so i could
> keep track of which ones were working and broken...

Ah, that explains it :) You may be happy to know this is now explicitly caught 
as a syntax error in master, so future versions will not suffer from this 
issue.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

