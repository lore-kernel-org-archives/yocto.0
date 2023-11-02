Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4F3C4332F
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 06:17:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web10.25179.1698905847341672910
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 23:17:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=Mix8vP0a;
 spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698905847; x=1730441847;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=szBKgCSJz/fwnaCVHMr9dL4tI3SVwwiZAHk1185dAa8=;
  b=Mix8vP0ai/CYQxPuJBZYa0N6/PPGgvPZdenytWbW34eQbnBI3wnXgVeJ
   NJJYWAIYsivYEhCEhcuMrEqGSRDlnRfIOOTx9dEB+eqnXHAYxD/dRvHsJ
   Qk9chQJMiGKezcgHGHvJDR0JLzjk11dNecT5l+E/cqGWQwQOqMd6WnT5W
   PCSu5qCPPyznswadb0lKbjIDuN/HKDdMp5cCjxxzPRWvHuNCFOAKGxpF+
   VuT9QzVJGJnLGHpF68BUY5xuYF+EaNTVyHYn90hkRDkfLNOfi9Lwhc++u
   nqct57MdyWfvlmlxCjlNZk+hq73kh8AhF3jEWSvxXkmw77dL2XEsIDrOY
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="392531068"
X-IronPort-AV: E=Sophos;i="6.03,270,1694761200"; 
   d="scan'208";a="392531068"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2023 23:17:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="827003736"
X-IronPort-AV: E=Sophos;i="6.03,270,1694761200"; 
   d="scan'208";a="827003736"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 01 Nov 2023 23:17:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 1 Nov 2023 23:17:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 1 Nov 2023 23:17:24 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 1 Nov 2023 23:17:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KCRfY6JJLZ8exjcacDvA02w2Ho8iuhUASQ/gXw+gCh104tp1QBxtkkgJJz+qXKzwi51BDnkBfJLPDFoiKpExanyPH5hHyRWLZ0Pyo4UKjor2GjRBGZfWAP5Wo4Nv/YRBxM7SVcj3XXTLbq7NteDSca7a2drB2JIn4p2ZcshpkqLnLixNZOtCbU3jUz/R8CaTaHO2RGBxQv0Ane7EXHdfRdqkWYq3X94XslR7nouBy1q/P90ORf45cjWdebgOYsIAIPIYhvcWsULb/mI7pZyF7/1iRvg/xFGKegzKB8/vMj4SojNXsQyG8iILm0KEzr2x4L256fXUgvT3RvKgq7L+zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Ahqze4MZJOSRODZTcnK4b3sdQgIXzvSUYNxK1Or0qQ=;
 b=VNO0MWnVt7FyedbBuSjJGn3lD5GzMIGBfQ8ryq88Gd3ZWyVfu+O+rFcfFLSyR1vxDYJR+gRjWe5SbUkxqpPZgnkmBKqHz4IDpIjoAX89nrXRaffU+0Yij86GEg2qkRsvRY2Dso52LRrwAgdNBpNmsxN4gXP2NMDd27SxWNCZH2K4ER9RJKiG7SH600ymPeyLK2hkxGPBXK4qoDO2jLIiquoFUclumxzd05YYGUa1QfNZvj8hk9YnrSxi8Og8Rh7QO/KviRTanbzDP3LXSEbg/KdWsmiwaqq8nW+h3b7naIF/ZcRLmoJwnBT3YPS9KY/F8qxrUqhy+35XzXPFj3TOew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by MW4PR11MB6618.namprd11.prod.outlook.com (2603:10b6:303:1ec::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.22; Thu, 2 Nov
 2023 06:17:14 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::c551:a463:575d:1cad]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::c551:a463:575d:1cad%4]) with mapi id 15.20.6954.019; Thu, 2 Nov 2023
 06:17:14 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Jon Mason <jdmason@kudzu.us>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [meta-zephyr][PATCH 1/3] zephyr-kernel: Add support for v3.5.0
Thread-Topic: [meta-zephyr][PATCH 1/3] zephyr-kernel: Add support for v3.5.0
Thread-Index: AQHaDTjrBv53auYZqkK3TQcdV3pImrBmjYEg
Date: Thu, 2 Nov 2023 06:17:13 +0000
Message-ID: <CO1PR11MB502659C47E36E0C712BD3E35C4A6A@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20231101095809.2839319-1-naveen.kumar.saini@intel.com>
 <ZUMRAA/hLFFSx8Ja@kudzu.us>
In-Reply-To: <ZUMRAA/hLFFSx8Ja@kudzu.us>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5026:EE_|MW4PR11MB6618:EE_
x-ms-office365-filtering-correlation-id: afeab742-9d41-4ec0-d7d4-08dbdb6b5b4c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zcFw0R2T1jzaYz4muxTmwvRnU4oqn1k3L+tfdf8tVuej5U7so1c5zk4prkAF8Z/FzTf8DmY7LbC2WgedhX+TW5J9ACTuSV6o61/sBRXn7uiZ8fhzX4xBjMbzXMFjcYzSewTtPTBCBfushh8aXfRhWQZQH0tC1OJaCGilwCZkosOSeLI+/ZCGZ+qzAYWCqsS4inB27UBtIsWtdYUeSyBmEO9cMFM19MX90KZSAGaVU+f7spEwt4nB7W+8FCYHtIbKD7vCVwRV6rvwp4GrP+YKbVIDSwlVpIlHYkz4loTtmK9rHjW8S7YIPLrKUqPKoCfWAFM5+T+e1mj9Wxj/CWdzUT/Nldkm8sDmySHPniC1hfGQKqcQ+ExechHX9liIfOwyOX7sJMOQSNCro7n4nSIAxa1kpkvBEeZAPjEAp9Nibw5U1yATZ1eUFT0Es1lskrjcFlaoAWVAo4/m/GlK5rM0UBgBQuMOnF3COEOsNARHE+WDYiJRO6tY64ufslo1rEpfpyiKeOtqXbF6dFgTiMLLtbwBn8p5E5rvmAE9qkTmgt2gQgxZ7Nb3aNy7TiRXDQNcYKWEDURtN5OV7e8FDxqEbYPx6DDz3fam2BiL99ELvnK781vTb4l3JmZkPcb+87NVQ/Pq1s+v2YNluOpIOoKutA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(346002)(366004)(39860400002)(136003)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(9686003)(6916009)(41300700001)(122000001)(82960400001)(76116006)(5660300002)(55016003)(8676002)(966005)(8936002)(478600001)(66476007)(66556008)(19627235002)(38070700009)(316002)(71200400001)(6506007)(64756008)(52536014)(66446008)(53546011)(66946007)(7696005)(4326008)(2906002)(86362001)(33656002)(38100700002)(30864003)(83380400001)(579004)(559001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9izEFHYxfoukEKpsHVLpwLJsEvZUvYY/LfVre72O981SuN9qjORlpokQ+TuG?=
 =?us-ascii?Q?KT7uqn13aKeLG8GWg5S11pohI6rBM4nWa97fOk4dIkg01HmSRNcWN0pnRN47?=
 =?us-ascii?Q?2PLFr6m78JEsOBhJWUcIt5jMp/67Uh0nLmHpxzBDGWo4sg0vIfQ9ZLZHtDzi?=
 =?us-ascii?Q?y55HgQK3UjeBnn7DMRlew8igZbXAkXBKcBKc32IbLBk/uVnh8QNcbOTIzJRR?=
 =?us-ascii?Q?F3wc7ldwG9MTgcdo5BPAZK4Ms1caLMb5IPyGHCxO2L315751bGbqAgHr0yqS?=
 =?us-ascii?Q?314uibrMbFKYc8HHZgiC898zBL0QXFMfptljticwM/lTAsYJNNNNtFeqyL9G?=
 =?us-ascii?Q?oPs7PP/l4Tjy10/BGSoV2MUtrrTrGdy7BrzfnmAJlruk6ij8uJwE6hXo5ZUW?=
 =?us-ascii?Q?vII3/CwhB4qwkfpivuFLa5gFSE9my2F5SvHncMGsE2IkEsUpwh1yqneBZURH?=
 =?us-ascii?Q?n7twDXAVs2Y3JqsxZkkqhw2heeaseroUBIJdt8OZ5ppKPJToEMW3nTSrCq1J?=
 =?us-ascii?Q?OpfnOlIHD9ZCIB9aUwxLVfTPsp7KXSjQ/9oiK/ij71pUPTEhRuMNqdJDtEHU?=
 =?us-ascii?Q?UmArfqH8K/s2njcSBhkSNiCMWY+dYDtPLO7hupTGtK4eKYEeiFjtPxg+ZwBV?=
 =?us-ascii?Q?KYxH/DxDpzj4T8pLnUW52HXI0xxl52vsIfE6GSegd+vbknuYdexf9pmGcWtA?=
 =?us-ascii?Q?C1mY4vPSx2hciB214gF22zh8DRNIDa265gVMWgqPFjzFN0zX/mgqvVxrzl7Z?=
 =?us-ascii?Q?PPjoi+OjKmZrzn2tOBRYFsw45x34hzmuxGTYa1G/SbUPovg0zzB6FKd4oevF?=
 =?us-ascii?Q?5EYS4HobBN4rSqTAUFMiF9CpVVXAqCUb1JUtHuZOkgVB8bJB+99baA2ucXIa?=
 =?us-ascii?Q?rL07mGnFNwScYDOyt+hMRPomHKGvz2wW3AgD3UIiDcfQr4ySoP/dE3RzDxKW?=
 =?us-ascii?Q?XzIPp23fIZUmBuN99cjig5TWQBvVM+rOXO2dAhkKUDHdcr0ZCVfEOA8FSYPP?=
 =?us-ascii?Q?7brCWoeEepBxUbfw1JIgBZ08qnujAiwH6GFc0Ib+6ysfWBlvhGsNaYJePglK?=
 =?us-ascii?Q?gj9sSio6Z0Xt+Q6Y8DjZJsmLUSdzGVjSe9A6ccKt+YSjkhkKEmHyLI5In7iE?=
 =?us-ascii?Q?Vz60rnsAXRklzxfNsd2f+rUMIMWnZEtj2bZAwnyXpmVLZbV/wpurNswyio84?=
 =?us-ascii?Q?7EkjJV4y7VgVu1MGcdv9R7qsZwj+8GYC1HOhO15QK73pjS0NTu9jVRvvfOaW?=
 =?us-ascii?Q?U8U703WsDMVfhOAJN0kU9Xvlg7A1Lm+iK8aOSSm2S4tehLPmazylFJ5YZZwA?=
 =?us-ascii?Q?AiWXGaUzxmUkcbri1Z1GSIrn1SalwZjbydh05uonvVM7IPA7w+rqufJra+0v?=
 =?us-ascii?Q?2gyAb04lRf5Vu2YsFJazM4Ym9uXFFhkl3hkK3SSx3Tm4qZ5IKqx9eMyReyVP?=
 =?us-ascii?Q?HOlCp1vyEn62QHdDpkgNqzV6J2jRGAusI1+JNWnyiDNi22q2I58Tt8z4UdfU?=
 =?us-ascii?Q?8iawju4yJqtzB9D0YsxWh6Wg9m0COmPIfINEm/uQbiKNMQ9ESWz/vK6WpRyW?=
 =?us-ascii?Q?gOBqQ/L9Z69GUoqSBLA+c2bW6Ck8sH/J3kXeB9SW+2mk7zyFscOCReXsndWx?=
 =?us-ascii?Q?vHz6qUoMpXmpWcdvHN7RJQjhjxNVxBlsAG6krzqyJFhvvBeOglRScg4giLo+?=
 =?us-ascii?Q?MK5x0w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afeab742-9d41-4ec0-d7d4-08dbdb6b5b4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2023 06:17:14.2696
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NmGHECZriuTXUigLz0K1c+aIMbJIP0ECNMvAGfRp3RwMaoM1XBIIpANrxfBBJbtERUzt2UXesIWKIChhaDmd6Tg4ySgtTsmJnVbB6Qk1YHc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6618
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 06:17:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61570



> -----Original Message-----
> From: Jon Mason <jdmason@kudzu.us>
> Sent: Thursday, November 2, 2023 11:01 AM
> To: Saini, Naveen Kumar <naveen.kumar.saini@intel.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [meta-zephyr][PATCH 1/3] zephyr-kernel: Add support for
> v3.5.0
>=20
> On Wed, Nov 01, 2023 at 05:58:07PM +0800, Naveen Saini wrote:
> > https://github.com/zephyrproject-rtos/zephyr/releases/tag/v3.5.0
>=20
> I tested this series and you can see the results at
> https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/1057638542
>=20
> There are new issues for intel-x86-64 and qemu-cortex-r5.  However, when =
I
> update the CI container, it no longer has the issues.  So, I have a patch
> coming out after this email with the relevant update, and some expanded
> testing for things that are now working.

Thanks Jon. For intel-x86-64 failure I have sent a fix. Could you please tr=
y again !

Regards,
Naveen
>=20
> Thanks,
> Jon
>=20
> >
> > Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
> > ---
> >  ...ry-generation-issue-in-cross-compila.patch |  80 ++++++
> > .../zephyr-kernel/zephyr-kernel-src-3.5.0.inc | 270 ++++++++++++++++++
> >  .../zephyr-kernel/zephyr-kernel-src.inc       |   2 +-
> >  3 files changed, 351 insertions(+), 1 deletion(-)  create mode 100644
> > meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.5-x86-fix-e
> > fi-binary-generation-issue-in-cross-compila.patch
> >  create mode 100644
> > meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.5.0.
> > inc
> >
> > diff --git
> > a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.5-x86-fix
> > -efi-binary-generation-issue-in-cross-compila.patch
> > b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.5-x86-fix
> > -efi-binary-generation-issue-in-cross-compila.patch
> > new file mode 100644
> > index 0000000..c12eed0
> > --- /dev/null
> > +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.5-x86
> > +++ -fix-efi-binary-generation-issue-in-cross-compila.patch
> > @@ -0,0 +1,80 @@
> > +From 67971b0be2230c2a691561e55a023b59c66bad87 Mon Sep 17 00:00:00
> > +2001
> > +From: Naveen Saini <naveen.kumar.saini@intel.com>
> > +Date: Tue, 31 Oct 2023 16:57:31 +0800
> > +Subject: [PATCH] x86: fix efi binary generation issue in cross
> > +compilation env
> > +
> > +Set root directory for headers.
> > +
> > +Upstream-Status: Inappropriate [Cross-compilation specific]
> > +
> > +Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
> > +---
> > + arch/x86/zefi/zefi.py               | 5 ++++-
> > + boards/x86/intel_adl/CMakeLists.txt | 1 +
> > +boards/x86/intel_ehl/CMakeLists.txt | 1 +
> > +boards/x86/intel_rpl/CMakeLists.txt | 1 +
> > + 4 files changed, 7 insertions(+), 1 deletion(-)
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
> > +diff --git a/boards/x86/intel_adl/CMakeLists.txt
> > +b/boards/x86/intel_adl/CMakeLists.txt
> > +index 2dc5afcc32..7981e576f2 100644
> > +--- a/boards/x86/intel_adl/CMakeLists.txt
> > ++++ b/boards/x86/intel_adl/CMakeLists.txt
> > +@@ -6,6 +6,7 @@ set_property(GLOBAL APPEND PROPERTY
> extra_post_build_commands
> > +   -o ${CMAKE_OBJCOPY}
> > +   -i ${ZEPHYR_BASE}/include
> > +   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
> > ++  -s ${SYSROOT_DIR}
> > +   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
> > +   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
> > + )
> > +diff --git a/boards/x86/intel_ehl/CMakeLists.txt
> > +b/boards/x86/intel_ehl/CMakeLists.txt
> > +index 2dc5afcc32..7981e576f2 100644
> > +--- a/boards/x86/intel_ehl/CMakeLists.txt
> > ++++ b/boards/x86/intel_ehl/CMakeLists.txt
> > +@@ -6,6 +6,7 @@ set_property(GLOBAL APPEND PROPERTY
> extra_post_build_commands
> > +   -o ${CMAKE_OBJCOPY}
> > +   -i ${ZEPHYR_BASE}/include
> > +   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
> > ++  -s ${SYSROOT_DIR}
> > +   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
> > +   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
> > + )
> > +diff --git a/boards/x86/intel_rpl/CMakeLists.txt
> > +b/boards/x86/intel_rpl/CMakeLists.txt
> > +index 2dc5afcc32..7981e576f2 100644
> > +--- a/boards/x86/intel_rpl/CMakeLists.txt
> > ++++ b/boards/x86/intel_rpl/CMakeLists.txt
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
> > a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.5.
> > 0.inc
> > b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.5.
> > 0.inc
> > new file mode 100644
> > index 0000000..459fdd8
> > --- /dev/null
> > +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-
> > +++ 3.5.0.inc
> > @@ -0,0 +1,270 @@
> > +# Auto-generated from zephyr-kernel-src.inc.jinja
> > +
> > +SRCREV_FORMAT =3D "default"
> > +
> > +SRCREV_default =3D "a6eef0ba3755f2530c5ce93524e5ac4f5be30194"
> > +SRCREV_acpica =3D "0333c2af13179f9b33d495cf7cb9a509f751cbb1"
> > +SRCREV_bsim =3D "384a091445c57b44ac8cbd18ebd245b47c71db94"
> > +SRCREV_babblesim_base =3D
> "19d62424c0802c6c9fc15528febe666e40f372a1"
> > +SRCREV_babblesim_ext_2G4_libPhyComv1 =3D
> "9018113a362fa6c9e8f4b9cab9e5a8f12cc46b94"
> > +SRCREV_babblesim_ext_2G4_phy_v1 =3D
> "d47c6dd90035b41b14f6921785ccb7b8484868e2"
> > +SRCREV_babblesim_ext_2G4_channel_NtNcable =3D
> "20a38c997f507b0aa53817aab3d73a462fff7af1"
> > +SRCREV_babblesim_ext_2G4_channel_multiatt =3D
> "bde72a57384dde7a4310bcf3843469401be93074"
> > +SRCREV_babblesim_ext_2G4_modem_magic =3D
> "cb70771794f0bf6f262aa474848611c68ae8f1ed"
> > +SRCREV_babblesim_ext_2G4_modem_BLE_simple =3D
> "809ab073159c9ab6686c2fea5749b0702e0909f7"
> > +SRCREV_babblesim_ext_2G4_device_burst_interferer =3D
> "5b5339351d6e6a2368c686c734dc8b2fc65698fc"
> > +SRCREV_babblesim_ext_2G4_device_WLAN_actmod =3D
> "9cb6d8e72695f6b785e57443f0629a18069d6ce4"
> > +SRCREV_babblesim_ext_2G4_device_playback =3D
> "85c645929cf1ce995d8537107d9dcbd12ed64036"
> > +SRCREV_babblesim_ext_libCryptov1 =3D
> "eed6d7038e839153e340bd333bc43541cb90ba64"
> > +SRCREV_canopennode =3D "dec12fa3f0d790cafa8414a4c2930ea71ab72ffd"
> > +SRCREV_cmsis =3D "5a00331455dd74e31e80efa383a489faea0590e3"
> > +SRCREV_cmsis-dsp =3D "ff7b5fd1ea5f094665c090c343ec44e74dc0b193"
> > +SRCREV_cmsis-nn =3D "0c8669d81381ccf3b1a01d699f3b68b50134a99f"
> > +SRCREV_edtt =3D "64e5105ad82390164fb73fc654be3f73a608209a"
> > +SRCREV_fatfs =3D "427159bf95ea49b7680facffaa29ad506b42709b"
> > +SRCREV_hal_altera =3D "0d225ddd314379b32355a00fb669eacf911e750d"
> > +SRCREV_hal_ambiq =3D "0a7c99325aa73a1ef777501da91c2c6608661e56"
> > +SRCREV_hal_atmel =3D "5ab43007eda3f380c125f957f03638d2e8d1144d"
> > +SRCREV_hal_espressif =3D "31fc5758f3507f8f0af00b1dea1a0df7af99bfc0"
> > +SRCREV_hal_ethos_u =3D "90ada2ea5681b2a2722a10d2898eac34c2510791"
> > +SRCREV_hal_gigadevice =3D
> "2994b7dde8b0b0fa9b9c0ccb13474b6a486cddc3"
> > +SRCREV_hal_infineon =3D "815e84a5150f95627201f192779a0180d5052de7"
> > +SRCREV_hal_intel =3D "b3b43d4e3da7ba483611bbbea7ef8af92c69df31"
> > +SRCREV_hal_microchip =3D
> "5d079f1683a00b801373bbbbf5d181d4e33b30d5"
> > +SRCREV_hal_nordic =3D "d054a315eb888ba70e09e5f6decd4097b0276d1f"
> > +SRCREV_hal_nuvoton =3D "3e0a4c4d3328b2f72b164219add19d5308b53cb5"
> > +SRCREV_hal_nxp =3D "ad142f5612d927e29b1f9606e8edade871b8a526"
> > +SRCREV_hal_openisa =3D "d1e61c0c654d8ca9e73d27fca3a7eb3b7881cb6a"
> > +SRCREV_hal_quicklogic =3D "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0"
> > +SRCREV_hal_renesas =3D "a6cf2af9140e014fbbc48d2b6deb802231dd369f"
> > +SRCREV_hal_rpi_pico =3D "fba7162cc7bee06d0149622bbcaac4e41062d368"
> > +SRCREV_hal_silabs =3D "d191d981c4eb20c0c7445a4061fcdbcfa686113a"
> > +SRCREV_hal_st =3D "fb8e79d1a261fd02aadff7c142729f1954163cf3"
> > +SRCREV_hal_stm32 =3D "89ef0a3383edebf661073073bcdf6e2836fe90ee"
> > +SRCREV_hal_telink =3D "38573af589173259801ae6c2b34b7d4c9e626746"
> > +SRCREV_hal_ti =3D "b85f86e51fc4d47c4c383d320d64d52d4d371ae4"
> > +SRCREV_hal_wurthelektronik =3D
> "24ca9873c3d608fad1fea0431836bc8f144c132e"
> > +SRCREV_hal_xtensa =3D "e6da34fc07dfe96161ab8743f5dbeb6e6307ab93"
> > +SRCREV_libmetal =3D "b91611a6f47dd29fb24c46e5621e797557f80ec6"
> > +SRCREV_liblc3 =3D "448f3de31f49a838988a162ef1e23a89ddf2d2ed"
> > +SRCREV_littlefs =3D "ca583fd297ceb48bced3c2548600dc615d67af24"
> > +SRCREV_loramac-node =3D "842413c5fb98707eb5f26e619e8e792453877897"
> > +SRCREV_lvgl =3D "8a6a2d1d29d17d1e4bdc94c243c146a39d635fdd"
> > +SRCREV_mbedtls =3D "c38dc78d9a8dcbe43b898cc1171ab33ba3e6fc26"
> > +SRCREV_mcuboot =3D "13767d0b72eb14ce42eb8aad1e5a133ef66afc54"
> > +SRCREV_mipi-sys-t =3D "a819419603a2dfcb47f7f39092e1bc112e45d1ef"
> > +SRCREV_net-tools =3D "d68ee9d17648a1bb3729c2023abfcb735dfe92fa"
> > +SRCREV_nrf_hw_models =3D
> "f4595802d32d103718bf50b3d390b7a450895843"
> > +SRCREV_open-amp =3D "42b7c577714b8f22ce82a901e19c1814af4609a8"
> > +SRCREV_openthread =3D "d62167ee34b091e7025c9ec2820aae71e17a3944"
> > +SRCREV_percepio =3D "a3728efccc47dd372f40e6313589ca4c5cc7d5e9"
> > +SRCREV_picolibc =3D "d07c38ff051386f8e09a143ea0a6c1d6d66dd1d8"
> > +SRCREV_segger =3D "9d0191285956cef43daf411edc2f1a7788346def"
> > +SRCREV_tinycrypt =3D "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
> > +SRCREV_trusted-firmware-m =3D
> "b168d92c7ed3c77c94d7ce3362bdde5dbffe8424"
> > +SRCREV_trusted-firmware-a =3D
> "421dc050278287839f5c70019bd6aec617f2bbdb"
> > +SRCREV_uoscore-uedhoc =3D
> "5fe2cb613bd7e4590bd1b00c2adf181ac0229379"
> > +SRCREV_zcbor =3D "67fd8bb88d3136738661fa8bb5f9989103f4599e"
> > +
> > +SRC_URI_ZEPHYR ?=3D "git://github.com/zephyrproject-
> rtos/zephyr.git;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_ACPICA ?=3D "git://github.com/zephyrproject-
> rtos/acpica;protocol=3Dhttps"
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
> > +SRC_URI_ZEPHYR_CMSIS ?=3D "git://github.com/zephyrproject-
> rtos/cmsis;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_CMSIS_DSP ?=3D "git://github.com/zephyrproject-
> rtos/cmsis-dsp;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_CMSIS_NN ?=3D "git://github.com/zephyrproject-
> rtos/cmsis-nn;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_EDTT ?=3D "git://github.com/zephyrproject-
> rtos/edtt;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_FATFS ?=3D "git://github.com/zephyrproject-
> rtos/fatfs;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_ALTERA ?=3D "git://github.com/zephyrproject-
> rtos/hal_altera;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_HAL_AMBIQ ?=3D "git://github.com/zephyrproject-
> rtos/hal_ambiq;protocol=3Dhttps"
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
> > +SRC_URI_ZEPHYR_HAL_INTEL ?=3D "git://github.com/zephyrproject-
> rtos/hal_intel;protocol=3Dhttps"
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
> > +SRC_URI_ZEPHYR_MBEDTLS ?=3D "git://github.com/zephyrproject-
> rtos/mbedtls;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_MCUBOOT ?=3D "git://github.com/zephyrproject-
> rtos/mcuboot;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_MIPI_SYS_T ?=3D "git://github.com/zephyrproject-
> rtos/mipi-sys-t;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_NET_TOOLS ?=3D "git://github.com/zephyrproject-
> rtos/net-tools;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_NRF_HW_MODELS ?=3D
> "git://github.com/zephyrproject-rtos/nrf_hw_models;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_OPEN_AMP ?=3D "git://github.com/zephyrproject-
> rtos/open-amp;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_OPENTHREAD ?=3D "git://github.com/zephyrproject-
> rtos/openthread;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_PERCEPIO ?=3D "git://github.com/zephyrproject-
> rtos/percepio;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_PICOLIBC ?=3D "git://github.com/zephyrproject-
> rtos/picolibc;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_SEGGER ?=3D "git://github.com/zephyrproject-
> rtos/segger;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_TINYCRYPT ?=3D "git://github.com/zephyrproject-
> rtos/tinycrypt;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M ?=3D
> "git://github.com/zephyrproject-rtos/trusted-firmware-m;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_A ?=3D
> "git://github.com/zephyrproject-rtos/trusted-firmware-a;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_UOSCORE_UEDHOC ?=3D
> "git://github.com/zephyrproject-rtos/uoscore-uedhoc;protocol=3Dhttps"
> > +SRC_URI_ZEPHYR_ZCBOR ?=3D "git://github.com/zephyrproject-
> rtos/zcbor;protocol=3Dhttps"
> > +
> > +SRC_URI_PATCHES ?=3D "\
> > +
> > +file://0001-3.5-x86-fix-efi-binary-generation-issue-in-cross-
> compila.patch;patchdir=3Dzephyr \ "
> > +
> > +SRC_URI =3D "\
> > +
> ${SRC_URI_ZEPHYR};branch=3D${ZEPHYR_BRANCH};name=3Ddefault;destsuffix=3D
> git/zephyr \
> > +
> ${SRC_URI_ZEPHYR_ACPICA};name=3Dacpica;nobranch=3D1;destsuffix=3Dgit/modu
> les/lib/acpica \
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
> ${SRC_URI_ZEPHYR_CMSIS};name=3Dcmsis;nobranch=3D1;destsuffix=3Dgit/module
> s/hal/cmsis \
> > +    ${SRC_URI_ZEPHYR_CMSIS_DSP};name=3Dcmsis-
> dsp;nobranch=3D1;destsuffix=3Dgit/modules/lib/cmsis-dsp \
> > +    ${SRC_URI_ZEPHYR_CMSIS_NN};name=3Dcmsis-
> nn;nobranch=3D1;destsuffix=3Dgit/modules/lib/cmsis-nn \
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
> ${SRC_URI_ZEPHYR_HAL_AMBIQ};name=3Dhal_ambiq;nobranch=3D1;destsuffix=3D
> git/modules/hal/ambiq \
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
> ${SRC_URI_ZEPHYR_HAL_INTEL};name=3Dhal_intel;nobranch=3D1;destsuffix=3Dgi=
t/
> modules/hal/intel \
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
> ${SRC_URI_ZEPHYR_MBEDTLS};name=3Dmbedtls;nobranch=3D1;destsuffix=3Dgit/m
> odules/crypto/mbedtls \
> > +
> ${SRC_URI_ZEPHYR_MCUBOOT};name=3Dmcuboot;nobranch=3D1;destsuffix=3Dgit
> /bootloader/mcuboot \
> > +    ${SRC_URI_ZEPHYR_MIPI_SYS_T};name=3Dmipi-sys-
> t;nobranch=3D1;destsuffix=3Dgit/modules/debug/mipi-sys-t \
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
> ${SRC_URI_ZEPHYR_PERCEPIO};name=3Dpercepio;nobranch=3D1;destsuffix=3Dgit/
> modules/debug/percepio \
> > +
> ${SRC_URI_ZEPHYR_PICOLIBC};name=3Dpicolibc;nobranch=3D1;destsuffix=3Dgit/=
m
> odules/lib/picolibc \
> > +
> ${SRC_URI_ZEPHYR_SEGGER};name=3Dsegger;nobranch=3D1;destsuffix=3Dgit/mod
> ules/debug/segger \
> > +
> ${SRC_URI_ZEPHYR_TINYCRYPT};name=3Dtinycrypt;nobranch=3D1;destsuffix=3Dgi=
t/
> modules/crypto/tinycrypt \
> > +    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M};name=3Dtrusted-
> firmware-m;nobranch=3D1;destsuffix=3Dgit/modules/tee/tf-m/trusted-
> firmware-m \
> > +    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_A};name=3Dtrusted-firmware-
> a;nobranch=3D1;destsuffix=3Dgit/modules/tee/tf-a/trusted-firmware-a \
> > +    ${SRC_URI_ZEPHYR_UOSCORE_UEDHOC};name=3Duoscore-
> uedhoc;nobranch=3D1;destsuffix=3Dgit/modules/lib/uoscore-uedhoc \
> > +
> ${SRC_URI_ZEPHYR_ZCBOR};name=3Dzcbor;nobranch=3D1;destsuffix=3Dgit/modul
> es/lib/zcbor \
> > +    ${SRC_URI_PATCHES} \
> > +"
> > +
> > +ZEPHYR_MODULES =3D "\
> > +${S}/modules/lib/acpica\;\
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
> > +${S}/modules/hal/cmsis\;\
> > +${S}/modules/lib/cmsis-dsp\;\
> > +${S}/modules/lib/cmsis-nn\;\
> > +${S}/tools/edtt\;\
> > +${S}/modules/fs/fatfs\;\
> > +${S}/modules/hal/altera\;\
> > +${S}/modules/hal/ambiq\;\
> > +${S}/modules/hal/atmel\;\
> > +${S}/modules/hal/espressif\;\
> > +${S}/modules/hal/ethos_u\;\
> > +${S}/modules/hal/gigadevice\;\
> > +${S}/modules/hal/infineon\;\
> > +${S}/modules/hal/intel\;\
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
> > +${S}/modules/crypto/mbedtls\;\
> > +${S}/bootloader/mcuboot\;\
> > +${S}/modules/debug/mipi-sys-t\;\
> > +${S}/tools/net-tools\;\
> > +${S}/modules/bsim_hw_models/nrf_hw_models\;\
> > +${S}/modules/lib/open-amp\;\
> > +${S}/modules/lib/openthread\;\
> > +${S}/modules/debug/percepio\;\
> > +${S}/modules/lib/picolibc\;\
> > +${S}/modules/debug/segger\;\
> > +${S}/modules/crypto/tinycrypt\;\
> > +${S}/modules/tee/tf-m/trusted-firmware-m\;\
> > +${S}/modules/tee/tf-a/trusted-firmware-a\;\
> > +${S}/modules/lib/uoscore-uedhoc\;\
> > +${S}/modules/lib/zcbor\;\
> > +"
> > +
> > +ZEPHYR_BRANCH =3D "v3.5-branch"
> > +PV =3D "3.5.0+git${SRCPV}"
> > diff --git
> > a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > index b6cd24c..84b567f 100644
> > ---
> > a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.
> > +++ inc
> > @@ -12,5 +12,5 @@ FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
> >  S =3D "${WORKDIR}/git"
> >
> >  # Default to a stable version
> > -PREFERRED_VERSION_zephyr-kernel ??=3D "3.4.0"
> > +PREFERRED_VERSION_zephyr-kernel ??=3D "3.5.0"
> >  require
> > recipes-kernel/zephyr-kernel/zephyr-kernel-src-
> ${PREFERRED_VERSION_zep
> > hyr-kernel}.inc
> > --
> > 2.34.1
> >
> >

