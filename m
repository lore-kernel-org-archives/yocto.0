Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 832FDE00AD7; Mon, 22 Aug 2016 09:10:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E53AE00A92
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 09:10:08 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Aug 2016 09:10:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,560,1464678000"; d="scan'208";a="1018557463"
Received: from peggleto-mobl.ger.corp.intel.com ([10.7.197.226])
	by orsmga001.jf.intel.com with ESMTP; 22 Aug 2016 09:10:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Svein Seldal <sveinse@seldal.com>
Date: Mon, 22 Aug 2016 09:10:08 -0700
Message-ID: <1583578.m5U6sXjPJY@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.6.6-200.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <b5018454-275f-a575-6e2e-089b1b74cec0@seldal.com>
References: <b5018454-275f-a575-6e2e-089b1b74cec0@seldal.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Failing EXTERNALSRC and dangling symlinks
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
X-List-Received-Date: Mon, 22 Aug 2016 16:10:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Svein,

On Mon, 22 Aug 2016 11:57:16 Svein Seldal wrote:
> I am running on a customized Yocto tree based off Poky krogoth and I
> think I have stumbled upon a bug in bb.
> 
> One of our recipes use EXTERNALSRC and EXTERNALSRC_BUILD, set from
> local.conf. When the recipe is built, two symlinks
> ${EXTERNALSRC}/oe-logs and ${EXTERNALSRC}/oe-workdir is created in the
> source tree.
> 
> If the build output tmp/ later is deleted, these two symlinks becomes
> dangling links. Re-running bitbake will cause it to fail. First it warns
> of this during parsing, and later it will crash bb (see below).
> 
> Removing these symlinks when deleting tmp/ ensures bitbake will not crash.
> 
> I suppose this is a bug?

It is - it should be fixed by this patch:

  http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=2a849e7e9be6040bd76b76c24263f63f8f693753

Could you apply this and check if it fixes the issue? If so we'll backport it.

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

