Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1FD9E00790; Tue, 22 Jul 2014 06:29:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8306BE00547
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 06:29:11 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20140722132904913
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 13:29:04 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [64.102.254.33] (port=48147 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1X9a7n-0007Jg-3X; Tue, 22 Jul 2014 09:28:59 -0400
Date: Tue, 22 Jul 2014 09:28:55 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LYW2b9mE95EW+uK-H8E2ihtwmGNpk0U1Mz2PmzB_NX==g@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1407220928300.4557@localhost>
References: <alpine.LFD.2.11.1407220913020.4099@localhost>
	<CAJTo0LYW2b9mE95EW+uK-H8E2ihtwmGNpk0U1Mz2PmzB_NX==g@mail.gmail.com>
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
Subject: Re: rationale for including checkouts in both layers and yocto git repos?
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
X-List-Received-Date: Tue, 22 Jul 2014 13:29:23 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 22 Jul 2014, Burton, Ross wrote:

> On 22 July 2014 14:15, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >   i just noticed that, across the two major repos for yocto:
> >
> > http://layers.openembedded.org/layerindex/branch/master/layers/
> > http://git.yoctoproject.org/
> >
> > there's a wee bit of duplication in that the second repo above
> > duplicates a lot of the meta- layers found in the first location. is
> > that deliberate? or can things be more properly placed in a single
> > location?
>
> The former - the layer index - is a curated index of every known
> layer.  It doesn't contain any layers, and is merely a (searchable,
> human-readable, tagged) index.
>
> The later is the list of all git repositories on the official Yocto
> Project git server.  It contains layers, kernel forks, applications
> and more.
>
> There is no duplication here.

  ah, got it.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


