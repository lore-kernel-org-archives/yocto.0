Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36BF9E007A0; Tue,  9 Sep 2014 02:36:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C09DBE00781
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 02:36:43 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20140909093641779
	for <yocto@yoctoproject.org>; Tue, 09 Sep 2014 09:36:41 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=41326 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XRHqn-0004lT-70; Tue, 09 Sep 2014 05:36:37 -0400
Date: Tue, 9 Sep 2014 05:36:32 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Bryan Evenson <bevenson@melinkcorp.com>
In-Reply-To: <d146424575834e06b8e11657f0c89d50@BLUPR05MB037.namprd05.prod.outlook.com>
Message-ID: <alpine.LFD.2.11.1409090536210.25504@localhost>
References: <alpine.LFD.2.11.1408280336190.2292@localhost>
	<CAGiJk9dYKHaq3YTA6aAHBWkVH+gFqm+M=Rpi=80YhVZ0YNeWrA@mail.gmail.com>
	<alpine.LFD.2.11.1408280408050.2863@localhost>
	<CA+YB3rYra8atvtzy4JPz8zfc4WjbB-kM0rtb5ZdfRy48PFMO9g@mail.gmail.com>
	<alpine.LFD.2.11.1408290721080.4903@localhost>
	<CA+gsK-p1xVazx+guAy3Zo1nTrEVmnC3iMQVv9ZDoN28qhaKYKQ@mail.gmail.com>
	<alpine.LFD.2.11.1408291157030.10554@localhost>
	<5400A8C8.4050605@gmail.com>
	<alpine.LFD.2.11.1408300610240.10330@localhost>
	<d146424575834e06b8e11657f0c89d50@BLUPR05MB037.namprd05.prod.outlook.com>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: is there a list of yocto-supported dev kits somewhere?
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
X-List-Received-Date: Tue, 09 Sep 2014 09:36:49 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 5 Sep 2014, Bryan Evenson wrote:

> Robert,
>
> Atmel has their own board support layer that they have not submitted
> as an official Yocto Project BSP.  Their layer supports their
> AT91SAM9x5-EK series and their SAMA5D3 series evaluation kits.
> I've been using their AT91SAM9G25-EK kit for my reference design.
> Since Atmel doesn't have a BSP that is officially supported by the
> Yocto Project, I'm not sure whether it belongs with your list or
> not.

  sorry for the delay, was embedded (pun intended :-) in another
project. i don't think it's necessary for a layer to be an "official"
yocto layer, so much as it just needs to work out of the box for a dev
kit.

  so if you've used this layer and it works just fine, i'll add it to
my list. just point me at the relevant info.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


