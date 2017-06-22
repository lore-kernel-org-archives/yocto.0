Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BABBEE00BC1; Thu, 22 Jun 2017 04:35:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26996E00B8B
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 04:35:57 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga104.jf.intel.com with ESMTP; 22 Jun 2017 04:35:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,373,1493708400"; d="scan'208";a="100428717"
Received: from wbosek-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.63.90])
	by orsmga004.jf.intel.com with ESMTP; 22 Jun 2017 04:35:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Thu, 22 Jun 2017 13:35:55 +0200
Message-ID: <1550526.p7UG9KOspC@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <99951e14-41f3-30f5-59ea-563cadc310b1@windriver.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<2668208.R804ovTHAV@peggleto-mobl.ger.corp.intel.com>
	<99951e14-41f3-30f5-59ea-563cadc310b1@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: Re: [PATCH V4 10/10] update_layer.py: delete layerbranch for non-existed branch
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
X-List-Received-Date: Thu, 22 Jun 2017 11:35:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 22 June 2017 12:55:15 PM CEST Robert Yang wrote:
> On 06/21/2017 10:31 PM, Paul Eggleton wrote:
> > On Tuesday, 13 June 2017 4:36:51 AM CEST Robert Yang wrote:
> >> Note, we have to move the location of tinfiol's code to make it can be
> >> shutdown  correctly.
> >
> > How does this relate to the rest of this change? Also, can you explain the
> > issue you were hitting? The try...finally is supposed to ensure it gets 
> > shut down.
> 
> I updated the commit message:
> 
> update_layer.py: delete layerbranch for non-existed branch
> 
> The branch is not needed any more when it has been removed from the repo, so we
> also need remove its layerbranch, otherwise it still can be got from the web,
> which causes confusions.
> 
> Note, we have to move the location of tinfiol's code to avoid creating tinfoil
> when not needed, otherewise, if tinfoil is created (but not needed), and the
> program exists earlier before "try ... finally" block, then tinfoil.shutdown()
> doesn't run so that it is not shutdown. Move the code back, right before where
> it is needed can fix the problem.

OK, that explains the change, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

