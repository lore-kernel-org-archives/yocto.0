Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 457C6E009B9; Wed,  8 Feb 2017 06:11:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 014F4E007AD
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 06:11:33 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20170208141130698_0486;
	Wed, 08 Feb 2017 14:11:30 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [174.118.92.171] (port=56586 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cbSxt-0006BR-Fu; Wed, 08 Feb 2017 09:11:21 -0500
Date: Wed, 8 Feb 2017 09:11:18 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Joshua Lock <joshua.g.lock@linux.intel.com>
In-Reply-To: <1486562350.3754.7.camel@linux.intel.com>
Message-ID: <alpine.LFD.2.20.1702080909260.16201@localhost.localdomain>
References: <alpine.LFD.2.20.1702070921520.13830@uk63952.mitel.com>
	<CAD4b0_Lqk756919hasgMuHx2eMxBPtywjLvzs0r3cjb9mj49Ag@mail.gmail.com>
	<2cf00af5-fee4-91f3-0d66-2e821b99fb27@mlbassoc.com>
	<CAMjhiJiLQiV55hY8Drn4VPFpAtFisTqqsn-D8EGbBxpOtkzbeQ@mail.gmail.com>
	<alpine.LFD.2.20.1702080705020.12201@localhost.localdomain>
	<1486562350.3754.7.camel@linux.intel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Gary Thomas <gary@mlbassoc.com>, Yocto List <yocto@yoctoproject.org>
Subject: Re: is there a list somewhere of OE/YP-supported system perf/monitoring tools?
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
X-List-Received-Date: Wed, 08 Feb 2017 14:11:40 -0000
Content-Type: multipart/mixed; BOUNDARY="8323328-1241319039-1486563081=:16201"

--8323328-1241319039-1486563081=:16201
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Wed, 8 Feb 2017, Joshua Lock wrote:

> On Wed, 2017-02-08 at 07:06 -0500, Robert P. J. Day wrote:
> > On Wed, 8 Feb 2017, Leon Woestenberg wrote:
> >
> > ... snip ...
> >
> > > blktrace
> >
> >   without putting any research into knowing precisely what these
> > utilities do, i put them into a list on a wiki page:
> >
> >  http://www.crashcourse.ca/wiki/index.php/OE_YP_performance_monitorin
> > g
>
> I think this list would be more useful on the Yocto Project wiki.

  i'm not trying to claim this is an official YP list, i just wanted
somewhere to write the list for now and my habit is to put everything
on a wiki page. if someone wants to start another page, i have no
problem with that. the reason i typically use my own wiki is that i
frequently customize those pages for my courses, so they could end up
with content that's not relevant for YP.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1241319039-1486563081=:16201--
