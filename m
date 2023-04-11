Return-Path: <stephen.yu@microchip.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C39FC77B61
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 00:00:18 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
 by mx.groups.io with SMTP id smtpd.web10.2057.1681171217083062102
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Apr 2023 17:00:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@microchip.com header.s=mchp header.b=IHcixTtZ;
 spf=pass (domain: microchip.com, ip: 68.232.153.233, mailfrom: stephen.yu@microchip.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1681171216; x=1712707216;
  h=from:to:subject:date:message-id:mime-version;
  bh=rTxlCXKDMqGXnH7ot+uegBgaYLNKDoNdYVcacyN1FT4=;
  b=IHcixTtZdge5zbAkTs61ybm6aVVJon5/6428CWmnehtxnRRwx0h3pq8s
   kekfBU7K/iGQ+dOOMt9NzJll1OZCFYA73kCmEqlqX62Z+fUMGwO5jDbFC
   rZ/cV16CLNgKMvw+vAxLiVfqaHQUlqY18ig7DNsKJhJ+/pjbk7m0qN8dz
   YK7MrijXBeGWFBYBdz6lHm6nB6RUrLlgqilSTKATwjeFJ7+BB0DD382OU
   IeWUoGi3mcPDtjVM4E9fPoWFsMzyXwOPzCaiKYqlZOB4kqw7NEi4NpRpq
   ZM9p6BpS5k5uLvqcyWWhG5zLU0T8KH5mwCfCWHccZKGNix0tiJ1h3gbxJ
   w==;
X-IronPort-AV: E=Sophos;i="5.98,335,1673938800"; 
   d="scan'208,217";a="220272012"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 10 Apr 2023 17:00:13 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 10 Apr 2023 17:00:11 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Mon, 10 Apr 2023 17:00:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=exGyW7VFKCnjlxmqdh9fZjfC/M4PfOL1NOkRyNnTa5qvKNaK4dHXnv2nY50ZJA1Rob3g3vkpUJFdPrCKEJx6yWKoNeOVIP1zhmxBozxeIX+oZPQQHPsdCCauGuhBnu0Zf+1QOzUCgBZzW212thefzH2Uhr/kfGzaSwVJXnqDd7NV514MEjh/b0/8Wlir2mOcR1fwYXF1n1WuEFo1HSGYJ3gkBSAQWWbXoXq6kVhUg4bbZn0dBDLkt4a15qTqTIXPn3YcF7CmmfhkCCArdXSRBcmQWf6KzfB2DMKictSakRgHkTqB6gTCDPWfPp7/8hifc8xA88xpvbs1UYoDZJlBtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MTahIN2LE4AhpQhEAxITRvuj7Iu3jKE/xxqSnQewU9g=;
 b=fieFMKDHFBjXk9NyzqvAhh/oJqv5i4s6bWN+8f5f915EQh+id7N6YbkA/iquOom994v7Y4sl/I2tcJTkRg61M59Wj49ptNwjC6ixqX4WepKH4o1FoDXCTjWhDIkLnWBhyhiIhzT8v0ura51ifNaylIg9OqqAbHvFSjbdfc8ylkvqE/jERKUbFproVM0km8SDYNIlGPdgT88x6vpWLqUPOjygSyw950ivSIae2J0ayp3BGmtCtScAwwIcLmaJDuqwFXK6Lgg/fhBc1AixA5W39uR+5zw9y96Cpaie8YXOVlun6vQe38RqZONNXRgYGArOEUC02yTcltBoVFXcDrrB0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MTahIN2LE4AhpQhEAxITRvuj7Iu3jKE/xxqSnQewU9g=;
 b=GQj2CETu3KMbBQcz8/SB8VAmP/nIP9wI49CcH0Lx5YOVrTY9T0t9jeJqlezTpDucHihI6oW5OLL2B+gm2KPNGgyisR2p5cRuDbYcTOR2bWMw/9I6Qvkvc59jxjBCq3C3hhrbtHnf0Pla8yLXn7Q1nzm90kDtE3TJ+Hu73rHDn98=
Received: from BYAPR11MB3189.namprd11.prod.outlook.com (2603:10b6:a03:7c::17)
 by PH8PR11MB8037.namprd11.prod.outlook.com (2603:10b6:510:25d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Tue, 11 Apr
 2023 00:00:09 +0000
Received: from BYAPR11MB3189.namprd11.prod.outlook.com
 ([fe80::8ec0:1ef1:abb0:b7b2]) by BYAPR11MB3189.namprd11.prod.outlook.com
 ([fe80::8ec0:1ef1:abb0:b7b2%6]) with mapi id 15.20.6277.036; Tue, 11 Apr 2023
 00:00:09 +0000
From: <Stephen.Yu@microchip.com>
To: <yocto@lists.yoctoproject.org>
Subject: Need help with CMake cross compile using libxml2
Thread-Topic: Need help with CMake cross compile using libxml2
Thread-Index: AdlsByovBg8u0hwWSiihGXQUg0VChw==
Date: Tue, 11 Apr 2023 00:00:09 +0000
Message-ID: <BYAPR11MB31892807C6AAE69BCB060FE38E9A9@BYAPR11MB3189.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3189:EE_|PH8PR11MB8037:EE_
x-ms-office365-filtering-correlation-id: c5bbf5d0-bbd5-458c-20f2-08db3a1fb733
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vQBfNOoRwKX4ZRjnjKNUV889sdXZx4P9iPDoc91pFsCgTFHtdns/Aj4zrhFE5Y4VAf1JFenCSDwfOCYJXvADQzGTA24Vd+QB1A8tVsKYOivJovVQjK3SJZkEvajkmweLuKQETx9vGJoQ69nLALTzfrJJPEay+38rlzf/90N7z1hDdRc48Em3Apwv+hr9I1R0vawkxrr1OO85yEZ7x6h8xueT6DbLXEG3RjgBbcSlzvrfGYEFdaYUVzGQFjZZgt4nWCDg51AAc0VQAm+pAQV2wpLgleBCa/3NYfy3Pvc1wXWYmsywnAYO6yeCYYzTIWsp85e2aRKn+MMBBNNejikoZd0lWr8NOQq4EXOCbfKzxKb5vMWeZcYkOenfbPAmzP6mH+JrRHAS1DZEtzrrmpcO+cgKlUtCbFDAHzj84NaNJ3xjs55ulMB8vKDpScxSz2ToB0Kwf39DIMKaPUo4w8lUQZPJmClPJDek6EPLziANKIKdXedfFGsKvl1OTBPyBXAh5VP5EVwWP8mqP28FZjhYFAjl6J3BH7sEQV54iESQ+g5FQkJUob4IGs8f6/1TmDY640b21j/mvv7AGWKLUe4IxXXVVYDV72z3ViAG0rimuDs1NOHPD6mhesqa1+1x9QJ7
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3189.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(39860400002)(396003)(136003)(346002)(376002)(366004)(451199021)(33656002)(86362001)(316002)(41300700001)(76116006)(66556008)(66476007)(66446008)(64756008)(8676002)(6916009)(66946007)(7696005)(71200400001)(478600001)(55016003)(5660300002)(9326002)(52536014)(2906002)(8936002)(4744005)(38100700002)(38070700005)(122000001)(186003)(9686003)(6506007)(26005)(66899021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9vyxvnFdOOkIMeEXJ3MLsJJLl1VmhbHxQ1ZFyNNSbmAMVF3YXe/YtYZTKUym?=
 =?us-ascii?Q?2z445hJa9PXs0FChZPmYn7piL3WHEX44UsgxXk6mWmRYzVQULdFTi5oLwmY5?=
 =?us-ascii?Q?QKi0mb38qp8Gy7kNamIA7n+fV/LnvY0Utuhk42dp5Xw4pyinVprhdpyt5awY?=
 =?us-ascii?Q?5bXd9ehKkoD+Rz1bcZmhueLNuiJLRdmUbZPAJOl9Pal0TzZHK2+hleEzyjn1?=
 =?us-ascii?Q?weCnoilSDpkcs0IXWXDmHsLzQxAF2rmtwHZDwJ6dhUu+TC3ApcjOvSU0hxNL?=
 =?us-ascii?Q?2CUiUSRgEz+WPZnX2byfsyHDuCCA8DEjzQ/dwqcAku/OJrM41DiedSo9eVNT?=
 =?us-ascii?Q?QddbrFabCxt84Rqcyu7Vo9ZYgKDjratBi6vruPrRSv2VVxIsXh2ja+lf+c/f?=
 =?us-ascii?Q?WSVpRZc3Z8VGmj5J4RZsmy7P//nAkyLjS2gfghyCh/RgTTGE26JiuODFs35A?=
 =?us-ascii?Q?XunNKojKgYKtr5dZJM/mxWm7HpVridpk4PJRVsyHdMScZvWV9lKx1/IxhlDk?=
 =?us-ascii?Q?Br7MagHR2CndoqGlDp+Lo87qGxXfBs9R8ZJBQNj2/AaKOSWYt3rlZCRp+tIN?=
 =?us-ascii?Q?k0S30oZAdELl2U1r7Xlvy0PL4mPY+T87mMl4mpaAAcUJRJCwaWDAY0rn81u2?=
 =?us-ascii?Q?N3/gVz/hKYdPA+vmb/NsLRcaaaZ4KIuxRxvd5cILH4z/oS8UJX5xI0GtZrKF?=
 =?us-ascii?Q?Xfr1LniRBDQ9BHWzzCXMwgM8loW2PtBEI3R84TORZcCVRonguFK7skkb60ku?=
 =?us-ascii?Q?p7HXXlmKoHsBpwmMoA3BAp8jncHFxgv/FWX0Te2Y6sHyiziYA4vE4UpnWxB2?=
 =?us-ascii?Q?pwlprXgATcQJgq4V0o5MuOoSnPWLwhvGiQ6Au2vF7XF9aF84na5NQsTkF9Gg?=
 =?us-ascii?Q?o0I+u1PWZ8FoS+RD/9DhBDiFWoiKEkS79SSqWyLmUiDzADSuoO1u7Zsmi5KC?=
 =?us-ascii?Q?nveDjEh11hkronRYBxmXd9MPe7BQecjbkrAU18vOdQ+J8w2StXv7YDNjZhp/?=
 =?us-ascii?Q?VC+UCLgUnr3K6hrQ4GzJVz5F9Hp3zYoDWSDTH6D4xS5fOGCB/fxE8fcfMuAq?=
 =?us-ascii?Q?xV9J4u/hBf/XFyCJLP8k9yhHsyyq5QFicCRxE9gR/HPj7QToxYi5TemE46V8?=
 =?us-ascii?Q?twZ5T3ON9DClXEvykdfq9oH89gjpQ3f9zgl9EM5vDHST9vipFnp8TR7HzO8s?=
 =?us-ascii?Q?qBhnRFU8nTmHu97Bp3n/G0hD6LiCbE1Xb6c4h2lDy13l3Lmd1vv4Kg0LohiV?=
 =?us-ascii?Q?qmefRVadc7Q0B6oEG5OIZTl9IPlSZYOZlKibD1po1qPHxNix7HsqGRhSf3wq?=
 =?us-ascii?Q?HkHbhV6PxMNZAiEU/iL99F7Z36PY9IqNqBUnwc+VPM6cM7lKiL4CL4NPlWIc?=
 =?us-ascii?Q?Bb3aUz+XK5NSv79lpNMDusCEsIyZoNuiL/F1fPeqvEUYFPXA636uSPFnaKJY?=
 =?us-ascii?Q?+0afHQDE71rokNFcG8FgzHY2u0i71HkjHAKeogNJX3+fc73KxtAoCgzyvBew?=
 =?us-ascii?Q?R/zCp6s+F7H26evkxSPA3gMHn2/QZxwLc0W8JAI8vLXWHpseaxiVOsvErwkk?=
 =?us-ascii?Q?iyAxN8DXaiFL/PlTjTpUfuReyB18LIg7lxVHxUve?=
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB31892807C6AAE69BCB060FE38E9A9BYAPR11MB3189namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3189.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5bbf5d0-bbd5-458c-20f2-08db3a1fb733
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2023 00:00:09.4959
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6OjX9RO6TE5pEQHFUcPTsrysp86zvijyypmbqoZmE7ikzmesdWkzbtjJWZHDbBNK2pYcywLxxwFUEru0Nxr8M+Aqbww5T+zyR72YA0fTvVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8037
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 00:00:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59660

--_000_BYAPR11MB31892807C6AAE69BCB060FE38E9A9BYAPR11MB3189namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Community,

My CMake project needs to cross compile (.c sources) using libxml2.

  *   The CMakeLists.txt has "find_package(LibXml2)"
  *   The recipe.bb has
     *   "DEPENDS +=3D "libxml2"
     *   "inherit cmake"

It does not work. "do_configure" returns error it cannot set LIBXML2_INCLUD=
E_DIR and LIBXML2_LIBRARY.

  *   I assume I need to add "set(CMAKE_FIND_ROOT_PATH <some sysroot path>)=
" but don't know how to specify the <some sysroot path>.
  *   Perhaps I need to specify something to EXTRA_OECMAKE but don't know w=
hat this is.

Greatly appreciate if someone can offer help.

Many thanks,
Stephen


--_000_BYAPR11MB31892807C6AAE69BCB060FE38E9A9BYAPR11MB3189namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:645352524;
	mso-list-type:hybrid;
	mso-list-template-ids:-100791516 -1242630110 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:677392740;
	mso-list-type:hybrid;
	mso-list-template-ids:-1270305610 -1031788706 67698691 67698693 67698689 6=
7698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2
	{mso-list-id:936671254;
	mso-list-type:hybrid;
	mso-list-template-ids:-164460696 284317740 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">Hello Community,<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">My CMake project ne=
eds to cross compile (.c sources) using libxml2.<o:p></o:p></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l2 level1 =
lfo3"><span style=3D"font-size:12.0pt">The CMakeLists.txt has &#8220;find_p=
ackage(LibXml2)&#8221;<o:p></o:p></span></li><li class=3D"MsoListParagraph"=
 style=3D"margin-left:0in;mso-list:l2 level1 lfo3"><span style=3D"font-size=
:12.0pt">The recipe.bb has<o:p></o:p></span></li><ul style=3D"margin-top:0i=
n" type=3D"circle">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l2 level2 =
lfo3"><span style=3D"font-size:12.0pt">&#8220;DEPENDS +=3D &#8220;libxml2&#=
8221;<o:p></o:p></span></li><li class=3D"MsoListParagraph" style=3D"margin-=
left:0in;mso-list:l2 level2 lfo3"><span style=3D"font-size:12.0pt">&#8220;i=
nherit cmake&#8221;<o:p></o:p></span></li></ul>
</ul>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">It does not work. &=
#8220;do_configure&#8221; returns error it cannot set LIBXML2_INCLUDE_DIR a=
nd LIBXML2_LIBRARY.<o:p></o:p></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l2 level1 =
lfo3"><span style=3D"font-size:12.0pt">I assume I need to add &#8220;set(CM=
AKE_FIND_ROOT_PATH &lt;some sysroot path&gt;)&#8221; but don&#8217;t know h=
ow to specify the &lt;some sysroot path&gt;.<o:p></o:p></span></li><li clas=
s=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l2 level1 lfo3"><s=
pan style=3D"font-size:12.0pt">Perhaps I need to specify something to EXTRA=
_OECMAKE but don&#8217;t know what this is.<o:p></o:p></span></li></ul>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">Greatly appreciate =
if someone can offer help.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">Many thanks,<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">Stephen<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
</body>
</html>

--_000_BYAPR11MB31892807C6AAE69BCB060FE38E9A9BYAPR11MB3189namp_--

