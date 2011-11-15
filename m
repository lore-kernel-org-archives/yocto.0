Return-Path: <shane.wang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B24B6E00305
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2011 06:41:25 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Nov 2011 06:41:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,515,1315206000"; d="scan'208";a="90743490"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 15 Nov 2011 06:41:24 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 15 Nov 2011 22:41:20 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 15 Nov 2011 22:41:20 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 15 Nov 2011 22:41:19 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Barros Pena,
	Belen" <belen.barros.pena@intel.com>
Date: Tue, 15 Nov 2011 22:41:18 +0800
Thread-Topic: UI skelecton of hob v2 is updated in wiki.
Thread-Index: Acyi8HvI+Fm5vHZSRnyH7OYZ9CutkAAAgBNQACwDJnA=
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A12DBBE341F@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12DBBE2D6B@shsmsx501.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F365BE28EB1@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F365BE28EB1@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: UI skelecton of hob v2 is updated in wiki.
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
X-List-Received-Date: Tue, 15 Nov 2011 14:41:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thank you for the comments, Lianhao.
See mine below.

--
Shane

Lu, Lianhao wrote on=A02011-11-15:

> Some comments:
>=20
> 1. Do we need the "Window" menu to "to switch to any step from any step"?
> I don't think the users are allowed to skip step 2 by directly swtiching =
from
> step1 to step3. The "Back" and "Next" in each step should do the work.
OK, it is open. And up to Belen.
What if the user has built recipes before, and doesn't want to go step 2 fo=
r recipe selection but want to try another image making directly?
I agree we should consider the workflow carefully to allow/disallow user's =
input at some stage. Can we disable the menu item if it is disallowed?


>=20
> 2. Do we need those "View ***.conf" and open "Open directory" items
> under "Tools" menu? I think hob is designed to help users to avoid
> viewing/editing those configuration files and recipes. What's the differe=
nce
> between build log and make log? I think we might not want to put too many
> items under menus.
Log for building recipes, and log for making image from packages.
Hob v1 can view log for debugging.

>=20
> 3. In step 1 configuration, maybe we can replace the configuration variab=
le
> names with their actual meaning, at least for the basic configurtaion
> dialogue. If we can't define the actual meaning of a configuration variab=
le,
> we then might need to think about whether we should put that configuratio=
n
> item into the UI.
Their names are TBD. Agree. But for one variable, we need abbreviate it to =
2-3 words because the small window doesn't allow the long description in th=
e code.

>=20
> 4. In the advanced configuration dialogue, it'd better if we group those =
items
> by their meanings and influence, not by the filename where the configure
> variable is defined.=09
Yes.

>=20
> 5. Is it possible that we move some image-only related configuration item=
s,
> i.e. IMAGE_FSTYPES, ROOTFS_FLASH_SIZE, FREE_SPCE, etc. from step1
> dialogue into the step3 dialogue?
In my previous discussion with Dongxiao, we want keep them both in step 1 a=
nd in step 3.
So, in step 1, user can do settings. But in step 3, he/she still has the ch=
ance to change.
But if we put them in step 3 only, it means we will have another "configura=
tion and settings" stage.
The workflow would be:
step 1 (setting for build recipes) -> step 2 (recipe selection) -> step 3 (=
setting for making image) -> step 4 (package selection).
I am not sure which is better for developer experience.


>=20
> Best Regards,
> Lianhao
>=20
>=20
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org
>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Wang, Shane
>> Sent: Monday, November 14, 2011 9:12 AM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] UI skelecton of hob v2 is updated in wiki.
>>=20
>> See https://wiki.yoctoproject.org/wiki/Hob2_(Hob_v2)#UI_Skelecton for
>> more details.
>>=20
>> Please comment.
>>=20
>> Thank you.
>> --
>> Shane
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



