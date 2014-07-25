Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C955EE006C4; Fri, 25 Jul 2014 10:42:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FD7DE003C1
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 10:42:03 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20140725174201854
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 17:42:01 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [24.211.139.253] (port=33909 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XAjVE-00029c-EF; Fri, 25 Jul 2014 13:41:56 -0400
Date: Fri, 25 Jul 2014 13:41:51 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMKF1sqxcHdWyvcAfVw6iNzfRNBn3_d9qwXzG6U28=HDwmb-qQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1407251341400.8619@localhost>
References: <alpine.LFD.2.11.1407250833370.3458@localhost>
	<CAMKF1sodH6FbZn1+tX3exH6uSwgjGMv0F_bdp=uNfd5b2si=yw@mail.gmail.com>
	<alpine.LFD.2.11.1407251250270.7984@localhost>
	<CAMKF1sqxcHdWyvcAfVw6iNzfRNBn3_d9qwXzG6U28=HDwmb-qQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 25 Jul 2014 17:42:06 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 25 Jul 2014, Khem Raj wrote:

> On Fri, Jul 25, 2014 at 9:51 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >   fair enough, but what about the simpler example of gzip as opposed
> > to bzip2? it's just trying to understand what makes the list and what
> > doesn't.
>
> gzip can be replaced by pigz and it can be used to provide gzip-native

  ah, got it.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


