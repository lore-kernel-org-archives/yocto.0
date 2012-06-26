Return-Path: <omprakash.pal@stericsson.com>
Received: from eu1sys200aog117.obsmtp.com (eu1sys200aog117.obsmtp.com
	[207.126.144.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F66BE01402
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 00:53:54 -0700 (PDT)
Received: from beta.dmz-ap.st.com ([138.198.100.35]) (using TLSv1) by
	eu1sys200aob117.postini.com ([207.126.147.11]) with SMTP
	ID DSNKT+lqkLdAlobiWl7rJvbnKu1dCiNbk84H@postini.com;
	Tue, 26 Jun 2012 07:53:55 UTC
Received: from zeta.dmz-ap.st.com (ns6.st.com [138.198.234.13])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 1D485D2;
	Tue, 26 Jun 2012 07:45:30 +0000 (GMT)
Received: from relay1.stm.gmessaging.net (unknown [10.230.100.17])
	by zeta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 9E9BE1893;
	Tue, 26 Jun 2012 07:53:47 +0000 (GMT)
Received: from exdcvycastm022.EQ1STM.local (alteon-source-exch [10.230.100.61])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(Client CN "exdcvycastm022", Issuer "exdcvycastm022" (not verified))
	by relay1.stm.gmessaging.net (Postfix) with ESMTPS id F40E724C2F7;
	Tue, 26 Jun 2012 09:53:41 +0200 (CEST)
Received: from EXDCVYMBSTM006.EQ1STM.local ([10.230.100.3]) by
	exdcvycastm022.EQ1STM.local ([10.230.100.30]) with mapi;
	Tue, 26 Jun 2012 09:53:47 +0200
From: Om Prakash PAL <omprakash.pal@stericsson.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Tue, 26 Jun 2012 09:53:45 +0200
Thread-Topic: [yocto] Porting of specific Kernel/Driver into yocto.
Thread-Index: Ac1TbIP+AejN98n7QouqeGyyaXvbkQAA2Dxv
Message-ID: <3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1DC@EXDCVYMBSTM006.EQ1STM.local>
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
	<4FE870EB.1040907@windriver .com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B18D9F71C@EXDCVYMBSTM006.EQ1STM.local>,
	<CAMKF1sq9ZKQ5KZk2Dav41qSPB19LfonK_aJj64k9ZpbB4vAUjA@mail.gmail.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1DB@EXDCVYMBSTM006.EQ1STM.local>,
	<31C034C4-45BF-467C-9FD9-866893AFF732@keylevel.com>
In-Reply-To: <31C034C4-45BF-467C-9FD9-866893AFF732@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
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
X-List-Received-Date: Tue, 26 Jun 2012 07:53:56 -0000
X-Groupsio-MsgNum: 7467
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1DCEXDCVYMBSTM00_"

--_002_3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1DCEXDCVYMBSTM00_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Chris,
No, /etc/initab does not contain any reference to inittab.
please find the attched /etc/initab file for more information.

Best Regards,
Om Prakash Pal

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D>
________________________________________
From: Chris Tapp [opensource@keylevel.com]
Sent: Tuesday, June 26, 2012 12:52 PM
To: Om Prakash PAL
Cc: Khem Raj; yocto@yoctoproject.org
Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.

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
>
> On Mon, Jun 25, 2012 at 7:12 AM, Om Prakash PAL
> <omprakash.pal@stericsson.com> wrote:
>> Hi Bruce,
>> You can check the attached log.
>>
>> It does not contain /dev/tty0..its /dev/ttyAMA2.
>> I am not able to get why is it opening /dev/tty0?.
>
> whats there in /etc/securetty on target rfs ?
>>
>> Best Regards,
>> Om Prakash Pal
>>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Monday, June 25, 2012 7:39 PM
>> To: Om Prakash PAL
>> Cc: Khem Raj; yocto@yoctoproject.org
>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>
>> On 12-06-25 10:06 AM, Om Prakash PAL wrote:
>>> Hi Bruce,
>>> Yes,its arm board.
>>> Yes, I have verified and kernel bootline is properly passed to the kern=
el by bootloader.
>>
>> And does it (the bootline) contain /dev/tty0 ? .. because if things are
>> properly configured, it really shouldn't be trying to open it.
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> Best Regards,
>>> Om Prakash Pal
>>>
>>> -----Original Message-----
>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>> Sent: Monday, June 25, 2012 6:38 PM
>>> To: Om Prakash PAL
>>> Cc: Khem Raj; yocto@yoctoproject.org
>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>
>>> On 12-06-25 08:53 AM, Om Prakash PAL wrote:
>>>> Hi Khem,
>>>> I have build core-image-core. but still this Error:
>>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D>
>>>>     11.165466] EXT3-fs (mmcblk0p1): mounted filesystem with writeback =
data mode
>>>> [   11.172668] VFS: Mounted root (ext3 filesystem) on device 179:1.
>>>> [   11.179260] Freeing init memory: 316K
>>>> INIT: version 2.88 booting
>>>> Error Cannot open /dev/tty0: No such device or address
>>>> mknod: /dev/console: File exists
>>>>
>>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D>
>>>>
>>>> I have set SERIAL_CONSOLE=3D"115200 ttyAMA2"  then why its taking /dev=
/tty0 ?.
>>>
>>> I've lost some of the context on the board you are working with, but
>>> from ttyAMA2, I'm assuming it is an arm board. Have you verified that y=
our
>>> bootloader can pass the kernel bootline properly to the kernel ? It is
>>> (unfortunately) fairly common that it isn't properly passed. If you
>>> modify your configuration to have a built in command line with your
>>> configuration, you may be able to get better setup to debug the
>>> problem.
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>> please help.
>>>>
>>>> Best Regards,
>>>> Om Prakash Pal
>>>> _______________________________________
>>>> From: Khem Raj [raj.khem@gmail.com]
>>>> Sent: Friday, June 22, 2012 11:18 AM
>>>> To: Om Prakash PAL
>>>> Cc: Gary Thomas; yocto@yoctoproject.org
>>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>>
>>>> On Thu, Jun 21, 2012 at 10:37 PM, Om Prakash PAL
>>>> <omprakash.pal@stericsson.com>   wrote:
>>>>>
>>>>>>> and then console got  stuck.
>>>>>>
>>>>>>> What do you have SERIAL_CONSOLE set to in your configuration?
>>>>>>
>>>>>> I have set SERIAL_CONSOLE=3D"115200 ttyAMA2". As we are using ttyAMA=
2 for console.
>>>>>
>>>>>> What is your target device?  Do you really have /dev/ttyAMA2 serial =
port??.
>>>>>
>>>>> Yes, I have /dev/ttyAMA2 serial port.
>>>>
>>>> Can you try using say poky/master and generate root file system and
>>>> try that out ?
>>>> another option is to try core-image-core
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




--_002_3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1DCEXDCVYMBSTM00_
Content-Type: application/octet-stream; name="inittab"
Content-Description: inittab
Content-Disposition: attachment; filename="inittab"; size=1033;
	creation-date="Tue, 26 Jun 2012 09:53:33 GMT";
	modification-date="Tue, 26 Jun 2012 09:53:33 GMT"
Content-Transfer-Encoding: base64

IyAvZXRjL2luaXR0YWI6IGluaXQoOCkgY29uZmlndXJhdGlvbi4KIyAkSWQ6IGluaXR0YWIsdiAx
LjkxIDIwMDIvMDEvMjUgMTM6MzU6MjEgbWlxdWVscyBFeHAgJAoKIyBUaGUgZGVmYXVsdCBydW5s
ZXZlbC4KaWQ6NTppbml0ZGVmYXVsdDoKCiMgQm9vdC10aW1lIHN5c3RlbSBjb25maWd1cmF0aW9u
L2luaXRpYWxpemF0aW9uIHNjcmlwdC4KIyBUaGlzIGlzIHJ1biBmaXJzdCBleGNlcHQgd2hlbiBi
b290aW5nIGluIGVtZXJnZW5jeSAoLWIpIG1vZGUuCnNpOjpzeXNpbml0Oi9ldGMvaW5pdC5kL3Jj
UwoKIyBXaGF0IHRvIGRvIGluIHNpbmdsZS11c2VyIG1vZGUuCn5+OlM6d2FpdDovc2Jpbi9zdWxv
Z2luCgojIC9ldGMvaW5pdC5kIGV4ZWN1dGVzIHRoZSBTIGFuZCBLIHNjcmlwdHMgdXBvbiBjaGFu
Z2UKIyBvZiBydW5sZXZlbC4KIwojIFJ1bmxldmVsIDAgaXMgaGFsdC4KIyBSdW5sZXZlbCAxIGlz
IHNpbmdsZS11c2VyLgojIFJ1bmxldmVscyAyLTUgYXJlIG11bHRpLXVzZXIuCiMgUnVubGV2ZWwg
NiBpcyByZWJvb3QuCgpsMDowOndhaXQ6L2V0Yy9pbml0LmQvcmMgMApsMToxOndhaXQ6L2V0Yy9p
bml0LmQvcmMgMQpsMjoyOndhaXQ6L2V0Yy9pbml0LmQvcmMgMgpsMzozOndhaXQ6L2V0Yy9pbml0
LmQvcmMgMwpsNDo0OndhaXQ6L2V0Yy9pbml0LmQvcmMgNApsNTo1OndhaXQ6L2V0Yy9pbml0LmQv
cmMgNQpsNjo2OndhaXQ6L2V0Yy9pbml0LmQvcmMgNgojIE5vcm1hbGx5IG5vdCByZWFjaGVkLCBi
dXQgZmFsbHRocm91Z2ggaW4gY2FzZSBvZiBlbWVyZ2VuY3kuCno2OjY6cmVzcGF3bjovc2Jpbi9z
dWxvZ2luCiMgL3NiaW4vZ2V0dHkgaW52b2NhdGlvbnMgZm9yIHRoZSBydW5sZXZlbHMuCiMKIyBU
aGUgImlkIiBmaWVsZCBNVVNUIGJlIHRoZSBzYW1lIGFzIHRoZSBsYXN0CiMgY2hhcmFjdGVycyBv
ZiB0aGUgZGV2aWNlIChhZnRlciAidHR5IikuCiMKIyBGb3JtYXQ6CiMgIDxpZD46PHJ1bmxldmVs
cz46PGFjdGlvbj46PHByb2Nlc3M+CiMKCjE6MjM0NTpyZXNwYXduOi9zYmluL2dldHR5IDM4NDAw
IHR0eTEKCg==

--_002_3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1DCEXDCVYMBSTM00_--
