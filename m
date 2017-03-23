Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F312CE00A76; Thu, 23 Mar 2017 02:49:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA7A6E009A0
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 02:49:23 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga104.jf.intel.com with ESMTP; 23 Mar 2017 02:49:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,209,1486454400"; d="scan'208";a="239465788"
Received: from ksompon-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.132.128])
	by fmsmga004.fm.intel.com with ESMTP; 23 Mar 2017 02:49:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Date: Thu, 23 Mar 2017 22:49:17 +1300
Message-ID: <1800387.CklkhI1oXO@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <83d60adbd65a46faaaaef40bd2667cb3@SFA-EX01.SAKURAUS.LOCAL>
References: <461862bc22e146c4839c12eafc7dd9f2@SFA-EX01.SAKURAUS.LOCAL>
	<0943f9a9-703b-d947-e2da-271bb22594be@gmail.com>
	<83d60adbd65a46faaaaef40bd2667cb3@SFA-EX01.SAKURAUS.LOCAL>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Morty 2.2.1 build failure
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
X-List-Received-Date: Thu, 23 Mar 2017 09:49:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 23 March 2017 9:23:24 AM NZDT Greg Wilson-Lindberg wrote:
> I tried it again this morning and it did get past the file not found error.
> But when it gets above step 4000 somewhere it gets an error that kills not
> just the yocto build but the full login session. I'm left staring at the
> Linux Login screen.

Your machine isn't running out of RAM by any chance, triggering the OOM 
killer? Anything indicative in your system logs?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

