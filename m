Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 038DCE008CC; Wed, 11 Feb 2015 01:31:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D53C0E00815
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 01:30:59 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 11 Feb 2015 01:25:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,557,1418112000"; d="scan'208";a="684121434"
Received: from jjurski-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.24.180])
	by orsmga002.jf.intel.com with ESMTP; 11 Feb 2015 01:30:57 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Raghavendra Kakarla <raghavendra.kakarla@inedasystems.com>
Date: Wed, 11 Feb 2015 09:30:57 +0000
Message-ID: <74932485.zASdODCka1@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <26096207.41.1423630551583.JavaMail.kraghavendra@Raghavendra>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<1968954.yQ8YLUUWUl@peggleto-mobl5.ger.corp.intel.com>
	<26096207.41.1423630551583.JavaMail.kraghavendra@Raghavendra>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto-custom kernel build issue
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
X-List-Received-Date: Wed, 11 Feb 2015 09:31:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 11 February 2015 10:25:51 Raghavendra Kakarla wrote:
> Yes I extracted the files on to the SD card.

Right, and the lesson is you must do that as root, not as a normal user.

> I want to build some packages from openWRT which are not in YOCTO in yocto
> build system.
> 
> For this I download the package tar files from openwrt wrote the recipe for
> building this tar files. Building the tar files is completed without any
> errors but when installing this package in the image it give some error
> like following. ERROR: hostapd not found in the base feeds (dhruwa_ioe
> mips32r2el mips32el mipsel noarch any all).

My advice here is to use the recipe we already have in the community to build 
this:

http://layers.openembedded.org/layerindex/branch/master/recipes/?q=hostapd

In general the OE layer index is the best place to find layers providing 
recipes to build anything that isn't already supplied in Poky/OE-core by 
default.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

