Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web11.39150.1612204364396486118
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Feb 2021 10:32:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=NES9/Gkq;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: cnq8QgqCtvJBy5wnQV5e1ns4y/NF7/7hFRe+tnR4UuD8ckG7qts3o7Xnz6dzI4/YXGYf2eRdkM
 bEKG5pXcWXyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="167836889"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; 
   d="scan'208";a="167836889"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Feb 2021 10:32:41 -0800
IronPort-SDR: Y6mMztZ7iVnZ4peyTo+SJoQ8hePCNWHLQ/XtMZ0UQmNkgmnB6S4LOeUCGgINxobBWEbujpPlLE
 Q2dsZwdYvWsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; 
   d="scan'208";a="412865433"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
  by FMSMGA003.fm.intel.com with ESMTP; 01 Feb 2021 10:32:40 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 1 Feb 2021 10:32:39 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 1 Feb 2021 10:32:39 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 1 Feb 2021 10:32:39 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 1 Feb 2021 10:32:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GWnZekzH9gd3BebIcRbXej8iMhnm6dChBoF8X6cSpF6DjOttiFwxQhQCo6IvnzCz0HevdImVqsfao27QhFxroIcVXlSmzqYDW4QR+jRuoxjz4HsT2K7DEBDIt3N+3JH6pjJAfthDfn7BO6opwALOZ3a0SJtckJW25m3/3SWmciiN7eZz4pKqRQ8AFBUwDFvtsr+ktYzmz5sg+6VkYRgq4NhhNeISU/CBkbDNIAw7JP2Hrq25OokuNWcVipjPhSSZyfIwdIniEqy+UsCZgXAvB9ihZ6W1iaEEGsXkAUJKZNbmrzV7J0xZoqbQJ107uBME4QetkaQpfeZLBDQ3RP3Dww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=17l8xkatbgR16CadaGAJIukv1GNUtoFSdFR6WdxeozQ=;
 b=ZANc+jFr1m9cUn2/tlvlAa8vPl3znDB8ZUOhylj6frzRH+mBY+mT2iz3+YvHQg6xqDSLjgo8QZU9XfTiILdafZgx36EEy1bxCgDW0vlaoj0TVLQ4TZwCH4vTz20UCBFCnGp56gsQfwTuqWByN2P+9mhJ9YUsBjoXAHEkEE48GPoNj/PP8qJrM2XZmm6ZoF7Yeipwt/jQzVE+lOBsJzCTmOOIS5JmtAmIeHQSacbvvR2Ar+LbSJPdYsW8d+J57R8Bj+Rt4Fa04ae32bImRovNLr7lMHTPhOIp03yQWDk/zwIhXcuSbn23Nue3SUsqWnGlmvvsvWYyIWr5Mgr+zXDPAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=17l8xkatbgR16CadaGAJIukv1GNUtoFSdFR6WdxeozQ=;
 b=NES9/Gkq1iMv8oplsMYo8L/wyvGQ1F8u5Kfg8yFDyEyQ0yx2tmUXyHvhnBQ9EQBZEipwwYrsn3EGgO1ygw8ojYljac2fWbxVbPjBkse50S5//l4D96ZWvR/0sMr/mLlciakgJWiv9itAqYTEKpF+mlItHSWRjAdLGbOE4OsFfto=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.19; Mon, 1 Feb
 2021 18:32:38 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1152:1426:8a4f:c755]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1152:1426:8a4f:c755%4]) with mapi id 15.20.3805.024; Mon, 1 Feb 2021
 18:32:38 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<'yocto-announce@lists.yoctoproject.org'>, "'yocto@lists.yoctoproject.org'"
	<'yocto@lists.yoctoproject.org'>, "'yocto-request@eclists.intel.com'"
	<'yocto-request@eclists.intel.com'>
Subject: [ANNOUNCEMENT]Milestone 2 for Yocto Project 3.3 (yocto-3.3_M2) now available
Thread-Topic: [ANNOUNCEMENT]Milestone 2 for Yocto Project 3.3 (yocto-3.3_M2)
 now available
Thread-Index: Adb4xrYovyBl3jekRVGHn5OA0asaMA==
Date: Mon, 1 Feb 2021 18:32:37 +0000
Message-ID: <BYAPR11MB33014A56E3BBECFB08BDA2EF88B69@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.154.86]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d8f9f1e-9417-417d-0b06-08d8c6dfc06b
x-ms-traffictypediagnostic: BYAPR11MB3606:
x-microsoft-antispam-prvs: <BYAPR11MB3606C407F423E7CBF3768E8488B69@BYAPR11MB3606.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K6MbTQRHnLBjWKlGAn+ARgt6DzczkQgBmKpbXwkwKs/tFmqBzhhRScjQg+CjRpuGwxe0tOojsvSgkZuOluNvhH+AQ9Id4GlhImlnTPgO6RRHsSJdktWTAtKWoYwlNPjODBqrXhSGLmKUE8AkhHTmEjxAxeporOcCGlxL28veIHVD3Q0V9KLruFucP1zy2J6y/zyJPRBSC6/ySGGdnXca5AM4B5IjOENXuY/Iq02kIXhg7E/nnk2ZZe+14wLyGQo0cLFearzKDTDS6IoPW+vU6u7YRdbh9X2Df8+9MrLBdzDFrwYJm/NWFrarFaEHQBnag6glbuKn3I1vZE+bf2zvyLmH3dcgWrKGyYqmDQxViMnt18vgF244OiWin5uOGRtzw3NBXef4j1jqzo4C0E9OVqajTAqGzMsUuZwtMug9yt7tZAte1HSNUI6w3PXfJ8Z4JZogZTwhJtyaAnJUd0ZVRNF7n8/X7JGXsfkT80vdealIcjDfcljPXEcmJkiM/hA8D2LlCusEvyWuwlB6jHreLuJ7VrNaNxELaD35KiWRq5SHlcyq/HLgS0SFa/LvJqSuQjRTEOHM3sDr5evXNkjP5Gzkup98QBuHx/x0MLNRDnk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(26005)(316002)(66476007)(33656002)(186003)(6506007)(5660300002)(52536014)(9686003)(71200400001)(55016002)(4744005)(64756008)(66946007)(478600001)(66556008)(66446008)(966005)(76116006)(8936002)(7696005)(2906002)(109986005)(83380400001)(86362001)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?ehXtiXIj2wowY/ugiykUGZXMcJ7UO+DcJBacygFZzPEFpMZqKampXbMgCVAO?=
 =?us-ascii?Q?o4/4vlvcoi150Mw6r29uHm9jqV1leKZ0vJPhPg+w/RBMntTCsDChrRScvNa9?=
 =?us-ascii?Q?zdIQzbcGD4moFiNRK0BQ/g5dBg13PgVa1llovH0sVjMO4xoOPZ4ATDVIjeZB?=
 =?us-ascii?Q?fw0cX/V5YU0OOrmNYEh/b/insiYXMfzNMWwh6ivjjmZbt1Z9Rtaq/+LSDeLw?=
 =?us-ascii?Q?tRwVAd79I0v++Lzh26NXYjIlUSRLGE1q9oSBtB/7iLxH22iORfxbPKmrsMfK?=
 =?us-ascii?Q?ayRn4yfrM3/ZQQgrP4ghbhsn434ATkMeHe/Yu1afeubw5+NXhM4oXJSIc2jb?=
 =?us-ascii?Q?kLyNaeBk0C0WEzTNhmZW3xL/IHLOziv0W6OjvtuMjBKwHKW+kMFIs1TbrlLm?=
 =?us-ascii?Q?wLEcgxoRg/KXUWKSd7iqpZp3lshXlVKXt0KxQveXZZEO3xMiyvXxd5T+Qeyu?=
 =?us-ascii?Q?GnW0+n5S9QMS/ks44KBKb99dYNNX/bhgrC5SAZvu6+ln+XC9tbqXv09EjLj3?=
 =?us-ascii?Q?yFtc3y9dXLE+hhSAUtDR/hze39iOxY0yrS/eV2QCdiyQElmLemyWRMfLIVl5?=
 =?us-ascii?Q?bgYMxJx88NjQ+lLenSyFNPtHQvyJyCd+XWqH1x32c7FpNx1s0nC8b5zER7M4?=
 =?us-ascii?Q?V8T0cE4UDzT7mmCe22l7PSjlHqXzajTL1Str6qnVKefrDDFsxEQ7NqWtlnSb?=
 =?us-ascii?Q?kccf3vdlQZy6OMmO+B2smhl7OPfFZkBrDCjEJ5qk+a9u5KJfZsJfMMT1ZECe?=
 =?us-ascii?Q?gZYw4fEcYEYsXRL2Ugd+HSqtT8UO6Vkm5aXKycFmo3WWPWOonrwdQvLGgm6x?=
 =?us-ascii?Q?/zggMNRBYl76lN5btDX82epdp+iNFNF3DLNyhBMJqONwoWko5Fj1iZpyQA4K?=
 =?us-ascii?Q?8ByoTxz3wwasRNTslb6u8s1e/plNxCaLoscCmDbB5WrKX5ZYDVbbI2LID6FK?=
 =?us-ascii?Q?5Az+Sx9A5xR3/VdbDq85apq4rVtUXRZyinCGY0KxX2Ppxl/SccZP8DbRCX2B?=
 =?us-ascii?Q?HOf53fQi7xfnIB5F4ks2OwuJUdpxcKwRZ9ZfyeIIVFQcYbzTqwcGcSgW0Qb7?=
 =?us-ascii?Q?YTXvR1XW?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d8f9f1e-9417-417d-0b06-08d8c6dfc06b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2021 18:32:38.0742
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A3RY8/OHTo3tgykJeX6fehsDsNbMdkqENl2SLHLNOmQBnmpHh1nKuR4Dhel+URyIqUMuphgqP6tG/gDphG0ftTQmYDq7LRA+q6OaBcKuDSY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3606
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the second milestone release for Yocto Project 3=
.3 (yocto-3.3_M2) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.3_M2

bitbake: 01e901c44ab0f496606b1d45c8953dc54970204c
meta-arm: a8f32f990a0d9dc1db310892c70d5a994c698b32
meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
meta-intel: b4e5d33affeaa223459c0935a853485137b4591d
meta-kernel: 8349870943ba44bbd688656897372e881f32c741
meta-mingw: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
oecore: 79821d5a185e25384f5b6b5158b238bbee17c79e
poky: b5e634644b69a968a93aad0dd0502cf479d3973a

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.3_M2/te=
streport.txt

Thank you.

Vineela Tummalapalli,
Yocto Project Build and Release
vineela.tummalapalli@intel.com
