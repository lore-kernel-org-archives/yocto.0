Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2017CE006D9
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 08:14:05 -0700 (PDT)
Received: by eekb45 with SMTP id b45so1665797eek.35
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 08:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=BYOAuyAjNsoJUc4qBE0rI0ZYwsova0hwz9vkQp3YGWc=;
	b=uE3+Xwhf5mvjIUugKyYORe8dtyNQbG5FJGWBi/bQgWVGhyY/zWymBUnpcbzcyFp8bA
	KB9xc7gieVhqW1jqiudbvrk5yU/E9aenJK5PzcNpuMxG00EZG8E9pvGVTS0sny8b22/V
	54bbzAgrofJbfdW5XuTLnBTbl0IElYj7nAfen7NHMdLLjXHjg6aP6oKEFYd7+Tt6UUgN
	CLI6D6f0CQG7PmfI75NZfv32fCCL+6I1k2zhr06oDZ2o8WCR3TrwWwAeK7FN7lFd0IJs
	Qk9x4NWKki32i82bbkYOcw9eG3FCb8cSCnUaKdjykIacxVH8TA13AbfdIb659/RRLS5o
	RfPw==
Received: by 10.14.97.16 with SMTP id s16mr2264153eef.117.1340637244732; Mon,
	25 Jun 2012 08:14:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Mon, 25 Jun 2012 08:13:34 -0700 (PDT)
In-Reply-To: <3ED83A9DB3B6D94CA68BF7C03F2981D35B18D9F71C@EXDCVYMBSTM006.EQ1STM.local>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>
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
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B18D9EDE8@EXDCVYMBSTM006.EQ1STM.local>
	<CAMKF1sosEk23cc=GKxH7KinhPUNwhsdhPKkFHjYybPezZJrmSQ@mail.gmail.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1D8@EXDCVYMBSTM006.EQ1STM.local>
	<4FE862BE.2020307@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B18D9F70F@EXDCVYMBSTM006.EQ1STM.local>
	<4FE870EB.1040907@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B18D9F71C@EXDCVYMBSTM006.EQ1STM.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Jun 2012 08:13:34 -0700
Message-ID: <CAMKF1sq9ZKQ5KZk2Dav41qSPB19LfonK_aJj64k9ZpbB4vAUjA@mail.gmail.com>
To: Om Prakash PAL <omprakash.pal@stericsson.com>
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
X-List-Received-Date: Mon, 25 Jun 2012 15:14:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 25, 2012 at 7:12 AM, Om Prakash PAL
<omprakash.pal@stericsson.com> wrote:
> Hi Bruce,
> You can check the attached log.
>
> It does not contain /dev/tty0..its /dev/ttyAMA2.
> I am not able to get why is it opening /dev/tty0?.

whats there in /etc/securetty on target rfs ?
>
> Best Regards,
> Om Prakash Pal
>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Monday, June 25, 2012 7:39 PM
> To: Om Prakash PAL
> Cc: Khem Raj; yocto@yoctoproject.org
> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>
> On 12-06-25 10:06 AM, Om Prakash PAL wrote:
>> Hi Bruce,
>> Yes,its arm board.
>> Yes, I have verified and kernel bootline is properly passed to the kerne=
l by bootloader.
>
> And does it (the bootline) contain /dev/tty0 ? .. because if things are
> properly configured, it really shouldn't be trying to open it.
>
> Cheers,
>
> Bruce
>
>>
>> Best Regards,
>> Om Prakash Pal
>>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Monday, June 25, 2012 6:38 PM
>> To: Om Prakash PAL
>> Cc: Khem Raj; yocto@yoctoproject.org
>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>
>> On 12-06-25 08:53 AM, Om Prakash PAL wrote:
>>> Hi Khem,
>>> I have build core-image-core. but still this Error:
>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D>
>>> =C2=A0 =C2=A0 =C2=A011.165466] EXT3-fs (mmcblk0p1): mounted filesystem =
with writeback data mode
>>> [ =C2=A0 11.172668] VFS: Mounted root (ext3 filesystem) on device 179:1=
.
>>> [ =C2=A0 11.179260] Freeing init memory: 316K
>>> INIT: version 2.88 booting
>>> Error Cannot open /dev/tty0: No such device or address
>>> mknod: /dev/console: File exists
>>>
>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D>
>>>
>>> I have set SERIAL_CONSOLE=3D"115200 ttyAMA2" =C2=A0then why its taking =
/dev/tty0 ?.
>>
>> I've lost some of the context on the board you are working with, but
>> from ttyAMA2, I'm assuming it is an arm board. Have you verified that yo=
ur
>> bootloader can pass the kernel bootline properly to the kernel ? It is
>> (unfortunately) fairly common that it isn't properly passed. If you
>> modify your configuration to have a built in command line with your
>> configuration, you may be able to get better setup to debug the
>> problem.
>>
>> Cheers,
>>
>> Bruce
>>
>>> please help.
>>>
>>> Best Regards,
>>> Om Prakash Pal
>>> _______________________________________
>>> From: Khem Raj [raj.khem@gmail.com]
>>> Sent: Friday, June 22, 2012 11:18 AM
>>> To: Om Prakash PAL
>>> Cc: Gary Thomas; yocto@yoctoproject.org
>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>
>>> On Thu, Jun 21, 2012 at 10:37 PM, Om Prakash PAL
>>> <omprakash.pal@stericsson.com> =C2=A0 wrote:
>>>>
>>>>>> and then console got =C2=A0stuck.
>>>>>
>>>>>> What do you have SERIAL_CONSOLE set to in your configuration?
>>>>>
>>>>> I have set SERIAL_CONSOLE=3D"115200 ttyAMA2". As we are using ttyAMA2=
 for console.
>>>>
>>>>> What is your target device? =C2=A0Do you really have /dev/ttyAMA2 ser=
ial port??.
>>>>
>>>> Yes, I have /dev/ttyAMA2 serial port.
>>>
>>> Can you try using say poky/master and generate root file system and
>>> try that out ?
>>> another option is to try core-image-core
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

