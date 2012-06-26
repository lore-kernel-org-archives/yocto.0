Return-Path: <omprakash.pal@stericsson.com>
Received: from eu1sys200aog113.obsmtp.com (eu1sys200aog113.obsmtp.com
	[207.126.144.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1F26E00746
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 22:36:52 -0700 (PDT)
Received: from beta.dmz-ap.st.com ([138.198.100.35]) (using TLSv1) by
	eu1sys200aob113.postini.com ([207.126.147.11]) with SMTP
	ID DSNKT+lKcBGu4WP3TeTWyd/rWjutgWlyH7s5@postini.com;
	Tue, 26 Jun 2012 05:36:53 UTC
Received: from zeta.dmz-ap.st.com (ns6.st.com [138.198.234.13])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 906FEB4;
	Tue, 26 Jun 2012 05:28:27 +0000 (GMT)
Received: from relay1.stm.gmessaging.net (unknown [10.230.100.17])
	by zeta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 250251827;
	Tue, 26 Jun 2012 05:36:45 +0000 (GMT)
Received: from exdcvycastm004.EQ1STM.local (alteon-source-exch [10.230.100.61])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(Client CN "exdcvycastm004", Issuer "exdcvycastm004" (not verified))
	by relay1.stm.gmessaging.net (Postfix) with ESMTPS id A594224C07D;
	Tue, 26 Jun 2012 07:36:40 +0200 (CEST)
Received: from EXDCVYMBSTM006.EQ1STM.local ([10.230.100.3]) by
	exdcvycastm004.EQ1STM.local ([10.230.100.2]) with mapi; Tue, 26 Jun 2012
	07:36:44 +0200
From: Om Prakash PAL <omprakash.pal@stericsson.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Tue, 26 Jun 2012 07:33:22 +0200
Thread-Topic: [yocto] Porting of specific Kernel/Driver into yocto.
Thread-Index: Ac1S5SnaSoca8BXDRCqHFGZ5iM1VcQAeAoHz
Message-ID: <3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1DB@EXDCVYMBSTM006.EQ1STM.local>
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
In-Reply-To: <CAMKF1sq9ZKQ5KZk2Dav41qSPB19LfonK_aJj64k9ZpbB4vAUjA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 26 Jun 2012 05:36:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi khem,
on target, etc/ does not contain securetty.

Best Regards,
Om Prakash Pal
________________________________________
From: Khem Raj [raj.khem@gmail.com]
Sent: Monday, June 25, 2012 8:43 PM
To: Om Prakash PAL
Cc: Bruce Ashfield; yocto@yoctoproject.org
Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.

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
>>>      11.165466] EXT3-fs (mmcblk0p1): mounted filesystem with writeback =
data mode
>>> [   11.172668] VFS: Mounted root (ext3 filesystem) on device 179:1.
>>> [   11.179260] Freeing init memory: 316K
>>> INIT: version 2.88 booting
>>> Error Cannot open /dev/tty0: No such device or address
>>> mknod: /dev/console: File exists
>>>
>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D>
>>>
>>> I have set SERIAL_CONSOLE=3D"115200 ttyAMA2"  then why its taking /dev/=
tty0 ?.
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
>>> <omprakash.pal@stericsson.com>   wrote:
>>>>
>>>>>> and then console got  stuck.
>>>>>
>>>>>> What do you have SERIAL_CONSOLE set to in your configuration?
>>>>>
>>>>> I have set SERIAL_CONSOLE=3D"115200 ttyAMA2". As we are using ttyAMA2=
 for console.
>>>>
>>>>> What is your target device?  Do you really have /dev/ttyAMA2 serial p=
ort??.
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

