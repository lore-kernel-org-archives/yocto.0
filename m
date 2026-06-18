Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01A61CD98ED
	for <webhook@archiver.kernel.org>; Thu, 18 Jun 2026 09:55:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.15932.1781776537780885024
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jun 2026 02:55:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=kRet6/Ud;
 spf=pass (domain: intel.com, ip: 198.175.65.12, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781776538; x=1813312538;
  h=from:to:subject:date:message-id:mime-version;
  bh=Zftxf5OkYrB23f8DOYKMyT0xKVRdK/DgoTFEOcrzWvg=;
  b=kRet6/Udh0D4sEExfVm8njPG1BwddnpotvOuycHCM8rEC0Elu/s9OaN6
   JxiQa3RoGiF8eauulUkLd8El3uUSrhIStIhqoCpWd5ERODzv7F0V2lEon
   ds3ZjSE03Rf9mWLobC//3wZWvQIsw3Idd/MRpwkxxFWrSAUOWIcmTHvIr
   aYFeSJaArE4iTA4Ac0bguRsXTIDUKK9O87LuIi7mcaW/DdIY9CQLJAZpy
   u/G8OL2OjIbuSUduUZXgLhCMZ8I1Nt0PfR+lFCjnGW3sJXcAbDPlaQ4uc
   JbM8HRPCUMAZGUQneqVd/tPSviKHcqTTFW5sB5BHaLYjKYuivSOylFQX7
   g==;
X-CSE-ConnectionGUID: PsuL3bFtTfC5WxBbkF7dwg==
X-CSE-MsgGUID: sEKrfX95QMCbLkH1bma0Ag==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="94106354"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; 
   d="scan'208,217";a="94106354"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2026 02:55:37 -0700
X-CSE-ConnectionGUID: CQkt5SYiQL2TNbwT5oDRcw==
X-CSE-MsgGUID: 69Igs/cNTJmsHDlCuG4v4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; 
   d="scan'208,217";a="248404866"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2026 02:55:37 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 02:55:36 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 02:55:36 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.13) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 02:55:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ukNLlKvo8IDjZppvl1MtLA3XlvZ180Iou4XN7rWOPS84mP9m67wjkIxLm8TwFEyL7isQjm0wZKTaZxZ4fjA7ziJ8Jcx5K4IGZo6Dv5Yl7biCaWujhDBnU81kXsaBYGE2OoelAhe5eXLwhuXd1TQcDwT8C3xW9NtWYfrQCIEtqwd/x7xh5JRo/rh4DvJKtPRr+IDKSWJ0ERy2J2r+Mjb3kEoioDB9WnojnjxOro0n7w+Rmts1NyDZu5SIkXp17oxmwE03dV9LEmUtl3RXcLI4xGjXQOS6GDw3PPJCCtiDyCQZhES4mqoKouM79rUoNwZQRjjkCcUeqdv6UCenKgwwCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zftxf5OkYrB23f8DOYKMyT0xKVRdK/DgoTFEOcrzWvg=;
 b=WYGtVn8qMy9BdOVWqgOYQ05YNRg5mht5eY/T3EBUcjdWitMOF8TYMtq/GCzi8ItFgvEZjhQgQwaESuIq+gmmZXwzUmdNdUSO2tieQ3FXTaFp1cCRUo0LPZ0ST1mSnObvrWybKZwXcK79b2N2v+ewv0vgiePTMFRsKJ8ghdkfZA+6mxw9Ibm3LjdnOHOFOBxFI1PnBQWg316r5AtyWcZTaK/2xxL16DG9Z4h84Oa/91XnNytXN6Kc6MfSoqR81wIafM5h9JoeQKrxcyE9ncMk1WwSj7xUYXbBGOgyGqf4buoWe0SSl2xH9riJyzv7GwD2v5IGmQ93ty/6LXzVmjTd4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by SAWPR11MB9709.namprd11.prod.outlook.com (2603:10b6:806:4ca::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Thu, 18 Jun
 2026 09:55:29 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.21.0113.015; Thu, 18 Jun 2026
 09:55:29 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 6.0.1 (wrynose-6.0.1) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 6.0.1 (wrynose-6.0.1) is Released
Thread-Index: AQHc/wThwwa3tThTI0m9kODzefz6zA==
Date: Thu, 18 Jun 2026 09:55:29 +0000
Message-ID: <BL4PR11MB8797068C9CD4D9088EDB4B5FB9E32@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|SAWPR11MB9709:EE_
x-ms-office365-filtering-correlation-id: 1b0ea658-d398-4427-7669-08decd1fba9c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|1800799024|10070799003|366016|376014|8096899003|38070700021|3023799007|18002099003|56012099006|11063799006|6133799003;
x-microsoft-antispam-message-info: Ol4tbJA6jgApgkeq4PbB3yz61GCK10pPww+ow6q10ixveIFGmnEv/9Lz4FppvojqvqSOpW9V89db2rKLUioF58J6Tmh/KdxB0t3f4FavrEh0rxiTIZeZ+50Rgi3zraeEwyRSKXqVD3MWPoLABVp3g31ZAbhXLtJzpCHY0tnbww/H9HOTIgqcQrM3SmzxgYGqgEjNWdSfIggVV0HctZl+kkVp8nGV8O9wthSHsjoZiZGZIU2sZ8ULcVTGfzXuHGLGxxCrNwfztUJngbYW3H3xQ0sk0UNhUdaZgNJsg5ZUrgZLd/GKIRyMEYghhFlhoCFe6e4RcW4rg1VEmoxLD72l4bdrFBW4FSUzsO/LoNT9pDSzatChXZJ1e8z6b9tUDQ4V8gfI6ClxTT0IUDMVpoXJg5L9fT35xUrgDp+nJAS1bh3GNCPCTsAjnWRaeuO9rhOaZ0Cpr7iA2u7k6j+VxK071RhzlBDn3VfLMZ/fSaelU23YXoFgiQCY9bqsZAae7i+vDIXZOEPN9ws9q0ydzg6S7dNngZZqWt1AK/Y4wYGlCEJtY8lWH+/zxudnNsWWjZ9/Moe0DDl3a8Udc66iaGVoxgHpfYUG186AHQihJbGsL7/TsvOaBLcOjYghkk6uFjoqUMRqcRH2N8O0zX/8iUuHWoyYif/NESCizo0TQsLp3usRa5U7jFdx728AK32LaQXEYcRUlsgkOgdYA3sTJPkmug==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(10070799003)(366016)(376014)(8096899003)(38070700021)(3023799007)(18002099003)(56012099006)(11063799006)(6133799003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?viZOBMiPFQkib/eZsJbZr2nLjPe623t7qQBnd40qL2DFGhS4bDLKvcNQKE?=
 =?iso-8859-1?Q?I7IlvhMZuBKxzdBLnQWXnbXRHKywYmKmnJjZsDvGktgY8lo/ucSpacaqOP?=
 =?iso-8859-1?Q?AwbpaagARdfbgI1I4cXmJI/L6WGyaxKtqaJ0peGIVuVjuV4u2AqMN3OQFe?=
 =?iso-8859-1?Q?HhNAjQhNo+bJ6+aQVaEUgeBz9baxxSjol2srrrI5eTPMNQEoG5cIvOr6OP?=
 =?iso-8859-1?Q?vlfQDI+BI2HpOFrLmK2jZnwcBaSKIB8yNYoceCHxyTgiYWY6somy8vhwpT?=
 =?iso-8859-1?Q?a546PNyUGq3tzooyFkKSYBzQI+vxCmZXxTeG0DuZhk3kohQKtqT6b6fcnO?=
 =?iso-8859-1?Q?vpGydVlUOusfG5xNVQsnSUE0LokwaTXbdZ77NEFOf2IQOo+xmblDZNB35J?=
 =?iso-8859-1?Q?2XhW6tPs9f+ODrfDXQFocOWgJX19iU/7mnbsp3ZuVKQcSfdNI79NKHr+Ro?=
 =?iso-8859-1?Q?w8eKz6SCSp4SdY9juK16rXHEj2p6INx5PfNwR47RIkFBt8j4C+CUAssfI9?=
 =?iso-8859-1?Q?lpEn5S13VHi2qy7iS77gPBcv6/ocZa0PogwZ0Dd3TSdmaiRMkUJftZx2D6?=
 =?iso-8859-1?Q?70RQwIPAOzmcxNLqcBkz7MqM3Ze7u6Gl8kPuwUGyTJ25BapJHr1wALNfKN?=
 =?iso-8859-1?Q?yR94+2zFuTLG492ZimT3PwGhJxxrv33OulYcraN4ItrnSBRDMcXMOO60Ph?=
 =?iso-8859-1?Q?1PHT7prsGMHXEWHAQICxhEPUX8+Wng7+5JgP8b5QRxfNu0SUwe5HLcj7hK?=
 =?iso-8859-1?Q?rKr3Z/ML3lgXSr/+hagcrCMCpR2VO23zGz9XUVsTx9Higrl2B7K5uJZsuq?=
 =?iso-8859-1?Q?PwLmbCebTegVmN/SylytG+Z6kIuaN+lohZ7XwOkdXFLZnwE/0KXOCpaEZ2?=
 =?iso-8859-1?Q?VNQ8O1dQf2X/L6xGd2V96ffO3MWW4cV3QDP1IyOzh28S9vtNhovoaJGAHD?=
 =?iso-8859-1?Q?ZoMGwbFsMpDd+gm9PSnj+8B9hjRQrGxHGooHKK4sd3jyDzqmnrMAZRNHFT?=
 =?iso-8859-1?Q?bXUEfCrdEWvWpa1cwB9IdWcB6r0cZhmrddiJEALJsR82hw6sj39nwvMcgz?=
 =?iso-8859-1?Q?LTy+oi89fIGNOmW7UIG23FYMxtK4z0qOkiZrL/QZeAjRapbuLnYNE8j+mn?=
 =?iso-8859-1?Q?gYjZfmlmsC3ZBMXYEhThTbxiAsdJAwOOp0G8mYCIFGoYJzb4giy9t0ZtLk?=
 =?iso-8859-1?Q?kGzN0AEukZ2Fj8Y3MYgPwQMm1bS2iB3rak8j+zZDim07kfOfbKkfdJ5BFW?=
 =?iso-8859-1?Q?p/FcRwQBCNXP/jrgE5ZeATXkek+/A5bbWTm6X7de/K/8p2ZrWXmpskGRt6?=
 =?iso-8859-1?Q?iPW634KRGteEteBdl3iOOkwiWtiJkVHoNUXUSMzifLRSgeiP9XgoXAOJkV?=
 =?iso-8859-1?Q?8uvBxNP1OrGIICKZ9uMHn5LkN3rp9vT7E4sShA5HIJ1ps0FUHukOCHHkHc?=
 =?iso-8859-1?Q?PFsipdklqTZ+cG/EHRy8QOWAH/P4710LxzvW4fWg1q11LU2qDk2c3Zqkiw?=
 =?iso-8859-1?Q?xVTAtnPQ0aFktEX2aPxGM2tDqGKHxxXths16UzOp4ctz1gMu3g5ggENigA?=
 =?iso-8859-1?Q?MbTViuNONA3bayldJcJAfMivHWBTyLW2jvYdZLVeRKxSeHb41VC8UhFwt8?=
 =?iso-8859-1?Q?ws4Jeml6JG/7pQtgkPVTHlDbC+9c7G+ekHli+KsD83822zNfCYcK8BMg8c?=
 =?iso-8859-1?Q?inzETfW+QQ15d7cmtOf0oQH1KO7TBCbhCpnznXk4+RW3gbdzd83Gsy0cvG?=
 =?iso-8859-1?Q?Q8D4X/orPVEHIbqOhhgGH9RTbo+JP97yjl1JHXNwpmJba0VcORA4Cgh5Xy?=
 =?iso-8859-1?Q?PlXqqXb5V7YMQgSAmO+ESvjNLtfA77PkrLmN5d9wjhDPffremoT0QtXPK0?=
 =?iso-8859-1?Q?Zf?=
x-ms-exchange-antispam-messagedata-1: WO6/NYmMA5GjmA==
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797068C9CD4D9088EDB4B5FB9E32BL4PR11MB8797namp_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ClkzzeqHbBuGXfdVZEVriVWeGVUCVTmnABKG03OyU4jbWtf+E1l1pnDlvoHETshkAE8dJjHQR8Sv+msWhAmskUSSYX0oUac9qrau0fpiiSlU66+zl9z9yZ/dYGO2cv5TCKlTLx//lRKX3HqxOlQiOOesF7FpMjXsVpoDd7eLMCa1kOpfXhhg8pTjqXyx5TvP6IKzbKjhoAiVv6Xocy3RbDDlhQMHpIrFmgeiaQoMfL4bC13vsmW0BfEnZOcfim8LdBdUSwicQWuw5LQGH+4E4f5zxKUeQh4U25lhvZDkJJn5HJ1bNxWXlJL0C2+Xo8Ujqq30O1hJvopYblPH4ZQa8g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b0ea658-d398-4427-7669-08decd1fba9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2026 09:55:29.1446
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cyGv/KHdRW7zyVJehfEKSaAbqB8rZ+z7avdyxqlOP2bz1xC59+9N51nwHxv7vUpttObO3h648quB+1EvYzMotA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9709
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Jun 2026 09:55:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66605

--_000_BL4PR11MB8797068C9CD4D9088EDB4B5FB9E32BL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 6.0.1 Release is now available=
 for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.1/

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/testreport.tx=
t


Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release


--------------------------
yocto-6.0.1 Release Notes
--------------------------


--------------------------
 Repositories/Downloads
--------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: wrynose
Tag: yocto-6.0.1
Git Revision: 7ac955621b36a221126cd40f12c41fa98c213a24
Release Artefact: yocto-docs-7ac955621b36a221126cd40f12c41fa98c213a24
sha: 32e25828d25662db5e92829ae6a471291e27d950b5c273458fae211a776e4131
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/yocto-docs-7a=
c955621b36a221126cd40f12c41fa98c213a24.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.1/yocto-docs-7ac95562=
1b36a221126cd40f12c41fa98c213a24.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: wrynose
Tag: yocto-6.0.1
Git Revision: 06dd66e6220e5ce4ed4b9af4d8231ae5f0a8ce80
Release Artefact: oecore-06dd66e6220e5ce4ed4b9af4d8231ae5f0a8ce80
sha: 26de701c73d43ab8904bc57b162385901f9a1114807b3e28b665437d4ba23624
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/oecore-06dd66=
e6220e5ce4ed4b9af4d8231ae5f0a8ce80.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.1/oecore-06dd66e6220e=
5ce4ed4b9af4d8231ae5f0a8ce80.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: wrynose
Tag: yocto-6.0.1
Git Revision: 8251bdad5fda780a000fb41e6eda82eadf0fa39e
Release Artefact: meta-yocto-8251bdad5fda780a000fb41e6eda82eadf0fa39e
sha: ac9125ddd150febba0da9ae4fb7e222dde1d6e8f2ad3aaae1c0c2a4c1f738f36
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/meta-yocto-82=
51bdad5fda780a000fb41e6eda82eadf0fa39e.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.1/meta-yocto-8251bdad=
5fda780a000fb41e6eda82eadf0fa39e.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: wrynose
Tag: yocto-6.0.1
Git Revision: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
Release Artefact: meta-mingw-a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
sha: cea731150cd3caedd90ca6a82bf050a00c3705cea166d24a6077d07b1b7b2404
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/meta-mingw-a4=
ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.1/meta-mingw-a4ba674d=
6a0a17e4c0bc4c11bbb9d0ea9de2b315.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.18
Tag: yocto-6.0.1
Git Revision: 22021758e66737bcf68dfd2b74adc6a0cb1d42d9
Release Artefact: bitbake-22021758e66737bcf68dfd2b74adc6a0cb1d42d9
sha: ce9c213f9b8c5fb677b0a64ac883386a4d578fdb66881dcc9f1cd8bc4e79e7f6
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/bitbake-22021=
758e66737bcf68dfd2b74adc6a0cb1d42d9.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.1/bitbake-22021758e66=
737bcf68dfd2b74adc6a0cb1d42d9.tar.bz2


---------------
 Contributors
---------------

Thanks to the following people who contributed to this release:

Alexander Kanavin
Andrew Geissler
Ankur Tyagi
Antonin Godard
Benjamin Robin (Schneider Electric)
Chen Qi
Daniel McGregor
Dawid Bijak
Dmitry Sakhonchik
Himanshu Jadon
Ivan Nestlerode
Jinwang Li
Johan Anderholm
Jo=C3=A3o Marcos Costa
Lee Chee Yang
Leonardo Costa
Li Wang
Minwoo Choi
Moritz Haase
Paul Barker
Peter Marko
Peter Tatrai
Quan Sun
Quentin Schulz
Richard Purdie
Robert P. J. Day
Ross Burton
Sam Kent
Thomas Perrot
Vijay Anusuri
Wang Mingyu
Yoann Congal

---------------
 Known Issues
---------------
N/A


---------------
Security Fixes
---------------

avahi: Fix CVE-2026-34933
base-files: Ignore CVE-2018-6557
bind: Ignore CVE-2017-3139
busybox: fix CVE-2024-58251 CVE-2026-29004
cargo: Ignore CVE-2023-40030
cve-extra-exclusions: Ignore CVE-2019-2708
ffmpeg: Ignore CVE-2022-2566 CVE-2025-9951 CVE-2025-59729 CVE-2025-59730
git: Ignore CVE-2024-32002 CVE-2024-50349 CVE-2024-52006 CVE-2025-48385 CVE=
-2025-48386
glibc: Fix CVE-2026-4046
gnutls: Ignore CVE-2026-1584
harfbuzz: Ignore CVE-2024-56732
inetutils: Fix CVE-2026-32772
libarchive: Ignore CVE-2026-4426 CVE-2026-5745
libsoup: Fix CVE-2026-2708 CVE-2026-5119
libsoup: Ignore CVE-2026-2369 CVE-2026-2436
libssh2: Fix CVE-2026-7598
libva: Ignore CVE-2023-39929
ovmf: Ignore CVE-2024-38796 CVE-2024-38797 CVE-2024-38798 CVE-2024-38805 CV=
E-2025-2295 CVE-2025-2296 CVE-2025-3770
p11-kit: Ignore CVE-2026-2100
python3-requests: Ignore CVE-2024-35195 CVE-2024-47081
python3-setuptools: Ignore CVE-2024-6345
rsync: Ignore CVE-2024-12084
ruby: Ignore CVE-2025-0306
sed: Fix CVE-2026-5958
sudo: Fix CVE-2026-35535
tiff: Fix CVE-2026-4775


---------------
Fixes
---------------

bitbake
-----------
README: Add "2.18" subject-prefix to git-send-email suggestion
b4-config: add send-prefixes for 2.18/wrynose
fetch/git: Fix leaking of temporary directory
fetch/git: Improve temporary directory handling
fetch/wget: in upstream version checks, match versioned directories exactly
fetch2/crate: use CDN endpoint for version checking if possible
fetch2/crate: use CDN for fetching crates

oecore
-----------
README: Add wrynose subject-prefix to git-send-email suggestion
apr-util: Add CVE_PRODUCT to support product name
apr: Add CVE_PRODUCT to support product name
b4-config: add send-prefixes for wrynose
bluez5: add patches to fix 8.56 cli & gatt issues
build-appliance-image: Update to wrynose head revisions
build-appliance-image: fix branches for wrynose revisions
cargo: set CVE_PRODUCT
ccache: upgrade to 4.13.3
classes/base: add explicit bzip2-native dependency for unpacking .bz2
coreutils: set CVE_PRODUCT
default-distrovars.inc: add missing spaces in append overrides
devtool: Disable gpg signing when setting up source tree repos
dhcpcd: upgrade to 10.3.1
efivar: Backport patch to fix -march issue for ppc64le
features-check.bbclass: add reference to required TUNE_FEATURES
glibc: Fix recipe bug that disabled stack protector
glibc: stable 2.43 branch updates
groff: upgrade to 1.24.1
gsettings-desktop-schemas: upgrade to 50.1
gtk4: upgrade to 4.22.2
gtk+3: upgrade to 3.24.52
hwdata: upgrade to 0.406
mirrors: remove inactive sources.openembedded.org URLs
oe-pkgdata-util: fix empty runtime-rprovides directory handling
oe-pkgdata-util: fix runtime-rprovides handling in lookup_pkg error path
package.py: fix kernel module file pre-filter and document strip asymmetry
perf: add PACKAGECONFIG for llvm
pseudo: Upgrade to 1.9.7
python3-requests: Increase chardet upper limit
python3-sbom-cve-check: Update to version 1.3.1
qemu: fix iotlb_to_section() for different AddressSpace
rust: fix codegen test failure on big-endian targets
sbom-cve-check-update-cvelist-native: Update source revision
sbom-cve-check-update-nvd-native: Update source revision
sbom-cve-check: set PV from upstream tags and ensure version checks are cor=
rect
scripts/makefile-getvar: quote MAKEFILE variable
sed: upgrade to 4.10
shadow-native: Change upstream status of disable_syslog.patch
shadow: set CVE_PRODUCT
sudo: set CVE_PRODUCT
tzdata/tzcode-native: upgrade to2026b
utils: Handle unexpanded variables in DISTRO_FEATURES
wireless-regdb: upgrade to 2026.03.18


meta-yocto
-----------
poky.conf: Bump version for 6.0.1 release

yocto-docs
-----------
"Transitioning ..." doc: Various pedantic cleanups
Quick Build guide: Various pedantic cleanups
What I Wish I'd KNown: Various pedantic cleanups
YP Quick Build: delete extraneous periods in list
YP Quick Build: use "set up" as a verb
conf.py: add a :yocto_bug: role
contributor-guide: fix type "maintainance" to "maintenance"
dev-manual: "--runonly" should be "--runall"
docs-wide: drop documentation for cve-check and variables
index.rst: update "Software Overview" to "Technical Overview"
migration-guide: add release notes for 4.0.35 5.3.4
migration-guide: migration-6.0: fix typos in cve-check removal
migration-guides/migration-6.0.rst: add migration notes on cve-check remova=
l
migration-guides/migration-6.0.rst: document the CVE_PRODUCT behavior chang=
e
migration-guides/migration-6.0.rst: mention python3-roman-numerals-py renam=
e
migration-guides/release-notes-6.0.rst: add contributors, CVE fixes, downlo=
ads, known issue, license, recipe version changes
migration-guides: fix https:// prefix missing in anonymous reference
migration-guides: migration-6.0: fix grammar and missing word
migration-guides: migration-6.0: reword meta-poky templates removal
migration-guides: release-notes-6.0: fix typo in documentation changes
overview-manual/concepts.rst: fix do_prepare_recipe_sysroot task descriptio=
n
overview-manual: fix "checkout" versus "check out"
ref-manual/system-requirements.rst: add CentOS 10 as a supported distro
ref-manual/variables.rst: document the SBOM_CVE_CHECK_SHOW_WARNINGS variabl=
e
ref-manual/variables: IMAGE_TYPES: add new wicenv type
ref-manual/variables: document the 'dynamic layer' concept
ref-manual: classes: add missing "task" after create_recipe_sbom
ref-manual: classes: fix https:// prefix missing in anonymous reference
ref-manual: fix "include to" grammar for UKI_DEVICETREE
ref-manual: fragments: fix style inconsistencies
ref-manual: replace "naive" with "simple"
ref-manual: variables: add hyphen to "space separated" and "auto generated"
security-manual/vulnerabilities.rst: refresh the document after cve-check r=
emoval
security-manual/vulnerabilities.rst: require Upstream-Status, not recommend
tools/build-docs-container: add CentOS 10 support
tools/build-docs-container: add missing leap 16.0 in help message
yp-intro.rst: add link to "buildbot"
yp-intro.rst: delete really old references


--_000_BL4PR11MB8797068C9CD4D9088EDB4B5FB9E32BL4PR11MB8797namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
Hi</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
We are pleased to announce the Yocto Project 6.0.1 Release is now available=
 for download.</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.1/&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
A gpg signed version of these release notes is available at:</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/RELEASENOTES&=
nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Full Test Report:</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/testreport.tx=
t&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Thank you for everyone's contributions to this release.</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Chee Yang</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
chee.yang.lee@intel.com</div>
<div style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
Yocto Project Build and Release</div>
<div style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
yocto-6.0.1 Release Notes</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp;Repositories/Downloads</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Repository Name: yocto-docs</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Repository Location: https://git.yoctoproject.org/yocto-docs</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Branch: wrynose</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Tag: yocto-6.0.1</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Git Revision: 7ac955621b36a221126cd40f12c41fa98c213a24</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Release Artefact: yocto-docs-7ac955621b36a221126cd40f12c41fa98c213a24</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
sha: 32e25828d25662db5e92829ae6a471291e27d950b5c273458fae211a776e4131</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/yocto-docs-7a=
c955621b36a221126cd40f12c41fa98c213a24.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.1/yocto-docs-7ac95562=
1b36a221126cd40f12c41fa98c213a24.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Repository Name: openembedded-core</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Repository Location: https://git.openembedded.org/openembedded-core</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Branch: wrynose</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Tag: yocto-6.0.1</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Git Revision: 06dd66e6220e5ce4ed4b9af4d8231ae5f0a8ce80</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Release Artefact: oecore-06dd66e6220e5ce4ed4b9af4d8231ae5f0a8ce80</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
sha: 26de701c73d43ab8904bc57b162385901f9a1114807b3e28b665437d4ba23624</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/oecore-06dd66=
e6220e5ce4ed4b9af4d8231ae5f0a8ce80.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.1/oecore-06dd66e6220e=
5ce4ed4b9af4d8231ae5f0a8ce80.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Repository Name: meta-yocto</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Repository Location: https://git.yoctoproject.org/meta-yocto</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Branch: wrynose</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Tag: yocto-6.0.1</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Git Revision: 8251bdad5fda780a000fb41e6eda82eadf0fa39e</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Release Artefact: meta-yocto-8251bdad5fda780a000fb41e6eda82eadf0fa39e</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
sha: ac9125ddd150febba0da9ae4fb7e222dde1d6e8f2ad3aaae1c0c2a4c1f738f36</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/meta-yocto-82=
51bdad5fda780a000fb41e6eda82eadf0fa39e.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.1/meta-yocto-8251bdad=
5fda780a000fb41e6eda82eadf0fa39e.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Repository Name: meta-mingw</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Repository Location: https://git.yoctoproject.org/meta-mingw</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Branch: wrynose</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Tag: yocto-6.0.1</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Git Revision: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Release Artefact: meta-mingw-a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
sha: cea731150cd3caedd90ca6a82bf050a00c3705cea166d24a6077d07b1b7b2404</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/meta-mingw-a4=
ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.1/meta-mingw-a4ba674d=
6a0a17e4c0bc4c11bbb9d0ea9de2b315.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Repository Name: bitbake</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Repository Location: https://git.openembedded.org/bitbake</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Branch: 2.18</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Tag: yocto-6.0.1</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Git Revision: 22021758e66737bcf68dfd2b74adc6a0cb1d42d9</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Release Artefact: bitbake-22021758e66737bcf68dfd2b74adc6a0cb1d42d9</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
sha: ce9c213f9b8c5fb677b0a64ac883386a4d578fdb66881dcc9f1cd8bc4e79e7f6</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.1/bitbake-22021=
758e66737bcf68dfd2b74adc6a0cb1d42d9.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.1/bitbake-22021758e66=
737bcf68dfd2b74adc6a0cb1d42d9.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp;Contributors</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Thanks to the following people who contributed to this release:</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Alexander Kanavin</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Andrew Geissler</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Ankur Tyagi</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Antonin Godard</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Benjamin Robin (Schneider Electric)</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Chen Qi</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Daniel McGregor</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Dawid Bijak</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Dmitry Sakhonchik</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Himanshu Jadon</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Ivan Nestlerode</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Jinwang Li</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Johan Anderholm</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Jo=C3=A3o Marcos Costa</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Lee Chee Yang</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Leonardo Costa</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Li Wang</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Minwoo Choi</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Moritz Haase</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Paul Barker</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Peter Marko</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Peter Tatrai</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Quan Sun</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Quentin Schulz</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Richard Purdie</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Robert P. J. Day</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Ross Burton</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Sam Kent</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Thomas Perrot</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Vijay Anusuri</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Wang Mingyu</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Yoann Congal</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp;Known Issues</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
N/A</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Security Fixes</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
avahi: Fix CVE-2026-34933</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
base-files: Ignore CVE-2018-6557</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
bind: Ignore CVE-2017-3139</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
busybox: fix CVE-2024-58251 CVE-2026-29004</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
cargo: Ignore CVE-2023-40030</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
cve-extra-exclusions: Ignore CVE-2019-2708</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ffmpeg: Ignore CVE-2022-2566 CVE-2025-9951 CVE-2025-59729 CVE-2025-59730</d=
iv>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
git: Ignore CVE-2024-32002 CVE-2024-50349 CVE-2024-52006 CVE-2025-48385 CVE=
-2025-48386</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
glibc: Fix CVE-2026-4046</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
gnutls: Ignore CVE-2026-1584</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
harfbuzz: Ignore CVE-2024-56732</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
inetutils: Fix CVE-2026-32772</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
libarchive: Ignore CVE-2026-4426 CVE-2026-5745</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
libsoup: Fix CVE-2026-2708 CVE-2026-5119</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
libsoup: Ignore CVE-2026-2369 CVE-2026-2436</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
libssh2: Fix CVE-2026-7598</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
libva: Ignore CVE-2023-39929</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ovmf: Ignore CVE-2024-38796 CVE-2024-38797 CVE-2024-38798 CVE-2024-38805 CV=
E-2025-2295 CVE-2025-2296 CVE-2025-3770</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
p11-kit: Ignore CVE-2026-2100</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
python3-requests: Ignore CVE-2024-35195 CVE-2024-47081</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
python3-setuptools: Ignore CVE-2024-6345</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
rsync: Ignore CVE-2024-12084</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ruby: Ignore CVE-2025-0306</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
sed: Fix CVE-2026-5958</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
sudo: Fix CVE-2026-35535</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
tiff: Fix CVE-2026-4775</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Fixes</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
bitbake</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
-----------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
README: Add &quot;2.18&quot; subject-prefix to git-send-email suggestion</d=
iv>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
b4-config: add send-prefixes for 2.18/wrynose</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
fetch/git: Fix leaking of temporary directory</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
fetch/git: Improve temporary directory handling</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
fetch/wget: in upstream version checks, match versioned directories exactly=
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
fetch2/crate: use CDN endpoint for version checking if possible</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
fetch2/crate: use CDN for fetching crates</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
oecore</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
-----------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
README: Add wrynose subject-prefix to git-send-email suggestion</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
apr-util: Add CVE_PRODUCT to support product name</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
apr: Add CVE_PRODUCT to support product name</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
b4-config: add send-prefixes for wrynose</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
bluez5: add patches to fix 8.56 cli &amp; gatt issues</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
build-appliance-image: Update to wrynose head revisions</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
build-appliance-image: fix branches for wrynose revisions</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
cargo: set CVE_PRODUCT</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ccache: upgrade to 4.13.3</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
classes/base: add explicit bzip2-native dependency for unpacking .bz2</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
coreutils: set CVE_PRODUCT</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
default-distrovars.inc: add missing spaces in append overrides</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
devtool: Disable gpg signing when setting up source tree repos</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
dhcpcd: upgrade to 10.3.1</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
efivar: Backport patch to fix -march issue for ppc64le</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
features-check.bbclass: add reference to required TUNE_FEATURES</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
glibc: Fix recipe bug that disabled stack protector</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
glibc: stable 2.43 branch updates</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
groff: upgrade to 1.24.1</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
gsettings-desktop-schemas: upgrade to 50.1</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
gtk4: upgrade to 4.22.2</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
gtk+3: upgrade to 3.24.52</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
hwdata: upgrade to 0.406</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
mirrors: remove inactive sources.openembedded.org URLs</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
oe-pkgdata-util: fix empty runtime-rprovides directory handling</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
oe-pkgdata-util: fix runtime-rprovides handling in lookup_pkg error path</d=
iv>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
package.py: fix kernel module file pre-filter and document strip asymmetry<=
/div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
perf: add PACKAGECONFIG for llvm</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
pseudo: Upgrade to 1.9.7</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
python3-requests: Increase chardet upper limit</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
python3-sbom-cve-check: Update to version 1.3.1</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
qemu: fix iotlb_to_section() for different AddressSpace</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
rust: fix codegen test failure on big-endian targets</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
sbom-cve-check-update-cvelist-native: Update source revision</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
sbom-cve-check-update-nvd-native: Update source revision</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
sbom-cve-check: set PV from upstream tags and ensure version checks are cor=
rect</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
scripts/makefile-getvar: quote MAKEFILE variable</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
sed: upgrade to 4.10</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
shadow-native: Change upstream status of disable_syslog.patch</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
shadow: set CVE_PRODUCT</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
sudo: set CVE_PRODUCT</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
tzdata/tzcode-native: upgrade to2026b</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
utils: Handle unexpanded variables in DISTRO_FEATURES</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
wireless-regdb: upgrade to 2026.03.18</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
meta-yocto</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
-----------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
poky.conf: Bump version for 6.0.1 release</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
yocto-docs</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
-----------</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
&quot;Transitioning ...&quot; doc: Various pedantic cleanups</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
Quick Build guide: Various pedantic cleanups</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
What I Wish I'd KNown: Various pedantic cleanups</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
YP Quick Build: delete extraneous periods in list</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
YP Quick Build: use &quot;set up&quot; as a verb</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
conf.py: add a :yocto_bug: role</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
contributor-guide: fix type &quot;maintainance&quot; to &quot;maintenance&q=
uot;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
dev-manual: &quot;--runonly&quot; should be &quot;--runall&quot;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
docs-wide: drop documentation for cve-check and variables</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
index.rst: update &quot;Software Overview&quot; to &quot;Technical Overview=
&quot;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
migration-guide: add release notes for 4.0.35 5.3.4</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
migration-guide: migration-6.0: fix typos in cve-check removal</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
migration-guides/migration-6.0.rst: add migration notes on cve-check remova=
l</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
migration-guides/migration-6.0.rst: document the CVE_PRODUCT behavior chang=
e</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
migration-guides/migration-6.0.rst: mention python3-roman-numerals-py renam=
e</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
migration-guides/release-notes-6.0.rst: add contributors, CVE fixes, downlo=
ads, known issue, license, recipe version changes</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
migration-guides: fix https:// prefix missing in anonymous reference</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
migration-guides: migration-6.0: fix grammar and missing word</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
migration-guides: migration-6.0: reword meta-poky templates removal</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
migration-guides: release-notes-6.0: fix typo in documentation changes</div=
>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
overview-manual/concepts.rst: fix do_prepare_recipe_sysroot task descriptio=
n</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
overview-manual: fix &quot;checkout&quot; versus &quot;check out&quot;</div=
>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ref-manual/system-requirements.rst: add CentOS 10 as a supported distro</di=
v>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ref-manual/variables.rst: document the SBOM_CVE_CHECK_SHOW_WARNINGS variabl=
e</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ref-manual/variables: IMAGE_TYPES: add new wicenv type</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ref-manual/variables: document the 'dynamic layer' concept</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ref-manual: classes: add missing &quot;task&quot; after create_recipe_sbom<=
/div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ref-manual: classes: fix https:// prefix missing in anonymous reference</di=
v>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ref-manual: fix &quot;include to&quot; grammar for UKI_DEVICETREE</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ref-manual: fragments: fix style inconsistencies</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ref-manual: replace &quot;naive&quot; with &quot;simple&quot;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
ref-manual: variables: add hyphen to &quot;space separated&quot; and &quot;=
auto generated&quot;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
security-manual/vulnerabilities.rst: refresh the document after cve-check r=
emoval</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
security-manual/vulnerabilities.rst: require Upstream-Status, not recommend=
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
tools/build-docs-container: add CentOS 10 support</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
tools/build-docs-container: add missing leap 16.0 in help message</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
yp-intro.rst: add link to &quot;buildbot&quot;</div>
<div style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
yp-intro.rst: delete really old references</div>
<div style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_BL4PR11MB8797068C9CD4D9088EDB4B5FB9E32BL4PR11MB8797namp_--

