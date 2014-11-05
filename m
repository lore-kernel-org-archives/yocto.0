Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B892CE00830; Wed,  5 Nov 2014 07:36:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C9F7E00830
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 07:36:02 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 05 Nov 2014 07:33:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,320,1413270000"; d="scan'208";a="602806787"
Received: from sergeypo-mobl1.ccr.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.106])
	by orsmga001.jf.intel.com with ESMTP; 05 Nov 2014 07:35:32 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Wed, 05 Nov 2014 15:35:31 +0000
Message-ID: <2658643.2oNPFH7lhC@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.7-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <30C2D590D16A5C46ADFE6521910377984115B2EF@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377984115A3E1@AZ-US1EXMB03.global.avaya.com>
	<1453482.JTnQgNgThH@peggleto-mobl5.ger.corp.intel.com>
	<30C2D590D16A5C46ADFE6521910377984115B2EF@AZ-US1EXMB03.global.avaya.com>
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
X-List-Received-Date: Wed, 05 Nov 2014 15:36:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 05 November 2014 15:32:35 Vuille, Martin wrote:
> > -----Original Message-----
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: November 05, 2014 10:29 AM
> > 
> > No, you really don't need to do a complete rebuild. This is a cache
> > problem, if you have properly removed the cache the issue (at least the
> > latest errors) will go away.
> 
> All signs of build/cache and
> /home/platform/Workspace/somename/poky/build/tmp/cache/default-eglibc/sonic
> /i686 have been removed.
> 
> Still seeing the SRC_URI warnings and the virtual/fakeroot-native error.
> 
> Anything else I need to remove?

Rather than removing or renaming 
/home/platform/Workspace/somename/poky/build/tmp/cache/default-
eglibc/sonic/i686, you should remove/rename the cache directory above it i.e. 
/home/platform/Workspace/somename/poky/build/tmp/cache/ .

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

