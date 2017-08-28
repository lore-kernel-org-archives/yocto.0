Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71716E00C9E; Mon, 28 Aug 2017 13:25:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED6A5E00C89
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 13:25:52 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Aug 2017 13:25:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,442,1498546800"; d="scan'208";a="1189012499"
Received: from pchenn1x-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.73.212])
	by fmsmga001.fm.intel.com with ESMTP; 28 Aug 2017 13:25:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Tue, 29 Aug 2017 08:25:48 +1200
Message-ID: <3382579.O7URAfhVFX@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <dfab7077-0402-1c1f-32dd-3be96d2cce97@dynamicdevices.co.uk>
References: <258ff3cf-5cac-501a-132b-b91c487c4d5b@dynamicdevices.co.uk>
	<2151273.fElYf2KXPe@peggleto-mobl.ger.corp.intel.com>
	<dfab7077-0402-1c1f-32dd-3be96d2cce97@dynamicdevices.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Problems running image in qemu (x86)
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
X-List-Received-Date: Mon, 28 Aug 2017 20:25:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 29 August 2017 12:57:35 AM NZST Alex J Lennon wrote:
> On 28/08/2017 10:32, Paul Eggleton wrote:
> > On Sunday, 27 August 2017 1:09:49 AM NZST Alex J Lennon wrote:
> >> I have just built against master though and am seeing screen corruption.
> >>
> >> e.g. https://postimg.org/image/xjcdybdul
> > Yuck :( Would you please file a bug for this? I'm aware we've upgraded qemu 
> > recently (I assume this was with the 2.10-rc2 version currently in master?), 
> > maybe that has something to do with it.
> >
> 
> Will do Paul. 

Thanks!

> (I don't suppose you're back over for ELC-E 2017 or FOSDEM
> 2018 by any chance?)

I'd love to be, but it's rather unlikely at this point unfortunately.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

