Return-Path: <Ryan.Meulenkamp@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50AF0E00E55; Tue, 16 Jan 2018 00:46:59 -0800 (PST)
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
Received: from smtp4.nedap.com (smtp4.nedap.com [213.160.213.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38A87E00C0E
	for <yocto@yoctoproject.org>; Tue, 16 Jan 2018 00:46:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1516092418; x=1547628418;
	h=subject:to:references:cc:from:message-id:date:
	mime-version:in-reply-to:content-transfer-encoding;
	bh=/nxnTlVM72f9gTSr9w71jnFLvwbNCIrznGc4mv/EGcc=;
	b=qKouXDtmNCzvUjp+QWd/IZgZ8MZyzaM+byH2T6fhNJYqCj5PfDiiE4da
	8gFBnaT8dDyfCVuWUPDOXX6OxhVMjmkheMELse9zyq9M1Kas25/2plltU
	hUWokGuzA9vAlGdvhfvqifeQp6VYszSMJ0EFasYX8vTx1IKHn33miczF8 M=;
X-IronPort-AV: E=Sophos;i="5.46,367,1511823600"; 
   d="scan'208";a="1047294"
Received: from nedap.nedap.local (HELO [10.2.16.212]) ([10.2.16.212])
	by smtp4.nedap.com with ESMTP; 16 Jan 2018 09:46:49 +0100
To: Alan Levy <alan.levy@plextek.com>
References: <c6a26befa32d4285a034c49304494f61@PLEXTEK-EXCH1.plextek.lan>
From: Ryan Meulenkamp <Ryan.Meulenkamp@nedap.com>
Message-ID: <377a1d56-4c93-90d1-c806-4f9436508a7f@nedap.com>
Date: Tue, 16 Jan 2018 09:46:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <c6a26befa32d4285a034c49304494f61@PLEXTEK-EXCH1.plextek.lan>
Cc: yocto@yoctoproject.org
Subject: Re: Halt problem
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
X-List-Received-Date: Tue, 16 Jan 2018 08:46:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit


Hi Alan,

On 01/16/2018 08:48 AM, Alan Levy wrote:
> Shutdown is supposed to terminate all processes/threads so it's probably not about the watchdog daemon. It sounds more like the classic distro was disabling the hardware watchdog during shutdown and your new distro doesn't do that. Try comparing the kernel watchdog drivers in the two distros because that's the most likely culprit.

I tried that, but I think the hardware watchdog can only be enabled on 
the at91sam9m10. I'll compare the drivers anyway.

Thanks, and with kind regards,

Ryan Meulenkamp

