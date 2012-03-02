Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EDCFE00749
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 04:06:19 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 02 Mar 2012 04:06:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="72752402"
Received: from unknown (HELO helios.localnet) ([10.252.123.96])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Mar 2012 04:06:17 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Fri, 02 Mar 2012 12:06:16 +0000
Message-ID: <1620680.bZkznn7mE0@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1203020530280.8202@oneiric>
References: <alpine.DEB.2.02.1203020530280.8202@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: simplest recipe for running yocto qemu images?
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
X-List-Received-Date: Fri, 02 Mar 2012 12:06:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 02 March 2012 06:57:57 Robert P. J. Day wrote:
>   ok, it *has* to be easier than this.  quite simply, if one wants to
> do nothing more than *run* one of those qemu images, there should be
> no need to do any building or bitbaking, should there?  am i missing
> something hideously obvious?

Only that we assume you *have* built the image in order to be able to use the 
runqemu script. If you haven't, well, you won't necessarily have some of the 
utilities the script looks for (e.g. tunctl). When the script looks for TMPDIR 
it is not looking for a temporary directory, it's looking for the TMPDIR that 
would have been set in your local.conf. 

The runqemu script just isn't designed to be used in the way that you're 
trying to use it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

