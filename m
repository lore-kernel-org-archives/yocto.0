Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61EF0E00AAF; Wed,  1 Nov 2017 10:04:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E71BEE00928
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 10:04:11 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP; 01 Nov 2017 10:04:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,329,1505804400"; d="scan'208";a="144732347"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 01 Nov 2017 10:04:08 -0700
To: colin.helliwell@ln-systems.com, yocto@yoctoproject.org
References: <06ee01d35330$8d4102e0$a7c308a0$@ln-systems.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <51b14605-1467-71a5-d84a-e45f73796e60@linux.intel.com>
Date: Wed, 1 Nov 2017 19:04:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <06ee01d35330$8d4102e0$a7c308a0$@ln-systems.com>
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
X-List-Received-Date: Wed, 01 Nov 2017 17:04:12 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 11/01/2017 06:43 PM, colin.helliwell@ln-systems.com wrote:
> I need to build two slightly varying versions of our Yocto build – one 
> for the production units and one for development.
> 
> They differ in only a few ways – the kernel and apps are the same. But 
> one has Dropbear, whilst the other doesn’t; and the U-Boot configs & 
> patches are different.
> 
> I’m wondering where to do the separation – image, distro, conf…?
> 
> Any thoughts on the cleanest way to split and/or inherit them would be 
> appreciated.


Image, certainly. Put the common bits into an include, and specific bits 
into image-production|development.bb files. Poky has plenty of examples 
for this.


Alex

