Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED9A3E00D59; Tue, 26 Apr 2016 19:12:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB426E00D56
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 19:12:08 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 26 Apr 2016 19:12:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,539,1455004800"; d="scan'208";a="793130006"
Received: from wlee9-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.75])
	by orsmga003.jf.intel.com with ESMTP; 26 Apr 2016 19:12:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: S.Jaritz@esa-grimma.de
Date: Wed, 27 Apr 2016 14:12:02 +1200
Message-ID: <58471203.UVK15pv3J4@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.7-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <CAJTo0LYB=p-rOcz4MUxjkyWE1RX0zhTOdFvtaf_rMepjOPzMOg@mail.gmail.com>
References: <OFFCA9FD4C.003E7E4C-ONC1257FA1.002BA274-C1257FA1.002C5AF6@esa-grimma.de>
	<CAJTo0LYB=p-rOcz4MUxjkyWE1RX0zhTOdFvtaf_rMepjOPzMOg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: problems with cmake finding the c++ includes
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
X-List-Received-Date: Wed, 27 Apr 2016 02:12:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 26 Apr 2016 09:39:26 Burton, Ross wrote:
> > SUMMARY = "g3log"
> > SECTION = "sek4"
> > LICENSE = "MIT"
> > LIC_FILES_CHKSUM = "file://$
> > {COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

This appears to be the Unlicense [1]. It's worth noting that we seem to be 
missing this in our common licenses, though it's listed by SPDX [2]. As an 
aside, maybe it's time for us to bring in new license files from SPDX if there 
are any others like this?
 
> This should point to the LICENSE file in the clone, and that license file
> doesn't say MIT.
> 
> > DEPENDS ="boost"

I don't think this is correct - at least I can't see any sign upstream that it 
needs boost. It even claims that it needs no external libraries.

Cheers,
Paul

[1] http://unlicense.org/
[2] https://spdx.org/licenses/Unlicense.html

-- 

Paul Eggleton
Intel Open Source Technology Centre

