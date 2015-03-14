Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4F16E00854; Sat, 14 Mar 2015 04:27:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7307FE003FA
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 04:27:47 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Mar 2015 04:25:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,399,1422950400"; d="scan'208";a="665212294"
Received: from plaws-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.24.36])
	by orsmga001.jf.intel.com with ESMTP; 14 Mar 2015 04:27:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: p_j_r_m <p_j_r_m@yahoo.com>
Date: Sat, 14 Mar 2015 11:27:44 +0000
Message-ID: <1542840.XVW3x9AHNY@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <853683642.3620249.1426288590548.JavaMail.yahoo@mail.yahoo.com>
References: <1637612.gAra2p1qXC@peggleto-mobl5.ger.corp.intel.com>
	<853683642.3620249.1426288590548.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: File in append recipe not installed
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
X-List-Received-Date: Sat, 14 Mar 2015 11:27:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 13 March 2015 23:16:30 p_j_r_m wrote:
> Thanks for your suggestionsThe problem was that my recipe files were taken
> from sstate directories, even when they were previously cleaned with
> bitbake -c clean. If I use -c cleansstate instead, all is ok .

AFAIK the task signatures will incorporate the values of all of the things 
your bbappend is setting, so this doesn't really account for the behaviour you 
are describing. Can you reproduce the issue?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

