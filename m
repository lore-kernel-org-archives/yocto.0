Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AA34C3DA63
	for <webhook@archiver.kernel.org>; Tue, 23 Jul 2024 11:53:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by mx.groups.io with SMTP id smtpd.web11.41788.1721733849786939628
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jul 2024 04:24:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=dN2zzdGu;
 spf=pass (domain: intel.com, ip: 192.198.163.19, mailfrom: karn.jye.lau@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1721733850; x=1753269850;
  h=from:to:subject:date:message-id:mime-version;
  bh=EbzjcY2KpLCV8SRDL0164pBaV5Lupf9s84xpemmQRwM=;
  b=dN2zzdGumYYyGW2ODmRIgDIgLGD37ACfxtUA6b8qxL6Sts0oqOyEaXmi
   G5bAp/CKC7BtouyF/TaaNbwLLEnn+8e3hnJI9LXEvtS4ckdbntBFPN7M/
   MtYZsggdULhTlxRadi0eqD2+SNnMm3Vr634czWhTJzAqN6QHr8nZKVht2
   1lDWSbnN+AIG1klo2Pkvmlh1WVV3mAVw0TbKRn4CbJeTLBYASynjps2vP
   Eqn618GF/6TQszx44EdXASmCkNpVDZKJ822NdEtqkH3M4peBJ6wVmYWI/
   UDqefUgoG/WCLFpP188VIMAEZXKHRRL/Wau88XhwiDCV7ZeNqMzaR+qix
   Q==;
X-CSE-ConnectionGUID: aUGWFTCLQTW4utYsuhAgsA==
X-CSE-MsgGUID: rmT6h9I0Q9ChoLNvZLbbxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19052933"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; 
   d="scan'208,217";a="19052933"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2024 04:24:08 -0700
X-CSE-ConnectionGUID: htgIuG8OSdaDlpOAa5icxg==
X-CSE-MsgGUID: qWCUIpkxRQKbXR4xWYI2hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; 
   d="scan'208,217";a="52439668"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 23 Jul 2024 04:24:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:24:07 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:24:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 04:24:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 04:24:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VsPLX/ju8yPsU/2n8isDQ6XitVLrlNLnfB+5uroG0NzW+twOu6yGAPcmnGzAzqQs5d7cvA9HaRnN09EJ+aYIMxV1UaXe0KJuMlywAJMzPvoYmGWj7VdRXPkQcqIJ4J7OqgOUQ5mmKxmpnfLLSQxTZv5JGRjNCNUOz5BAy8szA96IvoPzwWm7lqVNjKbOzwHN+POuS25saJWaEl7lO3XxoX8Tg0UTggrtAK3+VCcGTaDmlSD6K2g+K+2XaJ16dK1P/xFnyBg2HY0GTObxoRkqewLknVzVJ2SC9WEMjL4EPHtvKvOsg4i/rTFFyAOHE7j42hwdGuus0kExEqu0mc1wjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AinjuMPSXWOHNyWFbfiArewCNE9R634Ak1IlF7R+QRk=;
 b=evQOHAhl5JXQPdCIamM78BEbU9xaRRgGYfgtqIg7rsR/fCdcNjZE1AtaIgObX4CR1xUHl/n2LOGl27uAtetEwq0eaJxzSppQs9zhG/PgIYkl4cmqjQQ0PC1PumOMViBs1juqrRUCxKcrIAZdEXSmxJnstMz49caKLGuzo1R3/aSKs8Mie/RODhFdyyEBJ99loNmHH+iy9zxSyJ17XDTO3ZtMQKYmLqxK9nPdh6+eV1vU+I0pqrHjac33Kdlaz66ccknFkFc0hsslVKst3vGCLXbcRr23Phshi5OKGB8XyGcwSuMs/1W/OTW3wufo4mXH3dPIhcyIKElcqYEjYg7F6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8702.namprd11.prod.outlook.com (2603:10b6:610:1cb::7)
 by PH8PR11MB6612.namprd11.prod.outlook.com (2603:10b6:510:1cf::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.28; Tue, 23 Jul
 2024 11:24:04 +0000
Received: from CH3PR11MB8702.namprd11.prod.outlook.com
 ([fe80::f368:94ae:13d7:a3bd]) by CH3PR11MB8702.namprd11.prod.outlook.com
 ([fe80::f368:94ae:13d7:a3bd%5]) with mapi id 15.20.7784.013; Tue, 23 Jul 2024
 11:24:04 +0000
From: "Lau, Karn Jye" <karn.jye.lau@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: ${IMAGE_NAME}-${MACHINE}.spdx.json s missing in scargapth
Thread-Topic: ${IMAGE_NAME}-${MACHINE}.spdx.json s missing  in scargapth 
Thread-Index: Adrc8oNZAYBTByoQTseW5UuDKxbLHQ==
Date: Tue, 23 Jul 2024 11:24:04 +0000
Message-ID: <CH3PR11MB8702A701A699D2CF4AB562DFD7A92@CH3PR11MB8702.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8702:EE_|PH8PR11MB6612:EE_
x-ms-office365-filtering-correlation-id: 45b6fe6c-dfab-480a-561a-08dcab09f57e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?koi8-r?Q?7fUgvX2ckHqgHw9WpX/E57x5ffM2FHc9lAv1iP7GsN9fnIdFdm0jXNScyW2T6d?=
 =?koi8-r?Q?v3xCcsQBKWUWXafLzr2hgsJaRLF+kMLXh3FuwZpG1H8FW8j/1GkuC3jWGWQDup?=
 =?koi8-r?Q?OCE6pHnXi1JL7FsODzyNy1SxQXtFbl4zpm9Rv3Y31qP0x6fx2cnop8q8BWvO+u?=
 =?koi8-r?Q?1ud5E01JN5yt3/ruhiKWbOfsW5AULGMFmz8eAT/PW4BIEplpgDBDCUpWrlMktw?=
 =?koi8-r?Q?mqnDERHB8rVkevuHvXTspQsH39B0+VDnCc/9kBNNQ4Bc697Zt4GbYJfvblhamS?=
 =?koi8-r?Q?ZvF8aup+pnob+V/b1SgAM3D7VbS73nELAcYxbEz9PrlYXYiyZkIvU40i38SVZi?=
 =?koi8-r?Q?nqk0Gucejwn3aDw+knCNUKWCY9vWup+BuP+yuMbUINMEQFlJAQ6Gt9fgY831NS?=
 =?koi8-r?Q?a+6GBrdUI6yaDxFCOHtBfS5UMktOa7XDOwfcqd5HPIB3wGxXqVKUhfrUK674bW?=
 =?koi8-r?Q?a1/s++r/ChjdLbObDAqQE41zG/WcUy3RiwoUzoLgV7kBpzYFma1Z5UnFszlE63?=
 =?koi8-r?Q?j5fng336BF8bW18iFKI6e8VTdH/iSNhi01pHowyRqVQ7AggtbmKOedpD7XAGK2?=
 =?koi8-r?Q?/Hco9jpIAmpL54euqduFxjzWdirAraSyzFhn6Mo2xseMKg/3c7zRFjBATyss3K?=
 =?koi8-r?Q?S+9tWXPqy4MlQ+iHakz3XnghM2dw3PrYp1YuiZ7zAi64R7OcZzkk5NvLlLlD1Y?=
 =?koi8-r?Q?/wzAP9aKGWiM8Y/idCkaNDj9/jekkf823v9Kvuo3vN2msi9SuMPO2TMOo3kwpZ?=
 =?koi8-r?Q?ALeSg5DU6HVd0bYMAT+n/Tz0dd6Vm4aphJUZJHO0/G1GST+66CfUWEYtYZLMWC?=
 =?koi8-r?Q?0AoqEErdjifrIH492DRuaNR5rYqH3sanigAJ7l4uxvFPnQ8C0cv/rByozYUaCS?=
 =?koi8-r?Q?a3EZWKGrWERH8HxP/ORWPPVdY9gH7X5wDcC7ni3zGDr/zSHFv99HVXwrTQfa9E?=
 =?koi8-r?Q?H2Te1ZF0Y1LZkEkp7IpSzoLb/977/no09xuQl4YXwkS1WsdSJzYKyoOCgbEX6s?=
 =?koi8-r?Q?qbemBkXYgslI0B66HKUu/y7UDQkySK/OpUdMxUlI/oqhk2lTG4+vJlAIxKmDiF?=
 =?koi8-r?Q?ky0X7Z5wLCw22bT6uI1JyiTv692avWwsLQEK6Y1zH2JlyeV7DpuRb9psBNJ8go?=
 =?koi8-r?Q?ZDV5TdAVjak/k6Kdhkq3lYmIV0vnIYpxWLeUyH7zmd86D2DDE8jEGrB01JKXBE?=
 =?koi8-r?Q?dJswdcp6KXA6mpDbt2ZPskP2c3Y4OEmSMYtCK5iwES9nKkxiEWQxxNLALA81g6?=
 =?koi8-r?Q?UgtgwsAh+SHft/imZ/XzA7EPiCZyUDh7go02p4N2dO18t8/8pLXPlWh1AfVf1A?=
 =?koi8-r?Q?bqeMub7BnVrxIe5TGCJDtUyyDVbmr3ukKt4YV5PjItSB4QQuzoKSlxnf86Lkbn?=
 =?koi8-r?Q?UEpA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8702.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?koi8-r?Q?0baY96Z//9zGQ4WU577K6SEznb4AltSxdONW02QoTD42RaHHCx0tzuNp1gJHni?=
 =?koi8-r?Q?wDNUZx8iA3Ke02HLVI67VZRPmp93qBUD8ykOYqDORIYs0ekJ2e3658uUSvvknL?=
 =?koi8-r?Q?hINY++g2/DjShxvO/rdE/d2kz84tEMx8tX0NIVJx28dM6BQEhgOjdRvXjSKjPC?=
 =?koi8-r?Q?ClG4enYcOFVojhkQHlLboLpfxOzCnrkAvaw+DmQ7dWkWBq1rVOpOHsTS3vI3CL?=
 =?koi8-r?Q?T5xswswf599ZH/soI+pLSPi/wa/crNpr4y4v1fYLO+XyU5qY1VeXEE4j1HuzPF?=
 =?koi8-r?Q?oK7TARjqkWQ3+1Mj3RjHi+wnyIgQEkSRzwkKNl9Sqxis+V778kvSyKjYtMx2sM?=
 =?koi8-r?Q?DLi6KziXpzCOWpKyPul8K7iqlNPlJaNltUsecOLwrLyE1WT+XC4O2UePG7NtBU?=
 =?koi8-r?Q?229y9xgJWcUuXWufzb974xnnKlPp/NOfDpBqm0vWqNw5sjNsfwojyzQbT1FvDA?=
 =?koi8-r?Q?UiGToD1XB3OASt7Nq0BxtS9YIBHXgY2SRD74WvzEidK6w+BKgLrxpaqocnMLol?=
 =?koi8-r?Q?jokZi72gc0DVq/IvzUue+xMHec4TjhpJCG1OYkGHPslsPGLLIxF0E968CoP2hq?=
 =?koi8-r?Q?lea4mlltRi/zxypYACjqk19fmwApGggjrTjZbqqLqY/yp1kdr/XPSPzfl1A9iq?=
 =?koi8-r?Q?40voq5S0B8PtdccDFdrDGDZd1ELZ58NTh/m3lzpK3CDecZrAQlLbijH7uL0pZW?=
 =?koi8-r?Q?0F0dzb+xaJiZbLu+/wwmfa+MvLnDLEJH0AvTWsWHgahdfeTFhdvSAZ8bb0i0p+?=
 =?koi8-r?Q?Uzq5KbiaZFfzOu6o5s6oJfmOY9PYyjw4NG8hnQZ56R7HubjW8dHUMq/9QuGCO7?=
 =?koi8-r?Q?3k+yww1ofR8miscfg/2n83bL78WZOIWQJv7Bu23eOt8wyYCRuhRCJHLPrK5csC?=
 =?koi8-r?Q?JMd71J8sl6CIBco3gd/uIcQ4zeYaFkxoO6KMp/rWaAOv2tq2xdrQwnhWuS/rwg?=
 =?koi8-r?Q?7hj2FI671zuminEPvVOhhPou5oazlot8mI9sVvA3aZlOJK/GVMwpbVy08XwEWD?=
 =?koi8-r?Q?QacsxkZQm36TNOsIvN73xK76m0bpMLnz3mWQN9HPb+cmJM+48BpCGXPO6dJ18C?=
 =?koi8-r?Q?swuKyUuj9xjLhJzBmsOKoKQ9IbhJXsV6Ajh6+OpbfIGAY//VbxWwlcRSyItIbL?=
 =?koi8-r?Q?CW9GoxSlGmmu9HpMOl9wRtSs7g6632SNBv7X4wNdTZ8r4IHl4jsO3NIJRJ20dA?=
 =?koi8-r?Q?mtJSdKI9mCdLLRh8AAJA0H6OS7jOa/TzLxWDvxyco9llD4zoBFKlEWHJGiydNJ?=
 =?koi8-r?Q?Sfr/YKIqGmvYMzw9Mwh/cIjeuoWnrB2cftXBXwJx9+XNN+BvpXvbrFxu7TeUtM?=
 =?koi8-r?Q?p8IXOgvBLvj0zyqMHmHkXAJFe44N5cuPrzPtfbuVP5Q1ZB+vUFPanBeWXqD8In?=
 =?koi8-r?Q?WsswwanmUROQ5663RAxetVc38LmBfVFFh+m4uQB5tM3cNZLKns1vhGG9u2NgVJ?=
 =?koi8-r?Q?+oyb6X3EuPp3uqsQlY75jICMiA1NIX3TUWe8J36Ecfyr/KHuSLds4SZlcPY6DF?=
 =?koi8-r?Q?sWES69T0hRcaseXLEz8zlrXp4GGosy5q9AHDpZaG7vwS+OvQy2?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8702.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45b6fe6c-dfab-480a-561a-08dcab09f57e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 11:24:04.1045
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DaIVzH3Er23G7WNk/kHBYAdpdssPJSfjtXQ6vPCMb1OMhpORQL+Ux6eKoEyutf/GY8rHKCJvRSC1dJ9NedkPTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6612
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH3PR11MB8702A701A699D2CF4AB562DFD7A92CH3PR11MB8702namp_"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jul 2024 11:53:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63559

--_000_CH3PR11MB8702A701A699D2CF4AB562DFD7A92CH3PR11MB8702namp_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

Hi folks,
When enabled INHERIT +=3D "create-spdx" in local.conf , it is expect the fo=
llowing files to be available.

Build  tmp directory/
=86=80=80 images # Outputs
=81   =84=80=80 ${MACHINE}
=81       =86=80=80 ${IMAGE_NAME}-${MACHINE}.spdx.json


However I only observed  ${IMAGE_NAME}-${MACHINE}.spdx.tar.zst in scargapth=
 build , I tried to build in latest master branch , ${IMAGE_NAME}-${MACHINE=
}.spdx.json is available upon build. I thing this create-spdc feature maybe=
 broken.

KJ

--_000_CH3PR11MB8702A701A699D2CF4AB562DFD7A92CH3PR11MB8702namp_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi folks, <o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">When enabled INHERI=
T +=3D &quot;create-spdx&quot; in local.conf , it is expect the following f=
iles to be available.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Build &nbsp;tmp dir=
ectory/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"ZH-CN" style=3D"font-size:11.0pt;font-=
family:DengXian">=86=80=80</span><span style=3D"font-size:11.0pt"> images #=
 Outputs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"ZH-CN" style=3D"font-size:11.0pt;font-=
family:DengXian">=81</span><span style=3D"font-size:11.0pt">&nbsp;&nbsp;
</span><span lang=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:DengXian"=
>=84=80=80</span><span style=3D"font-size:11.0pt"> ${MACHINE}<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"ZH-CN" style=3D"font-size:11.0pt;font-=
family:DengXian">=81</span><span style=3D"font-size:11.0pt">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:DengXian"=
>=86=80=80</span><span style=3D"font-size:11.0pt"> ${IMAGE_NAME}-${MACHINE}=
.spdx.json<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">However I only obse=
rved &nbsp;${IMAGE_NAME}-${MACHINE}.spdx.tar.zst in scargapth build , I tri=
ed to build in latest master branch , ${IMAGE_NAME}-${MACHINE}.spdx.json is=
 available upon build. I thing this create-spdc
 feature maybe broken.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">KJ<o:p></o:p></span=
></p>
</div>
</body>
</html>

--_000_CH3PR11MB8702A701A699D2CF4AB562DFD7A92CH3PR11MB8702namp_--

