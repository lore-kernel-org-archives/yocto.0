Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14690C32771
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 08:49:51 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web12.4162.1663750183780999320
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 01:49:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=lXmOa0oO;
 spf=pass (domain: intel.com, ip: 134.134.136.100,
 mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663750183; x=1695286183;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=6R5nEEdnKXOQy2ffEr8ObUhwa06ESW5vKOkEKSr0QpY=;
  b=lXmOa0oOmTdxhFiUcjIDUy3X8m1/m4q2400HVU+TLL+FaiQH9Yo8pKyC
   aA2n4HtRlFpRbGde6XbsjId/PfkmzQldpXscyqrlY2T8lJdH5KqOYNSSK
   fVi7P8lVqGNTTqu7GZ2jLTPMMZTxpbfbjYPqAkmQsAPf5GUJrZ8u2OGtS
   gzSSfQgkVFGZgZRWCctMW1+xfXjutuj9b05AaK7XC5vplX4G6swMQ/Q0R
   qI1K++pWvq2PypghzIb9HS8agvh3Ht0cafNVwRZUSkHS/3z5zEKkxEZ1z
   camLIUYuJqoyUiUmrLRvs90NzgouAkzVL3NvA0cD0Ox/hcL5tuXdX1Dje
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="363918688"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200";
   d="scan'208";a="363918688"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 01:49:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200";
   d="scan'208";a="649966204"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by orsmga008.jf.intel.com with ESMTP; 21 Sep 2022 01:49:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 01:49:42 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 01:49:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 01:49:42 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 01:49:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K9dwB7u8cnxR67GZP6yHrCPye1zLQTz5x8LlpC8RPnRyVWQ3AAf9CJjVWdHnpMn1fMPaOyyidXLXqU2bwY0gZaNq66rEUZu7TmzWCO3/iotBEq02R8HqZEb2lnKuyAaKITqk6enQg/MxkFMCtK5zxa56IE4fQ4aSxwfVDJD4evY5msp+OnRcDxja/zueqvqAAJKkVhKmRzg2Soiu7cmYKyVXLYeAgkrrCbkiWhlHjkdOOUEeHoc8bIz+Mnm++gG6qvd/OAi3VcWexi4ejEtPOoxUxW1VkNlpLYr0ZOVk9CK4FcxrqIc83LwTH8tbDcAVDeEY+43f1AMAe0IiymleDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OIwBLfQrKu30yaCtc8QuIyKw8pp8ahxhaf7/zQ42Jqg=;
 b=iAsdp+yKsald0brrsRuGAW5M9wSE1dUVCk6vqkqYSIOpz1ECFzrkTnA19mEa3GvQyU5yhldzvQ5aHhfBx1THAa7ABJ7iOxZVU48noOo5KltVUpZKgfeOonMT8noyupT0UvOiBIUMBiRpv0lMBvFWCE1M+J17014/k9iAya5+vN+7lQLshXb0QEpWbvzFTb7AiPgAjasVbJAdobygYKeolsiiJGVFQxVKetf7XcBgxhVSfzclLCioTsbzT91JOBZH9nYB3N1msXxkuHfLhWr9bj7SGEUB2XzaGg+f0yh10ia6OFr1TSMKbvR/wgM1yk/9ahL8yOPTBaA9sS+lsgm8KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by CH0PR11MB5300.namprd11.prod.outlook.com (2603:10b6:610:bf::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Wed, 21 Sep
 2022 08:49:40 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::dd5c:ca02:c00f:9006]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::dd5c:ca02:c00f:9006%7]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 08:49:40 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Jon Mason <jdmason@kudzu.us>, Peter Hoyes <peter.hoyes@arm.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"diego.sueiro@arm.com" <diego.sueiro@arm.com>
Subject: RE: [yocto] [meta-zephyr][PATCH 0/4] Add script for version upgrades
Thread-Topic: [yocto] [meta-zephyr][PATCH 0/4] Add script for version upgrades
Thread-Index: AQHYyatFcHbLDQBbK02radIy6ulKzq3o7r4AgACr/VA=
Date: Wed, 21 Sep 2022 08:49:40 +0000
Message-ID: 
 <CO1PR11MB5026D93334C09DC7A6C39599C44F9@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20220916090318.1293922-1-peter.hoyes@arm.com>
 <Yyo/yOgwvrsoxGPf@kudzu.us>
In-Reply-To: <Yyo/yOgwvrsoxGPf@kudzu.us>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5026:EE_|CH0PR11MB5300:EE_
x-ms-office365-filtering-correlation-id: 2f7ad114-2fec-409e-9207-08da9bae389c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 qGrzy6MzpEFTFBC96VmRzZvS3MAEDZtiSuKnsu09zxpiyK/Q/iDcmixENORX7pUv3hjD6DITHELetNLN3E5WRPMfi79zUh2X/8VyZsJTuQ51LZATb6Kg9SOx8Go2cgEqSazbA7EmUqqTUcJdmNadxR98IfGbPa/s/5ix7Ky0wt3KGwioiEfsGsBtzoAe75NyPBD9Th6rwMxJfS0GAIBqYFhjs+wYMD3vHKH537L3nZ7/b68Lg3HifP917Nlo/qhonSGPEfCiGlKJvX+fYNpRoq/cvzN5iDYl56FoDiAHHtxGfhpzhf5BBwjqVkHg5FAL+qip56L9pJ1I1h6PJO+EzxX0RL1zCHcq7hWnWVn+0ZtHIZ6+QMpwrXffPkpLXayENLT1Pbp8bCnPg5JkgJrN9GwUIzvOuXlqLFSOuy35lS6/Mdzz5LFmccBNneBWu/tY2ccyBkC7tFDPXWEHrm31e7QaDQ5EmcPR/ooli7/lBs6YFWACEodjCX0A2O0v6SngGE86EVaeZDce+F7W4VCPQ5uOShJR4bv81GXQwCGyZ7invIo7RGfM5MyAxz326Ec50GVPxH+HU/LsWxZfhwXmPISfvuCgZigEqKL9x9W+eU39MXrrDHNQPSiM0392bxYb4sIS/1YW597suvIT1z5Pdcod29JE77XwmZ4hw5R02Qnl5tWaYiH+GndXOj5c9iLAObKsUYI2xRpzLQKaHGiY4Kp3gGRlWRhs6fS96E4ZYBi0ztKWGHfq8fZpyxvGeNe6eRUanBmKSffRQUwUX8oivQRrbPApo8XmzKmsZnE1bnE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(39860400002)(346002)(366004)(136003)(376002)(451199015)(33656002)(110136005)(54906003)(316002)(86362001)(38070700005)(38100700002)(122000001)(82960400001)(83380400001)(71200400001)(7696005)(6506007)(966005)(478600001)(53546011)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(4326008)(9686003)(26005)(186003)(41300700001)(52536014)(8936002)(64756008)(5660300002)(2906002)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?HkGf/0+8q2J8/5wiv/kx2FQoEOjhY0AQSKY0f8NcMiZneo1svM+TmzQjfzUb?=
 =?us-ascii?Q?QCNQqb523CVZaukAhziP4et1JMCDfSJL9EunuC9Pow5+s+4d8zZMs+L9vytk?=
 =?us-ascii?Q?XRrlIC5urQDGQCuW5UFL+utS71u154tgTmXcRvx1C9kgdVBslh2OmJEIFQUg?=
 =?us-ascii?Q?A31tgPEe9jxPe2973MbztyY9TY7ENTGUTU3wndfpRN6kYvqeK81juo81OuI1?=
 =?us-ascii?Q?YCBYzWqbR2rHYGOhMScniBuaJ8KnU+tUhyy+s5yFm3TkFvpy1IlXCdKbk9Q5?=
 =?us-ascii?Q?Es4JGOfvPPIZJZxjvZX04liGjvbcTBUCrpcR9OyqlVNxEhR8Va5r7TC+N7mU?=
 =?us-ascii?Q?woBg/N0k6AKtwfJGHWgYRiTXPdX2ruoGfyTCRq8Rj/Ok/TBUooqkxKZGVXQO?=
 =?us-ascii?Q?p9W7urL/bcmwfvnR0yp2LYBKpLr2aAopdyK/HkyvmZbvtIuqBJlZ4oI0LV2v?=
 =?us-ascii?Q?ZXUCyvKGO/baZRCivw68xu+8/yY5OX7I76GL1O/vqYsgrmzSGcZyqzvGVcBf?=
 =?us-ascii?Q?a3J0R+ZI7NGE7EbUyk3JzxeDE5MyJmzgTChclipMXeR4PIArWZxWp8cmZyHa?=
 =?us-ascii?Q?IpiMH4n72qobjYMG3a5I4uc5/QBpPjiFCXhTkEJexT/XOtKWolqBhHF4zkRA?=
 =?us-ascii?Q?tExw6xVzwZ0AHUaKle/dnO6K/PdCbm1j+zphMGrQQDvjbi3FHiDohXIQQGum?=
 =?us-ascii?Q?UOLlnVviyn9kHghsjU42elPW6fjoy3GovBqbZpo1vKNV7l3XBGSVFJGbExoh?=
 =?us-ascii?Q?F9SCYLdab0YQDcgOqvQVv8QrDtssgiRNgeRc+GdMZ5gVxCLqtFpCkBRIheZA?=
 =?us-ascii?Q?+MPJx8/sMBvPBZ6Cd3sH7wgrGcH46hHJlp+WrslTMqtM64/8O/mEpGwdHLpL?=
 =?us-ascii?Q?35syQXPLfA26pG9O0HE6n9wg9M028LvSHF8qRIffinLzR5bMDg/IjMxdLKvq?=
 =?us-ascii?Q?XXQ/grxUhiTpve47kOyjoFkmNFFUr2CR5Wjr+t6QfIy7zXxjmgInNlqEBXS2?=
 =?us-ascii?Q?vk2rgaRfZDC65fGzpPHnKfBihqk0BldxZAYpd4ojTDHjXYpeex4760HQAl42?=
 =?us-ascii?Q?wAqHsap+ehD/PdKPwXolDWtzdL/KGdH6btsJ21Dy/31kZffvSl2/9xD6P/di?=
 =?us-ascii?Q?iHYYh843jCc9eS7BVHxmeIYRYBldWCJtEyUNCWpW9Z/Ia02hMdeIPiNAQHr7?=
 =?us-ascii?Q?+NzN8UIZUBy7/32HtsEtZe/yOhLwBuAyRxWuTB9kn4mMIVyot7rDE5PPFBCB?=
 =?us-ascii?Q?LX2MobvrkVQGuhrVHGWkz8gdX11PWokT/4bLsdQMBaStOrs15B+BWkZzVXGk?=
 =?us-ascii?Q?AnnL3K+fnEwv4akNN2TEKXI9azdvjZIx803qsyVGYqHKMR0b5hgA04ZfACLO?=
 =?us-ascii?Q?E2e9u+H2/d95UGlQCvy4V+6rbs9VAWkpnfcAMGov3Jd6y+nGDxNnKr+2IxEb?=
 =?us-ascii?Q?f7EyZuZry/1f8lGxqrJuAe6hjc5ifz59jpOJBSMh0gUO4G9/WncNiDOrXiDB?=
 =?us-ascii?Q?mgUZ69r9ZdWJweBW5ez14qMkdXGAIeCYE4DM7jbvqSncA8lyaqSoEkIq538I?=
 =?us-ascii?Q?GXON32yubsdc2O5bPAdbQteZoroBMhVDT2J16vkhkkLsx9MEEfaZyys6xBpZ?=
 =?us-ascii?Q?Ow=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 2f7ad114-2fec-409e-9207-08da9bae389c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 08:49:40.2433
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 S6zMztWyKDwuEHHlgilU1X7WxPDcM/xs5yKFrQKsMWSZM2zoXpWZ8gxak93qN7yMoK33R7AQ+6vpY73kJ5iqVq2dJEpgVQsQHi2Smi+EfwE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5300
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 08:49:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58113

Thanks Jon. Merged.

Regards,
Naveen

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Jon Mason
> Sent: Wednesday, September 21, 2022 6:34 AM
> To: Peter Hoyes <peter.hoyes@arm.com>
> Cc: yocto@lists.yoctoproject.org; diego.sueiro@arm.com
> Subject: Re: [yocto] [meta-zephyr][PATCH 0/4] Add script for version
> upgrades
>=20
> On Fri, Sep 16, 2022 at 10:03:14AM +0100, Peter Hoyes wrote:
> > From: Peter Hoyes <Peter.Hoyes@arm.com>
> >
> > This patch chain has been developed on top of the 2.7.3 upgrade patch.
> >
> > Add a script, generate-version.py, which can be used to automatically
> > generate configuration for new Zephyr versions. Regenerate
> > configuration for 2.7.3 and 3.1.0 using this script.
> >
> > This script includes a constant version-specific declaration of
> > ZEPHYR_MODULES, so the build-time logic to extract ZEPHYR_MODULES is
> > no longer required. Remove the do_get_zmods task and the West recipe.
> >
> > Peter Hoyes (4):
> >   zephyr-core/scripts: Introduce script to generate new versions
> >   zephyr-core/zephyr-kernel: Migrate to script-driven version files
> >   zephyr-core/classes: Remove West-based logic from zephyr.bbclass
> >   zephyr-core/zephyr-kernel: Update dtc.patch Upstream-Status
>=20
> Series passes CI (on top of the v2.7.3 patch).  See
> https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/645914527
>=20
> Tested-by: Jon Mason <jon.mason@arm.com>
>=20
> >
> >  README.txt                                    |  17 ++
> >  meta-zephyr-core/classes/zephyr.bbclass       |  32 +--
> >  .../recipes-devtools/west/west_0.12.99.bb     |  22 --
> >  ...y-generation-issue-in-cross-compila.patch} |   0
> >  .../zephyr-kernel/files/dtc.patch             |   2 +-
> >  .../zephyr-kernel/zephyr-kernel-src-2.7.3.inc | 202 +++++++++++++---
> > .../zephyr-kernel/zephyr-kernel-src-3.1.0.inc | 220 +++++++++++++++---
> >  .../zephyr-kernel/zephyr-kernel-src.inc       |  43 ----
> >  meta-zephyr-core/scripts/generate-version.py  |  73 ++++++
> >  .../scripts/zephyr-kernel-src.inc.jinja       |  35 +++
> >  10 files changed, 474 insertions(+), 172 deletions(-)  delete mode
> > 100644 meta-zephyr-core/recipes-devtools/west/west_0.12.99.bb
> >  rename
> > meta-zephyr-core/recipes-kernel/zephyr-kernel/files/{0001-x86-fix-efi-
> > binary-generation-issue-in-cross-compila.patch =3D>
> > 0001-2.7-x86-fix-efi-binary-generation-issue-in-cross-compila.patch}
> > (100%)  create mode 100755
> > meta-zephyr-core/scripts/generate-version.py
> >  create mode 100644
> > meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja
> >
> > --
> > 2.25.1
> >
> >

