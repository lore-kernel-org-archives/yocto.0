Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D719E006C2
	for <yocto@yoctoproject.org>; Sun, 12 May 2013 23:41:34 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2013 23:41:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,659,1363158000"; d="scan'208";a="336614740"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by fmsmga002.fm.intel.com with ESMTP; 12 May 2013 23:41:33 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.19.9.52) by
	FMSMSX107.amr.corp.intel.com (10.19.9.54) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Sun, 12 May 2013 23:41:33 -0700
Received: from fmsmsx152.amr.corp.intel.com ([169.254.6.6]) by
	FMSMSX101.amr.corp.intel.com ([169.254.1.31]) with mapi id
	14.01.0355.002; Sun, 12 May 2013 23:41:33 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: FW: [yocto] how the &^$%^%@%^#$ does "file://defconfig" work?
Thread-Index: AQHOQOIC2+TW5OoLMUGcg0J9Q9PeDpjlgORggBW5iICAABeYYIAAdqgA//+MN5CAB3J4YA==
Date: Mon, 13 May 2013 06:41:32 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF35C9D@fmsmsx152.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "Robert P. J. Day" <rpjday@crashcourse.ca>
Subject: FW: FW: how the &^$%^%@%^#$ does "file://defconfig" work?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 13 May 2013 06:41:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have updated the wording in the "Changing the Configuration" section of t=
he YP Kernel Development Manual to remove implied behavior regarding kernel=
 configuration.  Hopefully, this is clearer.  See http://www.yoctoproject.o=
rg/docs/1.5/kernel-dev/kernel-dev.html#changing-the-configuration.  If you =
have more feedback on it just let me know.=20

Thanks,=20
Scott

>-----Original Message-----
>From: Rifenbark, Scott M
>Sent: Wednesday, May 08, 2013 5:57 AM
>To: Bruce Ashfield
>Subject: RE: FW: [yocto] how the &^$%^%@%^#$ does "file://defconfig"
>work?
>
>Bruce,
>
>Thanks for the very clear example and the analogy.  I might add a note
>to the section that was confusing Robert.  Sometimes he gets really
>picky on what he reads. But, anytime someone is confused over what is
>written it is worth digging into seeing if it can be cleared up.
>
>Scott
>
>>-----Original Message-----
>>From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>Sent: Wednesday, May 08, 2013 5:50 AM
>>To: Rifenbark, Scott M
>>Cc: Hart, Darren
>>Subject: Re: FW: [yocto] how the &^$%^%@%^#$ does "file://defconfig"
>>work?
>>
>>On 13-05-08 08:46 AM, Rifenbark, Scott M wrote:
>>> Bruce and Darren,
>>>
>>> Can you comment to me on this thread?  Is what I described to Paul
>>true?
>>
>>It is true. defconfig is the "old" way that kernel configuration is
>>handled. A defconfig is applied to the tree, and then fragments
>>layered on top. Think of it as a specially named, giant fragment, that
>>is always applied first. Otherwise, it's really no different than
>>other fragments.
>>
>>I also followed up with Robert that he was reading to much into the
>>description. Even if you use a defconfig, your final .config will not
>>be exactly that input file, since the kernel configuration system
>>(lkc, not yocto's) can turn config items on and off based on
>>dependencies,
>>and select statements (along with other things).
>>
>>Cheers,
>>
>>Bruce
>>
>>>
>>> Thanks,
>>> Scott
>>>
>>>> -----Original Message-----
>>>> From: Rifenbark, Scott M
>>>> Sent: Wednesday, May 08, 2013 4:23 AM
>>>> To: Eggleton, Paul
>>>> Subject: FW: [yocto] how the &^$%^%@%^#$ does "file://defconfig"
>>work?
>>>>
>>>> Paul,
>>>>
>>>> Could you confirm some of Robert's points down in this thread?
>>>> Basically, if a user does use file://defconfig in the recipes-
>>>> kernel/linux directory, does the build process still modify the
>final
>>>> .config file by applying other fragments?  If so, I need to create
>>some
>>>> more accurate wording.
>>>>
>>>> Thanks,
>>>> Scott
>>>>
>>>>> -----Original Message-----
>>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>>> bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
>>>>> Sent: Wednesday, April 24, 2013 8:36 AM
>>>>> To: Robert P. J. Day; Yocto discussion list
>>>>> Subject: Re: [yocto] how the &^$%^%@%^#$ does "file://defconfig"
>>work?
>>>>>
>>>>>
>>>>>
>>>>>> -----Original Message-----
>>>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>>>> bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>>>>>> Sent: Wednesday, April 24, 2013 4:51 AM
>>>>>> To: Yocto discussion list
>>>>>> Subject: [yocto] how the &^$%^%@%^#$ does "file://defconfig" work?
>>>>>>
>>>>>>
>>>>>>   been fighting with this for a couple of hours, so i'll start
>with
>>>>>> the short version -- here's the current explanation for "Changing
>>the
>>>>>> Configuration" of your kernel:
>>>>>>
>>>>>> http://www.yoctoproject.org/docs/latest/kernel-dev/kernel-
>>>>>> dev.html#changing-the-configuration
>>>>>>
>>>>>>   the salient bit:
>>>>>>
>>>>>> "If you have a complete Linux kernel .config file you want to use,
>>>>>> copy it to a directory named files, which must be in your layer's
>>>>>> recipes-kernel/linux directory, and name the file "defconfig"."
>>>>>>
>>>>>>   first, that clearly suggests that file://defconfig is to be used
>>>>>> *only* when you have a complete .config file you want to use,
>which
>>>>>> also implies that if you use that, you should not be picking up
>any
>>>>>> other snippets. that's how i read that -- the use of
>>>>>> "file://defconfig" means that that is *exactly* the final form of
>>my
>>>>>> eventual .config file. if that's not true, then that wording needs
>>to
>>>>>> change.
>>>>>>
>>>>>>   also, i've been trying to do just that for a couple hours now,
>>and i
>>>>>> am definitely *not* getting that as my final .config file used for
>>the
>>>>>> kernel configuration. so what should be happening here? thanks.
>>>>>>
>>>>>> rday
>>>>>>
>>>>>> p.s. as i have some spare time between contracts at the moment, i
>>am
>>>>>> going to be going over some of the yocto docs in excruciating
>>detail.
>>>>>> somewhere, scott rifenbark is now thinking, "oh, crap, ..."
>>>>>
>>>>> Your feedback always improves things Robert... no problems.
>>>>>
>>>>>
>>>>>>
>>>>>> --
>>>>>>
>>>>>>
>>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>>> =3D
>>>>> =3D
>>>>>> Robert P. J. Day                                 Ottawa, Ontario,
>>>>> CANADA
>>>>>>                         http://crashcourse.ca
>>>>>>
>>>>>> Twitter:
>>>>> http://twitter.com/rpjday
>>>>>> LinkedIn:
>>>>> http://ca.linkedin.com/in/rpjday
>>>>>>
>>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>>> =3D
>>>>> =3D
>>>>>> _______________________________________________
>>>>>> yocto mailing list
>>>>>> yocto@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto


