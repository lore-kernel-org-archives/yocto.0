Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB0F6E00B6F; Mon, 24 Sep 2018 14:57:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50D2DE00B0B
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 14:57:00 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Sep 2018 14:56:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,299,1534834800"; d="scan'208";a="76942877"
Received: from hhooy-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.133.199])
	by orsmga006.jf.intel.com with ESMTP; 24 Sep 2018 14:56:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Clay D. Montgomery" <clay@montgomery1.com>
Date: Tue, 25 Sep 2018 09:56:47 +1200
Message-ID: <3397048.O472oMH2vK@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <5B4BBCA3.3040800@montgomery1.com>
References: <5B496B75.8020408@montgomery1.com>
	<5B4BBCA3.3040800@montgomery1.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to debug unbuildable module error?
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
X-List-Received-Date: Mon, 24 Sep 2018 21:57:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Clay

Somewhat late, but I stumbled across this this morning

On Monday, 16 July 2018 9:29:07 AM NZST Clay D. Montgomery wrote:
> 
> Is there a way to get bitbake to provide more information about why a 
> module is unbuildable?
> 
> I am trying to build this example:
> 
>   poky/meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb
> 
> However, bitbake always reports:
> 
>   "Runtime target 'hello-mod' is unbuildable, removing..."

The actual issue will be printed above this message. Usually it's because the 
recipe depends upon something else that could not be built (and the reason for 
that will be in the message above).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



