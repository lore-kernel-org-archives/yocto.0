Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 959B0E0146E
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2013 07:43:26 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Jan 2013 07:43:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,438,1355126400"; d="scan'208";a="189355350"
Received: from unknown (HELO [10.255.13.228]) ([10.255.13.228])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Jan 2013 07:43:25 -0800
Message-ID: <1357746205.1532.5.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Wed, 09 Jan 2013 09:43:25 -0600
In-Reply-To: <50ED5B6D.4080303@dynamicdevices.co.uk>
References: <CD0B6407.1EB06%belen.barros.pena@intel.com>
	<50E741F0.50303@dynamicdevices.co.uk>
	<CABcZANndjkYoRecpoeUQcUzCevoVqCPWO-EpFCMKSaxh6QFoew@mail.gmail.com>
	<50E746F7.6000306@dynamicdevices.co.uk>
	<1357686756.2515.50.camel@empanada>
	<50ED5B6D.4080303@dynamicdevices.co.uk>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>, Chris Larson <clarson@kergoth.com>
Subject: Re: Bitbake and task offloading onto multiple cloud-based servers
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Jan 2013 15:43:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-01-09 at 11:58 +0000, Alex J Lennon wrote:
> > In the 1.1 timeframe I proposed something similar for a demo/research
> > project - I'll just copy the proposal verbatim below in case any of the
> > ideas could be of any value.  
> 
> Very interesting Tom. Thanks for your thoughts.
> 
> 
> > if throwing a
> > 40-processor system at a build doesn't really help much it's not likely
> > to be of much help either to distribute the individual pieces out to the
> > 'cloud'.
> 
> Are there any figures for build time versus increase in processor cores?
> It would be interesting to see what the immediate performance gain is
> for a build with a low number of additional cores and then where it tops
> out?

These threads have some hard data:

https://lists.yoctoproject.org/pipermail/poky/2011-July/006802.html
https://lists.yoctoproject.org/pipermail/yocto/2012-April/008293.html

Some of which is summarized here:

https://wiki.yoctoproject.org/wiki/Build_Performance

Other people may have pointers to more data or summaries..

Tom

> 
> > The whole
> > process is completely peer-to-peer with no single node in charge - in
> > that context, a more appropriate name for it might be 'BuildTorrent'.
> 
> A "BuildTorrent". I like it!
> 
> Cheers,
> 
> Alex
> 



