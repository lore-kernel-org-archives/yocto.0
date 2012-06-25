Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FA35E01453
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 06:08:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5PD8SZF013292
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 25 Jun 2012 06:08:28 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 25 Jun 2012 06:08:28 -0700
Message-ID: <4FE862BE.2020307@windriver.com>
Date: Mon, 25 Jun 2012 09:08:14 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Om Prakash PAL <omprakash.pal@stericsson.com>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CF@EXDCVYMBSTM006.EQ1STM.local>
	<4F9E9DD5.5080601@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416D2@EXDCVYMBSTM006.EQ1STM.local>
	<4FA27A40.6080506@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416D3@EXDCVYMBSTM006.EQ1STM.local>
	<4FA66F02.3080107@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1D2@EXDCVYMBSTM006.EQ1STM.local>
	<4FBD2998.5060407@intel.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1D3@EXDCVYMBSTM006.EQ1STM.local>
	<4FE317F5.1000400@mlbassoc.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B18D9EC2E@EXDCVYMBSTM006.EQ1STM.local>
	<4FE32F95.8000801@mlbassoc.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B18D9EDE8@EXDCVYMBSTM006.EQ1STM.local>,
	<CAMKF1sosEk23cc=GKxH7KinhPUNwhsdhPKkFHjYybPezZJrmSQ@mail.gmail.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1D8@EXDCVYMBSTM006.EQ1STM.local>
In-Reply-To: <3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1D8@EXDCVYMBSTM006.EQ1STM.local>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Porting of specific Kernel/Driver into yocto.
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
X-List-Received-Date: Mon, 25 Jun 2012 13:08:34 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-06-25 08:53 AM, Om Prakash PAL wrote:
> Hi Khem,
> I have build core-image-core. but still this Error:
> ======================================================>
>     11.165466] EXT3-fs (mmcblk0p1): mounted filesystem with writeback data mode
> [   11.172668] VFS: Mounted root (ext3 filesystem) on device 179:1.
> [   11.179260] Freeing init memory: 316K
> INIT: version 2.88 booting
> Error Cannot open /dev/tty0: No such device or address
> mknod: /dev/console: File exists
>
> =========================================================>
>
> I have set SERIAL_CONSOLE="115200 ttyAMA2"  then why its taking /dev/tty0 ?.

I've lost some of the context on the board you are working with, but
from ttyAMA2, I'm assuming it is an arm board. Have you verified that your
bootloader can pass the kernel bootline properly to the kernel ? It is
(unfortunately) fairly common that it isn't properly passed. If you
modify your configuration to have a built in command line with your
configuration, you may be able to get better setup to debug the
problem.

Cheers,

Bruce

> please help.
>
> Best Regards,
> Om Prakash Pal
> _______________________________________
> From: Khem Raj [raj.khem@gmail.com]
> Sent: Friday, June 22, 2012 11:18 AM
> To: Om Prakash PAL
> Cc: Gary Thomas; yocto@yoctoproject.org
> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>
> On Thu, Jun 21, 2012 at 10:37 PM, Om Prakash PAL
> <omprakash.pal@stericsson.com>  wrote:
>>
>>>> and then console got  stuck.
>>>
>>>> What do you have SERIAL_CONSOLE set to in your configuration?
>>>
>>> I have set SERIAL_CONSOLE="115200 ttyAMA2". As we are using ttyAMA2 for console.
>>
>>> What is your target device?  Do you really have /dev/ttyAMA2 serial port??.
>>
>> Yes, I have /dev/ttyAMA2 serial port.
>
> Can you try using say poky/master and generate root file system and
> try that out ?
> another option is to try core-image-core
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


