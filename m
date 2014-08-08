Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1152E00543; Fri,  8 Aug 2014 10:29:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2922BE0034B
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 10:29:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Aug 2014 10:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,826,1400050800"; d="scan'208";a="466591413"
Received: from colmmora-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.127])
	by azsmga001.ch.intel.com with ESMTP; 08 Aug 2014 10:29:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 08 Aug 2014 18:29:19 +0100
Message-ID: <1824551.xs0pT6haYC@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.7-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <53E504B7.2030400@mlbassoc.com>
References: <53E4F720.4070608@mlbassoc.com> <53E50175.1070703@windriver.com>
	<53E504B7.2030400@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Errors when installing SDK
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
X-List-Received-Date: Fri, 08 Aug 2014 17:29:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Friday 08 August 2014 11:11:19 Gary Thomas wrote:
> On 2014-08-08 10:57, Mark Hatle wrote:
> > And yes, I suspect the right answer is we need to set a limit on the
> > xargs. (I'm kind of surprised that we didn't already have a limit set!)
>
> If you can point me at where that file comes from (a simple
> search didn't help), I'll give it a try and propose a patch.

It's in meta/classes/populate_sdk_base.bbclass (there's only one instance of 
xargs in there).

Cheers,
Paul
-- 

Paul Eggleton
Intel Open Source Technology Centre

