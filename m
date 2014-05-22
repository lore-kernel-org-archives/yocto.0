Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B629CE00B87; Thu, 22 May 2014 06:15:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga09.intel.com (unknown [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACACAE0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 06:15:03 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 May 2014 06:09:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,887,1392192000"; d="scan'208";a="544904904"
Received: from mcomyns-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.122])
	by orsmga002.jf.intel.com with ESMTP; 22 May 2014 06:14:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
Date: Thu, 22 May 2014 14:14:43 +0100
Message-ID: <1965694.z39UhZdkqB@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.4-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <1400763602.12423.YahooMailNeo@web122506.mail.ne1.yahoo.com>
References: <1400754665.64074.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<9159150.KsUY2KZbMf@peggleto-mobl5.ger.corp.intel.com>
	<1400763602.12423.YahooMailNeo@web122506.mail.ne1.yahoo.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: help needed
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
X-List-Received-Date: Thu, 22 May 2014 13:15:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 22 May 2014 06:00:02 Alexandru Vaduva wrote:
> On Thursday, May 22, 2014 3:43 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Thursday 22 May 2014 05:38:41 Alexandru Vaduva wrote:
> > > it appear, it shouldn`t I believe.
> > > I have a hack to include the perl-ptest module only when
> > > ptest enabled on image_featuresbut it does not look nice.
> > > I do not believe this solves the problem.
> > 
> > Sorry, I'm not quite following. What is this hack?
>
> The hack will put the line: require perl-ptest.incinside a if structure.
> The if will test if ptest is in the image-features or not.

There's nothing in that file that explicitly adds a dependency from perl (or 
any other package) on the perl-ptest package. So far as far as I know, nobody 
has yet reproduced the issue you're reporting. Are you building the exact same 
version of the perl recipe? Have you modified the recipe at all?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

