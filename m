Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32565E0030B
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 08:49:29 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 14 Feb 2012 08:49:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="66492207"
Received: from unknown (HELO helios.localnet) ([10.252.122.250])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Feb 2012 08:49:27 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Feb 2012 16:49:25 +0000
Message-ID: <2420679.N1KdCWUpt3@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <CB6038BC.7B1E%belen.barros.pena@intel.com>
References: <CB6038BC.7B1E%belen.barros.pena@intel.com>
MIME-Version: 1.0
Cc: "An, LimingX L" <limingx.l.an@intel.com>
Subject: Re: Design: build fails scenario
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
X-List-Received-Date: Tue, 14 Feb 2012 16:49:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 14 February 2012 16:13:46 Barros Pena, Belen wrote:
> I've finally managed to put something together on how to handle build
> failure in Hob 1.2.
> 
> The document is here:
> 
> https://wiki.yoctoproject.org/wiki/File:Build-fail-flow-v1.0.pdf

Looking through this document and talking to Belen there are a couple of 
things worth noting:

* There will be build failures resulting from user configuration errors (e.g. 
network connection is unavailable -> fetch fails, or perhaps the sanity 
checker catches this earlier); however I suspect for the majority of people 
using Hob an error indicates a bug or some host system incompatibility (which 
is probably a bug). In this case all we can do for the user if they aren't 
capable of fixing the problem themselves is to provide them with an easy way to 
report the issue.

* We plan to investigate implementing a "kerneloops" style build failure 
reporting system for 1.3 (see bug #1562). Part of this is about having the 
backend infrastructure to manage submitted issues, but the other is to have an 
interface to submit them and that will involve extensions to Hob. However as 
this won't be done for 1.2, in the mean time it might be possible to provide 
some other way of submitting build errors; but the question is where should 
they go? I'm not sure we want to default to filing a bug report or sending an 
email to the mailing list, for example.

* We will probably need to embark on an exercise of enumerating the errors 
that can be produced by the build system (BitBake and metadata), after which 
we can analyse if certain errors can be handled in a better way, if specific 
handling can be added to a frontend such as Hob for some errors, and even if 
we can extend the documentation to cover how to troubleshoot certain classes 
of errors. This is of course not a small undertaking as a "git grep" of 
"bb\.*error" and "bb\.*fatal" and even scarier "raise " demonstrates.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

