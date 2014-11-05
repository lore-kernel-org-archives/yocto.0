Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9937CE008CE; Wed,  5 Nov 2014 07:28:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CEB0E00830
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 07:28:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Nov 2014 07:27:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,320,1413270000"; d="scan'208";a="631970672"
Received: from sergeypo-mobl1.ccr.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.106])
	by orsmga002.jf.intel.com with ESMTP; 05 Nov 2014 07:28:51 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Wed, 05 Nov 2014 15:28:50 +0000
Message-ID: <1453482.JTnQgNgThH@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.7-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <30C2D590D16A5C46ADFE6521910377984115B2D5@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377984115A3E1@AZ-US1EXMB03.global.avaya.com>
	<6025612.GKMoo6npqD@peggleto-mobl5.ger.corp.intel.com>
	<30C2D590D16A5C46ADFE6521910377984115B2D5@AZ-US1EXMB03.global.avaya.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Added package to RDEPENDS in packagegroup, image that IMAGE_INSTALLs packagegroup not rebuilt
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
X-List-Received-Date: Wed, 05 Nov 2014 15:28:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 05 November 2014 15:27:10 Vuille, Martin wrote:
> > -----Original Message-----
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: November 05, 2014 10:23 AM
> > 
> > OK, so perhaps this wasn't the best idea after all - I think what's
> > happened there is that part of the cache is there and the other part now
> > isn't. Instead of moving that subdirectory out of the way, in order to do
> > this test you'd probably need to rename the "cache" directory under your
> > build directory *and* the one under tmp.
> 
> Tried renaming cache to cache-saved
> 
> Still see SRC_URI errors
> 
> Tried putting everything back, still see the errors
> Tried removing both dirs again, still see errors
> 
> I think I will have to clean everything and rebuild from scratch (five-hour
> build).

No, you really don't need to do a complete rebuild. This is a cache problem, 
if you have properly removed the cache the issue (at least the latest errors) 
will go away.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

