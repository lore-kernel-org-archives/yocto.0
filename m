Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC043E00A26; Wed,  3 Jun 2015 00:42:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C274E009E5
	for <yocto@yoctoproject.org>; Wed,  3 Jun 2015 00:42:36 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 03 Jun 2015 00:42:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,546,1427785200"; d="scan'208";a="719853262"
Received: from ndossanx-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.29.28])
	by fmsmga001.fm.intel.com with ESMTP; 03 Jun 2015 00:42:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Wed, 03 Jun 2015 08:42:15 +0100
Message-ID: <71668614.b93BMjqxRS@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <30C2D590D16A5C46ADFE6521910377985392F38F@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377985392F38F@AZ-US1EXMB03.global.avaya.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Kernel module not installed in rootfs
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
X-List-Received-Date: Wed, 03 Jun 2015 07:42:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 02 June 2015 19:58:50 Vuille, Martin wrote:
> Yocto 1.6.1
> 
> I have added a module to my kernel.
> 
> The module is getting built, I see a kernel-module-blah-blah RPM
> and it contains the .ko
> 
> I add kernel-module-blah-blah to one of the packagegroups
> contained in my image, I see do_rootfs task run, but the module
> is not in the image. In log.do_rootfs I see that the module is NOT
> one of the packages installed.
> 
> I did a cleansstate on the image and the packagegroup, I did a
> cleanall on virtual/kernel, makes no difference.
> 
> If I do a "clean build" from scratch, then the module is installed.
> 
> Any thoughts on what I'm missing here?

Something is definitely strange here.

If you cleansstate and rebuild the packagegroup *after* building the kernel 
with the module in it, does that make a difference?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

