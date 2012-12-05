Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3293DE006C6
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 10:30:13 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qB5IU9lu025634
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 5 Dec 2012 10:30:09 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Wed, 5 Dec 2012 10:30:08 -0800
Message-ID: <50BF92AA.8030300@windriver.com>
Date: Wed, 5 Dec 2012 13:30:02 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Philip Balister <philip@balister.org>
References: <1354713685799908500@schweigstill.de>
	<96350C20-3499-4549-9B3F-DA51BF2875D7@gmail.com>
	<50BF5E45.7010100@windriver.com> <50BF8F3C.7090609@balister.org>
In-Reply-To: <50BF8F3C.7090609@balister.org>
Cc: yocto@yoctoproject.org
Subject: Re: mail list for Xilinx Zynq platform?
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
X-List-Received-Date: Wed, 05 Dec 2012 18:30:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-12-05 01:15 PM, Philip Balister wrote:
> On 12/05/2012 06:46 AM, Bruce Ashfield wrote:
>> On 12-12-05 09:42 AM, Elvis Dowson wrote:
>>> Hi,
>>>
>>> On Dec 5, 2012, at 5:21 PM, Andreas Schweigstill
>>> <andreas@schweigstill.de> wrote:
>>>
>>>> I have also tried to build a kernel and root filesystem for Zynq but
>>>> the kernel
>>>> gets stuck when booting, regardless if on the ZC702 board or on Qemu.
>>>> I tried
>>>> Poky denzil and Poky danny.
>>>>
>>>> Also the alternate meta-zynq layer from git.yoctoproject.org shows
>>>> the same
>>>> behaviour.
>>>>
>>>> These are the last console messages which I get:
>>>> ## Booting kernel from Legacy Image at 01000000 ...
>>>>    Image Name:   Linux-3.2.11-yocto-standard
>>>>    Created:      2012-12-04  20:07:37 UTC
>>>>    Image Type:   ARM Linux Kernel Image (uncompressed)
>>>>    Data Size:    2997472 Bytes = 2.9 MiB
>>>>    Load Address: 00008000
>>>>    Entry Point:  00008000
>>>>    Verifying Checksum ... OK
>>>> ## Flattened Device Tree blob at 01a80000
>>>>    Booting using the fdt blob at 0x1a80000
>>>>    Loading Device Tree to 0eff8000, end 0efff185 ... OK
>>>>    Loading Kernel Image ... OK
>>>> OK
>>>>    Loading Device Tree to 0efed000, end 0eff7185 ... OK
>>>>
>>>> Starting kernel ...
>>>>
>>>>
>>>> Instead of using Linux kernel version 3.5-xilinx I always get
>>>> Linux-3.2.11-yocto-standard which is obviously missing the
>>>> Zynq patches.
>>>>
>>>> meta-zynq/recipes-kernel-linux-zynq contains the following lines:
>>>> LINUX_VERSION ?= "3.5"
>>>> LINUX_VERSION_EXTENSION ?= "-xilinx"
>>>>
>>>> How can I force Yocto to build kernel 3.5-xilinx?
>>>>
>>>
>>>  From you messages, I infer that you are using the meta-zynq layer
>>> located here:
>>>
>>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-zynq/
>>>
>>> For my builds, I used Philip Ballister's meta-zynq layer located here
>>> for the simple reason that it uses xilinx git repository:
>>>
>>> https://github.com/balister/meta-zynq
>>
>> And in case anyone is wondering, efforts are (still) underway to
>> get a single unified layer for this board (and others), but getting
>> all the moving parts organized is taking a bit longer than expected
>> or than we would like.
>
> Thanks! Should we go ahead and set the list up so interested parties can
> start coordinating our existing work?

I'm good with that. It's no big commitment to anything in particular
to have list available, and hopefully it'll serve to draw the right
folks into the conversation.

Cheers,

Bruce

>
> Philip
>
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> Also, try to ensure that you don't put both the meta-layers in your
>>> bblayers.conf file
>>> while building, and ensure that you set machine as follows in your
>>> local.conf file
>>>
>>> MACHINE ?= "zynq-zc702"
>>>
>>> Do let me know how it goes!
>>>
>>> Best regards,
>>>
>>> Elvis Dowson
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>


