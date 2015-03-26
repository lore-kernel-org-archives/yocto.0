Return-Path: <testlaster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABD3EE00961; Thu, 26 Mar 2015 06:05:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (testlaster[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A1FAE0095D
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 06:05:32 -0700 (PDT)
Received: by wibg7 with SMTP id g7so147744395wib.1
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 06:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=PzH5kL2CgSsevS3DW/O6PPpTvhOI8TEaXY5iOIsRSeQ=;
	b=GYS/ybqsy94mSlBe2bojo8yq+HARRb+/iaZFGMcAdidaU4vXiF2gsR6t1ZtXEYD1tt
	PcJ8+8I150j3zfon4oq4rC0JlM8eVcjgj4hTdndKhEpH3xzX7oTrTwbuYkIvuELZ+g9m
	KLpsMbFvQyNaShW4OWwOLR6HDaSIhKq+Z3CWMbip32DI40pl2pZa2/hy35ghZyyPv3E6
	Eq4wv6rdxb3ibEftt1fQQ6+lJFmA3s2iQLkfYipdyrBFCi6R15xRt1Cjix5vpwE6kPCg
	UfcsZ2toK+vkyRrcV9jdFA2BWPmFwgqVV3dm+s19RG0d/AAawRfSuDtVc2y3IzMeKRI6
	+vew==
X-Received: by 10.180.240.172 with SMTP id wb12mr25210816wic.55.1427375131816; 
	Thu, 26 Mar 2015 06:05:31 -0700 (PDT)
Received: from [192.168.11.13] (gwise.truvelo.co.za. [41.160.58.98])
	by mx.google.com with ESMTPSA id dc9sm25262087wib.9.2015.03.26.06.05.29
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Mar 2015 06:05:31 -0700 (PDT)
Message-ID: <55140415.1050308@gmail.com>
Date: Thu, 26 Mar 2015 15:05:25 +0200
From: testlaster <testlaster@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Hi..trouble booting
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
X-List-Received-Date: Thu, 26 Mar 2015 13:05:36 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi

I have been having a boot issue on my system.
Here is a Paste from the machine im trying to boot linux. Its running
Slackware at the moment.
When I boot with a USB stick it says boot : followed by alpha symbols that
seems to continue into eternity unless stopped.
I have used DD on the hddimg files and i have tried using Rufus and TuxBoot
with both hddimg and ISO files.

bash-4.2# lscpu
Architecture:          i686
CPU op-mode(s):        32-bit
Byte Order:            Little Endian
CPU(s):                2
On-line CPU(s) list:   0,1
Thread(s) per core:    2
Core(s) per socket:    1
Socket(s):             1
NUMA node(s):          1
Vendor ID:             GenuineIntel
CPU family:            6
Model:                 28
Stepping:              2
CPU MHz:               800.000
BogoMIPS:              3200.12
L1d cache:             24K
L1i cache:             32K
L2 cache:              512K
NUMA node0 CPU(s):     0,1

I have used the normal Genericx86 and the Atom yocto build from the Yocto
website with no luck.

Can anybody help me with this issue?
Thansk allot and kind regards
Testo


