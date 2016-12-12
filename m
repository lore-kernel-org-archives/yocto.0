Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 058AEE00905; Mon, 12 Dec 2016 14:07:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB04DE005B9
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 14:07:34 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Dec 2016 14:07:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,338,1477983600"; d="scan'208";a="1071262991"
Received: from mauric9x-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.158.7])
	by orsmga001.jf.intel.com with ESMTP; 12 Dec 2016 14:07:28 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Tue, 13 Dec 2016 11:07:25 +1300
Message-ID: <1719976.vZW5s3cKoe@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.12-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1e4eae2e-5dca-341d-12a6-a068dfea51b3@windriver.com>
References: <5ee0797a85054ea6ab6a0d8f02f47856@drift35.mia.local>
	<1654285.bzP9cumZNH@peggleto-mobl.ger.corp.intel.com>
	<1e4eae2e-5dca-341d-12a6-a068dfea51b3@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Kernel config incremental modification not working.
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
X-List-Received-Date: Mon, 12 Dec 2016 22:07:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 12 Dec 2016 08:41:36 Bruce Ashfield wrote:
> On 2016-12-11 02:33 PM, Paul Eggleton wrote:
> > Can we please have some automated tests covering all of this? Perhaps it
> > would be worth talking to Francisco Pedraza who is looking at adding
> > tests under bug
> > 6359:
>
> We are already meeting to talk about this :D

Superb, thanks!

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

