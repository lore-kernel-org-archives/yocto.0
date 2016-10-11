Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8217FE00C3A; Mon, 10 Oct 2016 18:24:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 854E3E00C08
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2016 18:24:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga105.fm.intel.com with ESMTP; 10 Oct 2016 18:24:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,327,1473145200"; d="scan'208";a="1063060703"
Received: from klee32-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.184.241])
	by orsmga002.jf.intel.com with ESMTP; 10 Oct 2016 18:24:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Tue, 11 Oct 2016 14:24:06 +1300
Message-ID: <1676378.mbRJq8UcJs@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.5-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAJ58UN=tw2n70748xW9zoSh1tge-c5MWGUwpRr7pkR_jfh8BXg@mail.gmail.com>
References: <CAJ58UN=tw2n70748xW9zoSh1tge-c5MWGUwpRr7pkR_jfh8BXg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Clarification regarding GCC tool version supported on - Krogoth 2.1.1
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
X-List-Received-Date: Tue, 11 Oct 2016 01:24:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Vijay,

On Mon, 10 Oct 2016 17:44:13 Vijayakumar Badiger wrote:
> Please can some one tell me the tool chain versions supported on the latest
> YPCore-Krogoth.
> I know the it uses default GCC5.3, just wanted to know if older tool chain
> like 4.9XX is supported or not.
> 
> I don't see the feature list like the one listed below for Krogoth 2.1.1.
> which clearly states the tool chain versions supported.
> 
> https://www.yoctoproject.org/downloads/core/jethro20

gcc 4.9 is included in the krogoth branch, and being an earlier default 
version it should work - however it's fair to say it does not receive the same 
level of testing that 5.3 does given that 5.3 is the default.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

