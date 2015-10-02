Return-Path: <laurentiu.palcu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE07EE00DCF; Fri,  2 Oct 2015 04:43:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7F6CE0095C
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 04:43:40 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 02 Oct 2015 04:43:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,623,1437462000"; d="scan'208";a="802118724"
Received: from lpalcu-desk.rb.intel.com (HELO lpalcu-desk) ([10.237.104.64])
	by fmsmga001.fm.intel.com with ESMTP; 02 Oct 2015 04:43:38 -0700
Date: Fri, 2 Oct 2015 14:43:37 +0300
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20151002114337.GG15509@lpalcu-desk>
References: <560BD1F3.1090907@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <560BD1F3.1090907@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Safely cleaning 'downloads'
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
X-List-Received-Date: Fri, 02 Oct 2015 11:43:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Garry,

It's probably a little late (I'm not reading the Yocto mailing lists
very often now) but sometime ago I ran out of space myself and I wrote
this script that I sent out on oe-core mailing list. It did the job for
me. For some reason it didn't make it in master but maybe you find it
useful.

I didn't test it since then though. Maybe things changed, I don't know.
Give it a try if you wish. If you want to play safe, I recommend making
a copy of your downloads directory (if you have space left). :)

http://lists.openembedded.org/pipermail/openembedded-core/2015-June/106026.html

laurentiu

On Wed, Sep 30, 2015 at 06:13:39AM -0600, Gary Thomas wrote:
> Over time, I tend to build in the same build tree many, many
> times.  This leads to some really big trees as many things are
> duplicated, especially in the 'downloads' directory.
> 
> I use local mirrors and hence my 'downloads' directory is
> _mostly_ populated with symbolic links.  However, there are
> also expanded SCM packages, e.g. git2/xxx
> 
> How can I safely clean up the 'downloads' directory?  I already
> copy any created tarballs (I use BB_GENERATE_MIRROR_TARBALLS="1"
> to preclude unneeded downloads) to my mirror, but I'd like to
> periodically clean out the whole directory (without disturbing
> my builds of course).  I've found out the hard way that just
> emptying seems to be unsafe, at least for some recipes like
> the [RaspberryPi] Linux kernel recipe which once built seems
> to expect the expanded git2/xxx tree to remain.
> 
> Just trying to find ways to recover my lost GB...
> 
> Thanks for any ideas
> 
> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

