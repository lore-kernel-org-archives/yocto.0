Return-Path: <clay@montgomery1.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDE98E01575; Sun, 15 Jul 2018 14:51:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.220.202.212 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1313 seconds by postgrey-1.32 at yocto-www;
	Sun, 15 Jul 2018 14:51:02 PDT
Received: from outbound-ss-348.hostmonster.com
	(outbound-ss-348.hostmonster.com [74.220.202.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA60BE006B4
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2018 14:51:02 -0700 (PDT)
Received: from cmgw10.unifiedlayer.com (unknown [10.9.0.10])
	by gproxy6.mail.unifiedlayer.com (Postfix) with ESMTP id 1CCFE1E071C
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2018 15:29:08 -0600 (MDT)
Received: from box858.bluehost.com ([69.195.124.58]) by cmsmtp with ESMTP
	id eoZnfK8oHjnCqeoZnfzLRA; Sun, 15 Jul 2018 15:29:08 -0600
X-Authority-Reason: nr=8
Received: from cpe-97-99-239-0.tx.res.rr.com ([97.99.239.0]:50119
	helo=[192.168.0.21]) by box858.bluehost.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <clay@montgomery1.com>) id 1feoZn-001mcs-OX
	for yocto@yoctoproject.org; Sun, 15 Jul 2018 15:29:07 -0600
To: yocto@yoctoproject.org
References: <5B496B75.8020408@montgomery1.com>
From: "Clay D. Montgomery" <clay@montgomery1.com>
Organization: Montgomery One
Message-ID: <5B4BBCA3.3040800@montgomery1.com>
Date: Sun, 15 Jul 2018 16:29:07 -0500
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <5B496B75.8020408@montgomery1.com>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - box858.bluehost.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - montgomery1.com
X-BWhitelist: no
X-Source-IP: 97.99.239.0
X-Source-L: No
X-Exim-ID: 1feoZn-001mcs-OX
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: cpe-97-99-239-0.tx.res.rr.com ([192.168.0.21])
	[97.99.239.0]:50119
X-Source-Auth: clay@montgomery1.com
X-Email-Count: 1
X-Source-Cap: bW9udGdvcjA7bW9udGdvcjA7Ym94ODU4LmJsdWVob3N0LmNvbQ==
X-Local-Domain: yes
Subject: How to debug unbuildable module error?
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
X-List-Received-Date: Sun, 15 Jul 2018 21:51:05 -0000
X-Groupsio-MsgNum: 41796
Content-Type: multipart/mixed; boundary="------------080706050208000108040908"

--------------080706050208000108040908
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Is there a way to get bitbake to provide more information about why a 
module is unbuildable?

I am trying to build this example:

  poky/meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb

However, bitbake always reports:

  "Runtime target 'hello-mod' is unbuildable, removing..."

The makefile and source file are trivial with no dependencies and the -v 
verbose option adds no information at all.

Thanks, Clay





--------------080706050208000108040908
Content-Type: text/x-vcard; charset=utf-8;
 name="clay.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="clay.vcf"

begin:vcard
fn:Clay D. Montgomery
n:Montgomery;Clay
org:Montgomery One
adr:;;;;Texas;;USA
email;internet:clay@montgomery1.com
title:Freelance Software Developer
tel;cell:580-490-6676
x-mozilla-html:TRUE
url:http://montgomery1.com/contact/
version:2.1
end:vcard


--------------080706050208000108040908--
