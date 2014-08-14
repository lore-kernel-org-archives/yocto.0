Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD8DAE00781; Thu, 14 Aug 2014 07:41:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56A49E0074B
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 07:41:26 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20140814144124962
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 14:41:24 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=42052 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XHwDQ-0002o9-Q1; Thu, 14 Aug 2014 10:41:20 -0400
Date: Thu, 14 Aug 2014 10:41:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Bob Cochran <yocto@mindchasers.com>
In-Reply-To: <53ECC9DF.3040809@mindchasers.com>
Message-ID: <alpine.LFD.2.11.1408141039420.2067@localhost>
References: <53EC9DD8.6030207@mindchasers.com>
	<CADkTA4NATGAUXgh8YwapLuqgH1Oiod7ik5LkJMYn5mEePOM-6Q@mail.gmail.com>
	<53ECC9DF.3040809@mindchasers.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: mpc8315e-rdb is probably a poor choice as powerpc example...
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
X-List-Received-Date: Thu, 14 Aug 2014 14:41:31 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 14 Aug 2014, Bob Cochran wrote:

> On 08/14/2014 10:05 AM, Bruce Ashfield wrote:
> > On Thu, Aug 14, 2014 at 7:30 AM, Bob Cochran <yocto@mindchasers.com> wrote:
> > > As most of you know, the mpc8315e-rdb is the powerpc reference platform in
> > > meta-yocto-bsp.  This is old technology and not a good representative of
> > > QorIQ.
> >
> > We've been working with FSL to find a suitable replacement for some time,
> > and
> > the discussions were happening in the sprint, but stalled for the summer
> > months.
> >
> > >
> > > I suggest something from the P or T family be used.  The P1010RDB is
> > > probably a good choice, but others may prefer an SMP machine.
> >
> > The choice is equally about the machine and about the ability to purchase
> > the
> > target at a reasonable price. We don't use hard to find, or expensive
> > boards.
> >
> > So if you do have specific suggestions, and purchase information, send it
> > along
> > and it can be rolled into the ongoing discussions.
>
> Thank you for the reply Bruce.  I suggested the P1010RDB because we have one
> of these (older rev), and we have found few problems working periodically with
> Poky & related master branches over the past couple of years.  We also test
> the mainline kernel on it - typically with success.
>  In other words, it's basically been stable.
>
> It's $545 @ Digikey:
> http://www.digikey.com/product-search/en?x=0&y=0&lang=en&site=us&keywords=P1010RDB

  ouch. personally, i think that's too pricey for one of the yocto
reference boards. it should be affordable by *hobbyists*, which
suggests a price of at most $200, if not less. $545 is simply too
expensive.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


