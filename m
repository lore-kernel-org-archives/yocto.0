Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24686E00874; Mon, 22 Dec 2014 03:22:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEA35E00575
	for <yocto@yoctoproject.org>; Mon, 22 Dec 2014 03:21:55 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Dec 2014 03:21:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,623,1413270000"; d="scan'208";a="627649111"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.255.13.210])
	by orsmga001.jf.intel.com with ESMTP; 22 Dec 2014 03:21:53 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
Date: Mon, 22 Dec 2014 11:21:52 +0000
Message-ID: <3004533.IQ76YFNeID@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.6-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <0E4D391FE2BDEC45AA0B4E32D6BD598A2517AC@PGSMSX101.gar.corp.intel.com>
References: <86196249137E0843B2E0673D4F731E0C0108E2902F@reactor.sldomain.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A25021D@PGSMSX101.gar.corp.intel.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A2517AC@PGSMSX101.gar.corp.intel.com>
MIME-Version: 1.0
Cc: 'Jim Rafert' <jimr@spectralogic.com>, yocto@yoctoproject.org
Subject: Re: Building clang with Yocto
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
X-List-Received-Date: Mon, 22 Dec 2014 11:22:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chan Kit,

On Monday 22 December 2014 03:33:17 Yu, Chan KitX wrote:
> Here's an update FYI. I have managed to get clang sort of working. It
> compiles my sample code but I can't get the binary to execute. ./a.out
> simply returns:
> 
> 
> ./a.out: No such file or directory.
> 
> I'm sure that a.out exists and weirdly I could get the same binary file to
> run on my build machine. So I guess it could be because of some
> architecture difference but both target and build platform are quite the
> same (Intel x64 in build machine and BayleyBay for target platform) I used
> valleyisland-64 for the target platform so both should be able to execute
> 64 bit binaries. I suppose I can specify some other configuration options
> there but I have no idea what to specify the configure parameter
> --target=<TARGET> . x64 did not do any good. So any idea?

That sounds a bit like the binary has been linked to libraries in the host 
libdir rather than the correct one for the target. You may be able to verify 
that using ldd.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

