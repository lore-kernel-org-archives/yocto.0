Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C2F9E0146A
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 11:21:26 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2013 11:21:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,425,1355126400"; d="scan'208";a="243108415"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 07 Jan 2013 11:21:26 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 7 Jan 2013 11:21:25 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.237]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.23]) with mapi id
	14.01.0355.002; Mon, 7 Jan 2013 11:21:25 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] kernel manual seems to make no mention of "defconfig"
Thread-Index: AQHN7PRfs0aGsGSpukOtkhLexbMtG5g+PjOw
Date: Mon, 7 Jan 2013 19:21:25 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946AD8F6D@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1212231024040.27586@oneiric>
	<CADkTA4MDzpUdovXTfJ0a04XfPcpiuENu3ERWx--Xmo4EbDvDFA@mail.gmail.com>
	<CADkTA4MAAVVGeOyQ9PAXOhibj4BQK4BnsVmyhWxh6294ONGCNw@mail.gmail.com>
	<alpine.DEB.2.02.1212240629520.5826@oneiric>
	<50EAF6DD.1050508@linux.intel.com>
In-Reply-To: <50EAF6DD.1050508@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel manual seems to make no mention of "defconfig"
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
X-List-Received-Date: Mon, 07 Jan 2013 19:21:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This manual has not been merged with yocto-docs/master yet so the book is n=
ot available as an "In Progess" book just yet.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Darren Hart
>Sent: Monday, January 07, 2013 8:25 AM
>To: Robert P. J. Day
>Cc: Yocto discussion list
>Subject: Re: [yocto] kernel manual seems to make no mention of
>"defconfig"
>
>
>
>On 12/24/2012 04:30 AM, Robert P. J. Day wrote:
>> On Sun, 23 Dec 2012, Bruce Ashfield wrote:
>>
>>>
>>>
>>>
>>> On Sun, Dec 23, 2012 at 11:10 PM, Bruce Ashfield
><bruce.ashfield@gmail.com> wrote:
>>>
>>>
>>>
>>>       On Sun, Dec 23, 2012 at 12:26 PM, Robert P. J. Day
><rpjday@crashcourse.ca> wrote:
>>>
>>>               poking around kern-tools for purpose of documenting
>some stuff and
>>>             ran across this in "updateme":
>>>
>>>             split_command_line_objects() {
>>>                     command_line_values=3D$@
>>>
>>>                     for v in $command_line_values; do
>>>                         v_base=3D`basename $v`
>>>                         case $v_base in
>>>                             *.scc) migrate_feature $v
>>>                                 ;;
>>>                             *.cfg) migrate_cfg $v
>>>                                 ;;
>>>                             *.patch|*.diff) migrate_patch $v
>>>                                 ;;
>>>                             defconfig) migrate_cfg $v;;
>>>                             *) ;;
>>>                         esac
>>>                     done
>>>             }
>>>
>>>               AFAICT, there is no mention of a possible "defconfig"
>entry anywhere
>>>             in the current yocto kernel manual.
>>>
>>>
>>> You won't find it there because it isn't specific to the kern-tools,
>>> what you see there is a small wrapper on top of the kernel.bbclass
>>> defconfig handling, with the same end result. So standard
>>> yocto/oe-core docs apply here.
>>>
>>> I also forgot to mention that Darren did cover defconfigs in the
>>> yocto kernel  docs that were put together for the 1.4 release (I
>>> think they were posted here), so there's better / additional
>>> coverage upcoming!
>>
>>   ah, i will go back and check those out, thanks.  just trying to
>> catch up on several days of not reading the list.
>
>They are in the process of being edited by our tech writer as well as
>being converted from ascii to docbook. You can see the current state of
>them here:
>
>http://www.yoctoproject.org/docs/hart/kernel-dev/kernel-dev.html
>
>See Section 2.2.2 and the sections that follow.
>
>Keep in mind these are being actively worked on, so there are some rough
>edges we're working through still.
>
>
>Thanks,
>
>Darren
>>
>> rday
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>--
>Darren Hart
>Intel Open Source Technology Center
>Yocto Project - Technical Lead - Linux Kernel
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

