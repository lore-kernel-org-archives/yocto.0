Return-Path: <omprakash.pal@stericsson.com>
Received: from eu1sys200aog114.obsmtp.com (eu1sys200aog114.obsmtp.com
	[207.126.144.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72688E01452
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 05:54:14 -0700 (PDT)
Received: from beta.dmz-us.st.com ([167.4.1.35]) (using TLSv1) by
	eu1sys200aob114.postini.com ([207.126.147.11]) with SMTP
	ID DSNKT+hfcwYUtYnXw6vU2uoSwF1+PlvkJ34j@postini.com;
	Mon, 25 Jun 2012 12:54:14 UTC
Received: from zeta.dmz-us.st.com (ns4.st.com [167.4.16.71])
	by beta.dmz-us.st.com (STMicroelectronics) with ESMTP id 4451847;
	Mon, 25 Jun 2012 12:53:34 +0000 (GMT)
Received: from relay1.stm.gmessaging.net (unknown [10.230.100.17])
	by zeta.dmz-us.st.com (STMicroelectronics) with ESMTP id 2F09050;
	Mon, 25 Jun 2012 09:55:39 +0000 (GMT)
Received: from exdcvycastm004.EQ1STM.local (alteon-source-exch [10.230.100.61])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(Client CN "exdcvycastm004", Issuer "exdcvycastm004" (not verified))
	by relay1.stm.gmessaging.net (Postfix) with ESMTPS id 9CCBF24C2E7;
	Mon, 25 Jun 2012 14:53:48 +0200 (CEST)
Received: from EXDCVYMBSTM006.EQ1STM.local ([10.230.100.3]) by
	exdcvycastm004.EQ1STM.local ([10.230.100.2]) with mapi; Mon, 25 Jun 2012
	14:53:55 +0200
From: Om Prakash PAL <omprakash.pal@stericsson.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Jun 2012 14:53:54 +0200
Thread-Topic: [yocto] Porting of specific Kernel/Driver into yocto.
Thread-Index: Ac1QOrPcxeLJnHqWQ3qgWgwNz7SyQQClhX0n
Message-ID: <3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1D8@EXDCVYMBSTM006.EQ1STM.local>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>
	<4F825F65.4040706@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B69@EXDCVYMBSTM006.EQ1STM.local>
	<CADkTA4PnNWTbtpzVu=Qhegg87Ai=XNXgH5VD6c7mCK=BYj3dgg@mail.gmail.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CC@EXDCVYMBSTM006.EQ1STM.local>
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
In-Reply-To: <CAMKF1sosEk23cc=GKxH7KinhPUNwhsdhPKkFHjYybPezZJrmSQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 25 Jun 2012 12:54:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Khem,
I have build core-image-core. but still this Error:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D>
   11.165466] EXT3-fs (mmcblk0p1): mounted filesystem with writeback data m=
ode
[   11.172668] VFS: Mounted root (ext3 filesystem) on device 179:1.
[   11.179260] Freeing init memory: 316K
INIT: version 2.88 booting
Error Cannot open /dev/tty0: No such device or address
mknod: /dev/console: File exists

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D>

I have set SERIAL_CONSOLE=3D"115200 ttyAMA2"  then why its taking /dev/tty0=
 ?.
please help.

Best Regards,
Om Prakash Pal
_______________________________________
From: Khem Raj [raj.khem@gmail.com]
Sent: Friday, June 22, 2012 11:18 AM
To: Om Prakash PAL
Cc: Gary Thomas; yocto@yoctoproject.org
Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.

On Thu, Jun 21, 2012 at 10:37 PM, Om Prakash PAL
<omprakash.pal@stericsson.com> wrote:
>
>>> and then console got  stuck.
>>
>>> What do you have SERIAL_CONSOLE set to in your configuration?
>>
>> I have set SERIAL_CONSOLE=3D"115200 ttyAMA2". As we are using ttyAMA2 fo=
r console.
>
>>What is your target device?  Do you really have /dev/ttyAMA2 serial port?=
?.
>
> Yes, I have /dev/ttyAMA2 serial port.

Can you try using say poky/master and generate root file system and
try that out ?
another option is to try core-image-core

