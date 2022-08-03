Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D84CBC00140
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 03:17:00 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web12.4463.1659496617611543420
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 20:16:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=eNQRiwFp;
 spf=pass (domain: intel.com, ip: 134.134.136.24,
 mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1659496617; x=1691032617;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=r+DGM4GFor/eXqAxjYuAMp33CtsCCM6pz8ufFOqUa44=;
  b=eNQRiwFpMo4djRzNqAFN8mgXJ5JU4N3Bf9DkRNnvWOKFwmOpJpauZhTC
   +zqC2t4OfUp8xK+mnWvSI4+LHf0pG0mjZ+7JUos5zPZmf4IMdCaUGRsTT
   R2tIIyuWdKxseuxXaA1U1DhNNemiZS8Meo43vsFSMfMdVFGU4Z6IKokH7
   HHcRI/I0kpQg1lVKp5toqnXN9Loy696CHA+J5HtAMPLlo0loFF6yP3xh6
   zCPknlfc451rUKemRwWn7H14/TsFy5+Sxw0Rq4HmW+hOTgRFfAeXKXx1a
   y25qiSPtx+9/ywneZMqNEQuEeAUi+b+iHmRN/H1h20UKx5mE+C3fQGbme
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="290344568"
X-IronPort-AV: E=Sophos;i="5.93,212,1654585200";
   d="scan'208";a="290344568"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 20:16:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,212,1654585200";
   d="scan'208";a="602667298"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by orsmga002.jf.intel.com with ESMTP; 02 Aug 2022 20:16:56 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 20:16:55 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 20:16:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 20:16:55 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 20:16:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AsYNdURQYkiM+Lzry/iVLHVVX/u0RjKnTtS3pr+WFr2GMFJpS0eC+dyVUcPqJzv8GefK+gMP3m60PO4riN39AFxID2RsEFu3EIqLAAETeU8rzSmIl+5cAAxfsmth0xZQtyEe39W1e/Y8JUNlXVrtm1r6w9y7poimtUm/9ULizQeJe1j4T2ihciLF83Za6yS20lBUYbELIS7enh+X0elrTIh8xfo77VoW+chVUiz1UhBeL0R4N1Xq8YhsEKkRiCh/Br0TTLTp8vbR8En5RHT+ef75j1yvrzCbsD6QI2iDLHahNL2kFcK6UyWcfSrypKaOh0yLgRzpYxntkOsnmXCKXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rY5myzb76nLEAO9U6HLmTwAWWDGGKX5z91jtggDh+Fk=;
 b=PdILH8PQ7D19JDcpKlwy3SRJlPxZG8QNDBI5f3LUPmImCVUqU8gH5lyh8kla1AZGGnUWxuFPb+ostgVZPjDpoEcqGdCN4fgx7idI+Prxczy7PHZ60sqzfnGIFFf7Sci3o8lZZQTgXNMnuVcy2jLotTBH6fQ1msYzRyHh060m3czNf/eXW1wsSUE+cOlLlprp5JOe8jOQ1Qd3jmoXzQYqOwNtIY94EAMN++0VZ/AV8FHl9sx6Rc3cdnLDrfooerBerd/kKdD9dyNRCrXMVodybb+/DeENBvCnwbMvwTZAqcGYN+TVvOz9FvUuI8P6E95h1LScLWB0O042p9bvWp0Lzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by BN8PR11MB3555.namprd11.prod.outlook.com (2603:10b6:408:82::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.14; Wed, 3 Aug
 2022 03:16:48 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::7c4c:c89c:eb63:4495]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::7c4c:c89c:eb63:4495%5]) with mapi id 15.20.5482.016; Wed, 3 Aug 2022
 03:16:47 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Jon Mason <jon.mason@arm.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [meta-zephyr][PATCH kirkstone 0/7] Series to add Gitlab
 CI to kirkstone
Thread-Topic: [yocto] [meta-zephyr][PATCH kirkstone 0/7] Series to add Gitlab
 CI to kirkstone
Thread-Index: AQHYpo99rfqAuB7n80WSR+GvQpe8Jq2cgJWA
Date: Wed, 3 Aug 2022 03:16:47 +0000
Message-ID: 
 <CO1PR11MB50268854710D6F4D36D9CC24C49C9@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20220802155053.31434-1-jon.mason@arm.com>
In-Reply-To: <20220802155053.31434-1-jon.mason@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c777fd67-695f-4ef1-10cc-08da74fe99dc
x-ms-traffictypediagnostic: BN8PR11MB3555:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 IME0DeTpBJWLKSZwBqu+ucgopY9lNlUEr5u+2s0FeuLxXINLidusUH3eRAutbi6+EJy2hZdctSBRd6uDeH6iaS/YqDOXzzgWELS1aUEmp7d/A01cjAy0Kn3nySClE8a8wIcLO4BuCnUvZPn8qpNhzwF+5t+Tl2KGtniD0s3Y0JfDLUnNYl6LJAwO9gUMHANpRnt/5fjy/GV0Ih1XPxRq+e261EU/7bdKIo/wqoN0XiyWHzZabehJXQIoGlG1y6KxwW6AGhtObmXTQCIg0ZZ3KEp8JVFHeMzHinuQYIJTXpQ9C14c/sVX00GF3OK3IL3fFyBWgBOEosjecNYGMYlkhsUOo+d1Xw0+18Lm/vhWgG5Ic7ezBcrZbkPaRrvJALHgGFE0EnULdef5eOjcYXaDxK3GcI/CoZ1ujcs9+mDpB4c8a/yK16mYm++gPTy8XFRtwo+FKjb9gFo0taQMnQFLjo8l0PlqQ9eNvkj9hjmcXnFERxKQFnczTG8VIdLDNT3dE26BStIxNJX615XPz+Q+BEGfcngCEAhJmH08ZuX5eINMdSGiaiQ8hAAFyH3cPlCV6FAU+kjU34+u1XNnZprWvptfAzh+31oZeWbCnN3694YGveXLUi2iI0c71qaHpdOs+IoIKOhSO0w4S3C8XbiFJ5AR/C/6PLvAP5hIGr9UjyUkL5iTOqVLOcvd+VHakynHD7DE+aSpqnYprcv+T7mHZ9BR3C40bmNNIOMmnJOqN/lvjJ+pNB79Jg6J/CVP4DuXOlol/xrInZX29yLDyh659HEKkBK2dwWnFOMImGh+QCD00pK/aoDIZXYRvARN+R9Z1uPCJby/1BRg0FzlOkrfab3TO8r6VI97EtgerxQEi9iZjjvfJ+xcqRfjpemJfRQ5
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(136003)(346002)(396003)(376002)(366004)(39860400002)(38100700002)(66946007)(52536014)(33656002)(966005)(71200400001)(7696005)(9686003)(26005)(53546011)(82960400001)(6506007)(66446008)(41300700001)(478600001)(66556008)(66476007)(5660300002)(64756008)(8676002)(2906002)(76116006)(8936002)(86362001)(83380400001)(122000001)(38070700005)(316002)(110136005)(186003)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?lU4JHRZaX4ixUP8dirXD00H0TBZhjJgvzvz0AKwpNTNQmZxhHya8re8fS4Sh?=
 =?us-ascii?Q?dQoslAMXv4J7uVKFFJQ68JQVwcAjlkZNm5rm0j93gKOv4hHIzpLO9wrmq2Ls?=
 =?us-ascii?Q?3qWv3o1nuarraXSu5CJ3etKin8L2bAgxdqD64Wt+6NgMXh6recjZMf6kx+GB?=
 =?us-ascii?Q?g98UdCcCZmlPvsC+f9SFPG066zx4q77/akd0oVq9xwRnp74UfljcLMX6WbuG?=
 =?us-ascii?Q?njA43gPGYRiwB23tu4VsG+r8Yi3knP9JHKBAT8Uml3j1RVAFj7wVTB9W3aOT?=
 =?us-ascii?Q?oX/mKxrJbv976vstQmdVcuWMSA8uJuAxZnP01eLfJ4VLSOCMopu/QFd5/YN+?=
 =?us-ascii?Q?HNwkmPp4SkgGl+XFORQSW+yTFSya0XJiz3NAHDj5W1qzcX0Q6zwReAYqt88i?=
 =?us-ascii?Q?wt7uOPlwFiH39U5DeTBd88WBqhOdvd/neHgp9mehGqU//+Gp9+uPDGXUPoYa?=
 =?us-ascii?Q?B/qYh5kT6FQF2QzemrGojepj3VJ0sOBzvdLbuQ/DjXrNl3KITtrRpvUoAW6s?=
 =?us-ascii?Q?5ARnfiGmNkuG2BD0PCyoKI3YUNCFbvjWLnZrn6d7jH4rV2Sz0TALcmpxcLyC?=
 =?us-ascii?Q?Fbxbnsy9HQSz8i17erXJLgyVU4/pvF0/yOuIVabQ5S7/0n0hqLOR6VD81RnG?=
 =?us-ascii?Q?Qhq1KABikzD7Zmds83jWDgoiUyUi2adrekJnkw1qSYY1dVtZMUv5zlvpaRdp?=
 =?us-ascii?Q?u67V0K7r2YTPsxeXmwPSiOwJzwxn47aAETuOLLEVy9utgSOeg6coSvLMPbbs?=
 =?us-ascii?Q?CB1QqzZIKN7fH5R1XW8JXrP9h7IAySUr5ZA4flvcbazn2HUDohXbtuhQZfpH?=
 =?us-ascii?Q?LlG52tFoFQv1YgvMJWi77fYO740qHf0OvYUvc2Rutj21tiDfH1gHtYH46dEf?=
 =?us-ascii?Q?0BpgoPGuNvWzimAHb+YXvOOuCqdu9MdJKcalyzv1xqeBW7EPQjtputynvn/n?=
 =?us-ascii?Q?X55kzhDHlCJrAIz2bupKqU6i5Ca55Zq7Xa47+QMoP6c9f36jJ1PS9iixy6r2?=
 =?us-ascii?Q?UP00zrqoDncc1EEGB4ib5Zoop2e8IjD8Ynep9qprkLsVzEcQMhxAk0gXd9/s?=
 =?us-ascii?Q?wMhLHk2GF6W8aVB3sDuZNcA2YWwTEGwWbk3YvttGKYlvA3/W9tZ3XnAnpcci?=
 =?us-ascii?Q?z5fYCjd1l73YrnhKYjoVv7dizxtJtkQo+YPPVmCAWGOKS5JFMOysVdGMyuh7?=
 =?us-ascii?Q?Y2yGZG/qWLtsZSEKgryA/xZsWaWTR6luPNCmD+4iUCo2k70Fhvd/zkIaggtn?=
 =?us-ascii?Q?1bONEXAD8+Fv1TsPrg278tQzHCy/CzkxXDBBWE1W2OVxSjcrNPbdrX0mBt0s?=
 =?us-ascii?Q?lXIsqYAT1DAYgVth5Jkiita86mIjmB4fpxI2TEmsHqzYqlBt1i1N8GbyJf2U?=
 =?us-ascii?Q?jWZBCvVEN2ao7ScOM/HBnrngQjfo548BfkYPduFde2ydiI6DPjOeiX1HjJOw?=
 =?us-ascii?Q?/kAsO+Q5LSsoCnIqg8FEccNhvkFxAWzjawLlM8774afafGkLNUvtb140jh/j?=
 =?us-ascii?Q?ga5K2BBMo1eEOHn25AVyRI51TTBaat7BKSXlLrc9nsTL3jLd12DbHquLbR+t?=
 =?us-ascii?Q?fB20ZS4/t3fUjeZtN6sMAKJHxSwISlEAc2bo1AWfsMQ8Xe1BZqnq2dM5xht5?=
 =?us-ascii?Q?BQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c777fd67-695f-4ef1-10cc-08da74fe99dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2022 03:16:47.7573
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 zk1f54M/yC7YMdVu+sar6bfymXXZfigsXzUtwTSTDT6NXQ/oJHgN+avmn43H1E6lelpxzSF/E9UAeYR4Im6s/21iO17DwkQoss3ccwqcWsc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3555
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 03:17:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57756

My local daily builds also run on master. I triggered a kirkstone build tod=
ay, it builds successfully for me. Is it failing for specific machine ?

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Jon Mason
> Sent: Tuesday, August 2, 2022 11:51 PM
> To: yocto@lists.yoctoproject.org
> Subject: [yocto] [meta-zephyr][PATCH kirkstone 0/7] Series to add Gitlab =
CI
> to kirkstone
>=20
> Kirkstone was broken for meta-zephyr for weeks, but no one noticed
> because Gitlab CI is only running on master.  Backport the relevant patch=
es
> from master so this can be more easily detected, and I'll run a nightly
> kirkstone to my personal Gitlab CI setup (which can be monitored at
> https://gitlab.com/jonmason00/meta-zephyr/-/pipelines).
>=20
> NOTE: I was conflicted between squashing the uniquely CI patches into a
> single one to hide some of the bug fixesin he originals, versus pulling t=
hem
> back to match what was in master.  I did the latter, but the former might=
 be
> more acceptable.
>=20
> CI run for this series can be seen at https://gitlab.com/jonmason00/meta-
> zephyr/-/pipelines/602974431
>=20
> Thanks,
> Jon
>=20
> --
>=20
> Jon Mason (5):
>   qemu-nios2: use glibc
>   CI: add Gitlab CI support
>   CI: use path to avoid warning
>   CI: move stm32mp157c-dk2 to be alphabetical
>   CI: add more targets
>=20
> Peter Hoyes (2):
>   zephyrtest: Enable use of TESTIMAGE_AUTO
>   CI: Use TESTIMAGE_AUTO
>=20
>  .gitlab-ci.yml                               | 90 ++++++++++++++++++++
>  ci/96b-avenger96.yml                         |  6 ++
>  ci/96b-nitrogen.yml                          | 20 +++++
>  ci/arduino-nano-33-ble.yml                   | 21 +++++
>  ci/base.yml                                  | 38 +++++++++
>  ci/check-machine-coverage                    | 26 ++++++
>  ci/check-warnings                            | 19 +++++
>  ci/intel-x86-64.yml                          |  6 ++
>  ci/jobs-to-kas                               | 19 +++++
>  ci/logging.yml                               | 13 +++
>  ci/meta-openembedded.yml                     | 11 +++
>  ci/nrf52840dk-nrf52840.yml                   | 20 +++++
>  ci/qemu-cortex-m3.yml                        | 12 +++
>  ci/qemu-nios2.yml                            | 10 +++
>  ci/qemu-x86.yml                              | 10 +++
>  ci/stm32mp157c-dk2.yml                       | 13 +++
>  ci/testimage.yml                             |  9 ++
>  ci/update-repos                              | 40 +++++++++
>  meta-zephyr-bsp/conf/machine/qemu-nios2.conf |  2 +  meta-zephyr-
> core/classes/zephyrtest.bbclass  |  2 +-
>  meta-zephyr-core/conf/distro/zephyr.conf     |  2 +-
>  21 files changed, 387 insertions(+), 2 deletions(-)  create mode 100644
> .gitlab-ci.yml  create mode 100644 ci/96b-avenger96.yml  create mode 1006=
44
> ci/96b-nitrogen.yml  create mode 100644 ci/arduino-nano-33-ble.yml  creat=
e
> mode 100644 ci/base.yml  create mode 100755 ci/check-machine-coverage
> create mode 100755 ci/check-warnings  create mode 100644 ci/intel-x86-
> 64.yml  create mode 100755 ci/jobs-to-kas  create mode 100644
> ci/logging.yml  create mode 100644 ci/meta-openembedded.yml  create
> mode 100644 ci/nrf52840dk-nrf52840.yml  create mode 100644 ci/qemu-
> cortex-m3.yml  create mode 100644 ci/qemu-nios2.yml  create mode 100644
> ci/qemu-x86.yml  create mode 100644 ci/stm32mp157c-dk2.yml  create
> mode 100644 ci/testimage.yml  create mode 100755 ci/update-repos
>=20
> --
> 2.17.1


