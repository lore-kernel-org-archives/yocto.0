Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8DDFE00B8B; Wed, 21 Jun 2017 07:31:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 710F7E00B19
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 07:31:45 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Jun 2017 07:31:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,369,1493708400"; d="scan'208";a="983534873"
Received: from pkoeberl-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.42.40])
	by orsmga003.jf.intel.com with ESMTP; 21 Jun 2017 07:31:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Wed, 21 Jun 2017 16:31:38 +0200
Message-ID: <2668208.R804ovTHAV@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <c9e4e046cfdfc84eebf802e7654155218a462c70.1497320961.git.liezhi.yang@windriver.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<c9e4e046cfdfc84eebf802e7654155218a462c70.1497320961.git.liezhi.yang@windriver.com>
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
X-List-Received-Date: Wed, 21 Jun 2017 14:31:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 13 June 2017 4:36:51 AM CEST Robert Yang wrote:
> The branch is not needed any more when it has been removed from the repo, so
> we also need remove its layerbranch, otherwise it still can be got from the 
> web, which causes confusions.

I think I'd previously avoided this since I was concerned we'd potentially 
lose data about a branch which was manually gathered (such as maintainer 
information) however I can't actually think of a scenario now where you would 
lose valuable data - if the branch is gone then there's not much point keeping 
a reference to it around, so this should be OK.

> Note, we have to move the location of tinfiol's code to make it can be
> shutdown  correctly.

How does this relate to the rest of this change? Also, can you explain the 
issue you were hitting? The try...finally is supposed to ensure it gets shut 
down.

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

