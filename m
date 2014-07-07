Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B877E00543; Mon,  7 Jul 2014 06:33:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2758E0030B
	for <yocto@yoctoproject.org>; Mon,  7 Jul 2014 06:33:30 -0700 (PDT)
Received: from [69.196.158.250] (port=40199 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1X492v-0004jd-DJ; Mon, 07 Jul 2014 09:33:29 -0400
Date: Mon, 7 Jul 2014 09:33:21 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <53BAA0C2.4000105@windriver.com>
Message-ID: <alpine.LFD.2.11.1407070931480.9550@localhost>
References: <alpine.LFD.2.11.1407070907540.9045@localhost>
	<53BAA0C2.4000105@windriver.com>
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
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how many variations to build for a beaglebone black (BBB)?
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
X-List-Received-Date: Mon, 07 Jul 2014 13:33:40 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 7 Jul 2014, Bruce Ashfield wrote:

> On 14-07-07 09:13 AM, Robert P. J. Day wrote:
> >
> >    i want to build a bootable system for a BBB, and i can see at least
> > three possibilities:
> >
> >    1) the meta-yocto-bsp layer defines the beaglebone as one of its
> >       reference boards
> >
> >    2) the "meta-ti" layer is advertised as "official" TI board support
> >
> >    3) there is a "meta-beagleboard" layer, but that one looks a bit
> >       stagnant
> >
> > any preferences out there for people working with the BBB?
>
> The generic "it depends" answer applies here.
>
> Due to the efforts of TI,the core BBB support made it into the
> mainline kernel for 3.14, so that forms a common baseline of feature
> support.
>
> Outside of that, it depends on the functionality you need in the
> image and your familiarity with integration of multiple layers and
> features.
>
> meta-ti gets you the latest and greatest features and support, while
> the reference BSP was also done by TI to provide a good baseline
> level of support (graphics, usb, ethernet, etc) and is supported via
> Wind River in the linux-yocto repository.

  excellent. since i want to configure and build for a classroom
environment and probably don't need bleeding edge, i'll stick with the
yocto-bsp stuff, which has served me well thus far.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

