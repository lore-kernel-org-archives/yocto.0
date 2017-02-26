Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0A02E00935; Sun, 26 Feb 2017 13:01:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3A0AE0033D
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2017 13:01:48 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP; 26 Feb 2017 13:01:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,210,1484035200"; d="scan'208";a="1102529935"
Received: from dkharprx-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.186.172])
	by orsmga001.jf.intel.com with ESMTP; 26 Feb 2017 13:01:45 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Mon, 27 Feb 2017 10:01:43 +1300
Message-ID: <17107755.BvxCBHeu1s@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/5.3.3 (Linux/4.9.10-200.fc25.x86_64; KDE/5.29.0; x86_64; ; )
In-Reply-To: <CAF1M0z5-fo4TOBppF7ETWYUpPc-tqcni=pv=+oyRnHv3PuLUdw@mail.gmail.com>
References: <CAF1M0z5-fo4TOBppF7ETWYUpPc-tqcni=pv=+oyRnHv3PuLUdw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Conflicts: Meta-layers with same priority
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
X-List-Received-Date: Sun, 26 Feb 2017 21:01:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 26 February 2017 9:24:05 PM NZDT SatyaNarayana Sampangi wrote:
> Hi all,
> 
> I need to know, if two meta-layers in poky has the same priority, then how
> it is resolved.
> 
> say e.g,
> 
> mylayer-1 with default priority:6
> mylayer-2 with default priority:6
> 
> How it will be resolved.

If you mean which of two recipes with the same name will be selected, it will 
be the same as if the recipes were in the same layer - i.e. other mechanisms 
such as the version number (higher is preferred); DEFAULT_PREFERENCE (if 
specified); or PREFERRED_VERSION_recipename will be used to determine which 
gets selected.

In general if one of these layers is under your control you are probably best 
advised to set the priority different there as desired, or use 
PREFERRED_VERSION to explicitly choose the desired version for recipes which 
are overlayed.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

