Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91E22E01402
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 00:22:59 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SjQ6z-0006oU-Cr; Tue, 26 Jun 2012 08:22:57 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1DB@EXDCVYMBSTM006.EQ1STM.local>
Date: Tue, 26 Jun 2012 08:22:55 +0100
Message-Id: <31C034C4-45BF-467C-9FD9-866893AFF732@keylevel.com>
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
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B18D9F71C@EXDCVYMBSTM006.EQ1STM.local>,
	<CAMKF1sq9ZKQ5KZk2Dav41qSPB19LfonK_aJj64k9ZpbB4vAUjA@mail.gmail.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1DB@EXDCVYMBSTM006.EQ1STM.local>
To: Om Prakash PAL <omprakash.pal@stericsson.com>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
X-List-Received-Date: Tue, 26 Jun 2012 07:23:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 26 Jun 2012, at 06:33, Om Prakash PAL wrote:

> Hi khem,
> on target, etc/ does not contain securetty.

What about /etc/inittab? Does this contain any references to tty0?

> Best Regards,
> Om Prakash Pal
> ________________________________________
> From: Khem Raj [raj.khem@gmail.com]
> Sent: Monday, June 25, 2012 8:43 PM
> To: Om Prakash PAL
> Cc: Bruce Ashfield; yocto@yoctoproject.org
> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>=20
> On Mon, Jun 25, 2012 at 7:12 AM, Om Prakash PAL
> <omprakash.pal@stericsson.com> wrote:
>> Hi Bruce,
>> You can check the attached log.
>>=20
>> It does not contain /dev/tty0..its /dev/ttyAMA2.
>> I am not able to get why is it opening /dev/tty0?.
>=20
> whats there in /etc/securetty on target rfs ?
>>=20
>> Best Regards,
>> Om Prakash Pal
>>=20
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Monday, June 25, 2012 7:39 PM
>> To: Om Prakash PAL
>> Cc: Khem Raj; yocto@yoctoproject.org
>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>=20
>> On 12-06-25 10:06 AM, Om Prakash PAL wrote:
>>> Hi Bruce,
>>> Yes,its arm board.
>>> Yes, I have verified and kernel bootline is properly passed to the =
kernel by bootloader.
>>=20
>> And does it (the bootline) contain /dev/tty0 ? .. because if things =
are
>> properly configured, it really shouldn't be trying to open it.
>>=20
>> Cheers,
>>=20
>> Bruce
>>=20
>>>=20
>>> Best Regards,
>>> Om Prakash Pal
>>>=20
>>> -----Original Message-----
>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>> Sent: Monday, June 25, 2012 6:38 PM
>>> To: Om Prakash PAL
>>> Cc: Khem Raj; yocto@yoctoproject.org
>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>=20
>>> On 12-06-25 08:53 AM, Om Prakash PAL wrote:
>>>> Hi Khem,
>>>> I have build core-image-core. but still this Error:
>>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D>
>>>>     11.165466] EXT3-fs (mmcblk0p1): mounted filesystem with =
writeback data mode
>>>> [   11.172668] VFS: Mounted root (ext3 filesystem) on device 179:1.
>>>> [   11.179260] Freeing init memory: 316K
>>>> INIT: version 2.88 booting
>>>> Error Cannot open /dev/tty0: No such device or address
>>>> mknod: /dev/console: File exists
>>>>=20
>>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D>
>>>>=20
>>>> I have set SERIAL_CONSOLE=3D"115200 ttyAMA2"  then why its taking =
/dev/tty0 ?.
>>>=20
>>> I've lost some of the context on the board you are working with, but
>>> from ttyAMA2, I'm assuming it is an arm board. Have you verified =
that your
>>> bootloader can pass the kernel bootline properly to the kernel ? It =
is
>>> (unfortunately) fairly common that it isn't properly passed. If you
>>> modify your configuration to have a built in command line with your
>>> configuration, you may be able to get better setup to debug the
>>> problem.
>>>=20
>>> Cheers,
>>>=20
>>> Bruce
>>>=20
>>>> please help.
>>>>=20
>>>> Best Regards,
>>>> Om Prakash Pal
>>>> _______________________________________
>>>> From: Khem Raj [raj.khem@gmail.com]
>>>> Sent: Friday, June 22, 2012 11:18 AM
>>>> To: Om Prakash PAL
>>>> Cc: Gary Thomas; yocto@yoctoproject.org
>>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>>=20
>>>> On Thu, Jun 21, 2012 at 10:37 PM, Om Prakash PAL
>>>> <omprakash.pal@stericsson.com>   wrote:
>>>>>=20
>>>>>>> and then console got  stuck.
>>>>>>=20
>>>>>>> What do you have SERIAL_CONSOLE set to in your configuration?
>>>>>>=20
>>>>>> I have set SERIAL_CONSOLE=3D"115200 ttyAMA2". As we are using =
ttyAMA2 for console.
>>>>>=20
>>>>>> What is your target device?  Do you really have /dev/ttyAMA2 =
serial port??.
>>>>>=20
>>>>> Yes, I have /dev/ttyAMA2 serial port.
>>>>=20
>>>> Can you try using say poky/master and generate root file system and
>>>> try that out ?
>>>> another option is to try core-image-core
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>=20
>>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




