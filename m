Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 715DDE008CF; Wed,  5 Nov 2014 07:22:43 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BC22E008C9
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 07:22:38 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Nov 2014 07:20:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,320,1413270000"; d="scan'208";a="602798547"
Received: from sergeypo-mobl1.ccr.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.106])
	by orsmga001.jf.intel.com with ESMTP; 05 Nov 2014 07:22:36 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Wed, 05 Nov 2014 15:22:35 +0000
Message-ID: <6025612.GKMoo6npqD@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.7-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <30C2D590D16A5C46ADFE6521910377984115B2BD@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377984115A3E1@AZ-US1EXMB03.global.avaya.com>
	<23989925.sVmB8Odlrs@peggleto-mobl5.ger.corp.intel.com>
	<30C2D590D16A5C46ADFE6521910377984115B2BD@AZ-US1EXMB03.global.avaya.com>
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
X-List-Received-Date: Wed, 05 Nov 2014 15:22:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 05 November 2014 15:18:42 Vuille, Martin wrote:
> > -----Original Message-----
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: November 05, 2014 10:10 AM
> > 
> > So it does appear to be cache related, but I just tried creating a similar
> > packagegroup here and even set SDKMACHINE and could not reproduce the
> > problem, adding the same junk you did at the same point caused an
> > immediate parse error on the next build.
> > 
> > The question is if you remove the garbage, rename the cache directory,
> > parse it successfully and then add the garbage is it reparsed with the new
> > cache?
> 
> - Removed the garbage
> - Renamed the cache directory
> 
> bitbake <packagegroup>
> 
> I get a warning as follows for every single file mentioned in a SRC_URI in
> any recipe:
> 
> "WARNING: Unable to get checksum for <package> SRC_URI entry <filename>:
> file could not be found"
> 
> and then
> 
> "ERROR: Nothing PROVIDES 'virtual/fakeroot-native'."

OK, so perhaps this wasn't the best idea after all - I think what's happened 
there is that part of the cache is there and the other part now isn't. Instead 
of moving that subdirectory out of the way, in order to do this test you'd 
probably need to rename the "cache" directory under your build directory *and* 
the one under tmp.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

