Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 125FCE01304
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 09:49:24 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 27 Jun 2012 09:49:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="116605757"
Received: from unknown (HELO helios.localnet) ([10.252.120.185])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Jun 2012 09:49:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Date: Wed, 27 Jun 2012 17:49:12 +0100
Message-ID: <1849604.yJORxvhzRh@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FEB378C.9050307@communistcode.co.uk>
References: <20317992.tBZ1YY1I5v@helios> <4427881.ZDyEgbkgV4@helios>
	<4FEB378C.9050307@communistcode.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: LAMP layer
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
X-List-Received-Date: Wed, 27 Jun 2012 16:49:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 27 June 2012 17:40:44 Jack Mitchell wrote:
> I do agree that layers within layers is a bit confusing, however the
> earlier proposed meta-networking included having some of the
> applications in this proposed layer too. If this was instead, then it's
> fine, but if it's as well then it could get confusing.

It's something I've been discussing with Joe MacDonald already. I think it's 
an either-or situation - the recipes will not need to be in both layers. 
People who want recipes from either or both layers should be able to include 
the layers as needed.
 
> A possible compromise could be a git sub-module for meta-lamp inside
> meta-networking, or at least a file containing the meta-lamp location
> and highlighting its availability?

Given the above I think a pointer in the meta-networking README towards the 
web server layer would be reasonable.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

