Return-Path: <msvilans@aeonyx.ca>
Received: from homiemail-a86.g.dreamhost.com (caiajhbdcaib.dreamhost.com
	[208.97.132.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 558D9E016E3
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 16:43:28 -0800 (PST)
Received: from homiemail-a86.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a86.g.dreamhost.com (Postfix) with ESMTP id 2438C36006D;
	Sun,  3 Nov 2013 16:43:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=aeonyx.ca; h=message-id
	:date:from:mime-version:to:cc:subject:references:in-reply-to
	:content-type:content-transfer-encoding; s=aeonyx.ca; bh=P32Zo/e
	seU83vtFAZP3M/prfOOI=; b=P7S/WZzzyE39+tUJUJXZ+uYpocMDcpvupr+Hii2
	0PeMEkErH0RCT5N7zCCeW0/VJ5frBz28abxc4eYHFM9sMcnGZktehb5uuekYfhwB
	F6Cmy9aWrcrJAlj0TH1FFTeuQ0UHvAdcqy5D0ow0JQteXi9irwcl5w+X5A+mlz/M
	pZlY=
Received: from [192.168.1.127] (216-167-250-35.eastlink.ca [216.167.250.35])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: msvilans@aeonyx.ca)
	by homiemail-a86.g.dreamhost.com (Postfix) with ESMTPSA id B49C836006B; 
	Sun,  3 Nov 2013 16:43:27 -0800 (PST)
Message-ID: <5276EDAE.4000106@aeonyx.ca>
Date: Sun, 03 Nov 2013 19:43:26 -0500
From: Markus Svilans <msvilans@aeonyx.ca>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <52702B41.1040504@aeonyx.ca> <52703CE8.9020306@aeonyx.ca>
	<CAMKF1spWtCmptujJk_N3AUz3v961+T+JibJtbFpZmF7ZEB3VFA@mail.gmail.com>
	<52706EC2.1020409@aeonyx.ca> <5272DE46.7080005@aeonyx.ca>
	<CAMKF1soYjrHyP1dJ12nkc_9NQswwpzT2xW9mgGzeghO=K8yyTQ@mail.gmail.com>
In-Reply-To: <CAMKF1soYjrHyP1dJ12nkc_9NQswwpzT2xW9mgGzeghO=K8yyTQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fail to build core-image-minimal when MACHINE=genericx86-64
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
X-List-Received-Date: Mon, 04 Nov 2013 00:43:30 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Khem,

Per your suggestion, I installed gcc-multilib and was able to build 
syslinux and core-image-minimal. Wonderful!

Thank you for having a look at this problem and finding the fix.

May I suggest that the Ubuntu/Debian section in Yocto Quick Start 
documentation 
(https://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html) 
be updated with this new information? Should I file a bug report to help 
this happen?

Best regards,
Markus



On 11/03/2013 03:37 PM, Khem Raj wrote:
> On Thu, Oct 31, 2013 at 3:48 PM, Markus Svilans <msvilans@aeonyx.ca> wrote:
>> With the help of a friend, have confirmed that 'core-image-minimal' cannot
>> be built with Ubuntu 13.10 64-bit when MACHINE=genericx86-64. Attempted the
>> build on a different machine in a different city, same results (failure to
>> build).
>>
>> Confirmed that 'core-image-minimal' can be successfully built under an lxc
>> and a chroot running Debian Wheezy, on Ubuntu 13.10 64-bit, with
>> MACHINE=genericx86-64.
>>
>> Filed bug 5440 on Yocto Bugzilla.
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5440
>>
> accidentally I was able to reproduce it. So it seems that syslinux
> depends on compiler supporting 32bit+64bit mix
> and it has probes to enquire the compiler for supporting the above.
> Now if you have standard install of ubuntu you
> do not have gcc-multilib installed and hence the problem.
>
> So, I would say the fix is to install gcc-multilib package on
> debian-like systems and something similar for other distros
>
> sudo apt-get install gcc-multilib
>
> and then clean build syslinux-native should get you going


