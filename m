Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96CAEE00D30; Wed,  3 Jul 2019 16:31:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [185.20.51.6 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mailrelay4.webfaction.com (mailrelay4.webfaction.com
	[185.20.51.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D9DAE00C43
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 16:31:44 -0700 (PDT)
Received: from mailrelay3.webfaction.com (mailrelay3.webfaction.com
	[207.38.93.110])
	by mailrelay4.webfaction.com (Postfix) with ESMTPS id 65F7A868D2;
	Wed,  3 Jul 2019 23:31:43 +0000 (UTC)
Received: from mailrelay1.webfaction.com (mailrelay1.webfaction.com
	[207.38.86.46])
	by mailrelay3.webfaction.com (Postfix) with ESMTPS id 97E8F280550;
	Wed,  3 Jul 2019 23:31:41 +0000 (UTC)
Received: from smtp.webfaction.com (mail6.webfaction.com [31.170.123.134])
	by mailrelay1.webfaction.com (Postfix) with ESMTPS id 240721A0777;
	Wed,  3 Jul 2019 23:31:40 +0000 (UTC)
Received: from [192.168.1.14] (c-73-196-216-147.hsd1.nj.comcast.net
	[73.196.216.147])
	by smtp.webfaction.com (Postfix) with ESMTPSA id E7B8160F0D317;
	Wed,  3 Jul 2019 23:31:03 +0000 (UTC)
From: Bob Cochran <yocto@mindchasers.com>
To: Yocto discussion list <yocto@yoctoproject.org>,
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
References: <86eeb8cf-ff2a-e782-c7a9-44fc4496bf62@mindchasers.com>
Message-ID: <10fcfe4c-3247-6010-9f22-7996dd090333@mindchasers.com>
Date: Wed, 3 Jul 2019 19:31:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <86eeb8cf-ff2a-e782-c7a9-44fc4496bf62@mindchasers.com>
Subject: Re: Looking for a recommendation for the right Yocto dev board that supports MIPI CSI-2...
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
X-List-Received-Date: Wed, 03 Jul 2019 23:31:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 6/20/19 11:24 PM, Bob Cochran wrote:
> Hi,
>
> I'm doing some work with MIPI cameras, and I need a development board 
> with stable Yocto and MIPI CSI-2 support.   At this point, I'm 
> thinking i.MX, but I'm open to any suggestion.

It looks like we're going to purchase an NXP MCIMX8M-EVK dev board (at 
least one to get started).   Can someone please confirm that the  
imx8mqevk.conf machine file is for this board?

Is this board Yocto Project stable?  I need to be able to build the 
master branch for this board (or should I be using next?). Any comments 
or feedback will be great appreciated.

https://www.nxp.com/support/developer-resources/evaluation-and-development-boards/i.mx-evaluation-and-development-boards/evaluation-kit-for-the-i.mx-8m-applications-processor:MCIMX8M-EVK

Thanks

Bob


>
> I'm not sure what type of access I'll have to the D-PHY data streams.  
> Do they always terminate into a GPU?   However, I would like a board 
> that gives me the most capability to control / route the data with 
> open source drivers.
>
> I suppose I want CSI-2 in and HDMI out.
>
> Thank you,
>
> Bob
>
>


