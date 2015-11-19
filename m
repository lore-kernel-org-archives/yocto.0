Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7396DE006D1; Thu, 19 Nov 2015 09:22:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76978E0049B
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 09:22:09 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 19 Nov 2015 09:22:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,318,1444719600"; d="scan'208";a="689652240"
Received: from ywong15-mobl2.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.131.114])
	by orsmga003.jf.intel.com with ESMTP; 19 Nov 2015 09:22:07 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 20 Nov 2015 06:22:04 +1300
Message-ID: <2257859.ndGzMElvfa@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.12-101.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <564E0070.3090708@mlbassoc.com>
References: <564DFBEA.5070104@mlbassoc.com> <564E0070.3090708@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Query configuration
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
X-List-Received-Date: Thu, 19 Nov 2015 17:22:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Thursday 19 November 2015 10:01:36 Gary Thomas wrote:
> On 2015-11-19 09:42, Gary Thomas wrote:
> > I have a recipe that needs to make sure a global setting is
> > in place (used by a different recipe).  How can I test for
> > this variable/setting in my recipe and issue a warning/error
> > if it is not?
> > 
> > Thanks for any ideas
> 
> Never mind - it occurred to me to see if some other recipe had
> such checks and I found some and was able to add this to my recipe:
> 
> # Make sure SPI will is enabled
> python do_check_variables() {
>      ENABLE_SPI_BUS = d.getVar('ENABLE_SPI_BUS', True)
>      if ENABLE_SPI_BUS != '1':
>         bb.fatal("PiFace module can't work without SPI support - Add
> ENABLE_SPI_BUS='1' to local.conf") }
> addtask check_variables before do_fetch
> 
> Not sure if this is the best way but it suffices.

Another thing you could do would be to do a similar thing except use anonymous 
python and raise SkipRecipe instead of bb.fatal().

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

