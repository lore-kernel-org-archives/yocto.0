Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE901E00D18; Tue, 13 Dec 2016 17:15:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E61AE00BC0
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2016 17:15:34 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga105.fm.intel.com with ESMTP; 13 Dec 2016 17:15:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,344,1477983600"; d="scan'208";a="17764954"
Received: from bitbang.jf.intel.com (HELO [10.7.199.68]) ([10.7.199.68])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2016 17:15:33 -0800
To: "Bystricky, Juro" <juro.bystricky@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <6E51916E4A1F32428260031F4C7CD2B6118C682A@ORSMSX112.amr.corp.intel.com>
From: Randy Witt <randy.e.witt@linux.intel.com>
Message-ID: <72ee57a7-ef6f-2e50-e4c3-73f8f814d3cb@linux.intel.com>
Date: Tue, 13 Dec 2016 17:15:33 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B6118C682A@ORSMSX112.amr.corp.intel.com>
Subject: Re: meta-zephyr layer
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
X-List-Received-Date: Wed, 14 Dec 2016 01:15:38 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

> The new meta-zephyr is work based on previous original work by
> Randy Witt and Richard Purdie, so it is actually a second kick at the can.
>

One of the things I did when I originally put this together that could now 
change is qemuzephyrrunner.py which is used in the tests. I did it because 
runqemu previously had quite a bit of machine specific configuration in it.

As of 2.2, runqemu now allows for qemu configuration to be specified in the bsp 
in the form of qemuboot.conf. So now, theoretically qemuzephyrunner.py could be 
removed, and instead the configuration could be moved into the "bsp".

This would also remove the need for manually specifying a qemu commandline 
argument, since you could use runqemu.

Another great add if anyone is interested would be to have a menuconfig task 
that works similar to the kernel.

Juro said he had filed some bugs for these items and more, so if anyone is 
interested please take a look at bugzilla. :)

> This is a work in progress, any feedback is appreciated.
>
> Juro
>
>


