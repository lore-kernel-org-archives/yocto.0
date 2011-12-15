Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78AA5E00744
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 17:01:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBF11Tkw027262
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 17:01:29 -0800 (PST)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 14 Dec 2011 17:01:29 -0800
Message-ID: <4EE94705.20807@windriver.com>
Date: Thu, 15 Dec 2011 09:01:57 +0800
From: Zumeng Chen <zumeng.chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Lightning/1.0b1 Thunderbird/3.0.6
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <1323855077-16683-1-git-send-email-zumeng.chen@windriver.com>
	<4EE8B0C1.5010202@windriver.com>
In-Reply-To: <4EE8B0C1.5010202@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] remove usbgadget from routerstationpro
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
X-List-Received-Date: Thu, 15 Dec 2011 01:01:30 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 2011年12月14日 22:20, Bruce Ashfield 写道:
> On 11-12-14 04:31 AM, Zumeng Chen wrote:
>> 1. No mass storage needed to be accessed by usbgadget.
>> 2. This is a router station& switch, so it should not
>> be taken as a USB_NET device too.
>
> Zumeng,
>
> The comment from the bug reporter was also that the target
> doesn't have USB slave hardware to support usbgadget. So mentioning
> that in the header is probably a good idea as well.
OK, will add it, generally speaking MTD can be used as the slave,
but obviously it's meaningless here. Soon V2

Regards,
Zumeng
>
> And small comment indicating that as a result of these conditions,
> we remove usbgadget from MACHINE_FEATURES, since it can't be used.
> Would complete the header.
>
> Cheers,
>
> Bruce
>
>>
>> Signed-off-by: Zumeng.chen@windriver.com>
>> ---
>> meta-yocto/conf/machine/routerstationpro.conf | 2 +-
>> 1 files changed, 1 insertions(+), 1 deletions(-)
>>
>> diff --git a/meta-yocto/conf/machine/routerstationpro.conf 
>> b/meta-yocto/conf/machine/routerstationpro.conf
>> index 9338ca1..52124d9 100644
>> --- a/meta-yocto/conf/machine/routerstationpro.conf
>> +++ b/meta-yocto/conf/machine/routerstationpro.conf
>> @@ -5,7 +5,7 @@
>> require conf/machine/include/tune-mips32.inc
>>
>> MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 \
>> - serial usbgadget"
>> + serial"
>>
>> KERNEL_IMAGETYPE = "vmlinux"
>> KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
>


