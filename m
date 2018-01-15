Return-Path: <Ryan.Meulenkamp@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B5EEE00E45; Mon, 15 Jan 2018 07:40:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.160.213.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Mon, 15 Jan 2018 07:40:45 PST
Received: from smtp4.nedap.com (smtp4.nedap.com [213.160.213.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D9DCE00D41
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 07:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1516030845; x=1547566845;
	h=to:from:subject:message-id:date:mime-version:
	content-transfer-encoding;
	bh=MpzSOsXYpd8ta+8/CfOun4erCa0W403JRjcX7jO3wao=;
	b=HoxF+h76+jNofS22k070NC20d9K6Fa/BHuQgGWjDU4XRBmR+bCyHerCf
	2pRS8MnOHandtQE9oO2NZWMQBVVn4MKKFBUDUynmFCi+zemOPjCee+d41
	DB4MxBdOOcLfh6UG0ezsDloIly+BbGKHyPU3NjU7nNdwlSqzlMYF1D/Po c=;
X-IronPort-AV: E=Sophos;i="5.46,364,1511823600"; 
   d="scan'208";a="1045493"
Received: from nedap.nedap.local (HELO [10.2.16.212]) ([10.2.16.212])
	by smtp4.nedap.com with ESMTP; 15 Jan 2018 16:39:40 +0100
To: yocto@yoctoproject.org
From: Ryan Meulenkamp <Ryan.Meulenkamp@nedap.com>
Message-ID: <f635d9dd-76fb-fc81-5dc0-fda98d50f35e@nedap.com>
Date: Mon, 15 Jan 2018 16:39:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
Subject: Halt problem
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
X-List-Received-Date: Mon, 15 Jan 2018 15:40:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi y'all,

I ran into a problem using shutdown -h (or halt) on an openembedded-core 
(yocto) distro running on the Atmel at91sam9g45.

We used to run an openembedded-classic (angström) based OS with kernel 
version 2.6.35.14+. Here, halting the system would cause it to shutdown 
without resetting, or turning the power off, to await a manual reset.

Now we are building a new distro based on openembedded-core and yocto. 
Halting the system now causes a watchdog intervention. I tried all 
different arguments for both the shutdown and the halt command. It looks 
if though the classic based distro left the watchdog daemon running 
during a halt.

What could be the cause of this problem? In what direction should I look 
(e.g. kernel config, sysvinit config, openembedded config, processor 
specific code etc.)?

I'm not sure if this is the right mailing list to ask this question, but 
I guess one of you could point me in the right direction.

Thanks in advance and kind regards,

Ryan Meulenkamp

