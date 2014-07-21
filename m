Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 064FCE0078F; Mon, 21 Jul 2014 03:13:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6660E0078A
	for <yocto@yoctoproject.org>; Mon, 21 Jul 2014 03:13:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Jul 2014 03:13:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,699,1400050800"; d="scan'208";a="576362021"
Received: from atdias-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.153])
	by orsmga002.jf.intel.com with ESMTP; 21 Jul 2014 03:13:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Wiktor S. Ovalle Correa" <w.s.ovalle@gmail.com>
Date: Mon, 21 Jul 2014 11:13:29 +0100
Message-ID: <1652188.lq5AKA62ut@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.4-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <CALYamyLPp6BG-1ev_+z2=ZeH_DhxAUsTRuJ86MQF6n6xi5uMew@mail.gmail.com>
References: <CALYamyLPp6BG-1ev_+z2=ZeH_DhxAUsTRuJ86MQF6n6xi5uMew@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Building image without kernel
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
X-List-Received-Date: Mon, 21 Jul 2014 10:13:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Wiktor,

On Monday 21 July 2014 10:02:50 Wiktor S. Ovalle Correa wrote:
> I didn't find it anywhere - is it possible to only use linux headers
> without compiling kernel?
> 
> My problem is rather unusual - i got to use custom kernel which has been
> customized long ago in a horrible way by a former co-worker so it's
> impossible to compile it with yocto in a reasonable time, but i need its
> headers to compile other parts of a system.
> 
> And it appears that it might be enough to only disable building kernel
> modules, if there's a way to do so.

You can have your own recipe that has PROVIDES = "virtual/kernel" (and would 
also need to be selected in configuration as the PREFERRED_PROVIDER of that) 
but that only installs the headers. You'd probably do well to use the 
linux-dummy recipe as an example (meta/recipes-kernel/linux/linux-dummy.bb).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

