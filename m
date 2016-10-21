Return-Path: <paul.eggleton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B16A3E00DD0; Thu, 20 Oct 2016 18:28:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D0A4E00DC8
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 18:28:51 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Oct 2016 18:28:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,521,1473145200"; d="scan'208";a="1047781183"
Received: from swang16-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.182.202])
	by orsmga001.jf.intel.com with ESMTP; 20 Oct 2016 18:28:47 -0700
From: Paul Eggleton <paul.eggleton@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 21 Oct 2016 14:28:44 +1300
Message-ID: <2881832.ymlYa7iWT9@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.7-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <47ed04f5-61b9-cdf6-bda6-b724d6a67591@windriver.com>
References: <1669674.XxUMWkXXym@peggleto-mobl.ger.corp.intel.com>
	<47ed04f5-61b9-cdf6-bda6-b724d6a67591@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 21 Oct 2016 01:28:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wed, 19 Oct 2016 23:54:59 Bruce Ashfield wrote:
> On 2016-10-19 10:25 PM, Paul Eggleton wrote:
> > I've been gathering material for the 2.2 release notes, here is what I
> > have at the moment. Things missing:
> > 
> > * Any new features/enhancements for the kernel tools - Bruce, is there
> > anything worth noting?
> 
> It is probably worth mentioning a few things on that front, I'll provide
> some raw bullets points here .. and they can be wordsmithed as needed:
> 
>   - kernel tools were streamlined, with patching/configuration overhead
>     reduced or eliminated in most cases.
>   - kernel configuration audit was improved and runs as a standalone tool
>   - kernel configuration audit provides symbol resolution and dependency
>     information to allow troubleshooting of missing/incorrect/invalid
> symbols
>   - kernel tools use upstream utilities directly, without local patches or
>     wrappers.

Thanks Bruce, I pretty much included this verbatim.

Cheers,
Paul

-- 
Paul Eggleton
Intel Open Source Technology Centre

