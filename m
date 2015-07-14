Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5142E0095C; Tue, 14 Jul 2015 06:34:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1445 seconds by postgrey-1.32 at yocto-www;
	Tue, 14 Jul 2015 06:34:02 PDT
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93ACAE0086D
	for <yocto@yoctoproject.org>; Tue, 14 Jul 2015 06:34:02 -0700 (PDT)
Received: from [192.168.1.10] (c-73-194-208-34.hsd1.nj.comcast.net
	[73.194.208.34])
	by smtp.webfaction.com (Postfix) with ESMTP id 172F620FF727
	for <yocto@yoctoproject.org>; Tue, 14 Jul 2015 13:09:56 +0000 (UTC)
Message-ID: <55A50A1E.80109@mindchasers.com>
Date: Tue, 14 Jul 2015 09:09:50 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Seeking feedback on great results with OpenOCD and a multi-core Yocto BSP / Dev board...
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
X-List-Received-Date: Tue, 14 Jul 2015 13:34:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Looking through the OpenOCD mail lists, I see that a lot of people get 
some basic access with various ARM-based SoCs but seem to have various 
problems with multi-core or stability / reset issues.

I would greatly appreciate finding out about excellent results with 
OpenOCD and any particular modern, multi-core SoC reference board that 
is also a Yocto reference platform.

In other words, I wold like to identify and acquire a multi-core Yocto 
reference platform that I can perform kernel debugging on all cores and 
board bring up ( re-flash ) without blazing my own trail of new OpenOCD 
patches and trial & error.

Thank you,

Bob

P.S. I see there is an enhancement bugzilla entry ( 7281 ) to "Add 
OpenOCD JTAG support" to the Eclipse plugin.  That could be very nice.


