Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDC46E002A5;
	Mon, 20 Aug 2012 14:23:59 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Aug 2012 14:23:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,799,1336374000"; d="scan'208";a="206824521"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2012 14:23:58 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 20 Aug 2012 14:23:58 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.178]) with mapi id
	14.01.0355.002; Mon, 20 Aug 2012 14:23:57 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: Documenting the mailing lists.
Thread-Index: AQHNfwQAlKnsqmU4+UiTi2nBQSMagpdjh4aA//+jY8CAAH88AP//i96Q
Date: Mon, 20 Aug 2012 21:23:56 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A5EDA8@ORSMSX101.amr.corp.intel.com>
References: <5032855A.5050704@linux.intel.com>
	<20120820191505.GA29601@denix.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A5ED30@ORSMSX101.amr.corp.intel.com>
	<5032A9C4.9060307@linux.intel.com>
In-Reply-To: <5032A9C4.9060307@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>, Denys Dmytriyenko <denys@ti.com>,
	Jason Kridner <jdk@ti.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>, "Wold,
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
X-List-Received-Date: Mon, 20 Aug 2012 21:24:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Okay - I will hold off on the http://www.yoctoproject.org/community/mailing=
-lists change until Friday Noon.

Scott

-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Monday, August 20, 2012 2:19 PM
To: Rifenbark, Scott M
Cc: Denys Dmytriyenko; Yocto Project; Paul Gortmaker; Richard Purdie; Wold,=
 Saul; Paul Eggleton; Osier-mixon, Jeffrey; Zanussi, Tom; Hudson, Sean; Koe=
n Kooi; Jason Kridner; Flanagan, Elizabeth; Michael Halstead
Subject: Re: Documenting the mailing lists.



On 08/20/2012 01:55 PM, Rifenbark, Scott M wrote:
> I can replace the information on
> http://www.yoctoproject.org/community/mailing-lists with a generic
> bit about mailing lists and then provide a link to the
> https://lists.yoctoproject.org/ page.

That would work for me.

>  Regarding the text on the
> https://lists.yoctoproject.org link.  Who maintains that page?

The Description field is pulled from the administrative settings for
each of the lists managed by mailman. So once we agree on the
descriptions, the various list admins will update the descriptions and
the page will reflect that (I believe Jefro and I can cover most.. if
not all of them, but all the admins are CC'd here).

However, please do not make any changes until we come to a consensus on
how to handle this. I believe we have some discussion that needs to
happen first.

To prevent this turning into a multi-week nit-pic-fest, I suggest we set
Friday Augh 24th @ Noon PST as the deadline and the point at which the
agreed on changes can be made and all changes should be made final by
EOD PST on Monday Aug 27th.

--
Darren

>=20
> Scott
>=20
> -----Original Message----- From: Denys Dmytriyenko
> [mailto:denys@ti.com] Sent: Monday, August 20, 2012 12:15 PM To:
> Darren Hart Cc: Yocto Project; Rifenbark, Scott M; Paul Gortmaker;
> Richard Purdie; Wold, Saul; Paul Eggleton; Osier-mixon, Jeffrey;
> Zanussi, Tom; Hudson, Sean; Koen Kooi; Jason Kridner; Flanagan,
> Elizabeth; Michael Halstead Subject: Re: Documenting the mailing
> lists.
>=20
> On Mon, Aug 20, 2012 at 11:43:38AM -0700, Darren Hart wrote:
>> Scott,
>>=20
>> We've come across some more confusion about mailing lists recently.
>> I've sent a patch against poky to try and clear it up a bit in the
>> source, but we should also see about cleaning up the web
>> descriptions of the lists.
>>=20
>> We have two pages that describe the lists:
>>=20
>> http://www.yoctoproject.org/community/mailing-lists=20
>> https://lists.yoctoproject.org/
>>=20
>> My first recommendation would be to eliminate=20
>> http://www.yoctoproject.org/community/mailing-lists and replace
>> links to it with links to https://lists.yoctoproject.org. This
>> eliminates the need to keep the CMS version in sync with the
>> mailman page. The mailman page should be considered the master
>> anyway as the Description field is taken directly from the list
>> administrative settings.
>=20
> I completely agree with this proposal to unify and clean up the
> mailing list references and descriptions. I didn't even know there
> was a separate page at=20
> http://www.yoctoproject.org/community/mailing-lists - probably
> because I was happy with https://lists.yoctoproject.org/ all the time
> :)
>=20
>=20
>> We should then work to create meaningful Descriptions of all the
>> lists. These should still fit on a single line, but I think we can
>> improve on what we have. For example:
>>=20
>> meta-ti		Mailing list for the meta-ti layer
>>=20
>> is not particularly enlightening. Perhaps something like:
>>=20
>> meta-ti		Usage and development of the meta-ti layer
>=20
> Not sure if this improves much - in either case it's just a generic=20
> description of the mailing list that is specific to the corresponding
> layer, meta-ti. But I'm fine with the change, as long as we are
> unifying all the other list descriptions.
>=20
>=20
>> If we do this all at once, we can also ensure a consistent
>> language, tone, etc.
>=20
> Exactly! Thanks for initiating this.
>=20
>=20
>> I'll propose something for each list here and ask that interested
>> parties comment and correct in reply. Once agreed upon, the admins
>> of the respective lists can make the changes (all CC'd)
>>=20
>> Current: =3D=3D=3D=3D=3D=3D=3D=3D linux-yocto 	Development list for the
>> linux-yocto*.git Linux kernel repositories meta-ti 	Mailing list
>> for the meta-ti layer poky 		Poky build system developer discussion
>> & patch submission for meta-yocto shoeleather 	Neutral Board Lab
>> Mailing List yocto 		Discussion of all things Yocto yocto-ab 	Yocto
>> Project Advisory Board yocto-advocacy 	Yocto Project Advocacy &
>> Outreach AB Subgroup yocto-announce 	Announcements from the Yocto
>> Project yocto-bsp 	BSP Interest Group Yocto-builds 	Build failures
>> and discusion about the build system yocto-infrastructure
>> Infrastructure
>>=20
>>=20
>> Proposed: =3D=3D=3D=3D=3D=3D=3D=3D=3D linux-yocto 	Development list for =
the
>> linux-yocto*.git Linux kernel repositories meta-ti 	Usage and
>> development list for the meta-ti layer poky 		Usage and development
>> list for the Poky build system (see README for patch submission)=20
>> shoeleather 	Neutral Board Lab Mailing List
>>=20
>> I'm not sure what "neutral" is meant to convey. How about:
>>=20
>> Discussion list for the Shoeleather embedded board lab
>>=20
>> yocto 		General discussion list for the Yocto Project and=20
>> development for projects without dedicated lists
>>=20
>> I think the yocto list is a bit problematic in that it mixes
>> project conceptual discussion, user help desk, and development all
>> on the same list. However, I'm trying to clarify what these
>> actually are here - not change anything.
>>=20
>> yocto-ab 	Yocto Project Advisory Board ???
>>=20
>> This should imply the intended audience. Is it just meant for
>> members? Is it meant as a way for non-AB members to observe what is
>> going on?
>>=20
>> yocto-advocacy 	Yocto Project advocacy & outreach AB subgroup
>>=20
>> Same as above.
>>=20
>> yocto-announce 	Announcements from the Yocto Project (low traffic)=20
>> yocto-bsp 	BSP Interest Group ???
>>=20
>> There is no detailed description for this list, so I'm not sure
>> what this is really about.
>>=20
>> Yocto-builds 	Build failures and discussion about the autobuilder
>>=20
>> (includes typo fix, "build system" removed to avoid confusion with
>> the "poky build system")
>>=20
>> yocto-infrastructure 	Infrastructure ???
>>=20
>> Jefro or Michael, can you come up with something appropriate here?
>>=20
>>=20
>> For lists where certain guidelines should be used in communications
>> and patch submission, we should document that in the detailed
>> description of the list, such as [project] tags for example.
>=20

--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

