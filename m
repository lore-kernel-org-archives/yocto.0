Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECCE9E007BA; Mon, 19 Jan 2015 01:47:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90775E00970
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 01:47:02 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 19 Jan 2015 01:41:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,425,1418112000"; d="scan'208";a="672145112"
Received: from rleitch-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.23.131])
	by orsmga002.jf.intel.com with ESMTP; 19 Jan 2015 01:47:00 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: akuster808 <akuster808@gmail.com>, Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 19 Jan 2015 09:46:59 +0000
Message-ID: <5451173.uiUEmT6qcz@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <54BC54FD.5030305@gmail.com>
References: <CAK18fxFQRXRJioWfxZKO6Zwh=u2B21X3iX-Diz4h7Ms_jh-TFQ@mail.gmail.com>
	<54BC54FD.5030305@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Benchmark layer available
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
X-List-Received-Date: Mon, 19 Jan 2015 09:47:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 18 January 2015 16:51:09 akuster808 wrote:
> On 01/17/2015 05:02 PM, Andrei Gherzan wrote:
> > Is there any benchmarking layer available? I was interested in LINPACK
> > and I think it would make sense to have a benchmarking layer which will
> > include stuff like: LINPACK, ioquake3, Whetstone etc.
>
> there are bench mark recipes in meta-openembedded
> 
> meta-oe/recipes-benchmark
> 
> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-benchmar
> k
> 
> I don't know what the threshold is for making a layer from a set of recipes.

I would say:

1) Most importantly, there is someone to step up and maintain the new layer 
who has the time and interest in doing so.

2) There is a logical grouping for the recipes and there are more than one or 
two of them

3) Dependencies between existing layers don't become too much of a problem 
with the creation of the layer

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

