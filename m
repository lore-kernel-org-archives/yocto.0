Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D71EE00305
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2011 10:10:00 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Nov 2011 10:09:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,510,1315206000"; d="scan'208";a="85041097"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 14 Nov 2011 10:09:59 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 15 Nov 2011 02:09:58 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 15 Nov 2011 02:09:58 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 15 Nov 2011 02:09:56 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 15 Nov 2011 02:09:55 +0800
Thread-Topic: UI skelecton of hob v2 is updated in wiki.
Thread-Index: Acyi8HvI+Fm5vHZSRnyH7OYZ9CutkAAAgBNQ
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F365BE28EB1@shsmsx502.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12DBBE2D6B@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A12DBBE2D6B@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
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
X-List-Received-Date: Mon, 14 Nov 2011 18:10:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Some comments:

1. Do we need the "Window" menu to "to switch to any step from any step"? I=
 don't think the users are allowed to skip step 2 by directly swtiching fro=
m step1 to step3. The "Back" and "Next" in each step should do the work.

2. Do we need those "View ***.conf" and open "Open directory" items under "=
Tools" menu? I think hob is designed to help users to avoid viewing/editing=
 those configuration files and recipes. What's the difference between build=
 log and make log? I think we might not want to put too many items under me=
nus.=20

3. In step 1 configuration, maybe we can replace the configuration variable=
 names with their actual meaning, at least for the basic configurtaion dial=
ogue. If we can't define the actual meaning of a configuration variable, we=
 then might need to think about whether we should put that configuration it=
em into the UI.=20

4. In the advanced configuration dialogue, it'd better if we group those it=
ems by their meanings and influence, not by the filename where the configur=
e variable is defined.=20

5. Is it possible that we move some image-only related configuration items,=
 i.e. IMAGE_FSTYPES, ROOTFS_FLASH_SIZE, FREE_SPCE, etc. from step1 dialogue=
 into the step3 dialogue?=20

Best Regards,
Lianhao


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Wang, Shane
> Sent: Monday, November 14, 2011 9:12 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] UI skelecton of hob v2 is updated in wiki.
>=20
> See https://wiki.yoctoproject.org/wiki/Hob2_(Hob_v2)#UI_Skelecton for mor=
e
> details.
>=20
> Please comment.
>=20
> Thank you.
> --
> Shane
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

