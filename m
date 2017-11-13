Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0770E00CC4; Mon, 13 Nov 2017 12:07:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF753E00BEA
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 12:07:02 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Nov 2017 12:07:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,389,1505804400"; 
   d="scan'208";a="2215918"
Received: from mintingh-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.67.199])
	by fmsmga001.fm.intel.com with ESMTP; 13 Nov 2017 12:06:56 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Nov 2017 09:06:52 +1300
Message-ID: <2151349.y7FU02UkXM@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAJTo0LY8QPcMKQgPDYsRwRYBwy86g3XO34y2EzCkYWFDTHd2cQ@mail.gmail.com>
References: <CAG8GRtgq1qPe78V+fu-C6Mb7WZ_+B6_8r9Z0u594PLNE0BWR4w@mail.gmail.com>
	<CAJTo0LY8QPcMKQgPDYsRwRYBwy86g3XO34y2EzCkYWFDTHd2cQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Bitbake fails when enabling tools-testapps
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
X-List-Received-Date: Mon, 13 Nov 2017 20:07:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 14 November 2017 5:37:23 AM NZDT Burton, Ross wrote:
> On 12 November 2017 at 08:18, Chris Hughes <89dragon@gmail.com> wrote:
> 
> >   - nothing provides at needed by ltp-20170116-r0.corei7_64
> >
> 
> Well at is part of oe-core so that should have been built.  "bitbake at" to
> see why, or if that works then rebuilding your image should work (although
> it really should have been built already).

Chris figured this out and reported back on the IRC channel - turns out that 
in his configuration, "at" was in PACKAGE_EXCLUDE. Unfortunately dnf is not 
being very clear about why the package is conflicting - of course it wouldn't 
be able to say anything about PACKAGE_EXCLUDE itself, but nevertheless the 
message is still pretty vague.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

