Return-Path: <chris@newforest-technology.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A193E0098A; Sun, 24 Jul 2016 11:45:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0024]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.159.14.19 listed in list.dnswl.org]
X-Greylist: delayed 183 seconds by postgrey-1.32 at yocto-www;
	Sun, 24 Jul 2016 11:45:28 PDT
Received: from avasout04.plus.net (avasout04.plus.net [212.159.14.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B00ABE0096A
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 11:45:28 -0700 (PDT)
Received: from x220.newforest-technology.co.uk ([212.159.101.170])
	by avasout04 with smtp
	id NiiP1t0023gb7SC01iiQXa; Sun, 24 Jul 2016 19:42:24 +0100
X-CM-Score: 0.00
X-CNFS-Analysis: v=2.2 cv=dMLko6Rb c=1 sm=1 tr=0
	a=ruRyNT7PUFX+VoQRqkV+3A==:117 a=ruRyNT7PUFX+VoQRqkV+3A==:17
	a=IkcTkHD0fZMA:10 a=OLL_FvSJAAAA:8 a=PeEOXbq9CVTj7asbnBwA:9
	a=wDBfkfFWHaoA:10 a=wbbTpC8Z_7cA:10 a=oIrB72frpwYPwTMnlWqB:22
To: yocto@yoctoproject.org
From: Chris Sykes <chris@newforest-technology.co.uk>
Message-ID: <3b9801df-33bc-ce6b-842b-7dc2f4ee083b@newforest-technology.co.uk>
Date: Sun, 24 Jul 2016 19:42:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.1
MIME-Version: 1.0
Subject: linux-yocto: memory leak in krogoth 4.1.28 kernel
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
X-List-Received-Date: Sun, 24 Jul 2016 18:45:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

At the end of last week I hit a known kernel memory leak in the 
linux-yocto 4.1 branch, as delivered in 2.1 / krogoth.  It rather 
quickly results in an OOM kernel panic on my platform (x86, 1G RAM).

The patch below fixed the problem for me:
http://www.spinics.net/lists/stable/msg138760.html

It's already queued for 4.1.29, but thought I'd mention it here for the 
benefit of the list. Perhaps it might be worth expediting a fix for 2.1?

I also raised bugzilla 10014 - I hope this was the right thing to do...

-- 
Chris Sykes
New Forest Technology Ltd.

