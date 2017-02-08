Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE1D6E009A5; Wed,  8 Feb 2017 03:51:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3701E007AD
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 03:51:49 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20170208115133767_0484;
	Wed, 08 Feb 2017 11:51:33 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [174.118.92.171] (port=52098 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cbQmT-0002El-Dr; Wed, 08 Feb 2017 06:51:25 -0500
Date: Wed, 8 Feb 2017 06:51:23 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Leon Woestenberg <leon@sidebranch.com>
In-Reply-To: <CAMjhiJiLQiV55hY8Drn4VPFpAtFisTqqsn-D8EGbBxpOtkzbeQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1702080649060.12047@localhost.localdomain>
References: <alpine.LFD.2.20.1702070921520.13830@uk63952.mitel.com>
	<CAD4b0_Lqk756919hasgMuHx2eMxBPtywjLvzs0r3cjb9mj49Ag@mail.gmail.com>
	<2cf00af5-fee4-91f3-0d66-2e821b99fb27@mlbassoc.com>
	<CAMjhiJiLQiV55hY8Drn4VPFpAtFisTqqsn-D8EGbBxpOtkzbeQ@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto List <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Wed, 08 Feb 2017 11:51:51 -0000
Content-Type: multipart/mixed; BOUNDARY="8323328-1571456634-1486554685=:12047"

--8323328-1571456634-1486554685=:12047
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Wed, 8 Feb 2017, Leon Woestenberg wrote:

>
> On Wed, Feb 8, 2017 at 12:38 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>       On 2017-02-08 07:48, Maciej Borzęcki wrote:
>             On Tue, Feb 7, 2017 at 3:31 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>                     colleague asked me for a list of OE/YP recipes for monitoring
>                   system
>                   performance/resource utilization/profiling, i'm unaware of any single
>                   list that tracks that sort of thing so i'll just ask what people are
>                   aware of. just off the top of my head:
>
>                    * sysstat
>                    * atop
>                    * collectd
>                    * netdata
>                    * rrdtool
>                    * dstat
>
>
>             * pcp http://pcp.io/
>
>
>       There is also bootchart (and friends) to gather information about
>       system startup and initialization.
>
>
> blktrace

  a colleague is looking for an OE utility similar to red hat's
"sosreport", but AFAICT, that utility is purely red hat and i see no
reference to it at the OE layers page. does anyone know something
remotely similar to that? or is it just a red hat wrapper around a
bunch of other tools (which is what it looks like).

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1571456634-1486554685=:12047--
