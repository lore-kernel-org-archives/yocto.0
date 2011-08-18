Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B841E006AB
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 12:38:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7IJcLhK026842
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 18 Aug 2011 12:38:21 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.44) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 18 Aug 2011 12:38:21 -0700
Message-ID: <4E4D6A2A.8020508@windriver.com>
Date: Thu, 18 Aug 2011 15:38:18 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.20) Gecko/20110804 Thunderbird/3.1.12
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <E9678BA8-C7CD-4C9B-A32E-944193AB9956@keylevel.com>
	<4BDA6AE3-9B00-450A-912D-83BDFC7B0CC2@keylevel.com>
In-Reply-To: <4BDA6AE3-9B00-450A-912D-83BDFC7B0CC2@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Strange USB behavior
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
X-List-Received-Date: Thu, 18 Aug 2011 19:38:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-18 3:36 PM, Chris Tapp wrote:
> On 18 Aug 2011, at 09:19, Chris Tapp wrote:
>
>> I'm running on a platform using the Vortex86DX SoC which includes a
>> CM119 USB audio interface.
>>
>> I've got a kernel configuration that recognizes and initializes this
>> ok (dmesg reports it as an ALSA device). However, this is only the
>> case if I also have a USB storage device connected when it boots!
>>
>> 1) The audio works if I boot the kernel from the USB device;
>> 2) The audio works if I boot from the system SD card and any USB
>> storage device is connected (it's not booting from this accidentally);
>> 3) The audio does not work if I boot from the SD card without a USB
>> storage device.
>>
>> Can anyone give me an idea where I should start looking to try and
>> understand what's going on here?
>>
>> Kernel is a modified 'common-pc' 2.6.34 wrs that has been built using
>> Yocto 0.9.
>
> Looks like this is just a kernel load order issue.
>
> The USB storage device seems to cause the sound device to initialise
> earlier in the boot so it's ready when ALSA loads. Without it, it's not
> loaded before ALSA, so a 'No sound card' message is produced in the log
> - but there is one once the system is up.

Aha. We've seen similar things here over the years. At least
this doesn't sound like it caused too much pain.

Cheers,

Bruce

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


