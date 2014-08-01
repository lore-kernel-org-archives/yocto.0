Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 209B5E0056A; Fri,  1 Aug 2014 01:23:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E33E2E004E0
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 01:23:09 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20140801082308099
	for <yocto@yoctoproject.org>; Fri, 01 Aug 2014 08:23:08 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=45109 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XD87C-0008Be-4s; Fri, 01 Aug 2014 04:23:02 -0400
Date: Fri, 1 Aug 2014 04:22:57 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD2A1E@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1408010421120.14488@localhost>
References: <alpine.LFD.2.11.1407311551370.16577@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD2A1E@ORSMSX101.amr.corp.intel.com>
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
Subject: Re: replace references to hob with references to toaster?
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
X-List-Received-Date: Fri, 01 Aug 2014 08:23:20 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 1 Aug 2014, Rifenbark, Scott M wrote:

>
>
> >-----Original Message-----
> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> >Sent: Thursday, July 31, 2014 12:58 PM
> >To: Yocto discussion list
> >Subject: [yocto] replace references to hob with references to toaster?
> >
> >
> >  both in the docs and on the web/wiki pages, there would appear to be some
> >places that need some updating.
> >
> >  the dev manual, ch 4, has references to hob but none to toaster -- should that
> >not be updated?
>
> If I understand Toaster correctly (and someone can correct me if I
> am wrong), it just reports information on a build.  I don't think
> you use Toaster to actually build anything.  Thus, Chapter 4, which
> talks about methods of developing an image, would not want to
> include Toaster as a method.

  having never used toaster (yet), i may be entirely off-base. but the
toaster wiki page:

https://wiki.yoctoproject.org/wiki/Toaster

claims:

"Toaster is a web-based interface to the Bitbake build system and the
Poky distribution inside the Yocto Project. This project was formerly
known as Web Hob / Webhob / webhob, and you may still find references
to the old name in the documentation."

  that pretty clearly suggests it does building and is meant to
supersede hob, no?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


