Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62B19E007B9; Fri, 29 Aug 2014 09:02:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BEF7E00781
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 09:01:55 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20140829160153187
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 16:01:53 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=60247 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XNOcV-0003V1-UV; Fri, 29 Aug 2014 12:01:48 -0400
Date: Fri, 29 Aug 2014 12:01:44 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Rudolf Streif <rstreif@linuxfoundation.org>
In-Reply-To: <CA+gsK-p1xVazx+guAy3Zo1nTrEVmnC3iMQVv9ZDoN28qhaKYKQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1408291157030.10554@localhost>
References: <alpine.LFD.2.11.1408280336190.2292@localhost>
	<CAGiJk9dYKHaq3YTA6aAHBWkVH+gFqm+M=Rpi=80YhVZ0YNeWrA@mail.gmail.com>
	<alpine.LFD.2.11.1408280408050.2863@localhost>
	<CA+YB3rYra8atvtzy4JPz8zfc4WjbB-kM0rtb5ZdfRy48PFMO9g@mail.gmail.com>
	<alpine.LFD.2.11.1408290721080.4903@localhost>
	<CA+gsK-p1xVazx+guAy3Zo1nTrEVmnC3iMQVv9ZDoN28qhaKYKQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 29 Aug 2014 16:02:08 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1900338896-1409328107=:10554"

--8323328-1900338896-1409328107=:10554
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 29 Aug 2014, Rudolf Streif wrote:

> I think this is a great idea and I volunteer to help with the effort.
>  
>   that is kinda what i was after. i realize it's an open-ended
> request, but it would be great if there was a list of "recommended"
> dev kits representing various architectures/processors that people new
> to YP could purchase for experimentation, *knowing* that those dev
> kits had a YP build that would work out of the box. not necessarily
> technically complete, but that it would just boot and let them start
> playing.
>
> The "work out of the box" part is the tricky one. Unfortunately,
> many YP BSP layers do not include instructions on what to do after
> the build has completed. If you don't know what to do with boot
> loader and kernel images, flattened device tree files, root file
> system archives and images then you are at a loss. Commonly the
> boards also require a special boot media partitioning and the like.

  exactly true, but without that final bit of information, i contend
that the YP build is utterly useless unless the developer is told what
to do with the final image objects.

> While this type of info should be in the BSP readme files I think it
> would be good to have step by step instructions that gets one from
> setting up the build environment to building and creating bootable
> media for each board.

  and those step-by-step instructions don't need to be terribly
verbose. remember, you're not trying to explain how to use YP; you're
simply summarizing what it takes to get it running on a particular dev
kit. all of that should fit on a single page at most.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1900338896-1409328107=:10554--
