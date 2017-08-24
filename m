Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EC5FE00CF6; Thu, 24 Aug 2017 09:37:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A17D4E00BA2
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 09:37:33 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga105.jf.intel.com with ESMTP; 24 Aug 2017 09:37:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,422,1498546800"; d="scan'208";a="304030591"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.134])
	by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2017 09:37:32 -0700
Message-ID: <1503593196.2166.13.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Gera Pesikoff <gera-pesikoff@rambler.ru>
Date: Thu, 24 Aug 2017 11:46:36 -0500
In-Reply-To: <1503588286.42108.3061.23849@mail.rambler.ru>
References: <1503588276.608193.20925.31663@mail.rambler.ru>
	<1503588286.42108.3061.23849@mail.rambler.ru>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: ERROR: Unable to connect to bitbake server, or start one
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
X-List-Received-Date: Thu, 24 Aug 2017 16:37:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2017-08-24 at 18:24 +0300, Gera Pesikoff wrote:
> Hi
> I started to study bitbake and decided to repeat the BitBake Hello
> World from the manual
> (http://www.yoctoproject.org/docs/2.3.1/bitbake-user-manual/bitbake-user-manual.html#bitbake-hello-world).
> I do everything according to the instructions, but when I run the
> bitbake command, I get the following output:
> 
> NOTE: Retrying server connection... (Traceback (most recent call
> last):
>   File "/home/leonid/test/bitbake/lib/bb/main.py", line 432, in
> setup_bitbake
>     topdir, lock = lockBitbake()
>   File "/home/leonid/test/bitbake/lib/bb/main.py", line 484, in
> lockBitbake
>     lockfile = topdir + "/bitbake.lock"
> TypeError: unsupported operand type(s) for +: 'NoneType' and 'str'
> )
> 
> This is repeated five times, and at the end:
> 
> ERROR: Unable to connect to bitbake server, or start one

Are you running bitbake from the build folder (TOPDIR)?
> 
> Could someone please tell me what the problem is and what I can do
> about it?
> I'm using Kubuntu 17.04 and clear Ubuntu 17.04. BitBake Build Tool
> Core version 1.35.0
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



