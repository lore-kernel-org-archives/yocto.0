Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAE7CE009A7; Wed,  8 Feb 2017 04:03:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64B4AE007AD
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 04:03:07 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20170208120304803_0685;
	Wed, 08 Feb 2017 04:03:04 -0800
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [174.118.92.171] (port=52238 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cbQxd-000341-Kb; Wed, 08 Feb 2017 07:02:57 -0500
Date: Wed, 8 Feb 2017 07:02:55 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: =?ISO-8859-2?Q?Maciej_Borz=EAcki?= <maciej.borzecki@rndity.com>
In-Reply-To: <CAD4b0_Lqk756919hasgMuHx2eMxBPtywjLvzs0r3cjb9mj49Ag@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1702080702070.12201@localhost.localdomain>
References: <alpine.LFD.2.20.1702070921520.13830@uk63952.mitel.com>
	<CAD4b0_Lqk756919hasgMuHx2eMxBPtywjLvzs0r3cjb9mj49Ag@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 08 Feb 2017 12:03:13 -0000
Content-Type: multipart/mixed; BOUNDARY="8323328-1590342432-1486555377=:12201"

--8323328-1590342432-1486555377=:12201
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Wed, 8 Feb 2017, Maciej Borzęcki wrote:

> On Tue, Feb 7, 2017 at 3:31 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >
> >   colleague asked me for a list of OE/YP recipes for monitoring system
> > performance/resource utilization/profiling, i'm unaware of any single
> > list that tracks that sort of thing so i'll just ask what people are
> > aware of. just off the top of my head:
> >
> >  * sysstat
> >  * atop
> >  * collectd
> >  * netdata
> >  * rrdtool
> >  * dstat
>
> * pcp http://pcp.io/

  is there an OE recipe for that? i don't see one.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1590342432-1486555377=:12201--
