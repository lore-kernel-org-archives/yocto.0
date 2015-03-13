Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 938D0E0086D; Fri, 13 Mar 2015 01:18:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4621AE00858
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 01:17:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Mar 2015 01:17:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,393,1422950400"; d="scan'208";a="698180971"
Received: from bonchen-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.8.183])
	by orsmga002.jf.intel.com with ESMTP; 13 Mar 2015 01:17:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: p_j_r_m <p_j_r_m@yahoo.com>
Date: Fri, 13 Mar 2015 08:17:55 +0000
Message-ID: <1637612.gAra2p1qXC@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <550228CC.5010904@mlbassoc.com>
References: <5501FFB7.2010201@mlbassoc.com>
	<1012444838.6297307.1426202516188.JavaMail.yahoo@mail.yahoo.com>
	<550228CC.5010904@mlbassoc.com>
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
X-List-Received-Date: Fri, 13 Mar 2015 08:18:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 12 March 2015 18:01:16 Gary Thomas wrote:
> On 2015-03-12 17:21, p_j_r_m wrote:
> > I've tested it, but the problem is the same.
> > My bbappend recipe is not even called ,so it does not matter what i put in
> > it. Why is not called?
>
> Please don't top-post :-(
> 
> How do you know that your bbappend isn't being used/called?  If you name it
> incorrectly, e.g. base-files_3.0.99.bbappend, you should get an error
> telling you that there is no base-files_3.0.99.bb which matches.  Hence if
> it's named base-files_3.0.14.bbappend and you get no error, it *is* being
> used.
> 
> Please show exactly what is now in your layer (as below).  It's really easy
> to make a mistake with a '_' instead of '-'.

Also, one way to tell for sure whether it is being parsed is to use:

  bitbake-layers show-appends 

If it's not listed there, check that the layer shows up in:

  bitbake-layers show-layers

If the layer doesn't show there, check if it has been correctly added to 
bblayers.conf. If it is, check that your layer.conf is setting BBFILES such 
that bbappends in the directory you placed the bbappend in will be picked up.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

