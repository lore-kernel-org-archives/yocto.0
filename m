Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (unknown [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAD6DE01452
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 06:12:21 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7DB4CF8126E; Mon, 25 Jun 2012 07:12:21 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2FB38F8126C;
	Mon, 25 Jun 2012 07:12:15 -0600 (MDT)
Message-ID: <4FE863AF.7030204@mlbassoc.com>
Date: Mon, 25 Jun 2012 07:12:15 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
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
	<4FE862BE.2020307@windriver.com>
In-Reply-To: <4FE862BE.2020307@windriver.com>
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
X-List-Received-Date: Mon, 25 Jun 2012 13:12:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-06-25 07:08, Bruce Ashfield wrote:
> On 12-06-25 08:53 AM, Om Prakash PAL wrote:
>> Hi Khem,
>> I have build core-image-core. but still this Error:
>> ======================================================>
>> 11.165466] EXT3-fs (mmcblk0p1): mounted filesystem with writeback data mode
>> [ 11.172668] VFS: Mounted root (ext3 filesystem) on device 179:1.
>> [ 11.179260] Freeing init memory: 316K
>> INIT: version 2.88 booting
>> Error Cannot open /dev/tty0: No such device or address
>> mknod: /dev/console: File exists
>>
>> =========================================================>
>>
>> I have set SERIAL_CONSOLE="115200 ttyAMA2" then why its taking /dev/tty0 ?.
>
> I've lost some of the context on the board you are working with, but
> from ttyAMA2, I'm assuming it is an arm board. Have you verified that your
> bootloader can pass the kernel bootline properly to the kernel ? It is
> (unfortunately) fairly common that it isn't properly passed. If you
> modify your configuration to have a built in command line with your
> configuration, you may be able to get better setup to debug the
> problem.

Note: if you (Om Prakash PAL) could send the entire boot log, we could make more
sense of your issues.  For example, the actual name(s) of serial devices supported
by the kernel will be listed there.

Also, I seem to recall that you had 'console=tty0' in your bootargs.

Send the complete log...

>> please help.
>>
>> Best Regards,
>> Om Prakash Pal
>> _______________________________________
>> From: Khem Raj [raj.khem@gmail.com]
>> Sent: Friday, June 22, 2012 11:18 AM
>> To: Om Prakash PAL
>> Cc: Gary Thomas; yocto@yoctoproject.org
>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>
>> On Thu, Jun 21, 2012 at 10:37 PM, Om Prakash PAL
>> <omprakash.pal@stericsson.com> wrote:
>>>
>>>>> and then console got stuck.
>>>>
>>>>> What do you have SERIAL_CONSOLE set to in your configuration?
>>>>
>>>> I have set SERIAL_CONSOLE="115200 ttyAMA2". As we are using ttyAMA2 for console.
>>>
>>>> What is your target device? Do you really have /dev/ttyAMA2 serial port??.
>>>
>>> Yes, I have /dev/ttyAMA2 serial port.
>>
>> Can you try using say poky/master and generate root file system and
>> try that out ?
>> another option is to try core-image-core
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

