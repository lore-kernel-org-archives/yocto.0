Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBE27E0027F;
	Mon, 20 Aug 2012 14:34:51 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Aug 2012 14:34:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,799,1336374000"; d="scan'208";a="206832024"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2012 14:34:50 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 20 Aug 2012 14:34:50 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.150]) with mapi id
	14.01.0355.002; Mon, 20 Aug 2012 14:34:49 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: Documenting the mailing lists.
Thread-Index: AQHNfxqrlKnsqmU4+UiTi2nBQSMagpdjOG9g
Date: Mon, 20 Aug 2012 21:34:49 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A5EDDE@ORSMSX101.amr.corp.intel.com>
References: <5032855A.5050704@linux.intel.com> <1435514.v1EOzaWE9d@helios>
	<5032ABDE.6090402@linux.intel.com>
In-Reply-To: <5032ABDE.6090402@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>, Jason Kridner <jdk@ti.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: Documenting the mailing lists.
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
X-List-Received-Date: Mon, 20 Aug 2012 21:34:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Here is what it says in the Reference Manual:

12.3. Mailing lists
There are a number of mailing lists maintained by the Yocto Project as well=
 as related OpenEmbedded mailing lists for discussion, patch submission and=
 announcements. To subscribe to one of the following mailing lists, click o=
n the appropriate URL in the following list and follow the instructions:=20
*	http://lists.yoctoproject.org/listinfo/yocto - General Yocto Project disc=
ussion mailing list.=20
*	http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-core - D=
iscussion mailing list about OpenEmbedded-Core (the core metadata).
*	http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-devel - =
Discussion mailing list about OpenEmbedded.
*	http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/bitbake-devel - Discu=
ssion mailing list about the BitBake build tool.
*	http://lists.yoctoproject.org/listinfo/poky - Discussion mailing list abo=
ut Poky.
*	http://lists.yoctoproject.org/listinfo/yocto-announce - Mailing list to r=
eceive official Yocto Project release and milestone announcements.


This is what Paul is referring to by way of corrections.  I personally thin=
k it is useful to have something of a list in the Reference manual under th=
is heading.  I don't think we need the exact same wordings though in the Re=
ference manual as would be found in https://lists.yoctoproject.org/.  The s=
tuff in the Reference manual should be general and give the reader an idea =
of the flavor of the lists.  I can update the reference manual to include a=
 link to https://lists.yoctoproject.org/ for the final say on each list.=20

Scott

-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Monday, August 20, 2012 2:28 PM
To: Paul Eggleton
Cc: Yocto Project; Rifenbark, Scott M; Paul Gortmaker; Richard Purdie; Wold=
, Saul; Osier-mixon, Jeffrey; Zanussi, Tom; Hudson, Sean; Denys Dmytriyenko=
; Koen Kooi; Jason Kridner; Flanagan, Elizabeth; Michael Halstead
Subject: Re: Documenting the mailing lists.



On 08/20/2012 02:26 PM, Paul Eggleton wrote:
> On Monday 20 August 2012 11:43:38 Darren Hart wrote:
>> Scott,
>>
>> We've come across some more confusion about mailing lists recently. I've
>> sent a patch against poky to try and clear it up a bit in the source,
>> but we should also see about cleaning up the web descriptions of the lis=
ts.
>>
>> We have two pages that describe the lists:
>>
>> http://www.yoctoproject.org/community/mailing-lists
>> https://lists.yoctoproject.org/
>>
>> My first recommendation would be to eliminate
>> http://www.yoctoproject.org/community/mailing-lists and replace links to
>> it with links to https://lists.yoctoproject.org. This eliminates the
>> need to keep the CMS version in sync with the mailman page. The mailman
>> page should be considered the master anyway as the Description field is
>> taken directly from the list administrative settings.
>>
>> We should then work to create meaningful Descriptions of all the lists.
>> These should still fit on a single line, but I think we can improve on
>> what we have. For example:
>>
>> meta-ti		Mailing list for the meta-ti layer
>>
>> is not particularly enlightening. Perhaps something like:
>>
>> meta-ti		Usage and development of the meta-ti layer
>>
>> If we do this all at once, we can also ensure a consistent language,
>> tone, etc. I'll propose something for each list here and ask that
>> interested parties comment and correct in reply. Once agreed upon, the
>> admins of the respective lists can make the changes (all CC'd)
>>
>> Current:
>> =3D=3D=3D=3D=3D=3D=3D=3D
>> linux-yocto 	Development list for the linux-yocto*.git Linux kernel
>> 		repositories
>> meta-ti 	Mailing list for the meta-ti layer
>> poky 		Poky build system developer discussion & patch
>> 		submission for meta-yocto
>> shoeleather 	Neutral Board Lab Mailing List
>> yocto 		Discussion of all things Yocto
>> yocto-ab 	Yocto Project Advisory Board
>> yocto-advocacy 	Yocto Project Advocacy & Outreach AB Subgroup
>> yocto-announce 	Announcements from the Yocto Project
>> yocto-bsp 	BSP Interest Group
>> Yocto-builds 	Build failures and discusion about the build system
>> yocto-infrastructure 	Infrastructure
>>
>>
>> Proposed:
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D
>> linux-yocto 	Development list for the linux-yocto*.git Linux kernel
>> 		repositories
>> meta-ti 	Usage and development list for the meta-ti layer
>> poky 		Usage and development list for the Poky build system
>> 		(see README for patch submission)
>> shoeleather 	Neutral Board Lab Mailing List
>>
>> I'm not sure what "neutral" is meant to convey. How about:
>>
>> 		Discussion list for the Shoeleather embedded board lab
>>
>> yocto 		General discussion list for the Yocto Project and
>> 		development for projects without dedicated lists
>>
>> I think the yocto list is a bit problematic in that it mixes project
>> conceptual discussion, user help desk, and development all on the same
>> list. However, I'm trying to clarify what these actually are here - not
>> change anything.
>>
>> yocto-ab 	Yocto Project Advisory Board ???
>>
>> This should imply the intended audience. Is it just meant for members?
>> Is it meant as a way for non-AB members to observe what is going on?
>>
>> yocto-advocacy 	Yocto Project advocacy & outreach AB subgroup
>>
>> Same as above.
>>
>> yocto-announce 	Announcements from the Yocto Project (low traffic)
>> yocto-bsp 	BSP Interest Group ???
>>
>> There is no detailed description for this list, so I'm not sure what
>> this is really about.
>>
>> Yocto-builds 	Build failures and discussion about the autobuilder
>>
>> (includes typo fix, "build system" removed to avoid confusion with the
>> "poky build system")
>>
>> yocto-infrastructure 	Infrastructure ???
>>
>> Jefro or Michael, can you come up with something appropriate here?
>>
>>
>> For lists where certain guidelines should be used in communications and
>> patch submission, we should document that in the detailed description of
>> the list, such as [project] tags for example.
>=20
> This is all good stuff, I'd just like to mention in case it is useful tha=
t I=20
> did update the list in the Reference Manual along with the information on=
 how=20
> to contribute - which includes some direction on where to send patches. T=
his=20
> is in the master version of the documentation but not the version current=
ly=20
> shown on the website - we probably ought to fix that. We really ought to =
try to=20
> have all of this information consistent if at all possible.

Does it make sense to have this list in the reference manual? Should we
perhaps just have it reference the README in the source (that way people
can always see the current policy) and the long mailing list
description? That reduces the redundancy to 2 from 4. Should be much
easier to keep in sync.

--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

