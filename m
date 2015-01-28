Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6496DE0086E; Wed, 28 Jan 2015 03:29:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E778AE00757
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 03:29:24 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 28 Jan 2015 03:26:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,480,1418112000"; d="scan'208";a="518899364"
Received: from nnodonog-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.3.113])
	by orsmga003.jf.intel.com with ESMTP; 28 Jan 2015 03:22:13 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, "Damian,
	Alexandru" <alexandru.damian@intel.com>
Date: Wed, 28 Jan 2015 11:29:22 +0000
Message-ID: <8894702.sRpEkjfxhs@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <CAJTo0LYss1AsRY3RRLrpMg3FyuDbacoM6sP3HO9_gueX-ovjeA@mail.gmail.com>
References: <CAJ2CSBtmYoA+z-hWpUR=-99CTWssLjY74MUh1hm5+Oi70nG7sw@mail.gmail.com>
	<CAJTo0LYss1AsRY3RRLrpMg3FyuDbacoM6sP3HO9_gueX-ovjeA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: HEADSUP - CVE 2015-023 remote code execution in glibc
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
X-List-Received-Date: Wed, 28 Jan 2015 11:29:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 28 January 2015 11:20:27 Burton, Ross wrote:
> On 28 January 2015 at 11:17, Damian, Alexandru <alexandru.damian@intel.com>
> wrote:
> > Do we need to open a bug to track this ?
> 
> Probably for the best to ensure it goes into all the branches we support.

FYI, none of the branches we still officially support use (e)glibc older than 
2.18, which is where the fix went in upstream; even dora that just went out of 
support has 2.18 as the default (2.17 is included though).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

