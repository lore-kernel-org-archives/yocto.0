Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 139A6E007A1; Thu, 14 Aug 2014 04:30:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E524AE0079A
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 04:30:35 -0700 (PDT)
Received: from [192.168.1.10] (c-68-38-40-177.hsd1.nj.comcast.net
	[68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 6F58B20796AA
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 11:30:33 +0000 (UTC)
Message-ID: <53EC9DD8.6030207@mindchasers.com>
Date: Thu, 14 Aug 2014 07:30:32 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: mpc8315e-rdb is probably a poor choice as powerpc example...
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
X-List-Received-Date: Thu, 14 Aug 2014 11:30:41 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

As most of you know, the mpc8315e-rdb is the powerpc reference platform 
in meta-yocto-bsp.  This is old technology and not a good representative 
of QorIQ.

I suggest something from the P or T family be used.  The P1010RDB is 
probably a good choice, but others may prefer an SMP machine.

I'm willing to help to make it happen.	

Bob


