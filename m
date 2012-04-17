Return-Path: <woailinux@hotmail.com>
Received: from blu0-omc3-s16.blu0.hotmail.com (blu0-omc3-s16.blu0.hotmail.com
	[65.55.116.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 154DDE0030B
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 18:42:44 -0700 (PDT)
Received: from BLU0-SMTP387 ([65.55.116.73]) by blu0-omc3-s16.blu0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Mon, 16 Apr 2012 18:42:43 -0700
X-Originating-IP: [114.255.122.12]
X-Originating-Email: [woailinux@hotmail.com]
Message-ID: <BLU0-SMTP387397893077144B5545E98B93F0@phx.gbl>
Received: from [172.21.23.12] ([114.255.122.12]) by BLU0-SMTP387.phx.gbl over
	TLS secured channel with Microsoft SMTPSVC(6.0.3790.4675); 
	Mon, 16 Apr 2012 18:42:43 -0700
Date: Tue, 17 Apr 2012 09:42:38 +0800
From: jack <woailinux@hotmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <BLU0-SMTP1211642316DA9A003041503B9380@phx.gbl>
	<857BE142E5399E46B20FD45B9DB8A7BC0FD377DB@SHSMSX102.ccr.corp.intel.com>
	<BLU0-SMTP574C166F80A87118D4937CB93E0@phx.gbl>
	<C6510F6D410BB64A8C15398EDC6B847C451CACCA@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C451CACCA@ORSMSX101.amr.corp.intel.com>
X-OriginalArrivalTime: 17 Apr 2012 01:42:43.0579 (UTC)
	FILETIME=[61F644B0:01CD1C3B]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: error: runqemu command not fonund, when "$ runqemu qemux86 bzImage-qemux86.bin core-image-lsb-qt3-qemux86.ext3" THx!
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 17 Apr 2012 01:42:45 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2012年04月16日 22:24, Zhang, Jessica wrote:
> Hi Jack,
>
> Can you check that you have runqemu under /opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/bin/?  And can you do "echo $PATH" to check your PATH starts with /opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/bin/
>
> Thanks,
> Jessica
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of jack
> Sent: Monday, April 16, 2012 3:58 AM
> To: Lu, Lianhao
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] error: runqemu command not fonund, when "$ runqemu qemux86 bzImage-qemux86.bin core-image-lsb-qt3-qemux86.ext3" THx!
>
> On 2012年04月14日 18:22, Lu, Lianhao wrote:
>> jack wrote on 2012-04-14:
>>> hi,all! I Use a pre-built image and run it in the QEMU emulator.
>>> I have downloaded and installed
>>> "poky-eglibc-i686-i586-toolchain-gmae-1.1.1.tar.bz2", then I
>>> downloaded "bzImage-qemux86.bin"  and  "core-image-lsb-qt3-qemux86.ext3"
>>> but when
>>> "$ runqemu qemux86 bzImage-qemux86.bin core-image-lsb-qt3-qemux86.ext3"
>>> error like below:
>>> error: runqemu command not fonund
>>>
>> You may need to "source /opt/poky/1.1.1/environment-setup-i586-poky-linux" first before you "runqemu".
>>
>> Best Regards,
>> Lianhao
>>
>>
>>
> hello, Lianhao! Thank you for your answer. But I did "source /opt/poky/1.1.1/environment-setup-i586-poky-linux" first before "runqemu".error still like this, error: runqemu command not fonun. Could you help me ?
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
Thank you very much, I have solved the problem. I installed the 
"poky-eglibc-i686-i586-toolchain-gmae-1.1.1.tar.bz2" under a wrong path.

