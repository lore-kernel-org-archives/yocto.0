Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81BD9E009E5; Fri, 17 Jul 2015 07:47:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F5F0E009C3
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 07:47:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 8778D27E2D1;
	Fri, 17 Jul 2015 14:47:13 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id BA_caYUoJmua; Fri, 17 Jul 2015 14:47:12 +0000 (UTC)
Received: from [192.168.0.12] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B49FF27E289;
	Fri, 17 Jul 2015 14:47:12 +0000 (UTC)
Message-ID: <55A91569.8000909@dynamicdevices.co.uk>
Date: Fri, 17 Jul 2015 15:47:05 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Richard Tollerton <rich.tollerton@ni.com>, yocto@yoctoproject.org
References: <cover.1437083171.git.rich.tollerton@ni.com>
	<55A8C8B9.8020700@dynamicdevices.co.uk>
	<55A912F7.7090501@dynamicdevices.co.uk>
	<877fpyyhcv.fsf@weregild.amer.corp.natinst.com>
In-Reply-To: <877fpyyhcv.fsf@weregild.amer.corp.natinst.com>
Subject: Re: [meta-mono] [PATCH 00/11] Refactor common mono build bits into mono.bbclass
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
X-List-Received-Date: Fri, 17 Jul 2015 14:47:16 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 17/07/2015 15:43, Richard Tollerton wrote:
> Alex J Lennon <ajlennon@dynamicdevices.co.uk> writes:
>
>> Richard,
>>
>> I'm having some trouble with builds here since that latest patch.
>>
>> Can you tell me, what version of Mono did you test against, and also did
>> you have Mono installed out of tree on the host system?
>> (I've had trouble in the past with the host mono being picked up
>> incorrectly)
> Sorry for the inconvenience :(
>
> I've been building mono 4.0.2.4 with these changes. I tested the build
> both on archlinux, with mono installed on the host, and inside an ubuntu
> 12.04 chroot, with mono not installed.
>
>

Thanks for coming back to me so quickly. No worries. Perhaps it's finger
trouble on my part somehow as I took the opportunity to clean up the
4.xx build a little today too.

I'm using 4.0.2.4 here too, and have been testing also with 4.0.2.5
support I added in. No mono on the host. Simple tests of the
helloworld/helloworldform apps work fine under qemux86 but I'm seeing
trouble building those updated recipes for some reason.

I'll spend a bit of time investigating.

Cheers, Alex



