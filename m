Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19A66E004DD; Thu, 14 Aug 2014 08:20:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 902D7E0034B
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 08:20:19 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20140814152016739
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 15:20:16 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=42402 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XHwp2-0004E3-F6; Thu, 14 Aug 2014 11:20:12 -0400
Date: Thu, 14 Aug 2014 11:20:08 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Bob Cochran <yocto@mindchasers.com>
In-Reply-To: <53ECD1F1.205@mindchasers.com>
Message-ID: <alpine.LFD.2.11.1408141116370.2582@localhost>
References: <53EC9DD8.6030207@mindchasers.com>
	<CADkTA4NATGAUXgh8YwapLuqgH1Oiod7ik5LkJMYn5mEePOM-6Q@mail.gmail.com>
	<53ECC9DF.3040809@mindchasers.com>
	<alpine.LFD.2.11.1408141039420.2067@localhost>
	<53ECD1F1.205@mindchasers.com>
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
X-List-Received-Date: Thu, 14 Aug 2014 15:20:28 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 14 Aug 2014, Bob Cochran wrote:

> On 08/14/2014 10:41 AM, Robert P. J. Day wrote:
> > On Thu, 14 Aug 2014, Bob Cochran wrote:

... snip ...

> > > Thank you for the reply Bruce.  I suggested the P1010RDB because we have
> > > one
> > > of these (older rev), and we have found few problems working periodically
> > > with
> > > Poky & related master branches over the past couple of years.  We also
> > > test
> > > the mainline kernel on it - typically with success.
> > >   In other words, it's basically been stable.
> > >
> > > It's $545 @ Digikey:
> > > http://www.digikey.com/product-search/en?x=0&y=0&lang=en&site=us&keywords=P1010RDB
> >
> >    ouch. personally, i think that's too pricey for one of the yocto
> > reference boards. it should be affordable by *hobbyists*, which
> > suggests a price of at most $200, if not less. $545 is simply too
> > expensive.
>
>
> Agreed!
>
> However, the currently used mpc8315e-rdb is $515 at Digikey:
> http://www.digikey.com/product-detail/en/MPC8315E-RDBA/MPC8315E-RDBA-ND/2186258
>
> Basically same price

  ouch again. i didn't know that as i don't have much interest in PPC
boards. i'm still convinced that every yocto reference board should be
"affordable". it need not be fully-featured, it need only represent a
proof of concept in the sense of building a simple, bootable image.
are there no decent PPC dev kits in that price range? none?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


