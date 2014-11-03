Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAFE0E008EA; Mon,  3 Nov 2014 06:12:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECFDFE008BA
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 06:12:45 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Nov 2014 06:11:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,308,1413270000"; d="scan'208";a="601098903"
Received: from sergeypo-mobl1.ccr.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.106])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2014 06:12:44 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Mon, 03 Nov 2014 14:12:43 +0000
Message-ID: <1550328.akuF352sGY@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.6-203.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <30C2D590D16A5C46ADFE652191037798411583BD@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE652191037798411583BD@AZ-US1EXMB03.global.avaya.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Another sstate rebuild issue, badly need help understanding sstate
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
X-List-Received-Date: Mon, 03 Nov 2014 14:12:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 03 November 2014 12:53:23 Vuille, Martin wrote:
> Poky 1.6.1 / daisy
> 
> I have a variable "REV_TOOLS" defined in distro/conf/somename.conf in a
> custom distro layer from a git repo.
> 
> This variable is assigned to SRCREV in a number of recipes (SRCREV =
> "${REV_TOOLS}") for packages included in my images and SDKs.
> 
> Pulled an update to the distro layer that changed the value of REV_TOOLS.
> 
> Rebuilt all my images and SDKs, but bitbake decided there was nothing to do.
> 
> Looking at toaster, all the do_build tasks for the packages affected by this
> change say "Prebuilt" and the other tasks say "Covered". If I understand
> correctly, this means sstate didn't detect any change.
> 
> I am continually running into this problem and am at my wits' end. Why
> didn't the affected packages get rebuilt? Clearly there is something I
> don't understand and would appreciate some hint.

I honestly don't know how to explain this behaviour either, because it should 
not happen this way. BitBake automatically extracts variable references within 
variable values and adds them to the dependencies of the variable, so a change 
to REV_TOOLS should have resulted in the signatures changing for the do_fetch 
tasks for all of the recipes where SRCREV contained the reference and thus all 
of those recipes and the ones that depend upon them getting rebuilt.

Did you use oe-init-build-env or oe-init-build-env-memres to initialise your 
build environment?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

