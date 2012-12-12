Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F6A2E011CC
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 07:05:14 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Dec 2012 07:05:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,266,1355126400"; d="scan'208";a="262997943"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2012 07:05:03 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 12 Dec 2012 07:05:02 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.43]) with mapi id
	14.01.0355.002; Wed, 12 Dec 2012 07:05:02 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, Jon Szymaniak
	<jon.szymaniak@gmail.com>
Thread-Topic: [yocto] Disabling PREMIRRORS and upstream sources
Thread-Index: AQHN0WmWxgskPaXHkECFxGcGckjxfpgUJBnggAEA2wCAAAPikIAAKDWg
Date: Wed, 12 Dec 2012 15:05:01 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC79C@ORSMSX101.amr.corp.intel.com>
References: <CANge7vV0M3t1r3e+=76+r7+_BwdaQfW2eOQ=AeLTXn5-R7XX-A@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC39E@ORSMSX101.amr.corp.intel.com>
	<CANge7vWRftA1-RgR4HYX58e744ZFR9at39NeTyqex_UXkZUxdg@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC6D6@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC6D6@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
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
X-List-Received-Date: Wed, 12 Dec 2012 15:05:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jon,=20

Here is a response from Paul Eggleton that I got for the question via a sep=
arate email thread:

> Is there a simple way to disable the use of PREMIRRORS and MIRRORS=20
> within a recipe?
>=20
> (Perhaps the answer here might be worth mentioning in Section 12.23 of=20
> the Poky Reference  Manual?)
>=20
> My use case for this is the situation where the code hasn't been=20
> released yet, so there's no point in checking mirrors.

I guess the easiest thing would be just to set PREMIRRORS and MIRRORS to ""=
 in the recipe.

Cheers,
Paul

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
>Sent: Wednesday, December 12, 2012 4:43 AM
>To: Jon Szymaniak
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] Disabling PREMIRRORS and upstream sources
>
>Hi Jon,
>
>Thanks for the clarification on which manual release you were looking
>at.  I am the technical writer for the project so hopefully someone from
>the team will address the technical aspect of you issue.  If there is a
>way to disable these within a specific recipe then I can get that
>information into the documentation.
>
>Does anyone know if this is possible and how to do it?
>
>Scott
>
>>-----Original Message-----
>>From: Jon Szymaniak [mailto:jon.szymaniak@gmail.com]
>>Sent: Tuesday, December 11, 2012 8:26 PM
>>To: Rifenbark, Scott M
>>Cc: yocto@yoctoproject.org
>>Subject: Re: [yocto] Disabling PREMIRRORS and upstream sources
>>
>>>>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>>bounces@yoctoproject.org] On Behalf Of Jon Szymaniak
>>>>Sent: Monday, December 03, 2012 7:19 AM
>>>>To: yocto@yoctoproject.org
>>>>Subject: [yocto] Disabling PREMIRRORS and upstream sources
>>>>
>>>>Is there a simple way to disable the use of PREMIRRORS and MIRRORS
>>>>within a recipe?
>>>>
>>>>(Perhaps the answer here might be worth mentioning in Section 12.23
>of
>>>>the
>>>>Poky Reference  Manual?)
>>>>
>>>>My use case for this is the situation where the code hasn't been
>>>>released yet,
>>>>so there's no point in checking mirrors.
>>>>
>>>>Thank you,
>>>>Jon
>>
>>
>>> Isn't this set up in the local.conf file for global use?
>>
>>In the manual I see that there are indeed global options, configured
>via
>>local.conf.
>>
>>However, I'm wondering if there's a way to denote that PREMIRRORS and
>>MIRRORS
>>should not be used for a *specific recipe* (i.e., only attempt to fetch
>>via
>>what's provided in SRC_URI, and still use the mirrors for other
>>recipes).
>>
>>Perhaps this is a wacky thing to want to do. I just figured there's no
>>sense
>>in hitting all those 404's if I know the code associated with a
>specific
>>recipe isn't on any of the standard mirrors.
>>
>>> Also, Jon, what documentation
>>> are you referring to here?  Are you looking at the latest Yocto
>>Project
>>> documentation (e.g. http://www.yoctoproject.org/docs/1.4/poky-ref-
>>manual/poky-ref-manual.html
>>> for the Yocto Project Reference Manual?).
>>
>>I think I may have actually been looking at an old manual version, but
>>yes,
>>that'd the documentation I was referring to. It seemed that 12.23, "How
>>does
>>the OpenEmbedded build system obtain source code..." seemed the most
>>relevant
>>to my question.
>>
>>Thanks!
>>Jon
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

