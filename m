Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7B88E0093B; Mon,  9 Feb 2015 03:06:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32DEDE00596
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 03:06:49 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 09 Feb 2015 03:03:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,543,1418112000"; d="scan'208";a="524709187"
Received: from jjloney-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.17.98])
	by orsmga003.jf.intel.com with ESMTP; 09 Feb 2015 02:58:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Parthiban Kandasamy <parthiban@ulivesystems.com>
Date: Mon, 09 Feb 2015 11:06:46 +0000
Message-ID: <3253782.3YlRbQs6Cl@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <CABNKipLeXK-jMOnwkyVhjD2PBSANTj5AtikTC2pOzmu93FuFsA@mail.gmail.com>
References: <CABNKipLeXK-jMOnwkyVhjD2PBSANTj5AtikTC2pOzmu93FuFsA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: SDKMACHINE settings
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
X-List-Received-Date: Mon, 09 Feb 2015 11:06:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Parthiban,

On Thursday 05 February 2015 17:43:31 Parthiban Kandasamy wrote:
> entirely i am new to embedded linux. first i did bitbake of
> core-image-minimal it came out very well. then again i tried sdk toolchain
> development using bitbake -k meta-toolchain-qte. it gives so many error. so
> could you provide details for how do i start to develop BSP for
> beagleboard-XM. i am entirely confused to understand yocto online document.

Can you please include a log of the errors you are receiving?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

