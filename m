Return-Path: <paul.eggleton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63E0FE0089B; Wed, 19 Oct 2016 19:56:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD69DE0080D
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 19:56:40 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga104.jf.intel.com with ESMTP; 19 Oct 2016 19:56:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,516,1473145200"; d="scan'208";a="21911212"
Received: from jkursms-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.184.45])
	by orsmga004.jf.intel.com with ESMTP; 19 Oct 2016 19:56:37 -0700
From: Paul Eggleton <paul.eggleton@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Oct 2016 15:56:31 +1300
Message-ID: <10330907.99LmuhynIv@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.7-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAMKF1sqAZY9FHeco3M_U0EDZ+4RXw121yH7hOQrW5zZcBz3+4Q@mail.gmail.com>
References: <1669674.XxUMWkXXym@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1sqAZY9FHeco3M_U0EDZ+4RXw121yH7hOQrW5zZcBz3+4Q@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 2.2 release note material
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
X-List-Received-Date: Thu, 20 Oct 2016 02:56:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wed, 19 Oct 2016 19:51:43 you wrote:
> On Wed, Oct 19, 2016 at 7:25 PM, Paul Eggleton <paul.eggleton@intel.com>
> wrote:
> > I've been gathering material for the 2.2 release notes, here is what I
> > have at the moment. Things missing:
> > 
> > * Any new features/enhancements for the kernel tools - Bruce, is there
> > anything worth noting?
> 
> it does not cover the deprecated/removed packages. Eg uclibc has been
> removed from oe-core
> gcc 4.x is also out.

I guess we tend to cover those in the migration guide (which is linked from 
there). We should cover them briefly here as well though.

> musl can build world for all primary architectures. ppc64 is now supported.

I wasn't aware that was a milestone we had just achieved for this release - 
impressive. We should definitely list that.

Thanks,
Paul

-- 
Paul Eggleton
Intel Open Source Technology Centre

