Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25FE5C433F5
	for <webhook@archiver.kernel.org>; Tue, 11 Oct 2022 08:27:09 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web11.4837.1665476826472151941
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Oct 2022 01:27:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=WHkT3pkT;
 spf=pass (domain: intel.com, ip: 134.134.136.31,
 mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1665476826; x=1697012826;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=fOpK74nwnXlaWBNT/34c/eA4U4JTf+IATRkj4gh7+j8=;
  b=WHkT3pkTFchZuUF0hjM60BHcV8I0qf2W6fxCAN3KRIenCgpdu8+g1y0D
   kFtNJM006PIx2KRR2aRS3EBVFOzyYeV+S2zfLk6gk2xDhm1GeJ48dP1wD
   4c8V/0+wzzLlAKYStUXF/X7OsapVDdxkddzwWB9KgTGfFtQlyX9UWy/Im
   dUZDFgopoi/7WUjuELhNwmDN/yq5hrWEc1NQvL01g5FwxBZXzJwvpWGxl
   vqPmb4cOwiQ25yAB/CtwfpqMDsdPkVfOPbAO5Q3kcxLEcPGpa6U5geyUM
   7Lydh0PNShD7/at+IXcC0aoOlBYy6JVPWugDpGRTsPPxpkdc/GOO8Hi5l
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="366435371"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800";
   d="scan'208";a="366435371"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 01:27:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="768715000"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800";
   d="scan'208";a="768715000"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by fmsmga001.fm.intel.com with ESMTP; 11 Oct 2022 01:27:05 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 01:27:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 11 Oct 2022 01:27:05 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 11 Oct 2022 01:27:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IUh8VwWjyyNcXRXVA5R5phlK8X5HnnvbJwM4fs8rxpLg1mETKpeefHyKEpinejNd2Ksq3m2YDgmc8NUlOdw9rRBMubgIO0Vhoi0F+Qb728xyt+sT2quRBnBEsRWpt/HWYG0nF/sOUmscrC4RamFon5oyE+N8nLVV/4GvjXXtkEQAJmqGhtAOTxWkk0T8BlRjn73YrfV99UmLKsC7T/RYvPob79MDqAvhJdyM1A9EeXk83lSfSWTPSOhoFqWdq+jwQfFYok9mqcKEeyMYE2yRAFuCH19jrSGKJPCWCQ3zvCMPA+2oWCi+jEYgihxOqX8I9zseG93qAh1j+tsusu3GRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rbOGrGW6fAJ0USkRXsucb8n+FrsAk8r/QC28xYKPyNo=;
 b=Qnnz8kAzS91SE9FCgO36bxtla89eYVM6AuG9tCUV2fCS2pxwoDfnsO3zKZPngmWyA9EruPyObbhCGPTNGeNxo6i7Fg3NM4dRHNmsIkutgK3I9fol41q9CmeCz4mXMJhjGcNMEbsaayaAbK1Xcn95KpGi5H4R4BHghek1hpdP4OpaelG2srQeLa5LxKLSCM5o86I943MIYadQO662TpoIOnblsO+VoWHEOSgkkKioszqM6BOJFwrqu9HgqMxBkoaPY4ynUHOHy3JC14hWc4rPR5Hg1/8/zt5MGFv6ZXvo5lp8rJYTUc88lT1mDBcPwyYtil6TqzqVspKSnyTRqohFOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by DM4PR11MB5248.namprd11.prod.outlook.com (2603:10b6:5:38b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Tue, 11 Oct
 2022 08:27:03 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::b49:c23e:60e6:35d1]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::b49:c23e:60e6:35d1%2]) with mapi id 15.20.5709.019; Tue, 11 Oct 2022
 08:27:03 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: "philippe.coval@astrolabe.coop" <philippe.coval@astrolabe.coop>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "philippe.coval.pro+meta-zephyr-lists.yoctoproject.org@gmail.com"
	<philippe.coval.pro+meta-zephyr-lists.yoctoproject.org@gmail.com>, "Philippe
 Coval" <philippe.coval.ext@huawei.com>, Jon Mason <jon.mason@arm.com>
Subject: RE: [yocto] [meta-zephyr][kirkstone][PATCH]
 nrf52840-mdk-usb-dongle.conf: Add new machine from makerdiary
Thread-Topic: [yocto] [meta-zephyr][kirkstone][PATCH]
 nrf52840-mdk-usb-dongle.conf: Add new machine from makerdiary
Thread-Index: AQHY2irEqK6BHwQAuEm+ETiu3Jb9ZK4I4TzQ
Date: Tue, 11 Oct 2022 08:27:03 +0000
Message-ID: 
 <CO1PR11MB5026C234F06F1B1BC03AF5AEC4239@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20221007085637.9376-1-philippe.coval@astrolabe.coop>
In-Reply-To: <20221007085637.9376-1-philippe.coval@astrolabe.coop>
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
x-ms-traffictypediagnostic: CO1PR11MB5026:EE_|DM4PR11MB5248:EE_
x-ms-office365-filtering-correlation-id: 1951ecfc-1769-427c-c3ae-08daab62603d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 SFF60wOYjPG/J5U6JkbP/SM0lZV1J55s8t6hzjsq3OM/yOft6luP/yHARAgjViilBf3YXwgPSv0lFCJAD7Tvf6L3d4ngnR8xz6/gemjYcrmg7hIs1yCmWyHqFC7M2Kb7r8t7ratVhYQ3LcFskbuiPUjsPJpWNPAxfaSVPgI5vVHodYxs3T4d8BwLZOKiim8b27/t355jA+Jnk3QMDVpv1yOlBgPzMrx45JzCQqiBj2wOU5Wlj09momCta4XmNePaem80e0ACASB/m2nGJOWwcs2yfb8KR/CGV5OSLScNbZwZRgHMD1l18lVht/1mIntQV1HIR8bUn6R8YIomUfaw/ZNEAirOZ6NI6wLI+S1I8TFEBKx91Q4dMaQYfzEB2NB5qLeBMNy8F6FhzaoZJg1dnXG4ExCOA1hfkTvuZnllH0xLNH/e+eDCY0T/qz+i3Zr0HcAzZGkbWjcx/6tAA12ikPa7FKhLVm5XQeaPqBEir+PnKYDFb24lRTHOdsbQFDQZmqY+IggS5vz8Sdotr5XdC/VI2p2g3LAXs7GQErSm22rQpBU6/UM3pVzbFTmWyHtMni0e7l7hv+WM//ZfaBGePGIAmoVTj8MD+OQ+y2VQglqa4ORvJFGnk6Altv2a+eF0KXVqdeyXzV0gdwEHmiq1ScvWFXpJt14V8KgcVPXBBsNPJFZyq39LPF4wfeywJNK+Ms1nnjdbbgdghRdOR/rM3c8FH2sdNQD3zacNYMO/nA3jOyAmNmkAQOlx9ifEuFArfdU0hh0Y684SAVG0gDC8rn9rQaTdddk+IyLKasCJBXNIinMKAKy9MQrfuibMKhyJYXTRt5V4v5oVWAswlleuoQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(346002)(136003)(396003)(366004)(39860400002)(451199015)(33656002)(66946007)(66556008)(38100700002)(316002)(54906003)(110136005)(66446008)(66476007)(86362001)(76116006)(52536014)(2906002)(8936002)(64756008)(8676002)(5660300002)(4326008)(41300700001)(186003)(38070700005)(82960400001)(6506007)(71200400001)(7696005)(478600001)(53546011)(55016003)(966005)(122000001)(9686003)(83380400001)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?iyenlLbZgJz3Gbb1mFVotUmrIJZWci6SMd7DHQQQaFRObXH4KbeoZukJfIBy?=
 =?us-ascii?Q?jbcGIqWuT0Hq1PV4DTZDKA0+/uL25us1eRgKPQPmhg5kg729UIstaFl42qSI?=
 =?us-ascii?Q?CtBJmCBb4rcxyhfFHTwoPE7UMBFXwtNes9BdeNZa9hKBbHkXBSLSwZGhg8Jr?=
 =?us-ascii?Q?L9OLIrn6dEKsZDFXYpyi6x8LzW7cc2C92iWFJbkEMfR/s0CE0pqRiEUtg8ug?=
 =?us-ascii?Q?1fez6BBp261Q/koaqYMXwjMuSZuxBZH9EnLIIqmVykCkFwm8BF9wl1hSaTV4?=
 =?us-ascii?Q?26lHef7fkDnFWPoXjBOvPTLbTYWS/x1fUjoWB6vNoEq2EV+vUXSLlTu7f4l+?=
 =?us-ascii?Q?lYUWjw2WMrAaSValB3zrnZWGd1iIKvwTG22b6tL84kKYt/8JwlGsQv0rEbWX?=
 =?us-ascii?Q?7whrD+zLQ/yR6wd+SVoXmIeoZeHQAVclCHrUFrRGFxxwXL7aQ6iPMU0XMPxk?=
 =?us-ascii?Q?3AH585PtKUx2K2/2MthFT4k9p/kZU3OdWs+25yv/Z+7Tntc+lDGjtEqPN856?=
 =?us-ascii?Q?2q4rsmInjEuhKWNWCOf4yUz+wQwbSbLaY6bLyzQ/dO5Ie1Id4rvJHZ5DlfIL?=
 =?us-ascii?Q?JMdeemuRmCdkQkCaGkoDU7GlMCOQTXAh3MFre01U6w9P41/BCJBR26j8QnsP?=
 =?us-ascii?Q?LwPNu74mOg2l1pwKcywcwtcQN3sNn720TIUowMW7W492GYPe0nbx3Xl/zV8S?=
 =?us-ascii?Q?mmQrtiRRtprd/cFK+gqLDNzHg01N45Fk8TL0eYvW5dXz+CMaXdNngdFM3zm9?=
 =?us-ascii?Q?mPTnOoJxF0mV4mtksRfksyxnfpkM0N9dD1qOZUNLl8g9M+6SRTmUFPw7niRP?=
 =?us-ascii?Q?PiSjAAUxOtosDLbMrEi8He0ounVrO1KaGrlJT8lyduu5FDmIefBud/tHHv/3?=
 =?us-ascii?Q?BPNUl1JkO/B6X+1No6RuIj3+7zR54fd+vZLQiCzIz5SD/wVvLoDLZgeudnII?=
 =?us-ascii?Q?q2VrJa/SpdlpLOTEqi97S8lEfhODfvsY5wSqy0F+qJYEhljYZEQq1e36wY8T?=
 =?us-ascii?Q?EhJlrwUWNFGHSH6+BxehcTH3GvAaH5e6vTWCAK4r7Ku3GFiBWpzECC4gXcsE?=
 =?us-ascii?Q?/nn1bqO9xsWaaF7nCkY7kwYslqpTDSwMnG20hhM/OaMbF9Ti1ytCfwiH/BIN?=
 =?us-ascii?Q?I45UDQRzT3MjQbRzbxyr+JItWwsgCIUA62CO7EcB/t4nCLl/s8VVAW/NvGPe?=
 =?us-ascii?Q?lUtCg1dvvfJvH2blntLstNbmlUCNGHhlLKHpWv6OKVyAWObD6QlIj75ZzoIM?=
 =?us-ascii?Q?Zs2vLUNSB0HKTOGsiAJ3G91pdDFXKJRWzyQfNev5zd13ruQ7fQFOaEKli8lr?=
 =?us-ascii?Q?DAM7gCK6Sych2CbSXyM4L2DxsvgBxbFq3TGOF9lpyhtCiE8OgcdekroAWIRs?=
 =?us-ascii?Q?vAtWDE8zjixww+oPyB/OtufB+/NNwGjsZChMa02/gwt+Q6iy0R3WdHtav9iS?=
 =?us-ascii?Q?x1WoZabq6wH4dXDKbHF6UQgADeeUA+7ypMmocMxV+K4u2rJ/llxsFbQ0VNdo?=
 =?us-ascii?Q?lGjR/aDvnvxd2zRCAyJagmb1Y2yGMQNArEj77AUe49pKOz3agVf06btCQJdq?=
 =?us-ascii?Q?a3KnXjDMz9wDr3EdJKuYu/aE8akHMsqR6eV4y8/6W3O7UJgXW929BBb5/bPt?=
 =?us-ascii?Q?dQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1951ecfc-1769-427c-c3ae-08daab62603d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2022 08:27:03.5839
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 95ulhqtLdr+NHiFvt3W2tZKscCmxPewKO60Rfl+3DD4/bVy+hkshjNli9N7QBMmvbWuOZRZuoboL16N+ObVfuohsmf892XBQWn40uugz39Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5248
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Oct 2022 08:27:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58319

Hi Philippe,

nrf52840-mdk-usb-dongle board is not supported in Zephyr 3.0 [in Kirkstone]=
. It's available in Zephyr 3.1 onwards.
https://github.com/zephyrproject-rtos/zephyr/commit/b94fe6315870f938d759076=
a57cd3311ab0a0c06

Error log:
| -- Board: nrf52840_mdk_usb_dongle
| No board named 'nrf52840_mdk_usb_dongle' found.

Regards,
Naveen

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of philippe.coval@astrolabe.coop
> Sent: Friday, October 7, 2022 4:57 PM
> To: yocto@lists.yoctoproject.org
> Cc: philippe.coval.pro+meta-zephyr-lists.yoctoproject.org@gmail.com;
> Philippe Coval <philippe.coval@astrolabe.coop>; Philippe Coval
> <philippe.coval.ext@huawei.com>; Jon Mason <jon.mason@arm.com>;
> Saini, Naveen Kumar <naveen.kumar.saini@intel.com>
> Subject: [yocto] [meta-zephyr][kirkstone][PATCH] nrf52840-mdk-usb-
> dongle.conf: Add new machine from makerdiary
>=20
> From: Philippe Coval <philippe.coval@astrolabe.coop>
>=20
> It was tested with zephyr-openthread-rcp along Oniro's IoT gateway
> blueprint
>=20
> For the record deployment was done manually:
>=20
> - Click on device button
> - uf2conv.py "zephyr.hex" -c -f 0xADA52840
> - and then copy to mounted "/dev/disk/by-label/MDK-DONGLE"
>=20
> Support of unfree flashing tools might be added later (once double verifi=
ed)
>=20
> Forwarded: https://lists.yoctoproject.org/g/yocto/message/58142
> Relate-to: https://gitlab.eclipse.org/eclipse/oniro-blueprints/transparen=
t-
> gateway/meta-oniro-blueprints-gateway/-/issues/6
> Relate-to: https://wiki.makerdiary.com/nrf52840-mdk/zephyr/
> Relate-to: https://gitlab.eclipse.org/pcoval/oniro-presentations/-
> /wikis/openthread
> Signed-off-by: Philippe Coval <philippe.coval.ext@huawei.com>
> Tested-by: Jon Mason <jon.mason@arm.com>
> Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
> Signed-off-by: Philippe Coval <philippe.coval@astrolabe.coop>
> ---
>  meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf | 7
> +++++++
>  1 file changed, 7 insertions(+)
>  create mode 100644 meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-
> dongle.conf
>=20
> diff --git a/meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf
> b/meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf
> new file mode 100644
> index 0000000..67e407a
> --- /dev/null
> +++ b/meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf
> @@ -0,0 +1,7 @@
> +#@TYPE: Machine
> +#@NAME: nrf52840-mdk-usb-dongle
> +
> +#@DESCRIPTION: Machine configuration for makerdiary's
> +nrf52840-mdk-usb-dongle
> +
> +require conf/machine/include/nrf52.inc
> +ARCH:nrf52840-mdk-usb-dongle =3D "arm"
> --
> 2.34.1


