Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4FF7E0044A
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 17:51:49 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Jun 2012 17:51:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="150630091"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 01 Jun 2012 17:51:45 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 1 Jun 2012 17:51:45 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.232]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.163]) with mapi id
	14.01.0355.002; Fri, 1 Jun 2012 17:51:44 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
Thread-Topic: [yocto] meta-cedartrail - serial console
Thread-Index: AQHNP0g7G3Yb1O/j10yH4rRy4+tABpbkNHnwgACKq4CAAALnAIAA/UQggAB7mAD//7cnEIAAfGKA///E5cA=
Date: Sat, 2 Jun 2012 00:51:44 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20ACB802E@ORSMSX105.amr.corp.intel.com>
References: <4FC79837.2070309@gmail.com>
	<D956029D25CF204F948EA0FB515E1EE20ACB7838@ORSMSX105.amr.corp.intel.com>
	<4FC7C769.1030903@gmail.com> <4FC7C9D8.5030301@intel.com>
	<D956029D25CF204F948EA0FB515E1EE20ACB7D5F@ORSMSX105.amr.corp.intel.com>
	<4FC905FA.7010707@intel.com>
	<D956029D25CF204F948EA0FB515E1EE20ACB7DD9@ORSMSX105.amr.corp.intel.com>
	<4FC93135.1040802@intel.com>
In-Reply-To: <4FC93135.1040802@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-cedartrail - serial console
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
X-List-Received-Date: Sat, 02 Jun 2012 00:51:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Hart, Darren
>Sent: Friday, June 01, 2012 2:17 PM
>To: Bodke, Kishore K
>Cc: jfabernathy; yocto@yoctoproject.org
>Subject: Re: [yocto] meta-cedartrail - serial console
>
>On 06/01/2012 02:02 PM, Bodke, Kishore K wrote:
>>
>>
>>> -----Original Message-----
>>> From: Hart, Darren
>>> Sent: Friday, June 01, 2012 11:12 AM
>>> To: Bodke, Kishore K
>>> Cc: jfabernathy; yocto@yoctoproject.org
>>> Subject: Re: [yocto] meta-cedartrail - serial console
>>>
>>> On 06/01/2012 11:03 AM, Bodke, Kishore K wrote:
>>>>
>>>>
>>>>> -----Original Message-----
>>>>> From: Hart, Darren
>>>>> Sent: Thursday, May 31, 2012 12:43 PM
>>>>> To: jfabernathy
>>>>> Cc: Bodke, Kishore K; yocto@yoctoproject.org
>>>>> Subject: Re: [yocto] meta-cedartrail - serial console
>>>>>
>>>>> On 05/31/2012 12:32 PM, jfabernathy wrote:
>>>>>> On 05/31/2012 02:18 PM, Bodke, Kishore K wrote:
>>>>>>>
>>>>>>>> -----Original Message-----
>>>>>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>>>>>> bounces@yoctoproject.org] On Behalf Of jfabernathy
>>>>>>>> Sent: Thursday, May 31, 2012 9:12 AM
>>>>>>>> To: yocto@yoctoproject.org
>>>>>>>> Subject: [yocto] meta-cedartrail - serial console
>>>>>>>>
>>>>>>>> Using a DN2800MT (Marshalltown) Intel board, I'm testing the
>>>>>>>> meta-cedartrail using edison branch and noticed an issues with the
>>>>>>>> serial console.
>>>>>>>>
>>>>>>>> The cedartrail.conf in the machine directory has the following
>>> statements:
>>>>>>>>
>>>>>>>> SYSLINUX_OPTS =3D "serial 0 115200"
>>>>>>>> SERIAL_CONSOLE =3D "115200 ttyS0"
>>>>>>>> APPEND +=3D "console=3DttyS0,115200 console=3Dtty0"
>>>>>>>>
>>>>>>> I just saw that Edison branch has ttyS3 enabled.
>>>>>>>
>>>>>>> SYSLINUX_OPTS =3D "serial 3 115200"
>>>>>>> SERIAL_CONSOLE =3D "115200 ttyS3"
>>>>>>> APPEND +=3D "console=3DttyS3,115200 console=3Dtty3"
>>>>>>>
>>>>>>> Are you looking into right branch?
>>>>>>>
>>>>>>> Thanks
>>>>>>> -Kishore.
>>>>>>>
>>>>>>
>>>>>> So how do you get changes in the cedartrail.conf file to take affect=
??
>>>>>> I edited the file and did the bitbake again, but nothing changed.  I=
'm
>>>>>> guessing I need a bitbake -c cleansstate "somthing"  But I don't kno=
w
>>>>>> what to put there to make rebuild with ttyS0.
>>>>>>
>>>>>
>>>>> Ah yes, this rebuild is a bit frustrating. I believe it is the
>>>>> task_core* tasks you need to rebuild. bitbake -u depexp -g
>>>>> core-image-base (whatever your image is) will allow you to view which
>>>>> task_ tasks it is building, try cleansstate'ing those and rebuilding =
the
>>>>> image.
>>>>
>>>> I had to remove the above 3 lines from cedartrail.conf and
>>>> SERIAL_CONSOLE ?=3D "115200 ttyS0" line from conf/machine/include/ia32=
-
>>> base.inc
>>>> rebuild the image.
>>>> It is disabled now.
>>>
>>> Did you try with SERIAL_CONSOLE=3D"" in cedartrail.conf ?
>>
>> Yes. I tried this.  It is disabled.
>>
>
>Meaning you do not have to modify ia32-base.inc?

I removed the  SERIAL_CONSOLE ?=3D "115200 ttyS0" from ia32-base.inc too.

>
>> I again added back in the grub.cfg, serial console hangs.
>
>Added what back in grub.cfg?

I added back console=3DttyS0,115200 console=3Dtty0 to the grub.cfg file and=
 rebooted=20
to see if I can get the serial console back, but after below boot messages =
the serial
console hangs.

Freeing unused kernel memory: 496k freed
udev[77]: starting version 164
EXT3-fs: barriers not enabled
kjournald starting.  Commit interval 5 seconds
EXT3-fs (loop0): using internal journal
EXT3-fs (loop0): recovery complete
EXT3-fs (loop0): mounted filesystem with ordered data mode
udev[487]: starting version 164
NET: Registered protocol family 10
ADDRCONF(NETDEV_UP): eth0: link is not ready
ip_tables: (C) 2000-2006 Netfilter Core Team
nf_conntrack version 0.5.0 (16384 buckets, 65536 max)

>
>I thought you were disabling the serial port...

I wanted to enable and disable the serial console through grub.cfg file.

Thanks
Kishore.

>
>Where does the serial console hang? In grub? During boot? At the login
>prompt?
>
>
>
>--
>Darren Hart
>Intel Open Source Technology Center
>Yocto Project - Linux Kernel

