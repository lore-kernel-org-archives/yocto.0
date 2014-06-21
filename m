Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CC55E002A7; Sat, 21 Jun 2014 02:48:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B2ADE00289
	for <yocto@yoctoproject.org>; Sat, 21 Jun 2014 02:48:51 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Jun 2014 02:48:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,519,1400050800"; d="scan'208";a="561108166"
Received: from ckithala-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.251])
	by orsmga002.jf.intel.com with ESMTP; 21 Jun 2014 02:48:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Insop Song <insop.song@gmail.com>
Date: Sat, 21 Jun 2014 10:48:46 +0100
Message-ID: <87712331.jA9PWvf2Bz@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.7-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <CACzyEJ_LqoPW5O5zbyg3784U477JOgDirdGWEPKqBuzsS+e3cA@mail.gmail.com>
References: <CACzyEJ-cuXazzEDHpiVx-ad1jMaBvFL6AX8vDk-YVbPnEJ031A@mail.gmail.com>
	<CAJTo0LZo9EbHG2Nc8=5zZQMFfidMQh2fPLPyHWSOT0kC9LDmrQ@mail.gmail.com>
	<CACzyEJ_LqoPW5O5zbyg3784U477JOgDirdGWEPKqBuzsS+e3cA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: how to disable shell access
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
X-List-Received-Date: Sat, 21 Jun 2014 09:48:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 19 June 2014 20:35:49 Insop Song wrote:
> Thank you Ross,
> 
> To answer my own question on "1. how to change the default password of
> root?" - remove "debug-tweaks" and do as it is described in
> "https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_pass
> word"
> 
> Ref:
> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_passw
> ord
> http://bec-systems.com/site/967/setting-the-root-password-in-an-openembedde
> d-image
> https://lists.yoctoproject.org/pipermail/poky/2013-August/009098.html
> http://gumstix.8.x6.nabble.com/Duovero-EXTRA-IMAGE-FEATURES-tools-sdk-passw
> ord-td4968867.html

FYI there is a section that covers this in the work-in-progress manual for
1.7:

http://www.yoctoproject.org/docs/1.7/dev-manual/dev-manual.html#making-images-more-secure

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

