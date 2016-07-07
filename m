Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 612CDE00C40; Wed,  6 Jul 2016 20:33:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 333D9E00C1D
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 20:32:56 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 06 Jul 2016 20:32:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,322,1464678000"; d="scan'208";a="135066825"
Received: from lynhueyo-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.176.219])
	by fmsmga004.fm.intel.com with ESMTP; 06 Jul 2016 20:32:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 07 Jul 2016 15:32:49 +1200
Message-ID: <1841758.LHKpjia4lP@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.7-202.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <nlft2j$4vc$1@ger.gmane.org>
References: <nlft2j$4vc$1@ger.gmane.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: baremetal cross-compiler
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
X-List-Received-Date: Thu, 07 Jul 2016 03:33:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Tue, 05 Jul 2016 12:02:11 Robert Berger wrote:
> According to the release notes it should be possible to build a
> baremetal (no glibc/Linux) cross compiler with the YP. I just can't find
> any information how this could be done.
> 
> I would like to build a native compiler e.g. for a Cortex-A3 and compile
> FreeRTOS with it.

It looks like all you should need to do would be to set TCLIBC = "baremetal" 
and build the toolchain. Juro, is there any more to it than that?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

