Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFD4AE00B47; Wed, 31 May 2017 21:32:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 833C6E00ADD
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 21:32:38 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga104.jf.intel.com with ESMTP; 31 May 2017 21:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,277,1493708400"; d="scan'208";a="1176846793"
Received: from ysayabal-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.134.117])
	by fmsmga002.fm.intel.com with ESMTP; 31 May 2017 21:32:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 01 Jun 2017 16:32:32 +1200
Message-ID: <5346749.ruulru6ED8@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <d7c910a5-0d5b-196f-7be5-9d900e528e00@mlbassoc.com>
References: <31a2d863-b928-df06-8e86-78b939469614@mlbassoc.com>
	<10690620.1eQvXQkMYH@peggleto-mobl.ger.corp.intel.com>
	<d7c910a5-0d5b-196f-7be5-9d900e528e00@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: sstate-cache question
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
X-List-Received-Date: Thu, 01 Jun 2017 04:32:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 1 June 2017 3:44:49 PM NZST Gary Thomas wrote:
> On 2017-06-01 05:28, Paul Eggleton wrote:
> > It ought to be. At face value it should be finding the files in either
> > place - we'd need to debug the code to find out why it isn't. Is that
> > something you might be able to help me with?
> 
> Happy to give it a go, just let me know what you need

Thanks. A first step would probably be to enable debug output with -d and see 
what it reports in terms of the files being searched for.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

