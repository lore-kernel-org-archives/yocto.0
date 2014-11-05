Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17B52E008CE; Wed,  5 Nov 2014 07:11:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9921CE008C9
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 07:11:42 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Nov 2014 07:10:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,320,1413270000"; d="scan'208";a="631961509"
Received: from sergeypo-mobl1.ccr.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.106])
	by orsmga002.jf.intel.com with ESMTP; 05 Nov 2014 07:10:21 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Wed, 05 Nov 2014 15:10:20 +0000
Message-ID: <23989925.sVmB8Odlrs@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.7-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <30C2D590D16A5C46ADFE6521910377984115B283@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377984115A3E1@AZ-US1EXMB03.global.avaya.com>
	<30C2D590D16A5C46ADFE6521910377984115AFCF@AZ-US1EXMB03.global.avaya.com>
	<30C2D590D16A5C46ADFE6521910377984115B283@AZ-US1EXMB03.global.avaya.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 05 Nov 2014 15:11:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 05 November 2014 15:01:02 Vuille, Martin wrote:
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Vuille, Martin (Martin)
> > Sent: November 05, 2014 7:35 AM
> > 
> > > Indeed it appears that the <packagegroup>.bb file is not being read.
> > 
> > But bitbake <packagegroup> -e does re-parse the file and reports the
> > syntax
> > error
> > 
> > Repeating bitbake <packagegroup> after the above still sees no error
> 
> In the -DDD output I see
> 
> "DEBUG: Using cache in
> '/home/platform/Workspace/somename/poky/build/tmp/cache/default-eglibc/soni
> c/i686'"
> 
> If I rename
> /home/platform/Workspace/somename/poky/build/tmp/cache/default-eglibc/sonic
> /i686 to
> /home/platform/Workspace/somename/poky/build/tmp/cache/default-eglibc/sonic
> /i686-saved and then run
> 
> bitbake <packagegroup>, the .bb file is reparsed
> 
> If I rename the directory back, then
> 
> bitbake <packagegroup> goes back to doing nothing
> 
> Something stands out here...
> 
> My build machine is x86_64 but my SDKMACHINE is i686. And I see that the
> directory name above includes i686.
> 
> Might there be something to this?

So it does appear to be cache related, but I just tried creating a similar 
packagegroup here and even set SDKMACHINE and could not reproduce the problem, 
adding the same junk you did at the same point caused an immediate parse error 
on the next build.

The question is if you remove the garbage, rename the cache directory, parse 
it successfully and then add the garbage is it reparsed with the new cache?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

