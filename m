Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF3DFE00B9C; Tue, 20 Sep 2016 19:47:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76AF2E00A64
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 19:47:07 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga105.jf.intel.com with ESMTP; 20 Sep 2016 19:47:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,371,1470726000"; d="scan'208";a="11539464"
Received: from klee5-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.180.153])
	by fmsmga005.fm.intel.com with ESMTP; 20 Sep 2016 19:47:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mont3z Claros <mont3z.claro5@gmail.com>
Date: Wed, 21 Sep 2016 14:47:02 +1200
Message-ID: <2654708.N6AcsUUN51@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.3-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAJ70iBSwzQnYW67Wb79Zga2hqZYRmgXstEqAao3N9BYgEf8z_Q@mail.gmail.com>
References: <CAJ70iBSwzQnYW67Wb79Zga2hqZYRmgXstEqAao3N9BYgEf8z_Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Meta layer for pine64
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
X-List-Received-Date: Wed, 21 Sep 2016 02:47:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Montez,

On Fri, 16 Sep 2016 14:01:41 Mont3z Claros wrote:
> I just finished a first beta version of a meta layer for SBC pine64.
> You can find it in  https://github.com/mont3z/meta-pine64
> 
> I'd appreciate if anyone has any comments on possible improvements. A
> major problem I had was the necessity of two toolchains: one for
> compiling u-boot (32 bits) and another for compiling all other
> components (64 bis). At the moment I have a very ugly hack to do it.
> The 32 bit toolchain is an external toolchain and I set PATH
> environmental variable in u-boot recipe.

If you plan on maintaining this layer then it would be great if you could 
submit it to the OE layer index (at http://layers.openembedded.org ).

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

