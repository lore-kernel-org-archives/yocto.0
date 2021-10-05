Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 721F1C433EF
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 07:08:43 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web12.22172.1633417721273165037
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 00:08:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=pdwEQGOW;
 spf=pass (domain: intel.com, ip: 134.134.136.31,
 mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="286549440"
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200";
   d="scan'208";a="286549440"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 00:08:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200";
   d="scan'208";a="623293239"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmsmga001.fm.intel.com with ESMTP; 05 Oct 2021 00:08:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 5 Oct 2021 00:08:38 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 5 Oct 2021 00:08:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 5 Oct 2021 00:08:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 5 Oct 2021 00:08:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iEKqdl/yNW1tUJ4PPqCUVBB/IQoOOgbk7jUTgXZsmwth95lXkKjxMo+NtTZ66oVFXPbnE1VpAYp8DzVhUPxOrfVHmiaZK0eo/X9FwSRXhYcUYpXagE+Jh95w7bSiZCbGaLXOBXHAwoWDfDykpGdqdYas0+Nv7/um05216KNsZBJFInvGyz7YQFpeDEppEnRAdlJPw/7gneQytfM8a0Sn3s9yx63Bc/JFftPoABRB2rdEZaFEnRvnPUFWLaFTAISyCLsn/cHzGtcX2XsWsmmNrSaLnKImwrNuc/99PBdsOO4kQq+6GmCCDpUSjg5z0eEQD7WdM2X6siqrSXlAOGHLjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vxXiVKNumCWuo+hn3glgcKKqpiZJYBm3F9ZMeNGTZr4=;
 b=Fa7+bPqvWMasdJIss29Y4m7oWgopYJa/Skb30+57JNbWgqMInlUETM+5b7fY6JZdiG7LM+YRVo3gAknapjlJpRCLwJ+9cLaseWQgbjL4NvoVYMJhagQqZInEIOPjPK8grCuPNNOCI6i402IMEN3E0S/Z7yNI4/jhEfhBKoVC7lQpnRxr2IeNc4Wdq6EShk0JHPoPhmKHyJ+qFcI7WJDYyuiBb44WZj3fW6YA2ChK4hdnjGR9+f6Ee8XyvV4XVNDXEgg9OwjY4Ws9ICoIPuF8viJcLqrbNzdXrkZcMGCbr4bpbiLTfQvzPHK3TnH0lM4KbVNqn/muydoG+ZE3wuBNZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vxXiVKNumCWuo+hn3glgcKKqpiZJYBm3F9ZMeNGTZr4=;
 b=pdwEQGOW/k3yM1KPtZyh76ES+36sdYmrt1pxQFfgvA2HJkrJW2NX/1fBEELlMtDr1Sm7nAxdKgqny0Km0cwbRsFW/qPKX5zOQz93MGsplWHV733acMJoI/z5Wei/GwUHboelZDtDEKf522HD6o1urIz+5uoP96iLJ5hpKwiss0I=
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by MWHPR1101MB2288.namprd11.prod.outlook.com (2603:10b6:301:53::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Tue, 5 Oct
 2021 07:08:36 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::217f:42b:171d:c2fa]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::217f:42b:171d:c2fa%3]) with mapi id 15.20.4566.022; Tue, 5 Oct 2021
 07:08:36 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Kumar Gala <kumar.gala@linaro.org>, Kevin Townsend
	<kevin.townsend@linaro.org>
Subject: RE: [yocto] [meta-zephyr 0/2] add support of the
 zephyr-openamp-rsc-table sample on STM32MP157
Thread-Topic: [yocto] [meta-zephyr 0/2] add support of the
 zephyr-openamp-rsc-table sample on STM32MP157
Thread-Index: AQHXtRY/FOtEB30igEaoZpckfoZWWKvEBLFQ
Date: Tue, 5 Oct 2021 07:08:36 +0000
Message-ID: 
 <CO1PR11MB502616605AB95E80BB5DD098C4AF9@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20210929094129.13951-1-arnaud.pouliquen@foss.st.com>
In-Reply-To: <20210929094129.13951-1-arnaud.pouliquen@foss.st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
authentication-results: foss.st.com; dkim=none (message not signed)
 header.d=none;foss.st.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2005f395-d1a4-4497-758c-08d987cef38f
x-ms-traffictypediagnostic: MWHPR1101MB2288:
x-microsoft-antispam-prvs: 
 <MWHPR1101MB22881AB944E9D470A0440AE9C4AF9@MWHPR1101MB2288.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 VoCAQQOrdcBd89RTJ2izG1ioK4TQgBwrGRdHTG0nIEiOchI3SZLWsuaVVpaLW7SXHedFcQaynxH8yOXms8738N6yMvShRx6XKs25JozrRowCdt6UO3WTjB50xDRnSJ2quZ2v2PcqS8HRu9QO6bjaBQCIku3YkctpIRZoxDyLMmTZLLkXtlUiqNEC/TEZXw8rDIlqFG829umVa2b5SIUjtF2f6Lm2j1JvetFBJFXGqXponwIzmYyKFo2Adpv9LgejI0I+3jc5ireVrwTav0FBYa7d8uWVeOU24oKzhmjnzXaGg37Uk3HFLOQyhJsBTwngtcmq0/G5o5lhI4vdyac0bWaMkla1f+Zdk6+UF6gKYCV+qsRHR8EGoo7GnRReJqV6Vp0kypgGPVyEQ57DeMclrtzaMIOXqxTJll7X9DX8gIE+jQsPUdgQMiHeeMH4oC8Vmvm0Z5fE+Ao7PJ3Kslq270IpvALApqpUhlhBk46vgIU9CipDqVaf3PXFTN700yrflCV3L7adGyuoNPwKaBWe8FQXa2bxqtCHnvqoom2gAC+EZnADcPDezIAl54mw1r+l5Z0qFry2g8Ch1AMSY6JyRYA8CWrYrrL8STATdoTB6wkkRzuIsy3PtqZrVgiWJ3MM1Q5OTJFu6ffeOIrKGJnUY9NNw/zb4FnAlWmsxk4uL4S0Q1LHFFhlrVg/ae4hiYiZ6LeJlxnXWYxO53+02c/Sxg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66946007)(316002)(52536014)(66556008)(5660300002)(9686003)(7696005)(2906002)(86362001)(33656002)(64756008)(66476007)(66446008)(110136005)(54906003)(55016002)(4326008)(508600001)(76116006)(8936002)(38100700002)(71200400001)(122000001)(26005)(83380400001)(38070700005)(53546011)(6506007)(8676002)(186003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?2S8zkvsMaQjEtt3fBMmU0ZR8WuuY2wqPLkb5mpjaR3slzXznnOR2Kzv8D98k?=
 =?us-ascii?Q?hT9hT/tCImZI62xsJGykE5YWs6Jw0RBMnhT0TeXGNfrJwvSgtEvXHbuhqq/h?=
 =?us-ascii?Q?NZ1TK8fJLKuuzHmi0CGWsBvurkzGHeBCzQfzSx/cvaonzFUp+k44sA0n5RZw?=
 =?us-ascii?Q?VAxf0/rCM2j4dAUDUx7QspczfD+GLVdJvgKVJyOhpEbwgqCV1g8lCvjPRgWN?=
 =?us-ascii?Q?CWjI37gQv4RXvYcyrR3cZxQTOipyKcdp9vT3cgrozM+w90WnXlRnSzE4P1t1?=
 =?us-ascii?Q?cauwrvynaX/iP8S+s7fU4Mj6wr4wxs2Exw6ztcmX7Kc4kqxCLLHy+B+eX7YA?=
 =?us-ascii?Q?z8D0sd8FAROBG+39U3p6bl4OnO+ShHH/P43ceYx54StsIPtcXdnl90wG+OVg?=
 =?us-ascii?Q?UZpeFgqAJgj8nPBVRvj8Ci09HCKHVP8CWXxkEhnyU0v+dDFPXwk3LPxNXQPn?=
 =?us-ascii?Q?vdu2ewMxQ+OtzTzYt+lSNmEs5rXd6gnK88y6Ol2IlvzF5AwaDDHzTKycodVw?=
 =?us-ascii?Q?zz9qZXat9EwBxbN1uBoDQYtMD7tgzHGk8L2+htjrFzntbxFftdAIT+LbK5yp?=
 =?us-ascii?Q?lNs2Mn/GF/NJ7k9AqEeFkiOsQ3B6W1KvrxmINpvFqoIfBxNem9edeIvVy/WV?=
 =?us-ascii?Q?6nJMg1u1kS+V4gt0c/DDMNT/et2hxpDSHWT+SWk8TtVEYQzb1ncpgZWoFhE3?=
 =?us-ascii?Q?4Gnyj4yYi4nTM/lpjeJ6s8ElHYTbeI5ngtJi2hOh5LDH3f4bsGz6kJQ+NTcs?=
 =?us-ascii?Q?YepRdUOu0Haymu2t4OZvsnau/rp4C/XHq99p2YjmCYzPfhiwBCNCyKVOmPK1?=
 =?us-ascii?Q?RPPL2jVhpyxnjtpOhAomgtEvkFDbpvxFLiaKR1d+800bCsM4llmSepCHAA6Q?=
 =?us-ascii?Q?9o5iwMveV23+PoDyNukrYKLzQo/w9PyqzXRBBgJfEHB0w5K3D9NCX+P+ky9G?=
 =?us-ascii?Q?Gai1b2Zs7DTT3CzR0N7iLvC58g+Akr9aVdr849squC5EsvEEAM9XrLMzjOAP?=
 =?us-ascii?Q?KdpIqpisIylkH7YcESMuzSB8BHfifUuN7Ol+ICfEeZOkvLNT78U7IMemNtJv?=
 =?us-ascii?Q?Iay/zIJr2oEKNG5FbmhR6dSmMZqtK6DbgnU60E7kKqr0+XQ8nwH5yaBSY4hV?=
 =?us-ascii?Q?Tsu7wvkBfPp4UyrSgTbqu+vsn+WL4qwCdXsb9iwIMSlEIv34GTU7bUxM7lef?=
 =?us-ascii?Q?+mZ+L+3pSECO8Q4BfxfIdhNrMW2l3NJ0Bk7lVy4j5tvAGBBxdQ8PvTWYpzgj?=
 =?us-ascii?Q?tSHnFUvTIyI5sWdm96L/oP69PlMVoe85zygdkOVa48TahBJ8GZnBABejxLX3?=
 =?us-ascii?Q?JENnM6eQbX5YyDu6i/MlDHDq?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 2005f395-d1a4-4497-758c-08d987cef38f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2021 07:08:36.7888
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 jpnBjaOLQ/LWgRGKA/bL7jEw32MH3T6poU9h/uDS2WpdEo6ZHullbfe1KM2URmfe3/jzrDd3Dni9NAHhFCvf0xu8vFB+bUxbrKMFGly31Ts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2288
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 07:08:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54954

This is only cover letter, I do not see patches on mailing list..

Regards,
Naveen

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Arnaud Pouliquen
> Sent: Wednesday, September 29, 2021 5:41 PM
> To: yocto@lists.yoctoproject.org
> Cc: Kumar Gala <kumar.gala@linaro.org>; Kevin Townsend
> <kevin.townsend@linaro.org>
> Subject: [yocto] [meta-zephyr 0/2] add support of the zephyr-openamp-rsc-
> table sample on STM32MP157
>=20
> Add capability to genereate the "zephyr-openamp-rsc-table" sample in yoct=
o
> build.
>=20
> This example demonstrates inter-processor communication based on a
> resource table, with the objective of responding to the Linux kernel rpms=
g
> sample.
>=20
> This sample is compatible with the stm32mp157c_dk2 board.
> The support of the board is also added in this series.
>=20
> Arnaud Pouliquen (2):
>   conf: machine: add stm32mp157c-dk2 support
>   zephyr-kernel: add openamp-rsc-table sample
>=20
>  conf/machine/stm32mp157c-dk2.conf                      |  8 ++++++++
>  .../zephyr-kernel/zephyr-openamp-rsc-table.bb          | 10 ++++++++++
>  2 files changed, 18 insertions(+)
>  create mode 100644 conf/machine/stm32mp157c-dk2.conf  create mode
> 100644 recipes-kernel/zephyr-kernel/zephyr-openamp-rsc-table.bb
>=20
> --
> 2.17.1


