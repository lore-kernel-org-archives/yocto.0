Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BF82E00D14; Fri, 22 Mar 2019 10:06:16 -0700 (PDT)
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
X-Greylist: delayed 523 seconds by postgrey-1.32 at yocto-www;
	Fri, 22 Mar 2019 10:06:15 PDT
Received: from mailrelay4.webfaction.com (mailrelay4.webfaction.com
	[185.20.51.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24FBBE00CED
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2019 10:06:15 -0700 (PDT)
Received: from mailrelay3.webfaction.com (mailrelay3.webfaction.com
	[207.38.93.110])
	by mailrelay4.webfaction.com (Postfix) with ESMTPS id 3CECFE78D8
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2019 16:56:17 +0000 (UTC)
Received: from mailrelay1.webfaction.com (mailrelay1.webfaction.com
	[207.38.86.46])
	by mailrelay3.webfaction.com (Postfix) with ESMTPS id BB27828005A
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2019 16:56:14 +0000 (UTC)
Received: from smtp.webfaction.com (mail6.webfaction.com [31.170.123.134])
	by mailrelay1.webfaction.com (Postfix) with ESMTPS id A19BC1A043C
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2019 16:56:13 +0000 (UTC)
Received: from [192.168.1.14] (c-73-196-216-147.hsd1.nj.comcast.net
	[73.196.216.147])
	by smtp.webfaction.com (Postfix) with ESMTPSA id 5AEDA6030F566
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2019 16:55:50 +0000 (UTC)
To: Yocto discussion list <yocto@yoctoproject.org>
From: Bob Cochran <yocto@mindchasers.com>
Message-ID: <b6e5f140-38c9-07e1-a136-76b5f42f411c@mindchasers.com>
Date: Fri, 22 Mar 2019 12:56:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
Subject: Seeking recommendation for low cost dev board with Gigabit Ethernet that as a Yocto BSP
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
X-List-Received-Date: Fri, 22 Mar 2019 17:06:16 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hello All,

Can anyone recommend a ~$50 dev board that runs Yocto and has a single 
Gigabit Ethernet port?

The boards we are aware of either have 100Mbit Ethernet, don't meet the 
price target, or has a Gigabit Ethernet port that has reduced 
capabilities via firmware (Ethernet driver isn't open source).

Thank you,

Bob



