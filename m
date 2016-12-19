Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B8FCE00C39; Mon, 19 Dec 2016 02:58:06 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 195A8E00BB1
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 02:58:02 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20161219105800673_0484
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 10:58:00 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=45846 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cIvdi-0000LE-NA
	for yocto@yoctoproject.org; Mon, 19 Dec 2016 05:57:54 -0500
Date: Mon, 19 Dec 2016 05:56:32 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
In-Reply-To: <alpine.LFD.2.20.1612190550300.8948@localhost.localdomain>
Message-ID: <alpine.LFD.2.20.1612190555500.27243@localhost.localdomain>
References: <alpine.LFD.2.20.1612190550300.8948@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: Re: "make html" for yocto-docs fails, "Unknown option -customization.xsl"
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
X-List-Received-Date: Mon, 19 Dec 2016 10:58:06 -0000
Content-Type: text/plain; charset=US-ASCII

On Mon, 19 Dec 2016, Robert P. J. Day wrote:

>
>   been a while since i've built the docs from scratch, and now:
>
> $ make html
>
> ******** Building
>
> cd ; xsltproc  -o .html -customization.xsl .xml; cd ..
> Unknown option -customization.xsl
> Usage: xsltproc [options] stylesheet file [file ...]
>    Options:
>    ... snip ...

   gaaaah ... never mind, i forgot that i *need* to identify a manual,
it won't just build them all by default. apologies.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


