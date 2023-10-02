Return-Path: <richard.danter@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DD55E784AF
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 10:41:50 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.78630.1696243302125800577
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 03:41:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=dyUI6zW0;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=8639d304c4=richard.danter@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 392ABQ8M016945
	for <yocto@lists.yoctoproject.org>; Mon, 2 Oct 2023 10:41:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-type:mime-version; s=
	PPS06212021; bh=lvoDX8t3/UCJvly8NvZ20XTBcPzo0AyX/g6ze60BtK8=; b=
	dyUI6zW0P+Ld7dkJA3HSalmSay1jMJFwwXthWR0sLyjQZO8P1MZU7aROi0IWMfHl
	ZrggSPYsiqLxna1QlszvCuU4FDhIymw9WooyGY6RCqsUAUyc3WiOFwMzra/Y+Ywt
	JztDJ8FcUCq7Vsq7bfg3qGd95hsZIowUBld+VFt2QIVnLYafz9JyDleiCyoN9rLU
	5GudFemPiuaaDsQ1Hu4qj43FyRq7lrZLXFOONJ2jEcN4vvPyjLtNOnnUkHK5wp6U
	JHohuzsQ8w7Yq/gEcoD7H4TV2zrYqbJVNpXiT+8zOr5v72nriaMJfQ5mpstIMZVF
	vqgtp2tJi2Qd34LAD4GkNg==
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3te8vxhpnb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 10:41:41 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EdPepT8xl+PUCHZYJcVNzjg9ICJw8Fe+vUBNXgAcBEjfDvmYMvizTiu3J6e3sRF4T/iZhyf+mOVMtbSZfcMj0vDQKqs+0mkKUYno1nSKUyi9HmczD4JBDiwe4zJ50GgZXd64CrYEEi3zV3LmkpWkpFkGUams3bePAZD2+FKPrIEC8WI+PBvyhayo8N4JvDdJRX1QejT5KgJbcHqfpRhgSYGWllmyigBYDbB7OQBSnvfQ6QUUriccvq4fYW1FLUbb2uSw1hLafgY6AFkxSZkdSRHSwnRhQnWq119zRtqNooLymoneiFMyxTDRRTXTz9Se/KskB+7q1Ay66od/9f3xoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lvoDX8t3/UCJvly8NvZ20XTBcPzo0AyX/g6ze60BtK8=;
 b=nB1y0TPTZ+6pJZ3IHgU2RPuvRJq1d44oI3xtcBqNq56y7astJglZqBABTbwuSXTUcjRmtrSyxO9aK1zjNhznrN2+Ei1JDorqBGsQpSY0i6D5YHA52QBwA4oAx42j3JXtLe9DTOSTQ0U0WoifltER1K4t5PjDfH8Jdy5aIi4SF33+oX9aERACdt2Pop9rt2Gf8s1RMuIu71fku+hlBgaLANkzqxItTd+7CZYtzAA8tZE32mrm2/Jcq3c4HjigEFaLlSBS6KaPoT03uRqvm3FM4tQGEmOs/+Fu4YD76tBfQOIkvV4w/k4VKHTdkEoAKK8SGEFWmByJ9IQb0eWYgOviDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SN6PR11MB2749.namprd11.prod.outlook.com (2603:10b6:805:5f::16)
 by CY5PR11MB6235.namprd11.prod.outlook.com (2603:10b6:930:24::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.30; Mon, 2 Oct
 2023 10:41:38 +0000
Received: from SN6PR11MB2749.namprd11.prod.outlook.com
 ([fe80::ecb0:e0f8:8b44:cb86]) by SN6PR11MB2749.namprd11.prod.outlook.com
 ([fe80::ecb0:e0f8:8b44:cb86%4]) with mapi id 15.20.6838.024; Mon, 2 Oct 2023
 10:41:38 +0000
From: "Danter, Richard" <Richard.Danter@windriver.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: cmake backporting
Thread-Topic: cmake backporting
Thread-Index: AQHZ9R0F/IsUnJga4k2KOXDcw0AwAw==
Date: Mon, 2 Oct 2023 10:41:37 +0000
Message-ID: <dad702961d91d1c399f454eba60c5b38c4de30dc.camel@windriver.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB2749:EE_|CY5PR11MB6235:EE_
x-ms-office365-filtering-correlation-id: 99905250-bbc4-404c-e949-08dbc3342805
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Yxh6/YYjXLmguuaE3ElbO/0R806+UF17ta2Wf+cwQ1vnFKKunnKG9VU5RtjXjAACKYFq9ptalWsYl7V4Os+Qb0jM9jmC5llws2NTXK9+R/0Y6/cEoeubv3jZbThcULzZ0kdtMAqdUwSFhoXqmQmQK2AnqG4RagijYoSKCT5MAIj3x0GU95Zgm0uuRf02NUXmu/ruwyUbO9asTKceWoqNIJX/5aH9lnZ8kt1fOsFgAD9oqbcMzpy8cPqZxFslBXy4v5vWFEOvTWVuKtEA8Cndv9WRs19oAm5N7CinFSR9ws9L2fQDxKXAsoWdY3hymkvB6hYp/FT7bVNOgDNF0GXb7T37SqFsVpI2YECNFUTURt+INXQ0sQ+RjFAlr/xWk0LIxl2TD7FCLezdg687VX0P01OeiuNmaGbBo/cNXtZWcdMLaFCwwiUs3UNUk6+aeu5mzzOgOA7fSbPAHO30wPexTlTs+c1O4zFOeofB+zK+S7q64g3C4l5WTZBm0SMhdHC0+lW+qjYOmYSJEHAzmrRbzc51ZM3689oddnv9J2BF36ItbfK1+45I/r/sxcehyJ0Y7AvP/NLX4GxLh3awocpeLa44qOOHzXEuc8ouyhpQ0681ne1nZWSkpqgBW9qUh4Yf
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2749.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(376002)(366004)(39850400004)(396003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(71200400001)(6486002)(6506007)(478600001)(26005)(6512007)(2616005)(4744005)(41300700001)(76116006)(316002)(6916009)(66946007)(91956017)(66556008)(66446008)(64756008)(8676002)(8936002)(7116003)(5660300002)(36756003)(66476007)(2906002)(38070700005)(3480700007)(38100700002)(122000001)(99936003)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?endKZUdqY2NpdHJ3VHRpTmVsY0VVUU1GV2dROHlVektmUGgzNFNISzRKVWlF?=
 =?utf-8?B?Ry9yRTVBaXo4NTE4cGwyV0tsbEV0SlN6UkNSWHBzZThMazlaOHp4bmV3WU1w?=
 =?utf-8?B?Mk5CbVJXMmY4QzE1bmR4SmlZQ1FKbk90dHE5MWJyTnZ6dVBRNGNpbFhqak80?=
 =?utf-8?B?S0VOYTFWei9VT0tPRHNyNXVqUXJmcTlSSUNzWXNhMmwzZnNUUlpXQ1M5ZDFT?=
 =?utf-8?B?czkxQXVxTkpXTGFnckNUYnA0N3BnR3NUT0lCRzdsSzRnYjdqU0IzdStYUXhm?=
 =?utf-8?B?SEl0Y2JTYy9qS2NXWjRwU3FaOFVMMkpWckdKSzQ4UFkza0pMYmpsTWZCWHpj?=
 =?utf-8?B?VGl1YSsvU3Jxc0EwR0xGbzZHbS9VZUdodGF1MGlSQkNPRHlIVDgxYzFMcFFl?=
 =?utf-8?B?OTBFVDU4cXlsd1ZTNjl0eUZZc0c1em5OZGRNS1F3ZHhaU25hQUVSdS9qWGtq?=
 =?utf-8?B?cktFMlp1MUoxMU5laUIvbllTVlFOMFRXb1NWdUpkYVprTmVNRm9zczg4MVBE?=
 =?utf-8?B?bkd0aW5Sa2dsYkUrT3h6NkRTWmI4ZTdjTkZySGpHeWxLZFUxN0YxRS9yZEVC?=
 =?utf-8?B?Q293ZkZ4TmVUdHdST3NTRVUvdGRQZTVkcFBuZ3FzVWIyeVIwUmY5d3lYZjRU?=
 =?utf-8?B?a01RLzFnMmp4aWJGVSs5YVdqb3plczJEckVHMU5pTzBXdkRzODRpenNLVVhN?=
 =?utf-8?B?TE5CN3hHZGh5UkJrb3hHUXVYdXBxNnUvMy9TUllBdEpJK0lTK0xRNG5jcjRv?=
 =?utf-8?B?WnRmcUJRS2ZpTjJxTmcyTFE3YmhmT1RRUkFqT3NNQXVTL29zcEJQNjVmVVEy?=
 =?utf-8?B?MG93RFU0ZnRidUVWMmt1YzZKMndzRVZLU0hmOEFDNEhNOEp0QjFBRS82cDZl?=
 =?utf-8?B?MWkxdDhKM1E5eFhGY3o1VUUzMEhNYXBZdmRBWEdMdGJDSDJ5WmduNUkxaUEr?=
 =?utf-8?B?eHVPUzlJRis2MzhkRkNWbFMxZk9MVXpvYVk3Z3owV0xhK0h6cy9hS0s4L1Jm?=
 =?utf-8?B?Nk1VTVgyRVVLZUJ1a24ybG1relp3aWtTTkVxMXplOXpLcU5KdDUwNEwzVEJr?=
 =?utf-8?B?VVFZRjBDaHRWVm4ydjBIMTJqSFBWdERrTEZjM0dVSC9GLzJLeHd4d1RTTERE?=
 =?utf-8?B?U0laZVZpR3dGTEwzL3grcjZFTkdlNTdKSCsra1gzK1dOdTVtUm1HY3B2L3Q5?=
 =?utf-8?B?RUtUbmh5UkcrTjlveWo2emc2UUYyY0lZVTZQejlGWTBmelV1VUV2QStzWFhs?=
 =?utf-8?B?c2Y4SFdqaS9SREhqS2ZtUEtwRkp0WTRKRkwvYXlTSEo1bng0MUJ0MEg0Qzhz?=
 =?utf-8?B?RnlKaFR0eHAyUExCdE5OdTlzd1FCVGt0SXJZVFJFMWViaVV4L3k1TStNbWww?=
 =?utf-8?B?S1NGdFc3NXpiYnhNYVg2SU1jajJCZ2dtWE1QS3JZN0FsZkl3SXZZZlA0dEZu?=
 =?utf-8?B?YnRMYmRMMjRNaU81eFVLTTZtbXQzVjFoK2FEMjljb0hDbGJWNFlSQldJR2Vq?=
 =?utf-8?B?d09MLy9lbEEvbkE5YVdjTWxDa1E2NnZWL1lhUFYrcFZrS1RzbTZ5U3hoK1JY?=
 =?utf-8?B?bzlFN2ZBcXdaZnY4QXVkOFRoblhaYmVkaXZIV3Vyd1BDaUlUYnR2V1NVaHJm?=
 =?utf-8?B?cmFSNFI4Y3hiT0JFbHdxREREUmdzeUVsQVB6V1ViZGNXLzdrczh0SHV6aGNM?=
 =?utf-8?B?Y0NmMzJPMk80ZmxMdEdDUGZFeEx5N0RVYmpQNHAwa3hVR1FRaTZxeFJjQWRZ?=
 =?utf-8?B?WnlhSUdTNkV0QzJ5U3A1SXdMc0JUcjB5ZUFYUUVhVzZBeGlIRTBGbGl5OHlw?=
 =?utf-8?B?RWM3TUpKMkcwM2tmd3hkdnlhTkZmZEkxNU96Nm5ka1IzRjAvOVd5NnNtQVdT?=
 =?utf-8?B?TTFnNmxsVHltc3lLTjVad0picWdCdHp0Mng1OTlFRWJjazg4ZS9Cby8zYS9H?=
 =?utf-8?B?MmJ0K2JmQWhNenBLWm1kL2dsWlErODJwSVJ5dnJLa3dLNDN6ajdma1paTyto?=
 =?utf-8?B?NDZHVklkbFd6a0tycTZyYlczN25FaDdwdm80TjRFNlNGR3hUL3RRZkNIdTY2?=
 =?utf-8?B?TXRUNkw2Q25TT214VGhJbWltOVA3dW5GZ1ViM0hvcERVNVVxd2p0QUQ1eXFn?=
 =?utf-8?B?N25nSUxxeVNnSzdLWnlnUHBFWUNrRlpuZ0RwSkhrb2p4dGFxbUg5Z0ZNcjVK?=
 =?utf-8?B?T2c9PQ==?=
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-q6sq3QrXMT9a26M6VLRT"
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2749.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99905250-bbc4-404c-e949-08dbc3342805
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2023 10:41:37.9974
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M4QkKPr4HRteRCJER7eAzlw8g7YGPlQ5qIUxvJF/4dhSHdELzbcNpI11BRX8tlVnguSEOwV0MLMn3ie9pWNAkw/qffKuZAYpfOemQvq3YUQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6235
X-Proofpoint-GUID: 0gXfrmYlU_U71mdt1LqvyuyTV24IuUnq
X-Proofpoint-ORIG-GUID: 0gXfrmYlU_U71mdt1LqvyuyTV24IuUnq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-02_03,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 spamscore=0 clxscore=1011 mlxlogscore=563 adultscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2309180000 definitions=main-2310020079
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 10:41:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61188

--=-q6sq3QrXMT9a26M6VLRT
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

We have a customer using hardknott & kirkstone who needs a newer cmake
version. Looking at mickledore, it has a version of cmake that has the
features they require.

Would it be acceptable to submit a patch to backport this version of
cmake to these older YP releases? I'm not sure on the policy so I just
want to check before proceeding.

Thanks
Rich


--=-q6sq3QrXMT9a26M6VLRT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEErzjP234FF8wy07NdNk3LIt9/FNUFAmUanl8ACgkQNk3LIt9/
FNUkYAgAyZteqWFAoAex7jgxMEqyhNVV2SUfhU2rnzPiaKRvakKMEd4bpLVeMJ/d
HTG6mdpr99JlaAp4IVg59IgLzdamdXycHFLc7NvzaYdtHLl3GrfDFb43jocBgTov
DOTXUVqNaASRLmCSu1/kat4WN7vEwOd3cBLflxzuKBKwzk6E0S6PQKSR2Z+Yv3V5
zXe6GgS/sCxGgWInfS+Nfclrl8G06pAn/HscawfzBhlbFMOluvIf0P0J1SN3YDjV
/urF4OAxECCWxXPqeSYfF4YlrCOegAJcOJeZFGm7+3I1RBOIPY1nGa5Q/6XqpUTh
8+ezMGsMiTLkp4P+3biOBaKS51UXAQ==
=xLyh
-----END PGP SIGNATURE-----

--=-q6sq3QrXMT9a26M6VLRT--

