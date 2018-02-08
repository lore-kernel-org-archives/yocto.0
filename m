Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 426E1E00EE3; Wed,  7 Feb 2018 22:29:52 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2358EE00E44
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 22:29:50 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Feb 2018 22:29:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,477,1511856000"; d="scan'208";a="16207687"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga007.fm.intel.com with ESMTP; 07 Feb 2018 22:29:47 -0800
To: Janez Svetokravsky <janez.svetokravsky@gmail.com>, yocto@yoctoproject.org
References: <CACy3EUChjZSqN+5Vw1uUDYiLbx_cipsF3dpZ2HG=z_0YEw4Kbw@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <c276a07d-0e78-0ab3-cbb3-9d39098f95ac@linux.intel.com>
Date: Thu, 8 Feb 2018 08:23:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CACy3EUChjZSqN+5Vw1uUDYiLbx_cipsF3dpZ2HG=z_0YEw4Kbw@mail.gmail.com>
Subject: Re: Changing gcc version and arch for single yocto recipe
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
X-List-Received-Date: Thu, 08 Feb 2018 06:29:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 02/07/2018 08:48 PM, Janez Svetokravsky wrote:
> I have just stumbled upon interesting problem, which i do not know how 
> to solve. I am using yocto to build image for ARM cortex-A9 CPU. default 
> gcc used is version 5.2
> 
> Beside ARM cortex-A9 there is cortex-m0plus chip, which is located on 
> the same board. From now on i will use abbreviations A9 and M0. 
> Occasionally A9 is used to upgrade software on M0, therefor upgrade 
> image for M0 is located in rootfs which is accessed by A9. Until now, i 
> used different compiler/environment to compile firmware for M0 and 
> afterwards copied M0 image to A9 rootfs.
> 
> I would like to move compiling of M0 firmware into yocto. gcc version 
> used for M0 firmware is different and must not be changed, same goes for 
> A9. So my question is: Is it possible to specify different version of 
> gcc and different architecture, for single yocto recipe?


You can build any recipe for a different machine in the same build 
directory:

MACHINE=someothermachine bitbake <firmware>

You will find the packages in deploy dir.

Or just set up a separate build directory, and build there. Then use any 
suitable way to copy the result over (such as a recipe that pulls the 
ready-built firmware in).

Alex

