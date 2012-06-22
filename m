Return-Path: <omprakash.pal@stericsson.com>
Received: from eu1sys200aog116.obsmtp.com (eu1sys200aog116.obsmtp.com
	[207.126.144.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99A70E01426
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 02:29:56 -0700 (PDT)
Received: from beta.dmz-eu.st.com ([164.129.1.35]) (using TLSv1) by
	eu1sys200aob116.postini.com ([207.126.147.11]) with SMTP
	ID DSNKT+Q7EYoYIj2nqXv3p+mLy3q+kLqAonxi@postini.com;
	Fri, 22 Jun 2012 09:29:56 UTC
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5990DF6;
	Fri, 22 Jun 2012 09:29:39 +0000 (GMT)
Received: from relay1.stm.gmessaging.net (unknown [10.230.100.17])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 02E5A2368;
	Fri, 22 Jun 2012 09:29:39 +0000 (GMT)
Received: from exdcvycastm004.EQ1STM.local (alteon-source-exch [10.230.100.61])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(Client CN "exdcvycastm004", Issuer "exdcvycastm004" (not verified))
	by relay1.stm.gmessaging.net (Postfix) with ESMTPS id 53C9724C2F1;
	Fri, 22 Jun 2012 11:29:33 +0200 (CEST)
Received: from EXDCVYMBSTM006.EQ1STM.local ([10.230.100.3]) by
	exdcvycastm004.EQ1STM.local ([10.230.100.2]) with mapi; Fri, 22 Jun 2012
	11:29:38 +0200
From: Om Prakash PAL <omprakash.pal@stericsson.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Jun 2012 11:29:37 +0200
Thread-Topic: [yocto] Porting of specific Kernel/Driver into yocto.
Thread-Index: Ac1QOrPcxeLJnHqWQ3qgWgwNz7SyQQAHf/p3
Message-ID: <3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1D5@EXDCVYMBSTM006.EQ1STM.local>
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
X-List-Received-Date: Fri, 22 Jun 2012 09:29:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


________________________________________
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

>Can you try using say poky/master and generate root file system and
>try that out ?
>another option is to try core-image-core

While building core-image-core
$bitbake core-image-core

I am getting folowwing Error:

 checking for perl... /usr/bin/perl
| checking for perl >=3D 5.8.1... 5.12.4
| checking for XML::Parser... configure: error: XML::Parser perl module is =
required for intltool
| + bbfatal 'oe_runconf failed'
| + echo 'ERROR: oe_runconf failed'
| ERROR: oe_runconf failed
| + exit 1
|=20
| checking for gmsgfmt... /home/apallan/yocto/hello_build/tmp/sysroots/i686=
-linux/usr/bin/msgfmt
| checking for perl... /usr/bin/perl
| checking for perl >=3D 5.8.1... 5.12.4
| checking for XML::Parser... configure: error: XML::Parser perl module is =
required for intltool
| + bbfatal 'oe_runconf failed'
| + echo 'ERROR: oe_runconf failed'
| ERROR: oe_runconf failed
| + exit 1
| ERROR: Function 'do_configure' failed (see /home/apallan/yocto/hello_buil=
d/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/temp=
/log.do_configure.31201 for further information)
NOTE: package shared-mime-info-0.90-r0: task do_configure: Failed
ERROR: Task 2799 (/home/apallan/yocto/poky-edison-6.0/meta/recipes-support/=
shared-mime-info/shared-mime-info_0.90.bb, do_configure) failed with exit c=
ode '1'
ERROR: '/home/apallan/yocto/poky-edison-6.0/meta/recipes-support/shared-mim=
e-info/shared-mime-info_0.90.bb' failed

Any idea why is it failing and how can I resolve it?.

Best Regards,
Om Prakash Pal=

