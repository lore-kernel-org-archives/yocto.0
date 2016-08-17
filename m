Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23672E00E0D; Tue, 16 Aug 2016 23:46:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7422EE00E05
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 23:46:25 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20160817064610761_0485;
	Wed, 17 Aug 2016 06:46:10 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [174.114.62.25] (port=47476 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bZudv-0006Xs-4c; Wed, 17 Aug 2016 02:48:03 -0400
Date: Wed, 17 Aug 2016 02:45:58 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <3090aa77-4d98-46e0-53fa-b4ba6183e29b@mlbassoc.com>
Message-ID: <alpine.LFD.2.20.1608170245260.17602@localhost.localdomain>
References: <CAF_dkJD9wqM7rg7U1VeiDs+adEREcoNna58dghfN2BvbxVLWqA@mail.gmail.com>
	<alpine.LFD.2.20.1608161134290.9097@ca624034.mitel.com>
	<07E2CC82-5296-4ED3-8F74-E213EC509F4D@gmail.com>
	<alpine.LFD.2.20.1608161237490.11037@ca624034.mitel.com>
	<3090aa77-4d98-46e0-53fa-b4ba6183e29b@mlbassoc.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: yocto@yoctoproject.org
Subject: Re: How to maintain a global DL_DIR?
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
X-List-Received-Date: Wed, 17 Aug 2016 06:46:31 -0000
Content-Type: text/plain; charset=US-ASCII

On Wed, 17 Aug 2016, Gary Thomas wrote:

> On 2016-08-16 18:38, Robert P. J. Day wrote:
> > On Tue, 16 Aug 2016, Khem Raj wrote:
> >
> > > > On Aug 16, 2016, at 8:37 AM, Robert P. J. Day <rpjday@crashcourse.ca>
> > > > wrote:
> > > >
> > > > On Tue, 16 Aug 2016, Patrick Doyle wrote:
> > > >
> > > > > As I am playing with several different Yocto/OE projects, I thought
> > > > > it would be nice to set up a global downloads directory.
> > > > >
> > > > > Also, being a somewhat forgetful sort, I thought it would be nice if
> > > > > I could set DL_DIR in my .bashrc and not have to remember to edit
> > > > > conf/local.conf each time I follow the directions from a third party
> > > > > site to set up their Yocto based distribution.
> > > > >
> > > > > Can I do this?  If so, how?
> > > >
> > > > if you're talking about creating a local source mirror for tarballs
> > > > to be shared across multiple projects, i taught an OE/YP course last
> > > > week based on a digi ConnectCore 6 dev kit, and i wrote some wiki
> > > > pages for it, including this one:
> > > >
> > > > http://www.crashcourse.ca/wiki/index.php/CC6_local_source_mirror
> > >
> > > a small nit, perhaps its better to use rsync instead of cp.
> >
> >   good point, i will adjust that later. anything else i overlooked?
>
> I use the attached script to manage my download mirror...

  well, *that* escalated quickly. :-)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


