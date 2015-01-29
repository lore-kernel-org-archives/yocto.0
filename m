Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03C3BE0080C; Thu, 29 Jan 2015 05:37:34 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7396E006EF
	for <yocto@yoctoproject.org>; Thu, 29 Jan 2015 05:37:22 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 29 Jan 2015 05:34:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="447000745"
Received: from jamiewei-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.23.125])
	by FMSMGA003.fm.intel.com with ESMTP; 29 Jan 2015 05:23:31 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Parthiban Kandasamy <parthiban@ulivesystems.com>
Date: Thu, 29 Jan 2015 13:37:19 +0000
Message-ID: <1829750.FRYgRRlTT7@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <CABNKipLBqieNV0h=be5W=E=8FBmMg0_we=M=H=ZqeH3LEJnzYA@mail.gmail.com>
References: <CABNKipLBqieNV0h=be5W=E=8FBmMg0_we=M=H=ZqeH3LEJnzYA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Python task error
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
X-List-Received-Date: Thu, 29 Jan 2015 13:37:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Parthiban,

On Thursday 29 January 2015 18:05:11 Parthiban Kandasamy wrote:
> i build yocto for beagleboard XM, while building tar --same-order error
> shown.
> i am using x86_64 processor and Opensuse 13.2.
> please tell me to overcome to this problem.

This is a very sparse description of the actual error you are receiving, 
normally we would ask for more details. You don't mention what version of the 
build system you are using, but at a guess, is it the problem referred to in 
the following bug report?

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=5342

If so, either apply the patch mentioned in the bug, or upgrade to a more 
recent release that includes it (1.5.1 or later).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

