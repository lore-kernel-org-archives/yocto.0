Return-Path: <wes.tarro@azuresummit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E90BEB64DC
	for <webhook@archiver.kernel.org>; Mon,  3 Jul 2023 21:39:04 +0000 (UTC)
Received: from outbound-ip13a.ess.barracuda.com (outbound-ip13a.ess.barracuda.com [209.222.82.180])
 by mx.groups.io with SMTP id smtpd.web10.45081.1688420342937227732
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jul 2023 14:39:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@azuresummit1.onmicrosoft.com header.s=selector2-azuresummit1-onmicrosoft-com header.b=e2HQpmH/;
 spf=pass (domain: azuresummit.com, ip: 209.222.82.180, mailfrom: wes.tarro@azuresummit.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2108.outbound.protection.outlook.com [104.47.58.108]) by mx-outbound10-167.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 03 Jul 2023 21:39:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=agtaDBqkAaWWhIGH0hbNsJnBTG9DaANzvN7dy59zAS3kgqqVcuUM0uGesF1Gr1ncvmyXfQa/DIu3LqVdwajKkbfboVj+Y21jxohf/g8OHQjqraqRb8dVT9w3eyf5z1DpfCAVEEOvbyoS6wc2lYO9rTKKlWAqpDKjGcdqV6ILNR2oiNZP5YVt18WmQnwi2F9sNGcoobbjRnyOZAw4O2Rv8PJKHvd3GfrsJEBpjsUNA/gxO9Q2swlDIxDUYuzX+tLbABkjQgEgIgM2NtfCq1px44J6EnsQ6oYQAryw34zhNG+SUDTCHf4h+eyaDgOiSR3m69ldEQKuVQ2pmMUBdrxN1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MFOrBirip6xFiePEn8ksx3l8nSLUGUSU3wSYafetCXQ=;
 b=MphgJ75+sKTD+BRlyUklDdW1zxOiYF2wLOEynJybMVBptoKna3QeyrRFpc0fx5ZhMAaw5qSh5ILFIkAePLXdJAEYuhQ75SVQwUzqZZOkGgCgjGgPqsTCwakZduoj7cFB6pMHXn44co6cTK9+J5dd5wwv6tpTVcgLLSyF7XLe4zkhYrrHUSFkdzEfD8q4nQ8XnIhkSaIFj9nntPqEEcoMXtJCLjh8AoFksh2km25yzNbrtyplETrAUssjVF7C5MQ1eu5HFQiglZ7KYyK64YcDLpwmwlhEj6IdfgrZAxUQZdC/M6YC/JABIVCojSQXVDsSOuOfGdqqYKd3U2NpAhf35A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=azuresummit.com; dmarc=pass action=none
 header.from=azuresummit.com; dkim=pass header.d=azuresummit.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=azuresummit1.onmicrosoft.com; s=selector2-azuresummit1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MFOrBirip6xFiePEn8ksx3l8nSLUGUSU3wSYafetCXQ=;
 b=e2HQpmH/ykwT6+EtQaslMPP0Jz0e9CoPyhG7FgIHe86Jqx0AKGf5w4YiTZ9QBFGHAEWyQv2yseOJGIz9K1KZqLwiGPv/BUCKFT4TLKJrjJPkaXNY36h1J9y9GK6ESP1FYQc3axy4ho3N9EsoDN8desAkZ9N1c78fBJDMx5PuzlM=
Received: from IA1PR11MB7870.namprd11.prod.outlook.com (2603:10b6:208:3f8::12)
 by CO6PR11MB5604.namprd11.prod.outlook.com (2603:10b6:303:138::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 21:38:57 +0000
Received: from IA1PR11MB7870.namprd11.prod.outlook.com
 ([fe80::60f9:cc5f:ac10:f4bd]) by IA1PR11MB7870.namprd11.prod.outlook.com
 ([fe80::60f9:cc5f:ac10:f4bd%4]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 21:38:57 +0000
From: Wes Tarro <wes.tarro@azuresummit.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Typo in python3/get_module_deps3.py?
Thread-Topic: Typo in python3/get_module_deps3.py?
Thread-Index: Admt8fRz3B7DICmJQTeqQIAnekSwsA==
Date: Mon, 3 Jul 2023 21:38:57 +0000
Message-ID: 
 <IA1PR11MB7870949D00A8EF0C2EB58BE0E229A@IA1PR11MB7870.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=azuresummit.com;
x-ms-traffictypediagnostic: IA1PR11MB7870:EE_|CO6PR11MB5604:EE_
x-ms-office365-filtering-correlation-id: 60159d02-af15-4cac-cc2d-08db7c0de857
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 4I8c/sX3Z0X0crdfqsTLDtTf4S8DoIyw0eYAFn89hroueG4A+ZEU+Og+rRYEdhAf2FpPqf/0M/bUypOciOicGTZjdSGxEKaqERj3ITNw5oyszTM+ntBoYQjpKlqiVY7pD0kEqvn9zk7qSiuHlV9h6l7ymzzS4TrW4GD8sT+7kBs9d4ka3l1WZ+qyUhOcGo1kKyVmvPQojneRnUUCh3orGPdDIGOy33OPwfrcsSDzN/al5jVKssrjxF24R0J8Xoq9B7UyDUKLo/tIBrrJbsIb3iAJhvWYuLaG2ajhyy0K1g0Fqcu4xHcm2uCyMjnAYQbT+yJO1MSI1G3upoqG6Y91t1hPSz0eAX0L5SkS07qw4aaQjO4mp526EOvZNwwA2JN4CbbJhcPJ/z9GJd2y/hPs1RsD5hvakaVoQ2WnsRsvHyxhgvYkAM3xJBjEp7cIEDt+YahrdBMTwH8iVOyNCnQjN4Pho90vvZ9jqIIZUqtv0Fh+gDCb9rlIKUUSw3oP6Zzium0DJ+B7HRB7zKaA2d6vAKqlap9mlNDQmjQh1/55gAhFa4Mmvh2yrroF6hp+MBxD/Iauo96MV4sw1u/Mbm/X6kfLNK04v66BDwzoSxPWD/U=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR11MB7870.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(136003)(396003)(376002)(366004)(346002)(39840400004)(451199021)(38070700005)(4744005)(2906002)(41300700001)(5660300002)(52536014)(8676002)(8936002)(44832011)(33656002)(55016003)(86362001)(186003)(478600001)(26005)(6506007)(966005)(71200400001)(9686003)(7696005)(76116006)(55236004)(122000001)(316002)(6916009)(66446008)(66476007)(64756008)(66946007)(66556008)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?8ivJWYCsNhIYta1BeR8QnIaEQmxsLIbnRcsNygBsAMN9gyBFI6w9dATklg3d?=
 =?us-ascii?Q?y2ybNHNVJon6bd0grngiAS5EiTSaPq0s2vfriY0InR34A84FG29sf7gVSP4g?=
 =?us-ascii?Q?id2I9p+GkWhcsqw0Um9/OsoHbRFLnfcrBfZZM2N+A7VxQSgf+4BQv22y27B8?=
 =?us-ascii?Q?AXI6TPBSDxeb0THMdsKKzta7gRTfEKxuTEGRhSzrpt/y4YOD5K1TwBklQ3I2?=
 =?us-ascii?Q?Dm4hfMgnXrSUnuZNz8IjE7cySUb9vitwvG0/M/CcqFqJ272E8q6aJl2/gkCa?=
 =?us-ascii?Q?7yVembIJnPq+wqYwEhDOpoBtJ4nru8ljfbLRAPLfHlafmHZ4TlOjidKH3J2P?=
 =?us-ascii?Q?4xBQwVLpF7MXE0Sxgqa7hdfUNbMXJGfwWV9QuSPZHQ3CxHeb3p2TKZ7nG7uH?=
 =?us-ascii?Q?VzgjGm7l973lNROR/koWpiMunqX/Lgdf2jlvbyGWhnQoOt4plbVroeoG/XnA?=
 =?us-ascii?Q?g6C0YPioxaWyqbnIRf0so3uTtYdlXgIXBHwAkekIYRnZZZ9A3vSJCfh95FIZ?=
 =?us-ascii?Q?D6wye+gKmeHHEfd9EHbzydhlNu8mjdtKx2TKW+qsVDymqzlZcH3m9h+4jbTP?=
 =?us-ascii?Q?fLLUYhaQN4iyz+L0uvnDkjFnXdxNgWD8nCqqMg0Wz6RoAFW1FK3t0vdM+Trs?=
 =?us-ascii?Q?Vxg4X3gZ5wYDwVq8YiEC3eTRQ6moYwDV4kGjmtWuA609Xt+Hx+FCr+AZ2SaM?=
 =?us-ascii?Q?wSFvMPl3DSZt6+Q2FcZvT/QFVuvkOO8+3SJP4qlHLUH1jbLZ8f6vJq/A9TTu?=
 =?us-ascii?Q?j+U47vhSSmvXUU510YqB8E/FaGUCaNYqRHBknVG9EuWjfKSyQvJyO8a6dOIB?=
 =?us-ascii?Q?qnFpkZaBM2vEctkeOb02ZyHYGA0BbXCv547JVIMxp89X3WO7F+YGjGrnpNA8?=
 =?us-ascii?Q?Vqmo8WrJGpR2KnYE29ui22PrYc78Qz8+DC9BNBeFwpgekyx1A3jIuJPP9lw7?=
 =?us-ascii?Q?GjyiPpK12+GO2x+R9q5DA9gEWk9VaH6okcnmU4VOPjHrxxNuUs3VRGEdZ86Y?=
 =?us-ascii?Q?P5XHLeEY/0smZL36pRpJca7BxKsPwM4Dnh/r+Vp9G190WEJLPaHj/0GEJnng?=
 =?us-ascii?Q?r97NDLdMR1MQ0Mw60QsDrMjP3kPIlgJiknI3Y29O3A4MKCFF4s4L374cLmpr?=
 =?us-ascii?Q?Ture+3Rc9XL2WA565iAQFEkT7Lq8JytFi9YvtiyVOagWc1l6BlnJO6QBHpW7?=
 =?us-ascii?Q?pxRaSNQOlQrLX2i+cIVEi4KRxiKKTBTJiVft0Q8rzBFOg6s1pvII0Tl5z9nG?=
 =?us-ascii?Q?feLvGm4BJ3BhHS9ziWYdEEmmaRa/A/Dz7pPA+iG0MOsn4HLylMHDR/XSXFOf?=
 =?us-ascii?Q?xvTPiz/nC/NQUBaMTiCLgpnVA+45dA67DPrlhZ1TFQGCBVCzRNboG7OkA7jd?=
 =?us-ascii?Q?Avbd6j8HhlTS7xoHUyNeSF/t+jbo3+F0KKpJ0aKFa+LwlqFP0IFpSE/Wm9V4?=
 =?us-ascii?Q?DCU0q2JjdZtn1zjwuM2gaiAaxaakVwIzbYEwCSBnmmLaGiETtRSvqFbx9QF1?=
 =?us-ascii?Q?A0Biv4AHOZ5ErQhvu+gGDbfHQVxHni3N3TwbD8zjV3bJ7kKN6yrarVqaJSSs?=
 =?us-ascii?Q?8vZS4WXgnrOf/EmeRV32Y4jK3YYzdJQ2Z+zksMzK?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <F92109E72D4737448FD36FE1700F9174@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: azuresummit.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7870.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60159d02-af15-4cac-cc2d-08db7c0de857
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2023 21:38:57.7086
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d6255f8a-0017-460e-8f54-5ecd709c8805
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FHN+l8VSIM9AeycIUpff9JxVuc0SFFYcazfWrWBk1z5rzqiz8wBEJMe5lnvaNTX73Yesx7zfV5p+XkCBZnpbIL8CAzuyyS52oyf5VFjvOew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5604
X-BESS-ID: 1688420340-102727-5524-13762-1
X-BESS-VER: 2019.1_20230620.2205
X-BESS-Apparent-Source-IP: 104.47.58.108
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUioBkjpK+cVKVqamlkBGBlDMyDDJwtzSPMXEzC
	LV1CAx0cDC0NwoKcU42cA8zdgk1VSpNhYAEPmqp0AAAAA=
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.249252 [from 
	cloudscan12-78.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS65196 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 21:39:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60508

I found a line in get_module_deps3.py that looked weird and could easily be=
 a typo:
https://git.yoctoproject.org/poky/tree/meta/recipes-devtools/python/python3=
/get_module_deps3.py#n35

Specifically on line 35 (for present git version):
dep_path =3D dep_path.replace('/usr/bin''${bindir}')

All of the following lines handling 'usr/lib' variants pass two arguments i=
nstead of one joined argument, e.g.:
dep_path =3D dep_path.replace('/usr/lib32','${libdir}')

Is the former a typo that needs to be fixed or is it intentional?

Thank you for your time.

Wes Tarro


