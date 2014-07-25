Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8003FE006C4; Fri, 25 Jul 2014 09:51:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 121F5E003FA
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 09:51:36 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20140725165134769
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 16:51:34 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [24.211.139.253] (port=33362 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XAiiP-0000Pu-6W; Fri, 25 Jul 2014 12:51:29 -0400
Date: Fri, 25 Jul 2014 12:51:25 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMKF1sodH6FbZn1+tX3exH6uSwgjGMv0F_bdp=uNfd5b2si=yw@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1407251250270.7984@localhost>
References: <alpine.LFD.2.11.1407250833370.3458@localhost>
	<CAMKF1sodH6FbZn1+tX3exH6uSwgjGMv0F_bdp=uNfd5b2si=yw@mail.gmail.com>
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
Subject: Re: are there any more obvious candidates for ASSUME_PROVIDED?
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
X-List-Received-Date: Fri, 25 Jul 2014 16:51:46 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 25 Jul 2014, Khem Raj wrote:

> On Fri, Jul 25, 2014 at 5:39 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >
> >   asked about this once upon a time ... are there any other
> > possibilities for adding to ASSUME_PROVIDED in local.conf.sample,
> > given that there are surely more native utilities that are fairly safe
> > by now?
> >
> >   for example, it's still weird that current default ASSUME_PROVIDED
> > includes bzip2 but not gzip, especially since the quick start guide:
> >
> > https://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html
> >
> > lists *both* of them as required on your build host.
> >
> >   it also seems odd that that list includes git but not subversion.
> > anyway, you get the idea.
>
> may times utilities have bugs or undesired behavior for OE so this
> list is dynamic and sometimes
> not all distro carry a certain version which OE expects and there are
> ABI/format changes as it happened between svn 1.6 and 1.7

  fair enough, but what about the simpler example of gzip as opposed
to bzip2? it's just trying to understand what makes the list and what
doesn't.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


