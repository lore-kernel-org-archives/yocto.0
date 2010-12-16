Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A786B4C80048
	for <yocto@yoctoproject.org>; Thu, 16 Dec 2010 08:17:33 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Dec 2010 06:17:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,355,1288594800"; d="scan'208";a="362591246"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 16 Dec 2010 06:17:32 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 22:17:31 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 16 Dec 2010 22:17:30 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: Saul Wold <sgw@linux.intel.com>, Yocto Project Discussion
	<yocto@yoctoproject.org>
Date: Thu, 16 Dec 2010 22:17:28 +0800
Thread-Topic: [poky] Recipe Updating Status and call to action
Thread-Index: AcucvGenyacht14XSrGNzeEXl2LoAAAa4qHw
Message-ID: <33AB447FBD802F4E932063B962385B3531A37556@shsmsx501.ccr.corp.intel.com>
References: <4D096431.2000107@linux.intel.com>
In-Reply-To: <4D096431.2000107@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [poky] Recipe Updating Status and call to action
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
X-List-Received-Date: Thu, 16 Dec 2010 14:17:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Saul for working out this list.=20

I am a bit surprised on the large number of to-be-upgraded list: 160, becau=
se according to our plan, we actually upgrade most of the recipes in M2, an=
d only a small number of recipes are supposed to be left for M3. To find ou=
t the reason why, PRC team collect some data to analysis, and here is the r=
esult:

Among the 160, PRC team (Dexuan, Dongxiao, Edwin, Ke, Qing) owns 105 recipe=
s. the 105 recipes can be grouped into 3 cases:
Case A: the recipe is not planned to upgrade in M2, mostly due to that it i=
s up-to-update in M2 planning time, and later has new version available.
Case B: the recipe is planned to upgrade in M2, but not upgrade and leave i=
t to M3
Case C: the recipe is planned to upgrade in M2, and it is upgraded in M2, b=
ut later has new version available.

According to our data collection, Case A has 31 recipes, Case B has 21 reci=
pes, Case C has 53 recipes. In other word, in M2 time, we leave 21 recipes =
(Case B) for M3, but due to new version available after the planning, there=
 are extra 84 recipes (case A + case C) added to be upgraded. Even only cou=
nt Case C, we can see almost 50% ofM3  to-be-upgraded recipes are already u=
pgraded in M2. This is probably one area we can improved in the future.

Regards
Ke

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Saul Wold
> Sent: Thursday, December 16, 2010 8:58 AM
> To: Yocto Project Discussion; poky@yoctoproject.org
> Subject: [poky] Recipe Updating Status and call to action
>=20
>=20
> Folks,
>=20
> As we get ready for M3 opening up shortly, I wanted to get folks aware of=
 where
> we are with M2 and the recipe updating process.  Based on my rough reckon=
ing,
> we had about 266 recipes that needed updating at the start of M2, we upda=
ted
> about 110 (possibly more).  There are now about 160 recipes in the update=
 list
> that need tackling.
>=20
> Also, the distro tracking data for Version information is getting stale, =
there are
> about 135 RECIPE_LATEST_VERSION metadata tags that need to be updated.
>=20
> I have attached a spreadsheet that shows the update status of both the
> upstream (RMatch Column) and tracking data (TMatch Column).
>=20
> I would like to see the team and community pitch in and complete these 16=
0
> recipe updates for the 1.0 Release. Please be sure the ownership /
> RECIPE_MAINTAINER information is correct.
>=20
> IMPORTANT: Please use distro/stage in poky-contrib to update the
> distro_tracking_fields.inc file, I have many updates in that already, I w=
ill do my
> best not to rebase that until we get it updated.
>=20
> The attached spread sheet contains 3 Sheets, please review the 2nd and 3r=
d
> sheets (Labeled Tracking Updates and Recipe Updates respectively).
>=20
> Thanks.
>=20
> --
>      Sau!
>=20
> Saul Wold
> Yocto Component Wrangler @ Intel
> Yocto Project / Poky Build System


