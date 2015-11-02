Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB660E005B3; Mon,  2 Nov 2015 10:02:05 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C014E0034B
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 10:02:02 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 02 Nov 2015 10:01:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,234,1444719600"; d="scan'208";a="676804440"
Received: from jdurndel-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.28.210])
	by orsmga003.jf.intel.com with ESMTP; 02 Nov 2015 10:01:47 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 02 Nov 2015 18:01:45 +0000
Message-ID: <5007685.tUom4y9F8O@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.11; x86_64; ; )
In-Reply-To: <alpine.LFD.2.20.1511021251410.10363@localhost>
References: <alpine.LFD.2.20.1511021251410.10363@localhost>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: should layers define BB_DANGLINGAPPENDS_WARNONLY ?= "1"?
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
X-List-Received-Date: Mon, 02 Nov 2015 18:02:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Monday 02 November 2015 12:54:33 Robert P. J. Day wrote:
>   perusing the meta-musl layer, and noticed in layer.conf the line:
> 
> BB_DANGLINGAPPENDS_WARNONLY ?= "1"
> 
> i thought this was a bit odd since (at least to me) it seems like the
> sort of thing a *developer* might set in their local.conf to
> temporarily deal with a dangling .bbappend file -- it never occurred
> to me that it would be appropriate for a layer to define that value
> itself as an inherent part of its own ... layerness.
> 
>   a quick grep of the couple dozen layers i have checked out revealed
> two layers that do that:
> 
> ./meta-musl/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY ?= "1"
> ./meta-yocto-kernel-extras/meta-kernel-dev/conf/layer.conf:BB_DANGLINGAPPEND
> S_WARNONLY ?= "true"
> 
>   i'm curious what others think of this approach.

I'd say no, they shouldn't really. As a user of the layer you might not 
realise that it's making this change to your configuration.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

