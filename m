Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3A83E00770
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 04:42:44 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Dec 2012 04:42:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,266,1355126400"; d="scan'208";a="232759673"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga001.jf.intel.com with ESMTP; 12 Dec 2012 04:42:41 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.20]) with mapi id
	14.01.0355.002; Wed, 12 Dec 2012 04:42:41 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
Thread-Topic: [yocto] Disabling PREMIRRORS and upstream sources
Thread-Index: AQHN0WmWxgskPaXHkECFxGcGckjxfpgUJBnggAEA2wCAAAPikA==
Date: Wed, 12 Dec 2012 12:42:41 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC6D6@ORSMSX101.amr.corp.intel.com>
References: <CANge7vV0M3t1r3e+=76+r7+_BwdaQfW2eOQ=AeLTXn5-R7XX-A@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC39E@ORSMSX101.amr.corp.intel.com>
	<CANge7vWRftA1-RgR4HYX58e744ZFR9at39NeTyqex_UXkZUxdg@mail.gmail.com>
In-Reply-To: <CANge7vWRftA1-RgR4HYX58e744ZFR9at39NeTyqex_UXkZUxdg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Disabling PREMIRRORS and upstream sources
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
X-List-Received-Date: Wed, 12 Dec 2012 12:42:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jon,=20

Thanks for the clarification on which manual release you were looking at.  =
I am the technical writer for the project so hopefully someone from the tea=
m will address the technical aspect of you issue.  If there is a way to dis=
able these within a specific recipe then I can get that information into th=
e documentation. =20

Does anyone know if this is possible and how to do it?

Scott

>-----Original Message-----
>From: Jon Szymaniak [mailto:jon.szymaniak@gmail.com]
>Sent: Tuesday, December 11, 2012 8:26 PM
>To: Rifenbark, Scott M
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] Disabling PREMIRRORS and upstream sources
>
>>>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>bounces@yoctoproject.org] On Behalf Of Jon Szymaniak
>>>Sent: Monday, December 03, 2012 7:19 AM
>>>To: yocto@yoctoproject.org
>>>Subject: [yocto] Disabling PREMIRRORS and upstream sources
>>>
>>>Is there a simple way to disable the use of PREMIRRORS and MIRRORS
>>>within a recipe?
>>>
>>>(Perhaps the answer here might be worth mentioning in Section 12.23 of
>>>the
>>>Poky Reference  Manual?)
>>>
>>>My use case for this is the situation where the code hasn't been
>>>released yet,
>>>so there's no point in checking mirrors.
>>>
>>>Thank you,
>>>Jon
>
>
>> Isn't this set up in the local.conf file for global use?
>
>In the manual I see that there are indeed global options, configured via
>local.conf.
>
>However, I'm wondering if there's a way to denote that PREMIRRORS and
>MIRRORS
>should not be used for a *specific recipe* (i.e., only attempt to fetch
>via
>what's provided in SRC_URI, and still use the mirrors for other
>recipes).
>
>Perhaps this is a wacky thing to want to do. I just figured there's no
>sense
>in hitting all those 404's if I know the code associated with a specific
>recipe isn't on any of the standard mirrors.
>
>> Also, Jon, what documentation
>> are you referring to here?  Are you looking at the latest Yocto
>Project
>> documentation (e.g. http://www.yoctoproject.org/docs/1.4/poky-ref-
>manual/poky-ref-manual.html
>> for the Yocto Project Reference Manual?).
>
>I think I may have actually been looking at an old manual version, but
>yes,
>that'd the documentation I was referring to. It seemed that 12.23, "How
>does
>the OpenEmbedded build system obtain source code..." seemed the most
>relevant
>to my question.
>
>Thanks!
>Jon

