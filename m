Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7C95E00C44; Thu,  2 Nov 2017 09:29:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B629E00928
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 09:29:45 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP; 02 Nov 2017 09:29:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,335,1505804400"; d="scan'208";a="145202745"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 02 Nov 2017 09:29:43 -0700
To: Colin Helliwell <colin.helliwell@ln-systems.com>, yocto@yoctoproject.org
References: <06ee01d35330$8d4102e0$a7c308a0$@ln-systems.com>
	<51b14605-1467-71a5-d84a-e45f73796e60@linux.intel.com>
	<214703149.187142.1509606640635@email.1and1.co.uk>
	<1752415703.224739.1509640006960@email.1and1.co.uk>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <872a75ce-9471-09fb-e00d-0ae5da82634a@linux.intel.com>
Date: Thu, 2 Nov 2017 18:29:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <1752415703.224739.1509640006960@email.1and1.co.uk>
Subject: Re: Slightly varying builds
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
X-List-Received-Date: Thu, 02 Nov 2017 16:29:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/02/2017 06:26 PM, Colin Helliwell wrote:

> Following on from this, I'm trying to be able to build my two versions of u-boot, in the *same* build directory.
> I'm not sure if this is possible, but I figured it might be: since u-boot doesn't get put into the rootfs (?), I would ideally be able to build both and just pull down from tmp/deploy/images/.... the image that I want to program into a particular unit.
> I've pushed common stuff into .inc file(s), and have two recipes which set different  'PROVIDES' values.
> However, even after a cleanall on both recipes, bitbaking the second one throws an error "The recipe u-boot-mymachine-dev is trying to install files into a shared area when those files already exist".

Can you share exactly how the two recipes differ?

It seems that you do need to have two different build directories that 
differ in what MACHINE is set to. And that would configure u-boot 
accordingly.


Alex

