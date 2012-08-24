Return-Path: <richard.purdie@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28473E00346
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 03:21:51 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 24 Aug 2012 03:21:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,302,1344236400"; d="scan'208";a="137377398"
Received: from unknown (HELO [10.255.13.18]) ([10.255.13.18])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Aug 2012 03:21:49 -0700
Message-ID: <1345803711.14369.69.camel@ted>
From: Richard Purdie <richard.purdie@intel.com>
To: "Serban, Laurentiu" <laurentiu.serban@intel.com>
Date: Fri, 24 Aug 2012 11:21:51 +0100
In-Reply-To: <E16513A01CAAFF40B65178C63CE45EEC1917553B@IRSMSX102.ger.corp.intel.com>
References: <E16513A01CAAFF40B65178C63CE45EEC1917553B@IRSMSX102.ger.corp.intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: 1.3 M3 Full Pass test results
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
X-List-Received-Date: Fri, 24 Aug 2012 10:21:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2012-08-23 at 20:13 +0100, Serban, Laurentiu wrote:

> Here are the results for the full pas tests on 1.3 M3 RC2. The commit
> used for testing is 8b8748c8f963900b83dc0fdd7757556f917fe4fd.
>
> Some details about the encountered issues below:
>  
> BSP – Sudoku-savant project build issue (2878)
>
> ADT – the relocatable sdk issue (2980) causes 13 test cases to be on
> faile/blocked state

I thought it worked as long as you didn't have to relocate it so no
tests should have been blocked, we just have the relocation issue?

>  , also the Clutter C template issue is unsolved (2577)
>
> Core Build System – x32 is still an issue (2888), cleaning sstate
> issue is still not solved (2897), incremental RPM image generation
> (2969), source archiving (2619), the kvm issue was reproduced by
> another colleague (2790) Yocto BSP creation via JSON (2693) or for
> qemu (2991) fails, multilib issue (2918 – this requires a little more
> investigation from QA), 
>
> HOB - all seems ok for RC2
>
> Self-hosted-image  - cannot start on Virtual Box (X issue), it is very
> slow on qemu and it has a m4 package build (3005) issue on VMWare. If
> the self-hosted-image is used on machine with internet connectivity
> via proxy there will be an initial sanity check failure, but this is
> not a blocking issue.
>  
> A mention for the performance testing: on a Ubbuntu 12.04  i7 machine
> using 8 threads the build time was 83 minutes (with prior fetching).

How does this compare with our other performance numbers. From what I
remember, we used to hover around the 105-115 minute mark. Did we have
some significant speed gains or is this just an artefact of changing the
test machine?

Cheers,

Richard




