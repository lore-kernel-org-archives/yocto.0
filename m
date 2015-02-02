Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E5B7E008A6; Mon,  2 Feb 2015 10:32:04 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F127E00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 10:31:54 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 02 Feb 2015 10:27:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,507,1418112000"; d="scan'208";a="521455066"
Received: from bbodonog-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.3.158])
	by orsmga003.jf.intel.com with ESMTP; 02 Feb 2015 10:24:18 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: akuster808 <akuster808@gmail.com>
Date: Mon, 02 Feb 2015 18:31:49 +0000
Message-ID: <4593095.TQ4VoJlUyp@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <54CFC0D5.7050703@gmail.com>
References: <1422891351-17215-1-git-send-email-akuster808@gmail.com>
	<101638424.af5YciAOUL@peggleto-mobl5.ger.corp.intel.com>
	<54CFC0D5.7050703@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] layer conf: update to include meta-networking
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
X-List-Received-Date: Mon, 02 Feb 2015 18:32:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 02 February 2015 10:24:21 akuster808 wrote:
> On 02/02/2015 08:31 AM, Paul Eggleton wrote:
> > Can you please also update the OE layer index?
> 
> Do I do that manually or is it picked up from the README?

No, it needs to be done manually, I don't have anything to parse a README and 
extract dependencies at the moment.

> > http://layers.openembedded.org/layerindex/branch/master/layer/meta-securit
> > y/
> > 
> > I added meta-perl and meta-oe this morning based on the meta-security
> > README - the latter isn't represented in your LAYERDEPENDS value though,
> > so all three places ought to be made consistent with whatever the actual
> > set of requirements is.
> > 
> > (If people are starting to use LAYERDEPENDS a bit more it might make sense
> > for us to add some code to the layer index update script to try to update
> > its dependency list based upon LAYERDEPENDS and BBFILE_COLLECTIONS; up to
> > now it hasn't seen a huge amount of use hence I hadn't done that.)
>
> Is the idea to include all layers required including the cascaded ones?
> 
> i.e: meta-networking requires mete-python, should I include that one too?

No, no need to do that - just the direct dependencies is enough.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

