Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBA0BE00A00; Thu, 20 Jun 2019 20:34:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,TEQF_USR_MSGID_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [185.20.51.6 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* 1.0 TEQF_USR_MSGID_HEX To and from user nearly same + unusual message
	ID
X-Greylist: delayed 570 seconds by postgrey-1.32 at yocto-www;
	Thu, 20 Jun 2019 20:34:29 PDT
Received: from mailrelay4.webfaction.com (mailrelay4.webfaction.com
	[185.20.51.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11F67E00961
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2019 20:34:29 -0700 (PDT)
Received: from mailrelay3.webfaction.com (mailrelay3.webfaction.com
	[207.38.93.110])
	by mailrelay4.webfaction.com (Postfix) with ESMTPS id B50CD82471
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2019 03:24:58 +0000 (UTC)
Received: from mailrelay2.webfaction.com (mailrelay2.webfaction.com
	[185.20.50.247])
	by mailrelay3.webfaction.com (Postfix) with ESMTPS id DD731280EA5
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2019 03:24:56 +0000 (UTC)
Received: from smtp.webfaction.com (mail6.webfaction.com [31.170.123.134])
	by mailrelay2.webfaction.com (Postfix) with ESMTPS id B18FC401AD
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2019 03:24:54 +0000 (UTC)
Received: from [192.168.1.14] (c-73-196-216-147.hsd1.nj.comcast.net
	[73.196.216.147])
	by smtp.webfaction.com (Postfix) with ESMTPSA id A78FD6001F175
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2019 03:24:17 +0000 (UTC)
To: Yocto discussion list <yocto@yoctoproject.org>
From: Bob Cochran <yocto@mindchasers.com>
Message-ID: <86eeb8cf-ff2a-e782-c7a9-44fc4496bf62@mindchasers.com>
Date: Thu, 20 Jun 2019 23:24:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
Subject: Looking for a recommendation for the right Yocto dev board that supports MIPI CSI-2...
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
X-List-Received-Date: Fri, 21 Jun 2019 03:34:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,

I'm doing some work with MIPI cameras, and I need a development board 
with stable Yocto and MIPI CSI-2 support.   At this point, I'm thinking 
i.MX, but I'm open to any suggestion.

I'm not sure what type of access I'll have to the D-PHY data streams.  
Do they always terminate into a GPU?   However, I would like a board 
that gives me the most capability to control / route the data with open 
source drivers.

I suppose I want CSI-2 in and HDMI out.

Thank you,

Bob



