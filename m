Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30839E00A76; Thu, 23 Mar 2017 03:57:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D50BE009A0
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 03:57:32 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20170323105726451_0485;
	Thu, 23 Mar 2017 10:57:26 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=38630 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cr0Qh-0000Bn-BK; Thu, 23 Mar 2017 06:57:19 -0400
Date: Thu, 23 Mar 2017 06:57:17 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
In-Reply-To: <4bfcdcad-cc32-33ff-d088-2fe627a86672@rsi-elektrotechnik.de>
Message-ID: <alpine.LFD.2.20.1703230653520.1293@uk63952.mitel.com>
References: <alpine.LFD.2.20.1703230632160.636@uk63952.mitel.com>
	<4bfcdcad-cc32-33ff-d088-2fe627a86672@rsi-elektrotechnik.de>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: should a BSP layer *really* ever need additional layers to be functional?
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
X-List-Received-Date: Thu, 23 Mar 2017 10:57:34 -0000
Content-Type: text/plain; charset=US-ASCII

On Thu, 23 Mar 2017, Josef Holzmayr wrote:

> Hi,
>
> On 23.03.2017 11:35, Robert P. J. Day wrote:
> >   i always thought that using nothing more than a BSP layer (plus, of
> > course, the underlying OE layers) should allow you to get to the
> > command line. is that not true?
>
> I don't think that this generally holds true, as it would lead to
> significant duplication. Imagine a board based off something already
> in meta-ti or meta-intel. And maybe just needing a slightly modified
> bootloader.

  true, but the wording in the BSP Guide is:

"Some BSPs require additional layers on top of the BSP's root layer in
                                     ^^^^^^^^^
order to be functional. "

  that particular phrasing suggests that perhaps what's needed is more
user space content of some kind. perhaps rewording that to say that a
BSP layer might be based on top of other layers as a starting point
would be clearer.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


