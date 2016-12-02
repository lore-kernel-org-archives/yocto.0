Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A940E00D6D; Fri,  2 Dec 2016 03:39:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 395C6E00A64
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2016 03:39:11 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP; 02 Dec 2016 03:39:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,729,1477983600"; d="scan'208";a="36470448"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 02 Dec 2016 03:39:10 -0800
To: yocto@yoctoproject.org
References: <CAGMNF6VXO9PzmXEb-tPHnw7zxRAM-pUgHa3O2XUVKE2xYidD1A@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <aad8d580-b2f9-4cd1-9e2a-d355f6f7cf2e@linux.intel.com>
Date: Fri, 2 Dec 2016 13:39:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAGMNF6VXO9PzmXEb-tPHnw7zxRAM-pUgHa3O2XUVKE2xYidD1A@mail.gmail.com>
Subject: Re: Yocto doesn't recognize cross-compiled binaries inside SDK
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
X-List-Received-Date: Fri, 02 Dec 2016 11:39:12 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2016 10:36 AM, Kun Yi wrote:
> I'm trying to use SDK for an existing image to run cross-compiled code
> on my host machine. My target is ARM and host is x86_64. The SDK has
> arm-openbmc-linux-gnueabi toolchains installed. (The rationale is to
> build and run C++ unit tests for the modules that I'm developing on
> the host, but that's not relevant)

Perhaps it is relevant - an alternative approach is to build the unit 
tests and modules for the host machine (by enabling a native variant in 
the recipe), and then they should simply run. If you are not testing 
ARM-specific code, then it shouldn't matter.

Generally, we don't attempt to run target unit tests on the host machine 
- they go into target image, and are executed natively on the target.

Qemu emulation for running binaries kind of works, and we use it for a 
few things like gobject introspection and pre-generating data caches, 
but it is notoriously tricky and prone to breakage.

Alex


