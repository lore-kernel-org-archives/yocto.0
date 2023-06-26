Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E346EB64DC
	for <webhook@archiver.kernel.org>; Mon, 26 Jun 2023 01:52:29 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web10.24731.1687744343117083530
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Jun 2023 18:52:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=fPkASKaY;
 spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1687744343; x=1719280343;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=pbvJi2jLpgGKbmq9xLk6BjSikxRbq1nYVYn7G0pcTpU=;
  b=fPkASKaYz4TOMvYbP/12fw0LAFS+c/F+gH/NBSpo4acXFUk3Dygz4AAc
   DgTenS4gQ+bTZPs8g53XAuqfcbMvIsQdurro2nrChuA+q+dSYVkA7rhW0
   NGl8g+9dtmGuhz6f3yfIqjHEJz+7L4J0De9Iv0P7ush/iGCTd5ap8CNFv
   49YyhX5dlvrjtDggByXAxLGUPF5cSackLgU4WzrczaCmvExZdPCBBW0fn
   D/wyNqz6uc+LMzdWH1Nw1SWXZjAS5Wbd7JTveL1zu3xoUKO1Nl02tOp82
   8Gpra8vN18Gx5WKrS3FHxzb+PNaHBi4Ecwz2qE6Ey8gS52Rv6kDfuJ8Gp
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="364592978"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; 
   d="scan'208";a="364592978"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2023 18:52:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="890117143"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; 
   d="scan'208";a="890117143"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orsmga005.jf.intel.com with ESMTP; 25 Jun 2023 18:52:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 25 Jun 2023 18:52:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 25 Jun 2023 18:52:21 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 25 Jun 2023 18:52:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PoMnD8nkf9voSeOUuMstv63gL9Df3HST/q5ctdO5eUudOyHZT2FHt5S3NwN4jznRwixr1MG+pyKbR7c157qzMrn9X8pVjS/kGuVGvkVaKIO5rT1iYFC2ddEw5LhiLHN5wNx7ltcmn2i86bD2+pSALMdJQGBxsL6mIuOdb0XuibcPeyYnJQeEcBSjGUjprSyd40fzzaeVub78Xmllgn1/iLv62gg027Zj50H24JQGHqdkTYsPj+XlzUBiKBJ3CsdkDOmuCy9JdJewd1PzPP6Gs7WEFz/3bCwa7a27mEc0JCNGiPPV4+pl8/+d+3HBeUxNRGrZoQzDqS3mZ6T6XgYPSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TPsPoIAIfu1f3ukhbDg2Lyck60AdsADLserqHpQ3iu0=;
 b=dpred6ki8uctYZP+fdCtu2mYEB3vK8veUybpC9pKEtGZf1RTg64c+tbPoifG5FIU3lhachh6gsRWvpn1iaikI9+x5fIGi/sVV4jii/ugBBjVmp2rQ0e5c7VVklq5L6NN148j2UCxZ8t5Z5POUjvl3TPZ4kiMPHLNHRAwSADeKPVIpWxAy5JebtT6sCXdL+fg24qY7mUdkcQuX+Qwt+/LqHModDdXJBa4UhU93/fED6z3KFHD13cMBW8yeUXLgnge7Krb1Ivh6yAup2zcjQKSDAoKYsUugd1El/IFYtwIH7mXYjjnJg6ohPCN35SWpuPXiBEiPaBTF/YsgrKV+sOWbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by DS7PR11MB7833.namprd11.prod.outlook.com (2603:10b6:8:ea::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Mon, 26 Jun
 2023 01:52:18 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::95dc:1690:6fc8:790c]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::95dc:1690:6fc8:790c%7]) with mapi id 15.20.6521.023; Mon, 26 Jun 2023
 01:52:18 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Jon Mason <jdmason@kudzu.us>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [meta-zephyr][PATCH 1/3] zephyr-kernel: Add support for
 v3.4.0
Thread-Topic: [yocto] [meta-zephyr][PATCH 1/3] zephyr-kernel: Add support for
 v3.4.0
Thread-Index: AQHZpTEeaxj6SYpmt0+OWeTVaisSda+cVv6g
Date: Mon, 26 Jun 2023 01:52:18 +0000
Message-ID: <CO1PR11MB5026E442DE7FEAE1D968C31BC426A@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20230622103939.2893308-1-naveen.kumar.saini@intel.com>
 <ZJSIRLMMl9Fz/fp2@kudzu.us>
In-Reply-To: <ZJSIRLMMl9Fz/fp2@kudzu.us>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5026:EE_|DS7PR11MB7833:EE_
x-ms-office365-filtering-correlation-id: 6bf2f982-b83b-45fd-0c11-08db75e7f940
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3eJjqj/m+tXtq0iofdJhB+RS8s6X8mo4ruqMbdUbHU0Xi5NY65KNPls7tICSzczlloK+vDkjWsO4S/obDhrCDR7PDVg5Zp1kVGTOs2qB5japBJf14sA/XzTIlPP5mmnwu4r8R9pEZ5x2L5JR1q/qz1YELkna0O4nb3FMJho32zogYD0OdJkdM4g65nC28yvt+DUIgN0e6/J8S7zEKNpbkcc4dccPYVqca5FW59+jPv8qtj7fB4H2pyF4pMtrDjB5M94cQySSoiBL54U40oUsv6zpESpsHGH8avRfwy44hkuU5GUCBfIfrBlAkC3LTwK9cn24oFB5H02FZ4pl/UxLsOtvcWEt2UduKl3PrPdXLZKFVi17x2sSET7vN+e9RXZS8FYNkWQhEwJZFqdMQfBtwhMi5rl3DlwTfvz433R/GOnFUhGOBodVzDAUZ+NYo3j0Fi+lKMKEVX/XQvbBLT8SUIfEpVxjItiZDmWdamCflv5goC6kk5tqcB5LmJsiCBrqQqo0sjqLwGjG9TAft3xMcn3miMc8ID0maIL3GxiwvbR1e5M1KYRym9/GSyTNse2FZnnV56+TwZGCcDkYjjDNLA/5djiz1ni4110C26IL5o4D5omqoYH1l2qEwdaQVJ0DCo1SWkHZc4QxtB8t83O4jw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(39860400002)(396003)(346002)(366004)(376002)(136003)(451199021)(33656002)(52536014)(30864003)(5660300002)(41300700001)(316002)(86362001)(66476007)(6916009)(64756008)(8936002)(8676002)(38070700005)(66446008)(66556008)(76116006)(4326008)(38100700002)(122000001)(55016003)(66946007)(82960400001)(966005)(19627235002)(6506007)(53546011)(2906002)(186003)(9686003)(7696005)(71200400001)(478600001)(83380400001)(579004)(559001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OPM7QsnqE3CpI3k4jTvmikgVm7l+byjJ8uH+9eRCgETdST9MDHtAMZQSU2/z?=
 =?us-ascii?Q?5SEHlWx0H6vwQMyhxYUSj3Y29xbMFZmuehGGm/JtMUfPD+0RWldHPkmScY1j?=
 =?us-ascii?Q?oKQ45F9nAyqLUVxLjQ83oJ6Z0d7MuGOdSfQS/XhodxOnTZD3HEZAXFdJKbXB?=
 =?us-ascii?Q?HsLxvYr3VpLE+0xCHdx0ZtWnGs92I+DuBbnG7cKRDQPu3UXG4kgUPBWKCsBO?=
 =?us-ascii?Q?SQY/zR80nRYU2tmvQl3HURn+Z/EsYxiI4uFp1mr1dLoXZsZecqynYQBk3CqR?=
 =?us-ascii?Q?rjOtAsx8648bjB/JHTRO/W3oiPSfbPQcsUAGB3Kw/ALL82QNC4s6tw2L2Bdd?=
 =?us-ascii?Q?ZSYZpcf3DwyTaatHE23GTMMqScfPSxVCyLG25304Q9XcortPz2a0X/rIlBhN?=
 =?us-ascii?Q?YLiAhk5ZxElDxDOjJhoLVh50L7cKqqyQJmi926ZhgOaACy3SPCdAoTrYJ3FZ?=
 =?us-ascii?Q?GPLC8tX7CNDPonnJX2S4X2L2844LUNxy4VfbaTWtPGLPwljhIQQ1EJXPZJDL?=
 =?us-ascii?Q?doHI8prEaJg1pzE7oy3Dpko2hq2IXG9D8O3po7+NCqKoMqKOn8TrdkJ3k6UO?=
 =?us-ascii?Q?RdOB6sJxp2VhfCM2718HndIm2FT5uB3kCh7bMF5xN+/q8QPq0wMUGAihhvpm?=
 =?us-ascii?Q?BKhfFXJJamVLO/Ea1ZcKIKUzyhNx+E93lD8KwOIrvQs8zz78kI/iLUeS2cRV?=
 =?us-ascii?Q?7iddU4TOV4DYFXObS9K0qfnDKMLUpFvAxOeBgw4VwWjXt4TDEKhSmWAn/59L?=
 =?us-ascii?Q?XLMPBS0zQnBnDkRCmMdRZnKrm8MRwhUbWYnbAFfe2OtZZ5j7yYWFCANGZv3z?=
 =?us-ascii?Q?8zjMjbphn5WWvTNeMf9BGhcuBoMbgB9cntz0rYXQ3ZS4BSBk3+sxtZ5+cO5H?=
 =?us-ascii?Q?bl4vVQW9EIG+Ds9Q1j17LG71wAW/K4slY5fVIwrXTPnxfGjMOyKg5D4IyWJ8?=
 =?us-ascii?Q?VamGLRuSPaC6lY9KKUM2aWfIfLAYj9q1gKtqqI0KYD22oJPeYXxDq1pAevit?=
 =?us-ascii?Q?odK7EHpnR5X/QX97y1O/fPvzjthD9AMZ0MTuamgqr5H2qiFypmuTikFGI4U1?=
 =?us-ascii?Q?DBaklJGKIs1y8VKdgJeiaKNpKTqlVXybxwFfoR2Ydq3OdF7mi8YhKQnegQfL?=
 =?us-ascii?Q?wjmMw2fFnwuFWxvFPZ1V5sA2nDlLxCoPWfcDvtTLSUpAUjJJS+v/+dCC7zBj?=
 =?us-ascii?Q?QwME2P59wsfp7B5E3abVqTMDACtcD1rKsk9AMMLxbI3fpdvlnfFfriA0UM9r?=
 =?us-ascii?Q?YGZw8Xl7xW0D19FIXYcmSv52LltWSMVef7+mED4gvZ05cnUGrRf/Wv5QPoFm?=
 =?us-ascii?Q?vY8cTPnAXVlg+yOz5lLnHz78sB3svUuuGJaE0+FSGo8/Rsq4Lo2NWNBwgcjL?=
 =?us-ascii?Q?zze+7L3bm4tYTSTcxA5Q1yGjwl8PPggN7nOTlgXsuWzUq3USty8FFVnUZSE6?=
 =?us-ascii?Q?GoPtPPszM2WMNjt9hygGRaF5oI0ldDr/lbNFLzn6Z5nbxATp39OJPe+2z5JJ?=
 =?us-ascii?Q?r5lVgN8DasbmJM+IhL2KAizUfUfhTnpoC6YN63vbCraP1Zm42jbMpYpxGoDr?=
 =?us-ascii?Q?Bx0QMN2ZidQsn8j307zPOBYIsYGlpZdbH+Om1KU5/U6JCXcH03NnQhT0tWTp?=
 =?us-ascii?Q?tZx3lae3ho/57jqnMiz3HBvJF24B2EHUBrGfRfdO+I4DcsrxEQMUY9flGe/h?=
 =?us-ascii?Q?/ZZFSw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bf2f982-b83b-45fd-0c11-08db75e7f940
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2023 01:52:18.2603
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1N3f8x5SA3Dt195ngZ/g6xo7jHYMOMhSJPM9xLG6JJGXl6SBqR6z4gO37QU5CW2trMd9cynq5+INzAhWyT8032bDswjzx6EBffK59zb6dEs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7833
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 01:52:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60439



> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Jon Mason
> Sent: Friday, June 23, 2023 1:44 AM
> To: Saini, Naveen Kumar <naveen.kumar.saini@intel.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] [meta-zephyr][PATCH 1/3] zephyr-kernel: Add support
> for v3.4.0
>=20
> On Thu, Jun 22, 2023 at 06:39:37PM +0800, Naveen Saini wrote:
> > https://github.com/zephyrproject-rtos/zephyr/releases/tag/v3.4.0
> >
> > Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
>=20
> I ran this through CI
> https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/908561493
>=20
> It matches the outcome of the previous run (seen
> https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/907938109)
>=20
> So, I'd say this is an acceptable update :)

Thanks Jon for your review and testing !

>=20
> There are 3 outstanding issues with both,
> mps2-an385 no longer passes the device test case
> qemu-cortex-a9 fails the poll test case with the yocto compiler (but not =
the
> zephyr one).
>=20
> The a9 issue has been known about for some time, and I think someone was
> looking into it.
>=20
> However, the mps2-an385 issue is relatively new (~1month old).  I was abl=
e
> to track down the last passing/failing nightly run for this test case.
>=20
> FAILING: https://gitlab.com/jonmason00/meta-zephyr/-/jobs/4231476859
> PASSING: https://gitlab.com/jonmason00/meta-zephyr/-/jobs/4223831001
>=20
> The SHAs for meta-zephyr and meta-python are the same, but the poky
> SHAs are different.  There are only 13 commits between the two SHAs.
> They are:
> 3a89e9a056a9 ref-manual: variables.rst: don't mention the INIT_MANAGER
> "none" option d9a7f947246f docs: add support for mickledore (4.2) release
> 225abef15bb2 maintainers.inc: Move repo to unassigned
> b68a24bed5c2 uboot-sign: support 64bits address
> b6c9cc306af4 kernel-fitimage: support 64 bits address
> d5d0b3f78514 populate_sdk_ext.bbclass: redirect stderr to stdout so that
> both end in LOGFILE
> 928609318f52 mpg123: Reset ac_cv_sys_file_offset_bits on musl
> 621fdfb12652 gpgme: Reset ac_cv_sys_file_offset_bits on musl 6722f406001c
> wic: add support for proper kernel name to bootimg-pcbios 0f0bd5e2317b
> devicetree.bbclass: Allow selection of dts files to build
> b7574378e8d3 perl-version: remove PERL* assignments fb8d21e73fbe qemu:
> Upgrade 7.2.0 -> 8.0.0
> 12e2d10541b0 qemu: Add fix for powerpc instruction fallback issue
>=20
> I'm not able to bisect the issue right now, but I'm guessing it's the QEM=
U
> upgrade.
>=20
> Thanks,
> Jon
>=20
>=20
>=20
> > ---
> >  ...ry-generation-issue-in-cross-compila.patch |  93 ++++++
> > .../zephyr-kernel/zephyr-kernel-src-3.4.0.inc | 286 ++++++++++++++++++
> >  .../zephyr-kernel/zephyr-kernel-src.inc       |   2 +-
> >  3 files changed, 380 insertions(+), 1 deletion(-)  create mode 100644
> > meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.4-x86-fix-e
> > fi-binary-generation-issue-in-cross-compila.patch
> >  create mode 100644
> > meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.4.0.
> > inc
> >
> > diff --git
> > a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.4-x86-fix
> > -efi-binary-generation-issue-in-cross-compila.patch
> > b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.4-x86-fix
> > -efi-binary-generation-issue-in-cross-compila.patch
> > new file mode 100644
> > index 0000000..94449f5
> > --- /dev/null
> > +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.4-x86
> > +++ -fix-efi-binary-generation-issue-in-cross-compila.patch
> > @@ -0,0 +1,93 @@
> > +From f314ca637eb2eb5ed1cda7320ab2448d6487aed8 Mon Sep 17 00:00:00
> > +2001
> > +From: Naveen Saini <naveen.kumar.saini@intel.com>
> > +Date: Thu, 22 Jun 2023 16:21:50 +0800
> > +Subject: [PATCH] x86: fix efi binary generation issue in cross
> > +compilation env
> > +
> > +Set root directory for headers.
> > +
> > +Upstream-Status: Inappropriate [Cross-compilation specific]
> > +
> > +Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
> > +---
> > + arch/x86/zefi/zefi.py                | 5 ++++-
> > + boards/x86/ehl_crb/CMakeLists.txt    | 1 +
> > + boards/x86/qemu_x86/CMakeLists.txt   | 1 +
> > + boards/x86/rpl_crb/CMakeLists.txt    | 1 +
> > + boards/x86/up_squared/CMakeLists.txt | 1 +
> > + 5 files changed, 8 insertions(+), 1 deletion(-)
> > +
> > +diff --git a/arch/x86/zefi/zefi.py b/arch/x86/zefi/zefi.py index
> > +99c188ecd0..1cd86a21cd 100755
> > +--- a/arch/x86/zefi/zefi.py
> > ++++ b/arch/x86/zefi/zefi.py
> > +@@ -109,8 +109,10 @@ def build_elf(elf_file, include_dirs):
> > +     includes =3D []
> > +     for include_dir in include_dirs:
> > +         includes.extend(["-I", include_dir])
> > ++    #  Pass --sysroot path for cross compilation
> > ++    sysrootarg =3D "--sysroot=3D" + args.sysroot
> > +     cmd =3D ([args.compiler, "-shared", "-Wall", "-Werror", "-I."] + =
includes +
> > +-           ["-fno-stack-protector", "-fpic", "-mno-red-zone", "-fshor=
t-wchar",
> > ++           ["-fno-stack-protector", "-fpic", "-mno-red-zone",
> > ++ "-fshort-wchar", sysrootarg,
> > +             "-Wl,-nostdlib", "-T", ldscript, "-o", "zefi.elf", cfile]=
)
> > +     verbose(" ".join(cmd))
> > +     subprocess.run(cmd, check =3D True) @@ -150,6 +152,7 @@ def
> > +parse_args():
> > +     parser.add_argument("-v", "--verbose", action=3D"store_true",
> help=3D"Verbose output")
> > +     parser.add_argument("-i", "--includes", required=3DTrue, nargs=3D=
"+",
> > +                         help=3D"Zephyr base include directories")
> > ++    parser.add_argument("-s", "--sysroot", required=3DTrue,
> > ++ help=3D"Cross compilation --sysroot=3Dpath")
> > +
> > +     return parser.parse_args()
> > +
> > +diff --git a/boards/x86/ehl_crb/CMakeLists.txt
> > +b/boards/x86/ehl_crb/CMakeLists.txt
> > +index 06bbb2dce1..60aa1496e8 100644
> > +--- a/boards/x86/ehl_crb/CMakeLists.txt
> > ++++ b/boards/x86/ehl_crb/CMakeLists.txt
> > +@@ -6,6 +6,7 @@ set_property(GLOBAL APPEND PROPERTY
> extra_post_build_commands
> > +   -o ${CMAKE_OBJCOPY}
> > +   -i ${ZEPHYR_BASE}/include
> > +   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
> > ++  -s ${SYSROOT_DIR}
> > +   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
> > +   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
> > + )
> > +diff --git a/boards/x86/qemu_x86/CMakeLists.txt
> > +b/boards/x86/qemu_x86/CMakeLists.txt
> > +index de31c25a82..2910fa0192 100644
> > +--- a/boards/x86/qemu_x86/CMakeLists.txt
> > ++++ b/boards/x86/qemu_x86/CMakeLists.txt
> > +@@ -5,6 +5,7 @@ set_property(GLOBAL APPEND PROPERTY
> extra_post_build_commands
> > +   -i ${ZEPHYR_BASE}/include
> > +   -o ${CMAKE_OBJCOPY}
> > +   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
> > ++  -s ${SYSROOT_DIR}
> > +   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
> > +   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
> > + )
> > +diff --git a/boards/x86/rpl_crb/CMakeLists.txt
> > +b/boards/x86/rpl_crb/CMakeLists.txt
> > +index 7db36d8d7c..700f51bf01 100644
> > +--- a/boards/x86/rpl_crb/CMakeLists.txt
> > ++++ b/boards/x86/rpl_crb/CMakeLists.txt
> > +@@ -6,6 +6,7 @@ set_property(GLOBAL APPEND PROPERTY
> extra_post_build_commands
> > +   -o ${CMAKE_OBJCOPY}
> > +   -i ${ZEPHYR_BASE}/include
> > +   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
> > ++  -s ${SYSROOT_DIR}
> > +   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
> > +   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
> > + )
> > +diff --git a/boards/x86/up_squared/CMakeLists.txt
> > +b/boards/x86/up_squared/CMakeLists.txt
> > +index 57eef4eabe..ad90969fa9 100644
> > +--- a/boards/x86/up_squared/CMakeLists.txt
> > ++++ b/boards/x86/up_squared/CMakeLists.txt
> > +@@ -6,6 +6,7 @@ set_property(GLOBAL APPEND PROPERTY
> extra_post_build_commands
> > +   -o ${CMAKE_OBJCOPY}
> > +   -i ${ZEPHYR_BASE}/include
> > +   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
> > ++  -s ${SYSROOT_DIR}
> > +   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
> > +   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
> > + )
> > +--
> > +2.34.1
> > +
> > diff --git
> > a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.4.
> > 0.inc
> > b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.4.
> > 0.inc
> > new file mode 100644
> > index 0000000..b01145a
> > --- /dev/null
> > +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-
> > +++ 3.4.0.inc
> > @@ -0,0 +1,286 @@
> > +# Auto-generated from zephyr-kernel-src.inc.jinja
> > +
> > +SRCREV_FORMAT =3D "default"
> > +
> > +SRCREV_default =3D "356c8cbe63ae01b3ab438382639d25bb418a0213"
> > +SRCREV_bsim =3D "908ffde6298a937c6549dbfa843a62caab26bfc5"
> > +SRCREV_babblesim_base =3D
> "02838ca04c4562e68dc876196828d8121679e537"
> > +SRCREV_babblesim_ext_2G4_libPhyComv1 =3D
> "9018113a362fa6c9e8f4b9cab9e5a8f12cc46b94"
> > +SRCREV_babblesim_ext_2G4_phy_v1 =3D
> "cf2d86e736efac4f12fad5093ed2da2c5b406156"
> > +SRCREV_babblesim_ext_2G4_channel_NtNcable =3D
> "20a38c997f507b0aa53817aab3d73a462fff7af1"
> > +SRCREV_babblesim_ext_2G4_channel_multiatt =3D
> "e09bc2d14b1975f969ad19c6ed23eb20e5dc3d09"
> > +SRCREV_babblesim_ext_2G4_modem_magic =3D
> "cb70771794f0bf6f262aa474848611c68ae8f1ed"
> > +SRCREV_babblesim_ext_2G4_modem_BLE_simple =3D
> "ce975a3259fd0dd761d371b60435242d54794bad"
> > +SRCREV_babblesim_ext_2G4_device_burst_interferer =3D
> "5b5339351d6e6a2368c686c734dc8b2fc65698fc"
> > +SRCREV_babblesim_ext_2G4_device_WLAN_actmod =3D
> "9cb6d8e72695f6b785e57443f0629a18069d6ce4"
> > +SRCREV_babblesim_ext_2G4_device_playback =3D
> "85c645929cf1ce995d8537107d9dcbd12ed64036"
> > +SRCREV_babblesim_ext_libCryptov1 =3D
> "eed6d7038e839153e340bd333bc43541cb90ba64"
> > +SRCREV_canopennode =3D "dec12fa3f0d790cafa8414a4c2930ea71ab72ffd"
> > +SRCREV_chre =3D "b7955c27e50485b7dafdc3888d7d6afdc2ac6d96"
> > +SRCREV_cmsis =3D "74981bf893e8b10931464b9945e2143d99a3f0a3"
> > +SRCREV_edtt =3D "64e5105ad82390164fb73fc654be3f73a608209a"
> > +SRCREV_fatfs =3D "427159bf95ea49b7680facffaa29ad506b42709b"
> > +SRCREV_hal_altera =3D "0d225ddd314379b32355a00fb669eacf911e750d"
> > +SRCREV_hal_atmel =3D "5ab43007eda3f380c125f957f03638d2e8d1144d"
> > +SRCREV_hal_espressif =3D "abe299333411cb37a1cb1dd0aa2ea35c27382604"
> > +SRCREV_hal_ethos_u =3D "90ada2ea5681b2a2722a10d2898eac34c2510791"
> > +SRCREV_hal_gigadevice =3D
> "2994b7dde8b0b0fa9b9c0ccb13474b6a486cddc3"
> > +SRCREV_hal_infineon =3D "0bebc14d8bd1a249ee7fbc70b37db6f01f72544f"
> > +SRCREV_hal_microchip =3D
> "5d079f1683a00b801373bbbbf5d181d4e33b30d5"
> > +SRCREV_hal_nordic =3D "a1c3e0fbaafda091139b8744becd4853ada2f747"
> > +SRCREV_hal_nuvoton =3D "0a1f153c433f5f637a4490651bdda6d966de3b99"
> > +SRCREV_hal_nxp =3D "904830e8f684a9fd573751a1cdecde877ec49242"
> > +SRCREV_hal_openisa =3D "d1e61c0c654d8ca9e73d27fca3a7eb3b7881cb6a"
> > +SRCREV_hal_quicklogic =3D "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0"
> > +SRCREV_hal_renesas =3D "f2d791d28cd8fdbc5861652b863822632c91f690"
> > +SRCREV_hal_rpi_pico =3D "b7801e4db6a62ea2d37bbef7880c3d056530c9bf"
> > +SRCREV_hal_silabs =3D "a143f03e846eb1b7b3135f3c8192820ce1b6d9c4"
> > +SRCREV_hal_st =3D "5948f7b3304f1628a45ee928cd607619a7f53bbb"
> > +SRCREV_hal_stm32 =3D "c865374fc83d93416c0f380e6310368ff55d6ce2"
> > +SRCREV_hal_telink =3D "38573af589173259801ae6c2b34b7d4c9e626746"
> > +SRCREV_hal_ti =3D "ae1db23f32dde779cdfc4afaa9a60ea219310a64"
> > +SRCREV_hal_wurthelektronik =3D
> "24ca9873c3d608fad1fea0431836bc8f144c132e"
> > +SRCREV_hal_xtensa =3D "41a631d4aeeeaedc0daece21eecc338807296ad7"
> > +SRCREV_libmetal =3D "b91611a6f47dd29fb24c46e5621e797557f80ec6"
> > +SRCREV_liblc3 =3D "448f3de31f49a838988a162ef1e23a89ddf2d2ed"
> > +SRCREV_littlefs =3D "ca583fd297ceb48bced3c2548600dc615d67af24"
> > +SRCREV_loramac-node =3D "ce57712f3e426bbbb13acaec97b45369f716f43a"
> > +SRCREV_lvgl =3D "7102083f626cda09e5792420ea60af0525cce9ae"
> > +SRCREV_lz4 =3D "8e303c264fc21c2116dc612658003a22e933124d"
> > +SRCREV_mbedtls =3D "6e7841e5a08eb5da3c82dbc8b6b6d82ae4b7d2a0"
> > +SRCREV_mcuboot =3D "74c4d1c52fd51d07904b27a7aa9b2303e896a4e3"
> > +SRCREV_mipi-sys-t =3D "0d521d8055f3b2b4842f728b0365d3f0ece9c37f"
> > +SRCREV_nanopb =3D "42fa8b211e946b90b9d968523fce7b1cfe27617e"
> > +SRCREV_net-tools =3D "e0828aa9629b533644dc96ff6d1295c939bd713c"
> > +SRCREV_nrf_hw_models =3D
> "c8d2ecd25d6976d2d77eccf66878420fdb8ef5a1"
> > +SRCREV_open-amp =3D "c904a01d4a882bcbb39987e0e2ce5308f49ac7ad"
> > +SRCREV_openthread =3D "d9abe3071c0131a4adb5d7e7451319b735e6d855"
> > +SRCREV_picolibc =3D "d07c38ff051386f8e09a143ea0a6c1d6d66dd1d8"
> > +SRCREV_segger =3D "4bfaf28a11c3e5ec29badac744fab6d2f342749e"
> > +SRCREV_sof =3D "ffbf9c2a6ea2930b0ac7e3a37c7cd7f5c417d090"
> > +SRCREV_tflite-micro =3D "9156d050927012da87079064db59d07f03b8baf6"
> > +SRCREV_tinycrypt =3D "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
> > +SRCREV_TraceRecorderSource =3D
> "bc839bf94904bcdb91b33760e918afbef82e3ab4"
> > +SRCREV_trusted-firmware-m =3D
> "79a6115d3a8d0e04864ae8156c1dc8532b750f5a"
> > +SRCREV_trusted-firmware-a =3D
> "28f5e137837f1c1a7a7b2af2dd8bb778c0a27532"
> > +SRCREV_tf-m-tests =3D "0f80a65193ddbbe3f0ac38b33b07b26138c11fa7"
> > +SRCREV_psa-arch-tests =3D "6a17330e0dfb5f319730f974d5b05f7b7f04757b"
> > +SRCREV_uoscore-uedhoc =3D
> "e8920192b66db4f909eb9cd3f155d5245c1ae825"
> > +SRCREV_zcbor =3D "67fd8bb88d3136738661fa8bb5f9989103f4599e"
> > +SRCREV_zscilib =3D "34c3432e81085bb717e4871d21ca419ae0058ec5"
> > +SRCREV_thrift =3D "10023645a0e6cb7ce23fcd7fd3dbac9f18df6234"
> > +
> > +SRC_URI_ZEPHYR ?=3D "git://github.com/zephyrproject-
> rtos/zephyr.git;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_BSIM ?=3D "git://github.com/zephyrproject-
> rtos/babblesim-manifest;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_BABBLESIM_BASE ?=3D
> "git://github.com/BabbleSim/base.git;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_LIBPHYCOMV1 ?=3D
> "git://github.com/BabbleSim/ext_2G4_libPhyComv1.git;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_PHY_V1 ?=3D
> "git://github.com/BabbleSim/ext_2G4_phy_v1.git;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_CHANNEL_NTNCABLE ?=3D
> "git://github.com/BabbleSim/ext_2G4_channel_NtNcable.git;protocol=3Dhttps
> "
> > +SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_CHANNEL_MULTIATT ?=3D
> "git://github.com/BabbleSim/ext_2G4_channel_multiatt.git;protocol=3Dhttps=
"
> > +SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_MODEM_MAGIC ?=3D
> "git://github.com/BabbleSim/ext_2G4_modem_magic.git;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_MODEM_BLE_SIMPLE ?=3D
> "git://github.com/BabbleSim/ext_2G4_modem_BLE_simple.git;protocol=3Dhtt
> ps"
> > +SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_DEVICE_BURST_INTERFERER ?=3D
> "git://github.com/BabbleSim/ext_2G4_device_burst_interferer.git;protocol
> =3Dhttps"
> > +SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_DEVICE_WLAN_ACTMOD ?=3D
> "git://github.com/BabbleSim/ext_2G4_device_WLAN_actmod.git;protocol=3D
> https"
> > +SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_DEVICE_PLAYBACK ?=3D
> "git://github.com/BabbleSim/ext_2G4_device_playback.git;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_BABBLESIM_EXT_LIBCRYPTOV1 ?=3D
> "git://github.com/BabbleSim/ext_libCryptov1.git;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_CANOPENNODE ?=3D "git://github.com/zephyrproject-
> rtos/canopennode;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_CHRE ?=3D "git://github.com/zephyrproject-
> rtos/chre;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_CMSIS ?=3D "git://github.com/zephyrproject-
> rtos/cmsis;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_EDTT ?=3D "git://github.com/zephyrproject-
> rtos/edtt;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_FATFS ?=3D "git://github.com/zephyrproject-
> rtos/fatfs;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_ALTERA ?=3D "git://github.com/zephyrproject-
> rtos/hal_altera;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_ATMEL ?=3D "git://github.com/zephyrproject-
> rtos/hal_atmel;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_ESPRESSIF ?=3D "git://github.com/zephyrproject-
> rtos/hal_espressif;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_ETHOS_U ?=3D "git://github.com/zephyrproject-
> rtos/hal_ethos_u;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_GIGADEVICE ?=3D "git://github.com/zephyrproject-
> rtos/hal_gigadevice;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_INFINEON ?=3D "git://github.com/zephyrproject-
> rtos/hal_infineon;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_MICROCHIP ?=3D "git://github.com/zephyrproject-
> rtos/hal_microchip;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_NORDIC ?=3D "git://github.com/zephyrproject-
> rtos/hal_nordic;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_NUVOTON ?=3D "git://github.com/zephyrproject-
> rtos/hal_nuvoton;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_NXP ?=3D "git://github.com/zephyrproject-
> rtos/hal_nxp;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_OPENISA ?=3D "git://github.com/zephyrproject-
> rtos/hal_openisa;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_QUICKLOGIC ?=3D "git://github.com/zephyrproject-
> rtos/hal_quicklogic;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_RENESAS ?=3D "git://github.com/zephyrproject-
> rtos/hal_renesas;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_RPI_PICO ?=3D "git://github.com/zephyrproject-
> rtos/hal_rpi_pico;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_SILABS ?=3D "git://github.com/zephyrproject-
> rtos/hal_silabs;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_ST ?=3D "git://github.com/zephyrproject-
> rtos/hal_st;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_STM32 ?=3D "git://github.com/zephyrproject-
> rtos/hal_stm32;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_TELINK ?=3D "git://github.com/zephyrproject-
> rtos/hal_telink;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_TI ?=3D "git://github.com/zephyrproject-
> rtos/hal_ti;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_WURTHELEKTRONIK ?=3D
> "git://github.com/zephyrproject-rtos/hal_wurthelektronik;protocol=3Dhttps=
"
> > +SRC_URI_ZEPHYR_HAL_XTENSA ?=3D "git://github.com/zephyrproject-
> rtos/hal_xtensa;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_LIBMETAL ?=3D "git://github.com/zephyrproject-
> rtos/libmetal;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_LIBLC3 ?=3D "git://github.com/zephyrproject-
> rtos/liblc3;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_LITTLEFS ?=3D "git://github.com/zephyrproject-
> rtos/littlefs;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_LORAMAC_NODE ?=3D "git://github.com/zephyrproject-
> rtos/loramac-node;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_LVGL ?=3D "git://github.com/zephyrproject-
> rtos/lvgl;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_LZ4 ?=3D "git://github.com/zephyrproject-
> rtos/lz4;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_MBEDTLS ?=3D "git://github.com/zephyrproject-
> rtos/mbedtls;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_MCUBOOT ?=3D "git://github.com/zephyrproject-
> rtos/mcuboot;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_MIPI_SYS_T ?=3D "git://github.com/zephyrproject-
> rtos/mipi-sys-t;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_NANOPB ?=3D "git://github.com/zephyrproject-
> rtos/nanopb;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_NET_TOOLS ?=3D "git://github.com/zephyrproject-
> rtos/net-tools;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_NRF_HW_MODELS ?=3D
> "git://github.com/zephyrproject-rtos/nrf_hw_models;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_OPEN_AMP ?=3D "git://github.com/zephyrproject-
> rtos/open-amp;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_OPENTHREAD ?=3D "git://github.com/zephyrproject-
> rtos/openthread;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_PICOLIBC ?=3D "git://github.com/zephyrproject-
> rtos/picolibc;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_SEGGER ?=3D "git://github.com/zephyrproject-
> rtos/segger;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_SOF ?=3D "git://github.com/zephyrproject-
> rtos/sof;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_TFLITE_MICRO ?=3D "git://github.com/zephyrproject-
> rtos/tflite-micro;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_TINYCRYPT ?=3D "git://github.com/zephyrproject-
> rtos/tinycrypt;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_TRACERECORDERSOURCE ?=3D
> "git://github.com/zephyrproject-rtos/TraceRecorderSource;protocol=3Dhttps=
"
> > +SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M ?=3D
> "git://github.com/zephyrproject-rtos/trusted-firmware-m;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_A ?=3D
> "git://github.com/zephyrproject-rtos/trusted-firmware-a;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_TF_M_TESTS ?=3D "git://github.com/zephyrproject-
> rtos/tf-m-tests;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_PSA_ARCH_TESTS ?=3D "git://github.com/zephyrproject-
> rtos/psa-arch-tests;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_UOSCORE_UEDHOC ?=3D
> "git://github.com/zephyrproject-rtos/uoscore-uedhoc;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_ZCBOR ?=3D "git://github.com/zephyrproject-
> rtos/zcbor;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_ZSCILIB ?=3D "git://github.com/zephyrproject-
> rtos/zscilib;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_THRIFT ?=3D "git://github.com/zephyrproject-
> rtos/thrift;protocol=3Dhttps"
> > +
> > +SRC_URI_PATCHES ?=3D "\
> > +
> > +file://0001-3.4-x86-fix-efi-binary-generation-issue-in-cross-
> compila.patch;patchdir=3Dzephyr \ "
> > +
> > +SRC_URI =3D "\
> > +
> ${SRC_URI_ZEPHYR};branch=3D${ZEPHYR_BRANCH};name=3Ddefault;destsuffix=3D
> git/zephyr \
> > +
> ${SRC_URI_ZEPHYR_BSIM};name=3Dbsim;nobranch=3D1;destsuffix=3Dgit/tools/bs=
i
> m \
> > +
> ${SRC_URI_ZEPHYR_BABBLESIM_BASE};name=3Dbabblesim_base;nobranch=3D1;
> destsuffix=3Dgit/tools/bsim/components \
> > +
> ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_LIBPHYCOMV1};name=3Dbabblesi
> m_ext_2G4_libPhyComv1;nobranch=3D1;destsuffix=3Dgit/tools/bsim/componen
> ts/ext_2G4_libPhyComv1 \
> > +
> ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_PHY_V1};name=3Dbabblesim_ext_
> 2G4_phy_v1;nobranch=3D1;destsuffix=3Dgit/tools/bsim/components/ext_2G4_p
> hy_v1 \
> > +
> ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_CHANNEL_NTNCABLE};name=3Dba
> bblesim_ext_2G4_channel_NtNcable;nobranch=3D1;destsuffix=3Dgit/tools/bsim
> /components/ext_2G4_channel_NtNcable \
> > +
> ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_CHANNEL_MULTIATT};name=3Dba
> bblesim_ext_2G4_channel_multiatt;nobranch=3D1;destsuffix=3Dgit/tools/bsim=
/c
> omponents/ext_2G4_channel_multiatt \
> > +
> ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_MODEM_MAGIC};name=3Dbabble
> sim_ext_2G4_modem_magic;nobranch=3D1;destsuffix=3Dgit/tools/bsim/compo
> nents/ext_2G4_modem_magic \
> > +
> ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_MODEM_BLE_SIMPLE};name=3Dba
> bblesim_ext_2G4_modem_BLE_simple;nobranch=3D1;destsuffix=3Dgit/tools/bsi
> m/components/ext_2G4_modem_BLE_simple \
> > +
> ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_DEVICE_BURST_INTERFERER};na
> me=3Dbabblesim_ext_2G4_device_burst_interferer;nobranch=3D1;destsuffix=3D=
gi
> t/tools/bsim/components/ext_2G4_device_burst_interferer \
> > +
> ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_DEVICE_WLAN_ACTMOD};name
> =3Dbabblesim_ext_2G4_device_WLAN_actmod;nobranch=3D1;destsuffix=3Dgit/to
> ols/bsim/components/ext_2G4_device_WLAN_actmod \
> > +
> ${SRC_URI_ZEPHYR_BABBLESIM_EXT_2G4_DEVICE_PLAYBACK};name=3Dbabbl
> esim_ext_2G4_device_playback;nobranch=3D1;destsuffix=3Dgit/tools/bsim/com
> ponents/ext_2G4_device_playback \
> > +
> ${SRC_URI_ZEPHYR_BABBLESIM_EXT_LIBCRYPTOV1};name=3Dbabblesim_ext_
> libCryptov1;nobranch=3D1;destsuffix=3Dgit/tools/bsim/components/ext_libCr=
ypt
> ov1 \
> > +
> ${SRC_URI_ZEPHYR_CANOPENNODE};name=3Dcanopennode;nobranch=3D1;dest
> suffix=3Dgit/modules/lib/canopennode \
> > +
> ${SRC_URI_ZEPHYR_CHRE};name=3Dchre;nobranch=3D1;destsuffix=3Dgit/modules/
> lib/chre \
> > +
> ${SRC_URI_ZEPHYR_CMSIS};name=3Dcmsis;nobranch=3D1;destsuffix=3Dgit/module
> s/hal/cmsis \
> > +
> ${SRC_URI_ZEPHYR_EDTT};name=3Dedtt;nobranch=3D1;destsuffix=3Dgit/tools/ed=
tt
> \
> > +
> ${SRC_URI_ZEPHYR_FATFS};name=3Dfatfs;nobranch=3D1;destsuffix=3Dgit/module=
s
> /fs/fatfs \
> > +
> ${SRC_URI_ZEPHYR_HAL_ALTERA};name=3Dhal_altera;nobranch=3D1;destsuffix=3D
> git/modules/hal/altera \
> > +
> ${SRC_URI_ZEPHYR_HAL_ATMEL};name=3Dhal_atmel;nobranch=3D1;destsuffix=3D
> git/modules/hal/atmel \
> > +
> ${SRC_URI_ZEPHYR_HAL_ESPRESSIF};name=3Dhal_espressif;nobranch=3D1;dests
> uffix=3Dgit/modules/hal/espressif \
> > +
> ${SRC_URI_ZEPHYR_HAL_ETHOS_U};name=3Dhal_ethos_u;nobranch=3D1;destsu
> ffix=3Dgit/modules/hal/ethos_u \
> > +
> ${SRC_URI_ZEPHYR_HAL_GIGADEVICE};name=3Dhal_gigadevice;nobranch=3D1;d
> estsuffix=3Dgit/modules/hal/gigadevice \
> > +
> ${SRC_URI_ZEPHYR_HAL_INFINEON};name=3Dhal_infineon;nobranch=3D1;dests
> uffix=3Dgit/modules/hal/infineon \
> > +
> ${SRC_URI_ZEPHYR_HAL_MICROCHIP};name=3Dhal_microchip;nobranch=3D1;de
> stsuffix=3Dgit/modules/hal/microchip \
> > +
> ${SRC_URI_ZEPHYR_HAL_NORDIC};name=3Dhal_nordic;nobranch=3D1;destsuffix
> =3Dgit/modules/hal/nordic \
> > +
> ${SRC_URI_ZEPHYR_HAL_NUVOTON};name=3Dhal_nuvoton;nobranch=3D1;dests
> uffix=3Dgit/modules/hal/nuvoton \
> > +
> ${SRC_URI_ZEPHYR_HAL_NXP};name=3Dhal_nxp;nobranch=3D1;destsuffix=3Dgit/m
> odules/hal/nxp \
> > +
> ${SRC_URI_ZEPHYR_HAL_OPENISA};name=3Dhal_openisa;nobranch=3D1;destsuf
> fix=3Dgit/modules/hal/openisa \
> > +
> ${SRC_URI_ZEPHYR_HAL_QUICKLOGIC};name=3Dhal_quicklogic;nobranch=3D1;d
> estsuffix=3Dgit/modules/hal/quicklogic \
> > +
> ${SRC_URI_ZEPHYR_HAL_RENESAS};name=3Dhal_renesas;nobranch=3D1;destsuf
> fix=3Dgit/modules/hal/renesas \
> > +
> ${SRC_URI_ZEPHYR_HAL_RPI_PICO};name=3Dhal_rpi_pico;nobranch=3D1;destsu
> ffix=3Dgit/modules/hal/rpi_pico \
> > +
> ${SRC_URI_ZEPHYR_HAL_SILABS};name=3Dhal_silabs;nobranch=3D1;destsuffix=3D=
g
> it/modules/hal/silabs \
> > +
> ${SRC_URI_ZEPHYR_HAL_ST};name=3Dhal_st;nobranch=3D1;destsuffix=3Dgit/modu
> les/hal/st \
> > +
> ${SRC_URI_ZEPHYR_HAL_STM32};name=3Dhal_stm32;nobranch=3D1;destsuffix=3D
> git/modules/hal/stm32 \
> > +
> ${SRC_URI_ZEPHYR_HAL_TELINK};name=3Dhal_telink;nobranch=3D1;destsuffix=3D=
g
> it/modules/hal/telink \
> > +
> ${SRC_URI_ZEPHYR_HAL_TI};name=3Dhal_ti;nobranch=3D1;destsuffix=3Dgit/modu=
l
> es/hal/ti \
> > +
> ${SRC_URI_ZEPHYR_HAL_WURTHELEKTRONIK};name=3Dhal_wurthelektronik;n
> obranch=3D1;destsuffix=3Dgit/modules/hal/wurthelektronik \
> > +
> ${SRC_URI_ZEPHYR_HAL_XTENSA};name=3Dhal_xtensa;nobranch=3D1;destsuffix
> =3Dgit/modules/hal/xtensa \
> > +
> ${SRC_URI_ZEPHYR_LIBMETAL};name=3Dlibmetal;nobranch=3D1;destsuffix=3Dgit/
> modules/hal/libmetal \
> > +
> ${SRC_URI_ZEPHYR_LIBLC3};name=3Dliblc3;nobranch=3D1;destsuffix=3Dgit/modu=
le
> s/lib/liblc3 \
> > +
> ${SRC_URI_ZEPHYR_LITTLEFS};name=3Dlittlefs;nobranch=3D1;destsuffix=3Dgit/=
mod
> ules/fs/littlefs \
> > +    ${SRC_URI_ZEPHYR_LORAMAC_NODE};name=3Dloramac-
> node;nobranch=3D1;destsuffix=3Dgit/modules/lib/loramac-node \
> > +
> ${SRC_URI_ZEPHYR_LVGL};name=3Dlvgl;nobranch=3D1;destsuffix=3Dgit/modules/=
li
> b/gui/lvgl \
> > +
> ${SRC_URI_ZEPHYR_LZ4};name=3Dlz4;nobranch=3D1;destsuffix=3Dgit/modules/li=
b/l
> z4 \
> > +
> ${SRC_URI_ZEPHYR_MBEDTLS};name=3Dmbedtls;nobranch=3D1;destsuffix=3Dgit/m
> odules/crypto/mbedtls \
> > +
> ${SRC_URI_ZEPHYR_MCUBOOT};name=3Dmcuboot;nobranch=3D1;destsuffix=3Dgit
> /bootloader/mcuboot \
> > +    ${SRC_URI_ZEPHYR_MIPI_SYS_T};name=3Dmipi-sys-
> t;nobranch=3D1;destsuffix=3Dgit/modules/debug/mipi-sys-t \
> > +
> ${SRC_URI_ZEPHYR_NANOPB};name=3Dnanopb;nobranch=3D1;destsuffix=3Dgit/m
> odules/lib/nanopb \
> > +    ${SRC_URI_ZEPHYR_NET_TOOLS};name=3Dnet-
> tools;nobranch=3D1;destsuffix=3Dgit/tools/net-tools \
> > +
> ${SRC_URI_ZEPHYR_NRF_HW_MODELS};name=3Dnrf_hw_models;nobranch=3D1
> ;destsuffix=3Dgit/modules/bsim_hw_models/nrf_hw_models \
> > +    ${SRC_URI_ZEPHYR_OPEN_AMP};name=3Dopen-
> amp;nobranch=3D1;destsuffix=3Dgit/modules/lib/open-amp \
> > +
> ${SRC_URI_ZEPHYR_OPENTHREAD};name=3Dopenthread;nobranch=3D1;destsuff
> ix=3Dgit/modules/lib/openthread \
> > +
> ${SRC_URI_ZEPHYR_PICOLIBC};name=3Dpicolibc;nobranch=3D1;destsuffix=3Dgit/=
m
> odules/lib/picolibc \
> > +
> ${SRC_URI_ZEPHYR_SEGGER};name=3Dsegger;nobranch=3D1;destsuffix=3Dgit/mod
> ules/debug/segger \
> > +
> ${SRC_URI_ZEPHYR_SOF};name=3Dsof;nobranch=3D1;destsuffix=3Dgit/modules/au
> dio/sof \
> > +    ${SRC_URI_ZEPHYR_TFLITE_MICRO};name=3Dtflite-
> micro;nobranch=3D1;destsuffix=3Dgit/modules/lib/tflite-micro \
> > +
> ${SRC_URI_ZEPHYR_TINYCRYPT};name=3Dtinycrypt;nobranch=3D1;destsuffix=3Dgi=
t/
> modules/crypto/tinycrypt \
> > +
> ${SRC_URI_ZEPHYR_TRACERECORDERSOURCE};name=3DTraceRecorderSource;
> nobranch=3D1;destsuffix=3Dgit/modules/debug/TraceRecorder \
> > +    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M};name=3Dtrusted-
> firmware-m;nobranch=3D1;destsuffix=3Dgit/modules/tee/tf-m/trusted-
> firmware-m \
> > +    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_A};name=3Dtrusted-firmware-
> a;nobranch=3D1;destsuffix=3Dgit/modules/tee/tf-a/trusted-firmware-a \
> > +    ${SRC_URI_ZEPHYR_TF_M_TESTS};name=3Dtf-m-
> tests;nobranch=3D1;destsuffix=3Dgit/modules/tee/tf-m/tf-m-tests \
> > +    ${SRC_URI_ZEPHYR_PSA_ARCH_TESTS};name=3Dpsa-arch-
> tests;nobranch=3D1;destsuffix=3Dgit/modules/tee/tf-m/psa-arch-tests \
> > +    ${SRC_URI_ZEPHYR_UOSCORE_UEDHOC};name=3Duoscore-
> uedhoc;nobranch=3D1;destsuffix=3Dgit/modules/lib/uoscore-uedhoc \
> > +
> ${SRC_URI_ZEPHYR_ZCBOR};name=3Dzcbor;nobranch=3D1;destsuffix=3Dgit/modul
> es/lib/zcbor \
> > +
> ${SRC_URI_ZEPHYR_ZSCILIB};name=3Dzscilib;nobranch=3D1;destsuffix=3Dgit/mo=
dul
> es/lib/zscilib \
> > +
> ${SRC_URI_ZEPHYR_THRIFT};name=3Dthrift;nobranch=3D1;destsuffix=3Dgit/modu=
le
> s/lib/thrift \
> > +    ${SRC_URI_PATCHES} \
> > +"
> > +
> > +ZEPHYR_MODULES =3D "\
> > +${S}/tools/bsim\;\
> > +${S}/tools/bsim/components\;\
> > +${S}/tools/bsim/components/ext_2G4_libPhyComv1\;\
> > +${S}/tools/bsim/components/ext_2G4_phy_v1\;\
> > +${S}/tools/bsim/components/ext_2G4_channel_NtNcable\;\
> > +${S}/tools/bsim/components/ext_2G4_channel_multiatt\;\
> > +${S}/tools/bsim/components/ext_2G4_modem_magic\;\
> > +${S}/tools/bsim/components/ext_2G4_modem_BLE_simple\;\
> > +${S}/tools/bsim/components/ext_2G4_device_burst_interferer\;\
> > +${S}/tools/bsim/components/ext_2G4_device_WLAN_actmod\;\
> > +${S}/tools/bsim/components/ext_2G4_device_playback\;\
> > +${S}/tools/bsim/components/ext_libCryptov1\;\
> > +${S}/modules/lib/canopennode\;\
> > +${S}/modules/lib/chre\;\
> > +${S}/modules/hal/cmsis\;\
> > +${S}/tools/edtt\;\
> > +${S}/modules/fs/fatfs\;\
> > +${S}/modules/hal/altera\;\
> > +${S}/modules/hal/atmel\;\
> > +${S}/modules/hal/espressif\;\
> > +${S}/modules/hal/ethos_u\;\
> > +${S}/modules/hal/gigadevice\;\
> > +${S}/modules/hal/infineon\;\
> > +${S}/modules/hal/microchip\;\
> > +${S}/modules/hal/nordic\;\
> > +${S}/modules/hal/nuvoton\;\
> > +${S}/modules/hal/nxp\;\
> > +${S}/modules/hal/openisa\;\
> > +${S}/modules/hal/quicklogic\;\
> > +${S}/modules/hal/renesas\;\
> > +${S}/modules/hal/rpi_pico\;\
> > +${S}/modules/hal/silabs\;\
> > +${S}/modules/hal/st\;\
> > +${S}/modules/hal/stm32\;\
> > +${S}/modules/hal/telink\;\
> > +${S}/modules/hal/ti\;\
> > +${S}/modules/hal/wurthelektronik\;\
> > +${S}/modules/hal/xtensa\;\
> > +${S}/modules/hal/libmetal\;\
> > +${S}/modules/lib/liblc3\;\
> > +${S}/modules/fs/littlefs\;\
> > +${S}/modules/lib/loramac-node\;\
> > +${S}/modules/lib/gui/lvgl\;\
> > +${S}/modules/lib/lz4\;\
> > +${S}/modules/crypto/mbedtls\;\
> > +${S}/bootloader/mcuboot\;\
> > +${S}/modules/debug/mipi-sys-t\;\
> > +${S}/modules/lib/nanopb\;\
> > +${S}/tools/net-tools\;\
> > +${S}/modules/bsim_hw_models/nrf_hw_models\;\
> > +${S}/modules/lib/open-amp\;\
> > +${S}/modules/lib/openthread\;\
> > +${S}/modules/lib/picolibc\;\
> > +${S}/modules/debug/segger\;\
> > +${S}/modules/audio/sof\;\
> > +${S}/modules/lib/tflite-micro\;\
> > +${S}/modules/crypto/tinycrypt\;\
> > +${S}/modules/debug/TraceRecorder\;\
> > +${S}/modules/tee/tf-m/trusted-firmware-m\;\
> > +${S}/modules/tee/tf-a/trusted-firmware-a\;\
> > +${S}/modules/tee/tf-m/tf-m-tests\;\
> > +${S}/modules/tee/tf-m/psa-arch-tests\;\
> > +${S}/modules/lib/uoscore-uedhoc\;\
> > +${S}/modules/lib/zcbor\;\
> > +${S}/modules/lib/zscilib\;\
> > +${S}/modules/lib/thrift\;\
> > +"
> > +
> > +ZEPHYR_BRANCH =3D "v3.4-branch"
> > +PV =3D "3.4.0+git${SRCPV}"
> > diff --git
> > a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > index 0f25512..b6cd24c 100644
> > ---
> > a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.
> > +++ inc
> > @@ -12,5 +12,5 @@ FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
> >  S =3D "${WORKDIR}/git"
> >
> >  # Default to a stable version
> > -PREFERRED_VERSION_zephyr-kernel ??=3D "3.3.0"
> > +PREFERRED_VERSION_zephyr-kernel ??=3D "3.4.0"
> >  require
> > recipes-kernel/zephyr-kernel/zephyr-kernel-src-
> ${PREFERRED_VERSION_zep
> > hyr-kernel}.inc
> > --
> > 2.34.1
> >
> >

