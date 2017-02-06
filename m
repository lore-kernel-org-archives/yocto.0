Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 878FBE0082E; Mon,  6 Feb 2017 15:40:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14457E007AD
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2017 15:40:18 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 06 Feb 2017 15:40:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,342,1477983600"; d="scan'208";a="61564204"
Received: from mmurr6x-mobl1.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.199.82])
	by orsmga005.jf.intel.com with ESMTP; 06 Feb 2017 15:40:17 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org, Prasant J <pj0585@gmail.com>
Date: Tue, 07 Feb 2017 12:40:16 +1300
Message-ID: <3690658.Q8qCDnEHim@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/5.3.3 (Linux/4.9.6-200.fc25.x86_64; KDE/5.29.0; x86_64; ; )
In-Reply-To: <CAJTo0LbDJqmja5a1PSp3im35eicbexo74SSzMyS=t+6kjR-6Zg@mail.gmail.com>
References: <CAA2DH4sy_BxdFqVRa=R5VC7BAuSNqu-mwGPdTxXsZoh7k+p2ag@mail.gmail.com>
	<CAJTo0LbDJqmja5a1PSp3im35eicbexo74SSzMyS=t+6kjR-6Zg@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Build only one specific C source from git clone with many C files
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
X-List-Received-Date: Mon, 06 Feb 2017 23:40:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 6 February 2017 11:45:19 AM NZDT Burton, Ross wrote:
> On 6 February 2017 at 11:27, Prasant J <pj0585@gmail.com> wrote:
> > Is it possible to modify SRC_URI to take only one source file from a
> > git clone and build it?
> 
> No, you can't do that with git.
> 
> One way would be to use the http fetcher to get the file directly from the
> web interface to the kernel.

Well, technically if it's just a directory you want you can use subpath= - 
that doesn't actually prevent fetching the entire repo though, it just changes 
what gets unpacked to the work directory for the recipe.

(Beware - earlier versions of the build system had a nasty bug with subpath=, 
if you're using 1.7.1, 1.8.0 or older I'd suggest not including a leading or 
trailing slash in the subpath value - you don't need them anyway).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

