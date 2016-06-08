Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28C1AE00CBE; Wed,  8 Jun 2016 02:00:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91B7AE00CF0
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 02:00:17 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Jun 2016 01:59:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,438,1459839600"; d="scan'208";a="983221576"
Received: from ntjioe-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.211])
	by fmsmga001.fm.intel.com with ESMTP; 08 Jun 2016 01:59:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Wed, 08 Jun 2016 20:59:50 +1200
Message-ID: <1804687.ljF0T5WDxz@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.5-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1465338026.13979.88.camel@linuxfoundation.org>
References: <575456D5.4080800@mlbassoc.com>
	<2350549.ml0Nc00s8v@peggleto-mobl.ger.corp.intel.com>
	<1465338026.13979.88.camel@linuxfoundation.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: What's this
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
X-List-Received-Date: Wed, 08 Jun 2016 09:00:40 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 07 Jun 2016 23:20:26 Richard Purdie wrote:
> On Wed, 2016-06-08 at 09:24 +1200, Paul Eggleton wrote:
> > On Tue, 07 Jun 2016 17:20:12 Burton, Ross wrote:
> > > On 7 June 2016 at 17:02, Burton, Ross <ross.burton@intel.com>
> > > wrote:
> > > > It means the hash calculated my the bitbake master was different
> > > > to the hash calculated when the worker started up.  This usually means
> > > > that you're using something like ${TIME} in the recipe but not marking 
> > > > it appropriatly so the cache ignores it.  Do you have a base-files
> > > > bbappend that writes a timestamp?
> > > 
> > > The always wise Joshua reminds me that if your DISTRO_VERSION
> > > contains ${DATETIME} then this happens.  If you're doing this then
> > > you'll want to set [vardepsexclude] on DISTRO_VERSION to stop the
> > > DATETIME from getting into the cache (or not put the current date/time
> > > into the distro version).
> > 
> > I think we need to handle this situation better - if it's really
> > worth producing an error about then it's worth producing an error message
> > that people can actually understand, particularly as it's recently added
> > validation.
> 
> It was silently running into problems due to this all along but not
> reporting it. Its now reporting it which is better than silently things
> behaving strangely.

What are the actual consequences in a situation like this where we have 
something like ${DATETIME} in another variable referenced by the task?

I haven't looked at all of the code involved (and that's probably the root of 
my problem) but I don't quite understand how this is coming about. DATE and 
TIME are supposed to be determined at the start of the build and explicitly 
passed to the worker, so they don't change during the build. What am I 
missing?
 
> Its very hard for bitbake to know why the hashes differ, it only knows
> the values afterwards and hence that they've changed, the information
> about how that hash was constructed is not present in any of bitbake's
> caches. That implies to have better messages we need to write out more
> data.
> 
> I did add a patch to make bitbake write out data to allow
> reconstruction of basehash (which is part of taskhash). Sadly the
> parsing performance was diabolical (10 times slower). I think that
> could perhaps be improved if the files don't require an atomic move
> during creation but I haven't had time to look further at it.
> 
> So whilst I do agree, what is the price people are willing to pay to
> have those better messages?

Clearly a 10x slowdown is unacceptable, hopefully we can find another way of 
dealing with this. I guess if we're able to do nothing else a brief 
explanation of what to look for (i.e. variables that might change with time) 
in the error message would be helpful, but I hope we can do better than that.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

