Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9FCCCD194
	for <webhook@archiver.kernel.org>; Thu, 16 Oct 2025 12:22:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by mx.groups.io with SMTP id smtpd.web10.6688.1760617316347540137
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Oct 2025 05:21:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=KYlZ05O/;
 spf=pass (domain: intel.com, ip: 198.175.65.13, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1760617317; x=1792153317;
  h=from:to:subject:date:message-id:mime-version;
  bh=cacd+uojPvyzabkNIGH2OqeelF7E45NGcssytMaAPMk=;
  b=KYlZ05O/3PaeVjgt+1XSX2LBTd1pmmrWK0BAYtLSmdio4pCTnn9dVeHp
   DWYHX1hVQuMXY3nNnjhMQeUkr2N4V1p/Gj53M381LxNGpz6ujbyzIiL2i
   N36t7FsGZ2tO+GYPDhLF4ABt2xTrG5/ue8oL+UDY/mhZR7aqco7/bZjoi
   WY7t1oj65FlMn6tQbIymXzG1+Cnl82s7LWbWBWnlNsZiM8p7xaoZQLph8
   ogUjy7Y4lGWxD2tsY394pntbM4c3WNfPMxeCIOsxDVM20Iib6Z2NXFRqE
   4O9yoZC3FgclwTz64oJGPe/ga5ym/Cx34XWBRnknznBfhBITQXaQ+v9mE
   Q==;
X-CSE-ConnectionGUID: 2olq/3rhTeKKpFRDjuH+FQ==
X-CSE-MsgGUID: lYW8OBr2R4a0FE0SYBJ/Vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="73918642"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; 
   d="scan'208,217";a="73918642"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Oct 2025 05:21:56 -0700
X-CSE-ConnectionGUID: Tbbp6IVBQzWwh9k9Yabu6g==
X-CSE-MsgGUID: Snj/liC8ShGJH6JEsUAtvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; 
   d="scan'208,217";a="182913319"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Oct 2025 05:21:55 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 05:21:54 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 05:21:54 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.27) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 05:21:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DcQuZia6eQbBcoOj2feZc+PlpWoaopusoORO78rHR/mPubxHTZSxy7Pb7MJ3Fi5M3trwqgck0e7cfN2m7wC5BObZJTKPs7de4CagMvDtNxHn5JjfIAMBpNw/95RmNp0dr8Fn6qF+KaETq0pb+MkFw5nH9RIvMXWOckNFa4qUrItI8lkW/uvo8HUVKUrlS5m8Q5uQvSNhX8Pnpq5m2Yy8VLcEo1uhDN4aIaT4PS2eN4F4lKYwDoWusSzt2V5pmX4lCnWrKuEDgc01IULTFMRTvx8bffL6xbKEhUk6/MoBX2sd7nF9gfguDL3h2UaaeXov+P+/kD3xSI78io32Akn8Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fSFthnu8SsEOUWw+NtLUh+U+STRn1psrzlxmcZeQRNs=;
 b=fZ6PEtv3WOBeN7AKTD23vgyN/2PGoCeB5MEbc92l3sfLxAXWeoZX5tUagyawa8WfHk4klRRjcyYZ/YuSIY7khoHVe2rOoV5D+MjVSuK+yNNgioL6s9T3sf8/vnsmQX+n5J+wSrdSB4N4YRgPeYHnICJA+xV0sQZ6N0PSxEE8feLexhVxVT8RCg4/DKPAZAq4IRn8RfaAhHccMAHYWZE8rNDKdhdhFmvX4m1wBhSwevuL8TlVJQjeAaGcXvvkdVmHo2FkaBIw9i39Z5flSDIDHU8iu7IqAwX5RbDAyugvzYM8GtWkWteVF1+TK+rUWLVJJO1pSq6WP9912ak02dyPWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by DS4PPF3D6E0544B.namprd11.prod.outlook.com (2603:10b6:f:fc02::1f) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.12; Thu, 16 Oct
 2025 12:21:52 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%5]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 12:21:51 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.2.4(walnascar-5.2.4) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.2.4(walnascar-5.2.4) is Released
Thread-Index: Adw+llA/9+sRoXsWT4KTX8JXzXFHSw==
Date: Thu, 16 Oct 2025 12:21:51 +0000
Message-ID: <BL4PR11MB8797865EADC34F60A42C88B5B9E9A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|DS4PPF3D6E0544B:EE_
x-ms-office365-filtering-correlation-id: 743fb9a3-e542-4dad-4f23-08de0cae95ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700021|13003099007|8096899003;
x-microsoft-antispam-message-info: =?us-ascii?Q?Pfs2Sz2XlZ1+U8OEQBwpUcflyo2/Pzj4DL2kMBlzDc7hv4bm0BkkVPJAJnD7?=
 =?us-ascii?Q?Aiorg6IerQRTyvpr/vQD0HnE5gH3V19IzuIz8LoH5ZAoEpYT6CsoWrU2J5JR?=
 =?us-ascii?Q?N2ErzGkWbR5YqAMj0rvM9oLx0Yhqnv28cPX0ZKDPfl3zQ2w0s63N5B1HwF/W?=
 =?us-ascii?Q?O6HmMvGXEp/qXLCXdbVuYSIa4KlhOXyYts03MisUSSe2qYz2aVmnQfORFTTD?=
 =?us-ascii?Q?GwDyLAL5uSn4PSEDKbfmm0+4/lmsLA3G8VO2ti8CPZFJFEgov5q+qTvx5uSG?=
 =?us-ascii?Q?j9OktiFTSJqFnz0SertU44GRPvqOYO9mShm8KfTbWAgH5UibZFFEBODcKNlZ?=
 =?us-ascii?Q?oLul93b0bL82TsnQKGBRN96S9Ukw8EKQ1vHJk9H6m3Mh3cmu3mDeAPhRoCl/?=
 =?us-ascii?Q?tZ0ArAyBS7Sk4ST1FegZ5FUp/Y0/RTp90Wh9anhhQCU3mQp0XMsS0L5HEDBa?=
 =?us-ascii?Q?UnmcUkOaj4c5m+AG/5bDztT6Uz/STwv1vfCOU8VG1rHZ1L8OGuDBXpDZFk9w?=
 =?us-ascii?Q?oseY0Yo4inmHHESoo9/HwCCQ148SuPCedJwFJbwkUj9UsUVENwgj+egx/6Vj?=
 =?us-ascii?Q?ecfwpo+2Mj0FPivjoyAekwTd+Ce9nS8SFXPJf9QPBS7/oYVkwhDiXa25TwYh?=
 =?us-ascii?Q?GIzq+izXXsHYqP1rZIEdRiryhNlzWYYmNgW5GpKNze2Xdx40m3y71lPlsjUm?=
 =?us-ascii?Q?ZpSHE0kFYVC7Vs1hjNTgBf0MwW9VFrx4XX+YzcIZELr49MIMBC7OHKlnANg6?=
 =?us-ascii?Q?2ktYvLdZDwfXs5nv8MeuGkt7vKtX70XY1REXzpLDbWVtK38RgA7E4LUezACY?=
 =?us-ascii?Q?RKBVH8fLH+Wcmpl9W3DJ3v69TlniJumXV98dd3HFk0YByqdEw3jQl5qxHzTN?=
 =?us-ascii?Q?b2lZn+HjoegtXDWJs0RXk2DpRZUL6Cq628/31IpVR5sqkGrWcefO4xSdZ1ZK?=
 =?us-ascii?Q?s1ejTJIijltjHGDFTd7lp7l43VFD/Ocbc+05syH/lqnzQHDJcXCaJ27iHCwQ?=
 =?us-ascii?Q?zKXjA/gdyLAUIBzijqf4Pp6vrabOBHcLbvTMrhTQo1Sg9efCcc4IqKLI4jnr?=
 =?us-ascii?Q?kllqnGTg3b3dVHESVBsvgY4JA82WnLSk24JLFRiFWEfyyfW3qqdQeDhmdzxO?=
 =?us-ascii?Q?WwCofbD49YdtEYxcFP/1OJj+D/n1IAZkw8kFZEF00CW2FRCID2kNHHc1/Wyw?=
 =?us-ascii?Q?H0PEk2W1IGOW6pPYFDxnXznzpOt09URpZPM1jKLSJyLNpOGLXx0NmuNR9a7f?=
 =?us-ascii?Q?XH/lSipu4QgQCnPdNqmLVBRwgL0n4aSIWxl4wh8V9qnHbwWCKa8xYzmk92yf?=
 =?us-ascii?Q?j537CrcjHKrhBhLKh7zqtAbiO9hgHZUvtdA+CSxfvSK0OiphwvhnFdw9d/VY?=
 =?us-ascii?Q?6wqkjSTIqOAlfU5BVTEL76LFyAubtm2oY9FJzUyNgDsXNxkFa45Ogqp9KpSL?=
 =?us-ascii?Q?g/t0/e6lph5GlHTAomYOVdJev7Sie1ARNBTvdasQTXPoPRX0meV4kw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(13003099007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4+eVx0hT4zGSm5+mct9UHaqvhIPSvly2mqMnYGz0mURmIThzoYGRsP+84ljX?=
 =?us-ascii?Q?SYIigyFfv1G9qgiwteZgRaJukdr/ToI+vifGclDcU8yuXTgLx+IJJDv13j2c?=
 =?us-ascii?Q?ILESDiLVpFpzW7PPe/sFbWp9ug+RkT1bvQLU4fUn6kWLpFQUz7IrH9ptj/pc?=
 =?us-ascii?Q?UFYZmYbDk/mrxxfxaa7SeEPoD2ZVoQE09PMnqkfBr5liJjjSjE+IqLLQ3oYx?=
 =?us-ascii?Q?wr2nis2mcUAFfs6/QrD4E9mIvoHHc/yJYB1eCLHszosQXrZiXB5FRHQj/U4B?=
 =?us-ascii?Q?YGu1z1dpzBM7CSPju6WEP9pusbU17HFtnY4Jp0dt/8qtLqXK1bO+gs7lkw7/?=
 =?us-ascii?Q?S0AHpp94mb3Ka4b6TMdsfZ4yH5T5Z9p+bOBHYi99JefCRkOFfzdvWaVIedcC?=
 =?us-ascii?Q?lsJv6uN8bFdNyVkk7UqBZ7Pwm3MTqwGvD3rH40JsP0phbIPeetvRNt8Gqk0t?=
 =?us-ascii?Q?btq0ja5Zu+bmY6GSGjv3ZlG/hyBYJ+ybczOl5gjNBcrmeH4yXElmaVqFOT/N?=
 =?us-ascii?Q?RSk6H/Mwkp2SCS7+2uYkP/NIUe3T6vvL8pPqx5IWSMBKB1h86vz0GNx6D1sM?=
 =?us-ascii?Q?g7qDELIjIiXMGOoaqJjY2FRC4WwSAsuXYtqzzCQ9snc+gQWx3DMTSs3VYowx?=
 =?us-ascii?Q?nk0dBqksoycIlRr02etXZiPhimyiFM4UYOFWnJ7wV3HgnyGvCvdsZ5OwZV5P?=
 =?us-ascii?Q?F4GG8ebi12QKQV0m7WsRPgF3L6Ja+zRrI6M1ZASELjM/2ODaF3ANvrcjwO75?=
 =?us-ascii?Q?bLcEDp7TdyRo/aMLZv9n7knFfSZm0AgFje9yWZLCDJoRuoPQpgQAiAaxWOcO?=
 =?us-ascii?Q?wdRUjcGHUxLUgnLpJPkBRjx3ESWElFLgB7JpKMl4SUzxRR2FhK7Czsocqo4w?=
 =?us-ascii?Q?sIOdeclNLQrK4AO5V4aC9W6p2b5gCAH/LyPbz9kmvLx/2tQAJopXwa9lQ9rd?=
 =?us-ascii?Q?hoF2sQQhNX5slyh/VPUJez4J707vVd8c2rQnbEQGPQPd4Z0Jbj8h3j069c+x?=
 =?us-ascii?Q?fhjDEhQgo/yS1Yavcq/UxOk6XBVbmguWiLHKZplY7a0BybX5kmngu4VybRnL?=
 =?us-ascii?Q?XPZfA0MrQLTQtpDZzsUlhaKRNYd7jJL/Y6Wb7j7HdmSdh63TVPRzEljajshY?=
 =?us-ascii?Q?8m8NGMBKp/dy5s4G2AA2X4sGskfdoowr+/VtzWjzKxnq5vVl4wop7VgSQJjV?=
 =?us-ascii?Q?BQTpHY7o30Ai9EK93vOFszOqayl1IZJhmcT3600kBZBLdBtD+7395lMHEc4k?=
 =?us-ascii?Q?MkL48ACXAT02noA0BO0XKO/InoD8tRiVVUFKVzuhF3fJ53KT7dhZbrDC7mwU?=
 =?us-ascii?Q?BvGGDP733iyqvKgkwHI/a67BjhTzS4Dmswk4zGAS4x3BCvUqvZ6AZGbWD5fT?=
 =?us-ascii?Q?sCDLUSYnLbRfHZbYyNoHkQ9yLypR+lKFKCqxU+Y1BEnbtsGjOEJX8mDu0tct?=
 =?us-ascii?Q?lmwwLPjcxbLGgFSzVpYgO54YsSE/k3Si2VsVvV6K7+dm6tNQqN1FaZC2RVWY?=
 =?us-ascii?Q?jQF+mZcYggjjX5q0/hwb2Cebtd1vvDpGZM59uJXfEBq/Rs6LGAmVWl5Q5lwh?=
 =?us-ascii?Q?N44kbksWQyh3KQjvXGoMCeaSWurq/LjtoMo2TQX/?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797865EADC34F60A42C88B5B9E9ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 743fb9a3-e542-4dad-4f23-08de0cae95ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 12:21:51.1838
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VAr2BQBaEvg+Crb7FRUvbqYWoe2yj7t8W7h1pnYW5X7mN/csiC8joIUguMmXwl1g/nTETfCIs4jh+ALUIZk+vA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF3D6E0544B
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Oct 2025 12:22:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65938

--_000_BL4PR11MB8797865EADC34F60A42C88B5B9E9ABL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.2.4 Release is now available=
 for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.4/poky-d0b46a66=
24ec9c61c47270745dd0b2d5abbe6ac1.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.4/poky-d0b46a6624ec9c61c47=
270745dd0b2d5abbe6ac1.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.4/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.4/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release


--------------------------
yocto-5.2.4 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: walnascar
Tag: yocto-5.2.4
Git Revision: d0b46a6624ec9c61c47270745dd0b2d5abbe6ac1
Release Artefact: poky-d0b46a6624ec9c61c47270745dd0b2d5abbe6ac1
sha: b5fa58650f7069c1c001f48aa8eeb12ab78b5f50a414de46df1a196fdc3be8cb
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.4/poky-d0b46a66=
24ec9c61c47270745dd0b2d5abbe6ac1.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.4/poky-d0b46a6624ec9c61c47=
270745dd0b2d5abbe6ac1.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: walnascar
Tag: yocto-5.2.4
Git Revision: ff1c54df4e7b15df2e2c9fced59d9ad3e92ed565
Release Artefact: oecore-ff1c54df4e7b15df2e2c9fced59d9ad3e92ed565
sha: a348eb7c759cc02c1415d2b506903ac1d5530708c9b47550a4ae8c8d86c75728
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.4/oecore-ff1c54=
df4e7b15df2e2c9fced59d9ad3e92ed565.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.4/oecore-ff1c54df4e7b15df2=
e2c9fced59d9ad3e92ed565.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: walnascar
Tag: yocto-5.2.4
Git Revision: edce693e1b8fabd84651aa6c0888aafbcf238577
Release Artefact: meta-mingw-edce693e1b8fabd84651aa6c0888aafbcf238577
sha: 6cfed41b54f83da91a6cf201ec1c2cd4ac284f642b1268c8fa89d2335ea2bce1
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.4/meta-mingw-ed=
ce693e1b8fabd84651aa6c0888aafbcf238577.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.4/meta-mingw-edce693e1b8fa=
bd84651aa6c0888aafbcf238577.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.12
Tag: yocto-5.2.4
Git Revision: ac097300921590ed6a814f2c3fa08a59f4ded92d
Release Artefact: bitbake-ac097300921590ed6a814f2c3fa08a59f4ded92d
sha: ad8afd956f5378691172317c95bdd1c098d6144a7269975d7d3230707305e88a
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.4/bitbake-ac097=
300921590ed6a814f2c3fa08a59f4ded92d.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.4/bitbake-ac097300921590ed=
6a814f2c3fa08a59f4ded92d.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: walnascar
Tag: yocto-5.2.4
Git Revision: 0993c45a1f78f302fd40c78a2a1f709daa7a0ae0

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: walnascar
Tag: yocto-5.2.4
Git Revision: 29330751c8a2b82b4bd80659d2a0a8bac51afca5


---------------
Contributors
---------------
Antonin Godard
Archana Polampalli
Bruce Ashfield
Deepak Rathore
Haixiao Yan
Harish Sadineni
Hongxu Jia
Jan Vermaete
Joao Marcos Costa
Joshua Watt
Kyungjik Min
Lee Chee Yang
Libo Chen
Markus Kurz
Markus Volk
Martin Jansa
Mathieu Dubois-Briand
Michael Halstead
Patryk Seregiet
Per x Johansson
Peter Kjellerstedt
Peter Marko
Praveen Kumar
Ross Burton
Siddharth Doshi
Soumya Sambu
Steve Sakoman
Yi Zhao
Yogita Urade

---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
binutils: Fix CVE-2025-8225
binutils: Ignore CVE-2025-8224
cups: Fix CVE-2025-58060 CVE-2025-58364
curl: Fix CVE-2025-9086 CVE-2025-10148
elfutils: Fix CVE-2025-1352 CVE-2025-1365 CVE-2025-1371 CVE-2025-1372 CVE-2=
025-1376 CVE-2025-1377
expat: Fix CVE-2025-59375
ffmpeg: Fix CVE-2025-7700
glib-2.0: Fix CVE-2025-4056 CVE-2025-6052 CVE-2025-7039
gnutls: Ignore CVE-2025-32989 CVE-2025-32990
grub2: Fix CVE-2024-56738
grub2: Ignore CVE-2024-2312
gstreamer1.0: Ignore CVE-2025-2759 CVE-2025-3887 CVE-2025-47183 CVE-2025-47=
219 CVE-2025-47806 CVE-2025-47807 CVE-2025-47808
libarchive: Fix CVE-2025-5916 CVE-2025-5917 CVE-2025-5918
libpre2: Fix CVE-2025-58050
linux-yocto/6.12: Ignore CVE-2022-50233 CVE-2023-3865 CVE-2023-3866 CVE-202=
3-3867 CVE-2023-4130 CVE-2023-4515 CVE-2023-32246 CVE-2023-32249 CVE-2024-5=
8238 CVE-2024-58239 CVE-2024-58240 CVE-2025-21884 CVE-2025-22103 CVE-2025-2=
2113 CVE-2025-22115 CVE-2025-22124 CVE-2025-22125 CVE-2025-23133 CVE-2025-3=
7925 CVE-2025-37984 CVE-2025-38067 CVE-2025-38104 CVE-2025-38272 CVE-2025-3=
8306 CVE-2025-38335 CVE-2025-38349 CVE-2025-38350 CVE-2025-38351 CVE-2025-3=
8352 CVE-2025-38353 CVE-2025-38354 CVE-2025-38355 CVE-2025-38356 CVE-2025-3=
8357 CVE-2025-38358 CVE-2025-38360 CVE-2025-38361 CVE-2025-38362 CVE-2025-3=
8363 CVE-2025-38364 CVE-2025-38365 CVE-2025-38366 CVE-2025-38367 CVE-2025-3=
8368 CVE-2025-38369 CVE-2025-38370 CVE-2025-38371 CVE-2025-38372 CVE-2025-3=
8373 CVE-2025-38374 CVE-2025-38375 CVE-2025-38376 CVE-2025-38377 CVE-2025-3=
8378 CVE-2025-38379 CVE-2025-38380 CVE-2025-38381 CVE-2025-38382 CVE-2025-3=
8383 CVE-2025-38384 CVE-2025-38385 CVE-2025-38386 CVE-2025-38387 CVE-2025-3=
8388 CVE-2025-38389 CVE-2025-38390 CVE-2025-38391 CVE-2025-38392 CVE-2025-3=
8393 CVE-2025-38394 CVE-2025-38395 CVE-2025-38396 CVE-2025-38397 CVE-2025-3=
8398 CVE-2025-38399 CVE-2025-38400 CVE-2025-38401 CVE-2025-38402 CVE-2025-3=
8403 CVE-2025-38404 CVE-2025-38405 CVE-2025-38406 CVE-2025-38407 CVE-2025-3=
8408 CVE-2025-38409 CVE-2025-38410 CVE-2025-38411 CVE-2025-38412 CVE-2025-3=
8413 CVE-2025-38414 CVE-2025-38415 CVE-2025-38416 CVE-2025-38417 CVE-2025-3=
8418 CVE-2025-38419 CVE-2025-38420 CVE-2025-38421 CVE-2025-38422 CVE-2025-3=
8423 CVE-2025-38424 CVE-2025-38425 CVE-2025-38427 CVE-2025-38428 CVE-2025-3=
8429 CVE-2025-38430 CVE-2025-38431 CVE-2025-38432 CVE-2025-38433 CVE-2025-3=
8434 CVE-2025-38435 CVE-2025-38436 CVE-2025-38437 CVE-2025-38438 CVE-2025-3=
8439 CVE-2025-38440 CVE-2025-38441 CVE-2025-38442 CVE-2025-38443 CVE-2025-3=
8444 CVE-2025-38445 CVE-2025-38446 CVE-2025-38447 CVE-2025-38448 CVE-2025-3=
8449 CVE-2025-38450 CVE-2025-38451 CVE-2025-38452 CVE-2025-38453 CVE-2025-3=
8454 CVE-2025-38455 CVE-2025-38456 CVE-2025-38457 CVE-2025-38458 CVE-2025-3=
8459 CVE-2025-38460 CVE-2025-38461 CVE-2025-38462 CVE-2025-38463 CVE-2025-3=
8464 CVE-2025-38465 CVE-2025-38466 CVE-2025-38467 CVE-2025-38468 CVE-2025-3=
8469 CVE-2025-38470 CVE-2025-38471 CVE-2025-38472 CVE-2025-38473 CVE-2025-3=
8474 CVE-2025-38475 CVE-2025-38476 CVE-2025-38477 CVE-2025-38478 CVE-2025-3=
8480 CVE-2025-38481 CVE-2025-38482 CVE-2025-38483 CVE-2025-38484 CVE-2025-3=
8485 CVE-2025-38486 CVE-2025-38487 CVE-2025-38488 CVE-2025-38489 CVE-2025-3=
8490 CVE-2025-38491 CVE-2025-38492 CVE-2025-38493 CVE-2025-38494 CVE-2025-3=
8495 CVE-2025-38496 CVE-2025-38497 CVE-2025-38498 CVE-2025-38499 CVE-2025-3=
8500 CVE-2025-38501 CVE-2025-38502 CVE-2025-38503 CVE-2025-38504 CVE-2025-3=
8505 CVE-2025-38506 CVE-2025-38507 CVE-2025-38508 CVE-2025-38509 CVE-2025-3=
8510 CVE-2025-38511 CVE-2025-38512 CVE-2025-38513 CVE-2025-38514 CVE-2025-3=
8515 CVE-2025-38516 CVE-2025-38517 CVE-2025-38518 CVE-2025-38519 CVE-2025-3=
8520 CVE-2025-38521 CVE-2025-38522 CVE-2025-38523 CVE-2025-38524 CVE-2025-3=
8525 CVE-2025-38526 CVE-2025-38527 CVE-2025-38528 CVE-2025-38529 CVE-2025-3=
8530 CVE-2025-38531 CVE-2025-38532 CVE-2025-38533 CVE-2025-38534 CVE-2025-3=
8535 CVE-2025-38536 CVE-2025-38537 CVE-2025-38538 CVE-2025-38539 CVE-2025-3=
8540 CVE-2025-38541 CVE-2025-38542 CVE-2025-38543 CVE-2025-38544 CVE-2025-3=
8545 CVE-2025-38546 CVE-2025-38547 CVE-2025-38548 CVE-2025-38549 CVE-2025-3=
8550 CVE-2025-38551 CVE-2025-38552 CVE-2025-38553 CVE-2025-38554 CVE-2025-3=
8555 CVE-2025-38556 CVE-2025-38557 CVE-2025-38558 CVE-2025-38559 CVE-2025-3=
8560 CVE-2025-38561 CVE-2025-38562 CVE-2025-38563 CVE-2025-38564 CVE-2025-3=
8565 CVE-2025-38566 CVE-2025-38567 CVE-2025-38568 CVE-2025-38569 CVE-2025-3=
8570 CVE-2025-38571 CVE-2025-38572 CVE-2025-38573 CVE-2025-38574 CVE-2025-3=
8576 CVE-2025-38577 CVE-2025-38578 CVE-2025-38579 CVE-2025-38580 CVE-2025-3=
8581 CVE-2025-38582 CVE-2025-38583 CVE-2025-38585 CVE-2025-38586 CVE-2025-3=
8587 CVE-2025-38588 CVE-2025-38589 CVE-2025-38590 CVE-2025-38592 CVE-2025-3=
8593 CVE-2025-38594 CVE-2025-38595 CVE-2025-38596 CVE-2025-38598 CVE-2025-3=
8599
linux-yocto/6.12: Ignore (cont.) CVE-2025-38600 CVE-2025-38601 CVE-2025-386=
02 CVE-2025-38603 CVE-2025-38604 CVE-2025-38606 CVE-2025-38607 CVE-2025-386=
08 CVE-2025-38609 CVE-2025-38610 CVE-2025-38611 CVE-2025-38612 CVE-2025-386=
13 CVE-2025-38614 CVE-2025-38615 CVE-2025-38616 CVE-2025-38617 CVE-2025-386=
18 CVE-2025-38619 CVE-2025-38620 CVE-2025-38622 CVE-2025-38623 CVE-2025-386=
24 CVE-2025-38625 CVE-2025-38626 CVE-2025-38628 CVE-2025-38629 CVE-2025-386=
30 CVE-2025-38631 CVE-2025-38632 CVE-2025-38633 CVE-2025-38634 CVE-2025-386=
35 CVE-2025-38638 CVE-2025-38639 CVE-2025-38640 CVE-2025-38641 CVE-2025-386=
42 CVE-2025-38644 CVE-2025-38645 CVE-2025-38646 CVE-2025-38647 CVE-2025-386=
48 CVE-2025-38649 CVE-2025-38650 CVE-2025-38651 CVE-2025-38652 CVE-2025-386=
53 CVE-2025-38654 CVE-2025-38655 CVE-2025-38657 CVE-2025-38658 CVE-2025-386=
59 CVE-2025-38660 CVE-2025-38661 CVE-2025-38662 CVE-2025-38663 CVE-2025-386=
64 CVE-2025-38665 CVE-2025-38666 CVE-2025-38667 CVE-2025-38668 CVE-2025-386=
69 CVE-2025-38670 CVE-2025-38671 CVE-2025-38672 CVE-2025-38673 CVE-2025-386=
74 CVE-2025-38675 CVE-2025-38676 CVE-2025-38677 CVE-2025-38679 CVE-2025-386=
80 CVE-2025-38681 CVE-2025-38682 CVE-2025-38683 CVE-2025-38684 CVE-2025-386=
85 CVE-2025-38686 CVE-2025-38687 CVE-2025-38688 CVE-2025-38689 CVE-2025-386=
90 CVE-2025-38691 CVE-2025-38692 CVE-2025-38693 CVE-2025-38694 CVE-2025-386=
95 CVE-2025-38696 CVE-2025-38697 CVE-2025-38698 CVE-2025-38699 CVE-2025-387=
00 CVE-2025-38701 CVE-2025-38702 CVE-2025-38703 CVE-2025-38704 CVE-2025-387=
05 CVE-2025-38706 CVE-2025-38707 CVE-2025-38708 CVE-2025-38709 CVE-2025-387=
10 CVE-2025-38711 CVE-2025-38712 CVE-2025-38713 CVE-2025-38714 CVE-2025-387=
15 CVE-2025-38716 CVE-2025-38717 CVE-2025-38718 CVE-2025-38719 CVE-2025-387=
20 CVE-2025-38721 CVE-2025-38722 CVE-2025-38723 CVE-2025-38724 CVE-2025-387=
25 CVE-2025-38726 CVE-2025-38727 CVE-2025-38728 CVE-2025-38729 CVE-2025-387=
30 CVE-2025-38731 CVE-2025-38732 CVE-2025-38733 CVE-2025-38734 CVE-2025-387=
35 CVE-2025-38736 CVE-2025-38737 CVE-2025-39673 CVE-2025-39674 CVE-2025-396=
75 CVE-2025-39676 CVE-2025-39679 CVE-2025-39680 CVE-2025-39681 CVE-2025-396=
82 CVE-2025-39683 CVE-2025-39684 CVE-2025-39685 CVE-2025-39686 CVE-2025-396=
87 CVE-2025-39689 CVE-2025-39690 CVE-2025-39691 CVE-2025-39692 CVE-2025-396=
93 CVE-2025-39694 CVE-2025-39695 CVE-2025-39696 CVE-2025-39697 CVE-2025-396=
98 CVE-2025-39699 CVE-2025-39700 CVE-2025-39701 CVE-2025-39702 CVE-2025-397=
03 CVE-2025-39704 CVE-2025-39705 CVE-2025-39706 CVE-2025-39707 CVE-2025-397=
08 CVE-2025-39709 CVE-2025-39710 CVE-2025-39711 CVE-2025-39712 CVE-2025-397=
13 CVE-2025-39714 CVE-2025-39715 CVE-2025-39716 CVE-2025-39717 CVE-2025-397=
18 CVE-2025-39719 CVE-2025-39720 CVE-2025-39721 CVE-2025-39722 CVE-2025-397=
23 CVE-2025-39724 CVE-2025-39725 CVE-2025-39726 CVE-2025-39727 CVE-2025-397=
29 CVE-2025-39730 CVE-2025-39731 CVE-2025-39732 CVE-2025-39733 CVE-2025-397=
34 CVE-2025-39736 CVE-2025-39737 CVE-2025-39738 CVE-2025-39739 CVE-2025-397=
40 CVE-2025-39741 CVE-2025-39742 CVE-2025-39743 CVE-2025-39744 CVE-2025-397=
46 CVE-2025-39747 CVE-2025-39748 CVE-2025-39749 CVE-2025-39750 CVE-2025-397=
51 CVE-2025-39752 CVE-2025-39753 CVE-2025-39754 CVE-2025-39756 CVE-2025-397=
57 CVE-2025-39758 CVE-2025-39759 CVE-2025-39760 CVE-2025-39761 CVE-2025-397=
63 CVE-2025-39765 CVE-2025-39766 CVE-2025-39767 CVE-2025-39768 CVE-2025-397=
69 CVE-2025-39770 CVE-2025-39771 CVE-2025-39772 CVE-2025-39773 CVE-2025-397=
74 CVE-2025-39775 CVE-2025-39776 CVE-2025-39777 CVE-2025-39779 CVE-2025-397=
80 CVE-2025-39781 CVE-2025-39782 CVE-2025-39783 CVE-2025-39784 CVE-2025-397=
85 CVE-2025-39786 CVE-2025-39787 CVE-2025-39788 CVE-2025-39790 CVE-2025-397=
91 CVE-2025-39792 CVE-2025-39793 CVE-2025-39794 CVE-2025-39795 CVE-2025-397=
96 CVE-2025-39797 CVE-2025-39798 CVE-2025-39799
libxslt: Fix CVE-2025-7424
pulseaudio: Ignore CVE-2024-11586
tiff: Fix CVE-2024-13978 CVE-2025-8176 CVE-2025-8177 CVE-2025-8534 CVE-2025=
-8961 CVE-2025-9165
tiff: Ignore CVE-2025-8851
vim: Fix CVE-2025-53905 CVE-2025-53906 CVE-2025-55157 CVE-2025-55158

---------------
Fixes
---------------
bash: use -std=3Dgnu17 also for native CFLAGS
binutils: Fix gprofng broken symbolic link with gp-*
bitbake: Use a "fork" multiprocessing context
bitbake: bitbake: Bump version to 2.12.1
bitbake: tests/fetch: Update tests after bitbake tag removal
build-appliance-image: Update to walnascar head revision
buildtools-tarball: fix unbound variable issues under 'set -u'
cve-update-db-native: Fix fetcher for CVEs missing nodes
default-distrovars.inc: Fix CONNECTIVITY_CHECK_URIS redirect issue
dev-manual/security-subjects.rst: update mailing lists
expat: upgrade to 2.7.2
ffmpeg: upgrade to 7.1.2
glib-2.0: update to 2.84.4
go: upgrade 1.24.6
gst-devtools: upgrade 1.24.13
gstreamer1.0-libav: upgrade 1.24.13
gstreamer1.0-plugins-bad: upgrade 1.24.13
gstreamer1.0-plugins-base: upgrade 1.24.13
gstreamer1.0-plugins-good: upgrade 1.24.13
gstreamer1.0-plugins-ugly: upgrade 1.24.13
gstreamer1.0-python: upgrade 1.24.13
gstreamer1.0-rtsp-server: upgrade 1.24.13
gstreamer1.0-vaapi: upgrade 1.24.13
gstreamer1.0: upgrade 1.24.13
lib/oe/utils: use multiprocessing from bb
libpcre2: upgrade 10.46
license.py: avoid deprecated ast.Str
linux-firmware: fix FILES to drop RDEPENDS on full package
linux-yocto/6.12: Revert "linux-yocto/6.12: riscv: Enable TUNE_FEATURES bas=
ed KERNEL_FEATURES"
linux-yocto/6.12: update to 6.12.47
migration-guides: add release notes for 4.0.29, 5.0.12 and 5.2.3
pkgconfig: fix build with gcc-15
poky.conf: bump version for 5.2.4
pulseaudio: Add audio group explicitly
python3-setuptools: restore build_scripts.executable support
ref-manual/variables.rst: expand IMAGE_OVERHEAD_FACTOR glossary entry
rpm: correct tool path in macros for no usrmerge
rpm: keep leading `/' from sed operation
runqemu: fix special characters bug
rust-target-config: Add has-thread-local option
sanity.conf: Update minimum bitbake version to 2.12.1
sdk: The main in the C example should return an int
systemd-systemctl-native: Install systemd-sysv-install
systemd-systemctl-native: Use +=3D instead of :append
systemd.bbclass: Make systemd_postinst run as intended
vim: upgrade 9.1.1652
vulnerabilities: update nvdcve file name
yocto-uninative: Update to 4.9 for glibc 2.42 and GCC 15.1


--_000_BL4PR11MB8797865EADC34F60A42C88B5B9E9ABL4PR11MB8797namp_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
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
<body lang=3D"EN-MY" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the Yocto Project 5.2.4 Release is now available for download.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.2.4/poky-d0b46a6624ec9c61=
c47270745dd0b2d5abbe6ac1.tar.bz2">https://downloads.yoctoproject.org/releas=
es/yocto/yocto-5.2.4/poky-d0b46a6624ec9c61c47270745dd0b2d5abbe6ac1.tar.bz2<=
/a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.2.4/poky-d0b46a6624ec9c61c47270745dd=
0b2d5abbe6ac1.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-5.2.4/p=
oky-d0b46a6624ec9c61c47270745dd0b2d5abbe6ac1.tar.bz2</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.2.4/RELEASENOTES">https:/=
/downloads.yoctoproject.org/releases/yocto/yocto-5.2.4/RELEASENOTES</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.2.4/testreport.txt">https=
://downloads.yoctoproject.org/releases/yocto/yocto-5.2.4/testreport.txt</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you for every=
one's contributions to this release.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chee Yang<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">chee.yang.lee@intel=
.com<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yocto Project Build=
 and Release<br>
<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.2.4 Release=
 Notes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repositories/Downlo=
ads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: po=
ky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.4<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: d0b46=
a6624ec9c61c47270745dd0b2d5abbe6ac1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-d0b46a6624ec9c61c47270745dd0b2d5abbe6ac1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: b5fa58650f7069=
c1c001f48aa8eeb12ab78b5f50a414de46df1a196fdc3be8cb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.4/poky-d0b46a6624ec9c61c47270745dd=
0b2d5abbe6ac1.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.4/poky-d0b46a6624ec9c61c47270745dd0b2d5abbe6a=
c1.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.4<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: ff1c5=
4df4e7b15df2e2c9fced59d9ad3e92ed565<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-ff1c54df4e7b15df2e2c9fced59d9ad3e92ed565<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: a348eb7c759cc0=
2c1415d2b506903ac1d5530708c9b47550a4ae8c8d86c75728<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.4/oecore-ff1c54df4e7b15df2e2c9fced=
59d9ad3e92ed565.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.4/oecore-ff1c54df4e7b15df2e2c9fced59d9ad3e92e=
d565.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.4<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: edce6=
93e1b8fabd84651aa6c0888aafbcf238577<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-edce693e1b8fabd84651aa6c0888aafbcf238577<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 6cfed41b54f83d=
a91a6cf201ec1c2cd4ac284f642b1268c8fa89d2335ea2bce1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.4/meta-mingw-edce693e1b8fabd84651a=
a6c0888aafbcf238577.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.4/meta-mingw-edce693e1b8fabd84651aa6c0888aafb=
cf238577.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.12<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.4<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: ac097=
300921590ed6a814f2c3fa08a59f4ded92d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-ac097300921590ed6a814f2c3fa08a59f4ded92d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: ad8afd956f5378=
691172317c95bdd1c098d6144a7269975d7d3230707305e88a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.4/bitbake-ac097300921590ed6a814f2c=
3fa08a59f4ded92d.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.4/bitbake-ac097300921590ed6a814f2c3fa08a59f4d=
ed92d.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.4<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 0993c=
45a1f78f302fd40c78a2a1f709daa7a0ae0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.4<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 29330=
751c8a2b82b4bd80659d2a0a8bac51afca5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Contributors<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepak Rathore<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Haixiao Yan<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Harish Sadineni<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hongxu Jia<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jan Vermaete<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Joao Marcos Costa<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Joshua Watt<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Kyungjik Min<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Libo Chen<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Markus Kurz<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Markus Volk<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Martin Jansa<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mathieu Dubois-Bria=
nd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Michael Halstead<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Patryk Seregiet<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Per x Johansson<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Kjellerstedt<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Siddharth Doshi<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Soumya Sambu<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yi Zhao<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Known Issues<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">N/A<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Security Fixes<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
025-8225<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Ignore CV=
E-2025-8224<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cups: Fix CVE-2025-=
58060 CVE-2025-58364<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Fix CVE-2025-=
9086 CVE-2025-10148<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">elfutils: Fix CVE-2=
025-1352 CVE-2025-1365 CVE-2025-1371 CVE-2025-1372 CVE-2025-1376 CVE-2025-1=
377<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expat: Fix CVE-2025=
-59375<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Fix CVE-202=
5-7700<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-2.0: Fix CVE-2=
025-4056 CVE-2025-6052 CVE-2025-7039<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnutls: Ignore CVE-=
2025-32989 CVE-2025-32990<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub2: Fix CVE-2024=
-56738<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub2: Ignore CVE-2=
024-2312<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0: Ignor=
e CVE-2025-2759 CVE-2025-3887 CVE-2025-47183 CVE-2025-47219 CVE-2025-47806 =
CVE-2025-47807 CVE-2025-47808<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: Fix CVE=
-2025-5916 CVE-2025-5917 CVE-2025-5918<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpre2: Fix CVE-20=
25-58050<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.12: I=
gnore CVE-2022-50233 CVE-2023-3865 CVE-2023-3866 CVE-2023-3867 CVE-2023-413=
0 CVE-2023-4515 CVE-2023-32246 CVE-2023-32249 CVE-2024-58238 CVE-2024-58239=
 CVE-2024-58240 CVE-2025-21884 CVE-2025-22103
 CVE-2025-22113 CVE-2025-22115 CVE-2025-22124 CVE-2025-22125 CVE-2025-23133=
 CVE-2025-37925 CVE-2025-37984 CVE-2025-38067 CVE-2025-38104 CVE-2025-38272=
 CVE-2025-38306 CVE-2025-38335 CVE-2025-38349 CVE-2025-38350 CVE-2025-38351=
 CVE-2025-38352 CVE-2025-38353 CVE-2025-38354
 CVE-2025-38355 CVE-2025-38356 CVE-2025-38357 CVE-2025-38358 CVE-2025-38360=
 CVE-2025-38361 CVE-2025-38362 CVE-2025-38363 CVE-2025-38364 CVE-2025-38365=
 CVE-2025-38366 CVE-2025-38367 CVE-2025-38368 CVE-2025-38369 CVE-2025-38370=
 CVE-2025-38371 CVE-2025-38372 CVE-2025-38373
 CVE-2025-38374 CVE-2025-38375 CVE-2025-38376 CVE-2025-38377 CVE-2025-38378=
 CVE-2025-38379 CVE-2025-38380 CVE-2025-38381 CVE-2025-38382 CVE-2025-38383=
 CVE-2025-38384 CVE-2025-38385 CVE-2025-38386 CVE-2025-38387 CVE-2025-38388=
 CVE-2025-38389 CVE-2025-38390 CVE-2025-38391
 CVE-2025-38392 CVE-2025-38393 CVE-2025-38394 CVE-2025-38395 CVE-2025-38396=
 CVE-2025-38397 CVE-2025-38398 CVE-2025-38399 CVE-2025-38400 CVE-2025-38401=
 CVE-2025-38402 CVE-2025-38403 CVE-2025-38404 CVE-2025-38405 CVE-2025-38406=
 CVE-2025-38407 CVE-2025-38408 CVE-2025-38409
 CVE-2025-38410 CVE-2025-38411 CVE-2025-38412 CVE-2025-38413 CVE-2025-38414=
 CVE-2025-38415 CVE-2025-38416 CVE-2025-38417 CVE-2025-38418 CVE-2025-38419=
 CVE-2025-38420 CVE-2025-38421 CVE-2025-38422 CVE-2025-38423 CVE-2025-38424=
 CVE-2025-38425 CVE-2025-38427 CVE-2025-38428
 CVE-2025-38429 CVE-2025-38430 CVE-2025-38431 CVE-2025-38432 CVE-2025-38433=
 CVE-2025-38434 CVE-2025-38435 CVE-2025-38436 CVE-2025-38437 CVE-2025-38438=
 CVE-2025-38439 CVE-2025-38440 CVE-2025-38441 CVE-2025-38442 CVE-2025-38443=
 CVE-2025-38444 CVE-2025-38445 CVE-2025-38446
 CVE-2025-38447 CVE-2025-38448 CVE-2025-38449 CVE-2025-38450 CVE-2025-38451=
 CVE-2025-38452 CVE-2025-38453 CVE-2025-38454 CVE-2025-38455 CVE-2025-38456=
 CVE-2025-38457 CVE-2025-38458 CVE-2025-38459 CVE-2025-38460 CVE-2025-38461=
 CVE-2025-38462 CVE-2025-38463 CVE-2025-38464
 CVE-2025-38465 CVE-2025-38466 CVE-2025-38467 CVE-2025-38468 CVE-2025-38469=
 CVE-2025-38470 CVE-2025-38471 CVE-2025-38472 CVE-2025-38473 CVE-2025-38474=
 CVE-2025-38475 CVE-2025-38476 CVE-2025-38477 CVE-2025-38478 CVE-2025-38480=
 CVE-2025-38481 CVE-2025-38482 CVE-2025-38483
 CVE-2025-38484 CVE-2025-38485 CVE-2025-38486 CVE-2025-38487 CVE-2025-38488=
 CVE-2025-38489 CVE-2025-38490 CVE-2025-38491 CVE-2025-38492 CVE-2025-38493=
 CVE-2025-38494 CVE-2025-38495 CVE-2025-38496 CVE-2025-38497 CVE-2025-38498=
 CVE-2025-38499 CVE-2025-38500 CVE-2025-38501
 CVE-2025-38502 CVE-2025-38503 CVE-2025-38504 CVE-2025-38505 CVE-2025-38506=
 CVE-2025-38507 CVE-2025-38508 CVE-2025-38509 CVE-2025-38510 CVE-2025-38511=
 CVE-2025-38512 CVE-2025-38513 CVE-2025-38514 CVE-2025-38515 CVE-2025-38516=
 CVE-2025-38517 CVE-2025-38518 CVE-2025-38519
 CVE-2025-38520 CVE-2025-38521 CVE-2025-38522 CVE-2025-38523 CVE-2025-38524=
 CVE-2025-38525 CVE-2025-38526 CVE-2025-38527 CVE-2025-38528 CVE-2025-38529=
 CVE-2025-38530 CVE-2025-38531 CVE-2025-38532 CVE-2025-38533 CVE-2025-38534=
 CVE-2025-38535 CVE-2025-38536 CVE-2025-38537
 CVE-2025-38538 CVE-2025-38539 CVE-2025-38540 CVE-2025-38541 CVE-2025-38542=
 CVE-2025-38543 CVE-2025-38544 CVE-2025-38545 CVE-2025-38546 CVE-2025-38547=
 CVE-2025-38548 CVE-2025-38549 CVE-2025-38550 CVE-2025-38551 CVE-2025-38552=
 CVE-2025-38553 CVE-2025-38554 CVE-2025-38555
 CVE-2025-38556 CVE-2025-38557 CVE-2025-38558 CVE-2025-38559 CVE-2025-38560=
 CVE-2025-38561 CVE-2025-38562 CVE-2025-38563 CVE-2025-38564 CVE-2025-38565=
 CVE-2025-38566 CVE-2025-38567 CVE-2025-38568 CVE-2025-38569 CVE-2025-38570=
 CVE-2025-38571 CVE-2025-38572 CVE-2025-38573
 CVE-2025-38574 CVE-2025-38576 CVE-2025-38577 CVE-2025-38578 CVE-2025-38579=
 CVE-2025-38580 CVE-2025-38581 CVE-2025-38582 CVE-2025-38583 CVE-2025-38585=
 CVE-2025-38586 CVE-2025-38587 CVE-2025-38588 CVE-2025-38589 CVE-2025-38590=
 CVE-2025-38592 CVE-2025-38593 CVE-2025-38594
 CVE-2025-38595 CVE-2025-38596 CVE-2025-38598 CVE-2025-38599<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.12: I=
gnore (cont.) CVE-2025-38600 CVE-2025-38601 CVE-2025-38602 CVE-2025-38603 C=
VE-2025-38604 CVE-2025-38606 CVE-2025-38607 CVE-2025-38608 CVE-2025-38609 C=
VE-2025-38610 CVE-2025-38611 CVE-2025-38612
 CVE-2025-38613 CVE-2025-38614 CVE-2025-38615 CVE-2025-38616 CVE-2025-38617=
 CVE-2025-38618 CVE-2025-38619 CVE-2025-38620 CVE-2025-38622 CVE-2025-38623=
 CVE-2025-38624 CVE-2025-38625 CVE-2025-38626 CVE-2025-38628 CVE-2025-38629=
 CVE-2025-38630 CVE-2025-38631 CVE-2025-38632
 CVE-2025-38633 CVE-2025-38634 CVE-2025-38635 CVE-2025-38638 CVE-2025-38639=
 CVE-2025-38640 CVE-2025-38641 CVE-2025-38642 CVE-2025-38644 CVE-2025-38645=
 CVE-2025-38646 CVE-2025-38647 CVE-2025-38648 CVE-2025-38649 CVE-2025-38650=
 CVE-2025-38651 CVE-2025-38652 CVE-2025-38653
 CVE-2025-38654 CVE-2025-38655 CVE-2025-38657 CVE-2025-38658 CVE-2025-38659=
 CVE-2025-38660 CVE-2025-38661 CVE-2025-38662 CVE-2025-38663 CVE-2025-38664=
 CVE-2025-38665 CVE-2025-38666 CVE-2025-38667 CVE-2025-38668 CVE-2025-38669=
 CVE-2025-38670 CVE-2025-38671 CVE-2025-38672
 CVE-2025-38673 CVE-2025-38674 CVE-2025-38675 CVE-2025-38676 CVE-2025-38677=
 CVE-2025-38679 CVE-2025-38680 CVE-2025-38681 CVE-2025-38682 CVE-2025-38683=
 CVE-2025-38684 CVE-2025-38685 CVE-2025-38686 CVE-2025-38687 CVE-2025-38688=
 CVE-2025-38689 CVE-2025-38690 CVE-2025-38691
 CVE-2025-38692 CVE-2025-38693 CVE-2025-38694 CVE-2025-38695 CVE-2025-38696=
 CVE-2025-38697 CVE-2025-38698 CVE-2025-38699 CVE-2025-38700 CVE-2025-38701=
 CVE-2025-38702 CVE-2025-38703 CVE-2025-38704 CVE-2025-38705 CVE-2025-38706=
 CVE-2025-38707 CVE-2025-38708 CVE-2025-38709
 CVE-2025-38710 CVE-2025-38711 CVE-2025-38712 CVE-2025-38713 CVE-2025-38714=
 CVE-2025-38715 CVE-2025-38716 CVE-2025-38717 CVE-2025-38718 CVE-2025-38719=
 CVE-2025-38720 CVE-2025-38721 CVE-2025-38722 CVE-2025-38723 CVE-2025-38724=
 CVE-2025-38725 CVE-2025-38726 CVE-2025-38727
 CVE-2025-38728 CVE-2025-38729 CVE-2025-38730 CVE-2025-38731 CVE-2025-38732=
 CVE-2025-38733 CVE-2025-38734 CVE-2025-38735 CVE-2025-38736 CVE-2025-38737=
 CVE-2025-39673 CVE-2025-39674 CVE-2025-39675 CVE-2025-39676 CVE-2025-39679=
 CVE-2025-39680 CVE-2025-39681 CVE-2025-39682
 CVE-2025-39683 CVE-2025-39684 CVE-2025-39685 CVE-2025-39686 CVE-2025-39687=
 CVE-2025-39689 CVE-2025-39690 CVE-2025-39691 CVE-2025-39692 CVE-2025-39693=
 CVE-2025-39694 CVE-2025-39695 CVE-2025-39696 CVE-2025-39697 CVE-2025-39698=
 CVE-2025-39699 CVE-2025-39700 CVE-2025-39701
 CVE-2025-39702 CVE-2025-39703 CVE-2025-39704 CVE-2025-39705 CVE-2025-39706=
 CVE-2025-39707 CVE-2025-39708 CVE-2025-39709 CVE-2025-39710 CVE-2025-39711=
 CVE-2025-39712 CVE-2025-39713 CVE-2025-39714 CVE-2025-39715 CVE-2025-39716=
 CVE-2025-39717 CVE-2025-39718 CVE-2025-39719
 CVE-2025-39720 CVE-2025-39721 CVE-2025-39722 CVE-2025-39723 CVE-2025-39724=
 CVE-2025-39725 CVE-2025-39726 CVE-2025-39727 CVE-2025-39729 CVE-2025-39730=
 CVE-2025-39731 CVE-2025-39732 CVE-2025-39733 CVE-2025-39734 CVE-2025-39736=
 CVE-2025-39737 CVE-2025-39738 CVE-2025-39739
 CVE-2025-39740 CVE-2025-39741 CVE-2025-39742 CVE-2025-39743 CVE-2025-39744=
 CVE-2025-39746 CVE-2025-39747 CVE-2025-39748 CVE-2025-39749 CVE-2025-39750=
 CVE-2025-39751 CVE-2025-39752 CVE-2025-39753 CVE-2025-39754 CVE-2025-39756=
 CVE-2025-39757 CVE-2025-39758 CVE-2025-39759
 CVE-2025-39760 CVE-2025-39761 CVE-2025-39763 CVE-2025-39765 CVE-2025-39766=
 CVE-2025-39767 CVE-2025-39768 CVE-2025-39769 CVE-2025-39770 CVE-2025-39771=
 CVE-2025-39772 CVE-2025-39773 CVE-2025-39774 CVE-2025-39775 CVE-2025-39776=
 CVE-2025-39777 CVE-2025-39779 CVE-2025-39780
 CVE-2025-39781 CVE-2025-39782 CVE-2025-39783 CVE-2025-39784 CVE-2025-39785=
 CVE-2025-39786 CVE-2025-39787 CVE-2025-39788 CVE-2025-39790 CVE-2025-39791=
 CVE-2025-39792 CVE-2025-39793 CVE-2025-39794 CVE-2025-39795 CVE-2025-39796=
 CVE-2025-39797 CVE-2025-39798 CVE-2025-39799<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxslt: Fix CVE-20=
25-7424 <o:p>
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pulseaudio: Ignore =
CVE-2024-11586<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tiff: Fix CVE-2024-=
13978 CVE-2025-8176 CVE-2025-8177 CVE-2025-8534 CVE-2025-8961 CVE-2025-9165=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tiff: Ignore CVE-20=
25-8851<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Fix CVE-2025-5=
3905 CVE-2025-53906 CVE-2025-55157 CVE-2025-55158<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fixes<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bash: use -std=3Dgn=
u17 also for native CFLAGS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix gprof=
ng broken symbolic link with gp-*<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: Use a &quo=
t;fork&quot; multiprocessing context<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: bitbake: B=
ump version to 2.12.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: tests/fetc=
h: Update tests after bitbake tag removal<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to walnascar head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">buildtools-tarball:=
 fix unbound variable issues under 'set -u'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-update-db-nativ=
e: Fix fetcher for CVEs missing nodes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">default-distrovars.=
inc: Fix CONNECTIVITY_CHECK_URIS redirect issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/security=
-subjects.rst: update mailing lists<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expat: upgrade to 2=
.7.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: upgrade to =
7.1.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-2.0: update to=
 2.84.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: upgrade 1.24.6<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gst-devtools: upgra=
de 1.24.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-libav:=
 upgrade 1.24.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-bad: upgrade 1.24.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-base: upgrade 1.24.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-good: upgrade 1.24.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-ugly: upgrade 1.24.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-python=
: upgrade 1.24.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-rtsp-s=
erver: upgrade 1.24.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-vaapi:=
 upgrade 1.24.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0: upgra=
de 1.24.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lib/oe/utils: use m=
ultiprocessing from bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpcre2: upgrade 1=
0.46<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">license.py: avoid d=
eprecated ast.Str<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-firmware: fix=
 FILES to drop RDEPENDS on full package<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.12: R=
evert &quot;linux-yocto/6.12: riscv: Enable TUNE_FEATURES based KERNEL_FEAT=
URES&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.12: u=
pdate to 6.12.47<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.29, 5.0.12 and 5.2.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pkgconfig: fix buil=
d with gcc-15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.2.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pulseaudio: Add aud=
io group explicitly<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-setuptools:=
 restore build_scripts.executable support<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: expand IMAGE_OVERHEAD_FACTOR glossary entry<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rpm: correct tool p=
ath in macros for no usrmerge<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rpm: keep leading `=
/' from sed operation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">runqemu: fix specia=
l characters bug<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust-target-config:=
 Add has-thread-local option<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sanity.conf: Update=
 minimum bitbake version to 2.12.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sdk: The main in th=
e C example should return an int<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd-systemctl-n=
ative: Install systemd-sysv-install<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd-systemctl-n=
ative: Use +=3D instead of :append<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd.bbclass: Ma=
ke systemd_postinst run as intended<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: upgrade 9.1.16=
52<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vulnerabilities: up=
date nvdcve file name<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-uninative: Up=
date to 4.9 for glibc 2.42 and GCC 15.1<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797865EADC34F60A42C88B5B9E9ABL4PR11MB8797namp_--

