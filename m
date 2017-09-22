Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E8BDE00D01; Fri, 22 Sep 2017 15:52:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CCE5E00C35
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 15:52:02 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 22 Sep 2017 15:52:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,428,1500966000"; d="scan'208";a="138491233"
Received: from edellynx-mobl.ger.corp.intel.com (HELO
	jlock-mobl3.ger.corp.intel.com) ([10.252.16.59])
	by orsmga002.jf.intel.com with ESMTP; 22 Sep 2017 15:52:00 -0700
To: Mike Looijmans <mike.looijmans@topic.nl>,
	Martin Jansa <martin.jansa@gmail.com>, Michael Ho <Michael.Ho@bmw-carit.de>
References: <1498816090789.97105@bmw-carit.de>
	<CA+chaQcS17v-sPc9Prhu0JTf_TNTRXBEDxnwzZ6eTFC0aYSEJw@mail.gmail.com>
	<80532641-d9f5-c6db-15de-257bc075f88c@topic.nl>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <7501485e-57df-ffbc-9189-f22edbb4de74@linux.intel.com>
Date: Fri, 22 Sep 2017 23:51:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <80532641-d9f5-c6db-15de-257bc075f88c@topic.nl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Backwards compatibility checking sstate-cache
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
X-List-Received-Date: Fri, 22 Sep 2017 22:52:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 22/09/17 15:00, Mike Looijmans wrote:
> I think this remark in the referenced link is the best summary of "what 
> could be improved":
> 
> """the biggest weakness of the sstate signature bits, in my opinion, is 
> that it only tracks inputs, not outputs. If task A depends on B, and the 
> metadata input to B changes, then A will be rebuilt, even if the 
> *output* of B didn't change as a result of the change to its metadata."""
> 
> For example, if someone fixes a bug in gcc that only applies to MIPS, 
> then builds that only target an ARM machine shouldn't be affected. Much 
> worse than that, I have a dependency like:
> gcc -> ... -> python -> bitstream tool -> FPGA image
> 
> so this means that a change in gcc causes Python to rebuild, which 
> causes the bitstream tool to be rebuilt and produce idential output, and 
> that triggers a roughly 31-hour build of lots of FPGA images. These are 
> the ones we really want to break. A binary output compare would help a 
> lot, even if 80% of the libraries fail to create reproducible output, I 
> may still be spared those 31 hours...
> 
> I think tracking digital output is technically feasible, and won't 
> require any change to existing recipes.
> 
> Also think about "feed" setups. When I see my settop reporting "331 
> packages need updating"... It'd be great if that could be avoided.
> 

That's what packagefeed-stability.bbclass is for. Work on binary 
reproducibility will improve things here too.

Joshua

