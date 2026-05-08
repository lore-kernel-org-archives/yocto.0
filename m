Return-Path: <fangwu@qti.qualcomm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03B7CD342F
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 09:32:57 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.9914.1778232766096204255
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 May 2026 02:32:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@qualcomm.com header.s=qcppdkim1 header.b=nmJ9Wndm;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: qti.qualcomm.com, ip: 205.220.180.131, mailfrom: fangwu@qti.qualcomm.com)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64856JKA2183596;
	Fri, 8 May 2026 09:32:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:message-id:mime-version:subject:to; s=
	qcppdkim1; bh=6uxDOgGIfxoHPKMK+qJXfNY2J33s6U+v3R/5UvPGSiU=; b=nm
	J9Wndm7oF2GRlXFl0ZPFeV+L9WZGRoFGlPNcPZOcIBq+al0GOqj34AibfoyexytY
	8DgO5i2Q4H9gX6Uc2cmxZ0+oRN+RpO7OsVL35ErMa4DNvrVrhtpnqbpTuZY94ZdX
	GnaPU33YandJMu6RvrL28hh2yxSb22q8xnXW5eGt1aj/+ajCW6+kdr7+ocSwKZvr
	ubv25kJ3cvN7eOoQz2UlYopNjyoedFZ2aHdi+49GNVFw7iyx5FNDpYSwqducAifL
	sVOZK8sx4PdjtdwuQVyE9ph+Uw45vQXv0nEup8TyDgqpU18T0D1kvGYrRCHEn5Vr
	U4VI8LnjNpf3EkszILkA==
Received: from byapr08cu003.outbound.protection.outlook.com (mail-byapr08cu00302.outbound.protection.outlook.com [40.93.1.106])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e10pyaqek-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 08 May 2026 09:32:44 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AQlqCkcCBmGEWPt1ymTvbPIig+8eAU97gscIk4HkQ0oW0XwWTKD4LMZ6jcX8isAq9x7HUefAYLKxepuGFy1j/wvamTpWHWrBVpR4ENNaPxr55LPjI9JC8J5HF0ZiVanM3WEBkdwX2pOH5j1Rtjmz17CuU8gwFn5xnirGIyv8BrdA3yCAjoDSABgKWw0OHCEx//+UQx596UQjjbzdbiV3FpqZ1+M/qrUfne23AhHRpUsh4SYT5zj/CvhlSTRnkmhlIY7RKrKHyWkGYrGDtSt+8AwudGCZ0sK/bwODFCKoXlDm3S40ls9j8gA4xhCB3hZmZAumZ5lsuFdk9mSCPV3+HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6uxDOgGIfxoHPKMK+qJXfNY2J33s6U+v3R/5UvPGSiU=;
 b=PJ8SbsSfv+XtwI+YZoBt+KmRYR6zadhp1lYM9Z8BhF42aEKQH4rTjKzP8F2bE2Kr0GxaxCFojhXVaatXwBvxSnm6OtfNdJLhuCKCrKJnrUN+U+v3Bfpbx5WuzXy2t/tC0ZUlEjrg5oOxRHKXrk7jH6HubSSLWZnzUZvEoRfCeA1xdtC3VXdUW3sQ4UXbYlaTQRLzYF/xqxPHFUO9CDuP46vQqazfgL8mS7FBAhGz4lg39dBBfTj10/Au/nedNe0uLUkMdQNXyo6aML8iuDUTWU3l2QTGvFS8Gqnt7h2AHcdU3dR5UWeqrPnv85V/0gRU/aXjd14yootlCkPT6FoNzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qti.qualcomm.com; dmarc=pass action=none
 header.from=qti.qualcomm.com; dkim=pass header.d=qti.qualcomm.com; arc=none
Received: from PH8PR02MB11449.namprd02.prod.outlook.com
 (2603:10b6:510:3a5::22) by SA0PR02MB7402.namprd02.prod.outlook.com
 (2603:10b6:806:db::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Fri, 8 May
 2026 09:32:40 +0000
Received: from PH8PR02MB11449.namprd02.prod.outlook.com
 ([fe80::5204:5da:739:4ae4]) by PH8PR02MB11449.namprd02.prod.outlook.com
 ([fe80::5204:5da:739:4ae4%3]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 09:32:40 +0000
From: Fang Wu <fangwu@qti.qualcomm.com>
To: "bruce.ashfield@gmail.com" <bruce.ashfield@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [PATCH 0/2] genericarm64: enable QCS615 boot critical configs for
 SystemReady
Thread-Topic: [PATCH 0/2] genericarm64: enable QCS615 boot critical configs
 for SystemReady
Thread-Index: AQHc3rpN1B0kWg7PIkmd252YoS8Eng==
Date: Fri, 8 May 2026 09:32:40 +0000
Message-ID: 
 <PH8PR02MB11449F3D24F262F954397B357FE3D2@PH8PR02MB11449.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-Message-Flag: Flag for follow up
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR02MB11449:EE_|SA0PR02MB7402:EE_
x-ms-office365-filtering-correlation-id: dac5890b-51da-4770-115a-08deace4c00c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|6049299003|366016|38070700021|4053099003|18002099003|56012099003|8096899003;
x-microsoft-antispam-message-info: 
 a729EEkrRFeg5b2AsiQq982E5QJDbGkiFFvCyFx0WEHKxDyCRRzWI6VfEpYz1kVGxC/BTecwbT4jVABiDCO+LLQ1nIy/3990XwGim5V6+mdPtRBM1kuPqPhbK5hi1UJ9t5eq1mHCiAZCR1Bi5aOCOtzkMtq1QgOHvlawYaoNPPqZKq1fpybC03SlG8VRXSoqS8Q3KCg2Nqn0PkazFwxea8NsclVOi8uIqpyL9udUaPFeBknVd4bciJmkdPFxBoKw5SChPYn0RlNrEdecAff+v675bJCXCP78/7LtK0pM7PfSH7mqGc/tg8bBe7dLCQwNlmhb9gsQpFHhSLiDtSfjzqsFURirzM90+Ln0+/xHIDTyFmHkdpubXUSRw9ZLeHa4omsnpPP0PgwrMzPvxXCiZhOgGS8f/LCKcZEXoqwM+stWv9cryul9Rt9cxvMmhsDEqGI+USDX2JnV4IO3ojvTq5wS0+lhCxstLxlXrsipo+GA+RTp471VeWLMXpKbv9a/QJS+6NwpflRPVgNR/m0ZVlIt9jsNp8CV0LLN8gsbVxiZiP2/9+Tg/nbwKe3pCetohA1OT07ss/zObHEW5YU3XwOdyIfKR3XJgPnVqwtsZ2hEc57sswoa/G77WG1v5tuiyrTkz8Gjj38OWxGgAXOmuj6MgxOOdQOxYPzTKSHmw1XvMmguhJkRizaWG7ncHGc2pMYjBJGuAHeroHQEsavbPunH7Cp4b1cVHXllYHwH8Rm6g5LNkJf8oQ+aX56wx2ot
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH8PR02MB11449.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(6049299003)(366016)(38070700021)(4053099003)(18002099003)(56012099003)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?X8P8nT5wF+hhypZkg1xqy3AYqhH7aWvsIqDeOeXJh+WXd80WA6grN+5Mi6?=
 =?iso-8859-1?Q?4qXsW68n7rEH81LmXx3G+mwPkzuC630IqnyPvzaGHnQ8QZhEVcvSZ5+SAA?=
 =?iso-8859-1?Q?uex+QMTiekruVLxMHdxLVvg+EJ+hdig/UqWqONilK7K6wsfXjQjuGcBkMq?=
 =?iso-8859-1?Q?4lviFzPiw9Cb+GGatHPisSLHFNzjEl+BOBvoAU3hVpLfNQUXhQnwvaE8RU?=
 =?iso-8859-1?Q?WHHSsxFeTRsZHiVSFoV65kUs6mVX8+RReoZsCXhxiHqi6JbFhxLYuXvNJw?=
 =?iso-8859-1?Q?imdXHX2Ply2gcIkkd1oHDlliNLaTF4Y3CpuoQTDtO4c+3e9m3aQn9opDaL?=
 =?iso-8859-1?Q?7aVNbQIPJcy8xCX8yLTdoM+WQ1hXquF93835QLYKyaf3gxQdmWA9BhOIl7?=
 =?iso-8859-1?Q?0qHf4Nv5OVvzQQZfvdLOheMPC0mLcgdX+oGpZA5AoOm5F73AF3QVgqg0AV?=
 =?iso-8859-1?Q?42ey+KJMeAvzcspujIlClRzhPt/Qfe6YKv0+HdHPrIObQm362PBhEPS9Ut?=
 =?iso-8859-1?Q?38lAtM1A/NenHbdGYz8bG393wkAy0RezUa0JLkYYi0vShQEIglTjAJV/V1?=
 =?iso-8859-1?Q?KegXt9dczxMhSkyhOsEAZDkIOo16dB9+5xk1oTNMIP9zoS78eALnddVHlR?=
 =?iso-8859-1?Q?F5RiUizCnxUGMVp7a49CPz1871gQ4ddS3Ta3Yw5x41tk+rISBxg7k45rEL?=
 =?iso-8859-1?Q?kTCXhksJcI/mnuzCZrWLVdjMqoC04p7SBoyFkRyr+lXfMsD+CPWSLVPXmr?=
 =?iso-8859-1?Q?uDFQVYEhluGbaEQwZYuBnb4AZFL6gTRHmhK2A19LyOH1OJ6nx33sxvSXAL?=
 =?iso-8859-1?Q?DjNxWjQHou9yF1Ew32++2tgch2F+gv/70ujHbVNs2BtcZb3NdL9o8KV0AV?=
 =?iso-8859-1?Q?RX5jyMpHqhmRH2uhYcEB9AUO+TlKZ+4ehmREowaYraXcH39DUWDCJre8mq?=
 =?iso-8859-1?Q?kHNFYKJhsogYIIs54nHFyn8Vzr+cKYnyAw4XBs28aI+kc7bRIQv4btX5rt?=
 =?iso-8859-1?Q?je6RXMTiSbZYWprrqI3W20N1zBlZ49dNRHb2QA47Z8vxr+l23PJksRUKcT?=
 =?iso-8859-1?Q?Q2TE63R8FdL4Ft0RJP49Au+FcjPMnRD7bEFm6qtJL5WRR0jlSN67+BklSR?=
 =?iso-8859-1?Q?uFK4xnfrZIX8brnRht9SnEUTtmjlmbhd9bGZJJwZKI1M1hR6+BQ87wO1Qx?=
 =?iso-8859-1?Q?/ov6PMVwbn7Zjlm27baCMkjgXj4EDoWGg3gjWaP4WWiu/tjmUiNVKSKmg5?=
 =?iso-8859-1?Q?wspp7I0NWSPcC0XE/xXnAXnkhk/DJPkdB8zV1B2gQ/KtjJ7AVXQB4K0CVa?=
 =?iso-8859-1?Q?Vav6pp3blglLFz7ZKiGBfd1RjKgUSw2slYqzWkHfSTUSCIwaPayycL71g4?=
 =?iso-8859-1?Q?6TKtplngGa+H6UGGbxil9UzulKiMfbjeYJeYzClU/ECIaZdT9EaaYcv2X7?=
 =?iso-8859-1?Q?5Cu+6U0qA/Iy3i09IU8wkqPXlKV6lW17mKzjUHiCG8XLCYKXW0WnDAbu62?=
 =?iso-8859-1?Q?7buPDxDdsrnwY7WNDMvCr/apowHu9l2M6gq0Y+NNw8KsTsPouAhR78aCWd?=
 =?iso-8859-1?Q?n4o6VAIUmlDoKCu3rAA2HrhJUFOPMA0etMHCcXm1VMT3XxTitNbsxIl2Pf?=
 =?iso-8859-1?Q?MgVD0TpychdX9uYzgVr40m6WOz5miYl5gxUd7CzfIKfalkJjF42Y0kPhEp?=
 =?iso-8859-1?Q?NScAjxgNDXVrPk5iiPUF2g3mnNGkFy2eLAD7tavRjzcBYwZQZFmiorK/Vv?=
 =?iso-8859-1?Q?mYFMv1uo1IKPXqbAeIKN516Jweiojfidj85s8jATnmJAl8z0YpgVbBqVqe?=
 =?iso-8859-1?Q?0yNuFsTpwQ=3D=3D?=
Content-Type: multipart/mixed;
	boundary="_005_PH8PR02MB11449F3D24F262F954397B357FE3D2PH8PR02MB11449na_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	oHNhUo1MjEdcQz3EtS43Q1nU82ZMMjWS0d+SadnBmrXiPwNmXxcSicuX4oCdrQag/O8W2W+qiWWXsC4+mCNkon5Mdp6RWhU1HvxC8SulI5x7WqNkjT+f38F+rmgYHU+xiJ0QqVVprqkCdJEtqPK17ycdXj3g4t4SW+blO3OLoQug0GM/dk0FyzSfnt5Wqgxk+18cxTS3gtlAqIH4m8j8jgvHttOBVdGa5efqiD0Ids0l9f9wpxipViRT/9yOLNvnQrJwZI+qLDJLtHvM02IJhNnB4a4f3d3GG5cMoou22jMZO1hVNpcJxNf58rGEtnnADXj3aZmOW1AZn7Mq+AA5JQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	8ITgYEW7sY/xu0QcdibcU9AOsB/Bi4PaCQUwlnBYjZO04cEyrRSNv85i1jMyfoXbAwBeXtVaST7rMsrInLeyCZA0A1aUREPNwAPXZgHfkIj3z3aBKlzs+3yhmOUqmEwWCeFJbR7TNQngaXpDnFKFIthikqCeZipg34lwDVHntKN1E83GQo1uXcQmScrbEx+TGM1EP38Ddld82KOLwkr2m3C4fpPldzq07BStRCFc9YyC7lQpEPHyWpvHYHthmMkCCaGwPn+Bs/YN4ryWecj9S0/Ioj0vhQ1jmFFlpAXaRnoycTA3+JIwIRM05zPZ0jfmLx3neoygwmiMCcWBIkbuFvENQe1ertIMJFrCD5fanyEob2MScKI7ScQLKgFU1NQnjjp2Ic2CluwBTYJNJa7AkWNnBXGsj9B0EengzHZ8kjoX3yShVfcJx+ktQA5O2+nedf+UG0N9KK6XcSfFgwjW2jC49007Sm5m4E+PCWKvr0N89MTgV4NsXAGjXN8Ggwbdxv3AP/NPkyvJBI7M503JAWIrIV+4s+OflFBL3gLN+MTiEsE5cDenZelXKebOswKf7ntxXG0UwFnyzJBI8I9YFT3FAmaMbU3rMUNlZKhJQFkew7Ult7kgeWldCWqqezOA
X-OriginatorOrg: qti.qualcomm.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR02MB11449.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dac5890b-51da-4770-115a-08deace4c00c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 09:32:40.7604
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 98e9ba89-e1a1-4e38-9007-8bdabc25de1d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KqnBBLNcvOhQ4tOxoRJE5wP3cQ83c4thknNAco8h3ZOYFcl8pdW/fktPn1JbVq5m5dke4A49sIKfw6lfqxwehw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR02MB7402
X-Authority-Analysis: v=2.4 cv=DZUnbPtW c=1 sm=1 tr=0 ts=69fdadbc cx=c_pps
 a=3CRHu18DflYqj82tS/m+pw==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=NGcC8JguVDcA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=eqpe-PPiCMsX1cH5O6AA:9 a=wPNLvfGTeEIA:10 a=6MxsXINbElS_Apm8K-EA:9
 a=M3K4m1Lmxo605Szk:21 a=frz4AuCg-hUA:10 a=_W_S_7VecoQA:10
 a=MJDYJ6oi8Cq_XDnCwYwA:9 a=B2y7HmGcmWMA:10 a=ZJ_1tGNveu4ZPixC72oA:9
X-Proofpoint-GUID: nNyBR4mEzc03L9ZlCFw251dGHVAXhG71
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDA5NyBTYWx0ZWRfX0O6Q0TPC4j8F
 2IGbR6HJvyzunIl79fsW8RM9xG7YXmUEiMhRSUFO51c+OSHYhmLbN0Oik8I2n+kMxHTeOFhH7Gj
 BUQHO1va4g6LqDucsV4YQoHhoGyURtbqzg9q6RaZ9TC2UgiYAkhmWGk/OVOtCBSMw+606uT9LQo
 gChkX8M2DuDO8XXu/T2HzNOW0RN5fXTlXLDUEa0DmepHm60HFFegaflBbW4SrWkV+x8BNkO5vbg
 NQP7nZh6NoA1UVOD4V5phAfmnrHKuJu4mVmXpqYGsPSWl7aoeXXoo9fsSMlvseK6QK1mxwvrkkR
 ZIxUtcgQ/WaUTkJUPX1/pwiU8D2Jaeeow+RE3yt8UrtnNcML3aaUIC5z7EOhmfDsgEOBcob6Hna
 xXx1ZOhSnMJqDWmzsOAjAdHlHc/V/E1AJeBHOr4UNjWOFDH2oE7Z934CpVOH++MDdtYYRoJ88TB
 C+7L8jdDMAhoNcTs8Sw==
X-Proofpoint-ORIG-GUID: nNyBR4mEzc03L9ZlCFw251dGHVAXhG71
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 clxscore=1011 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080097
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 09:32:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66514

--_005_PH8PR02MB11449F3D24F262F954397B357FE3D2PH8PR02MB11449na_
Content-Type: multipart/alternative;
	boundary="_000_PH8PR02MB11449F3D24F262F954397B357FE3D2PH8PR02MB11449na_"

--_000_PH8PR02MB11449F3D24F262F954397B357FE3D2PH8PR02MB11449na_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

This patch series enables the boot critical kernel configs for
Qualcomm QCS615 (Talos) platform to support SystemReady compliance.
These configs are required for generic Linux distribution ISO images
to boot on QCS615-based hardware.

Fang Wu (2):
  genericarm64-pinctrl.cfg: enable CONFIG_PINCTRL_QCS615
  genericarm64.cfg: enable CONFIG_INTERCONNECT_QCOM_QCS615

 bsp/genericarm64/genericarm64-pinctrl.cfg | 2 ++
 bsp/genericarm64/genericarm64.cfg | 2 ++
 2 files changed, 4 insertions(+)

Thanks,
Fang

--_000_PH8PR02MB11449F3D24F262F954397B357FE3D2PH8PR02MB11449na_
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
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
Hi Bruce,</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
This patch series enables the boot critical kernel configs for</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
Qualcomm QCS615&nbsp;(Talos) platform to support SystemReady compliance.</d=
iv>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
These configs are required for generic Linux distribution ISO images</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
to boot on QCS615-based hardware.</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
Fang Wu (2):</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
&nbsp; genericarm64-pinctrl.cfg: enable CONFIG_PINCTRL_QCS615</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
&nbsp; genericarm64.cfg: enable CONFIG_INTERCONNECT_QCOM_QCS615</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
&nbsp;bsp/genericarm64/genericarm64-pinctrl.cfg | 2 ++</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
&nbsp;bsp/genericarm64/genericarm64.cfg | 2 ++</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
&nbsp;2 files changed, 4 insertions(+)</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
Thanks,</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
Fang</div>
</body>
</html>

--_000_PH8PR02MB11449F3D24F262F954397B357FE3D2PH8PR02MB11449na_--

--_005_PH8PR02MB11449F3D24F262F954397B357FE3D2PH8PR02MB11449na_
Content-Type: application/octet-stream;
	name="0001-genericarm64-pinctrl.cfg-enable-CONFIG_PINCTRL_QCS61.patch"
Content-Description: 
 0001-genericarm64-pinctrl.cfg-enable-CONFIG_PINCTRL_QCS61.patch
Content-Disposition: attachment;
	filename="0001-genericarm64-pinctrl.cfg-enable-CONFIG_PINCTRL_QCS61.patch";
	size=1115; creation-date="Fri, 08 May 2026 07:33:17 GMT";
	modification-date="Fri, 08 May 2026 07:34:50 GMT"
Content-Transfer-Encoding: base64

RnJvbSA3YTg2OGIwMDczNzIxODQ1NDlhMDhiYzk4NDQ0YmVlNmVhNTczNmZhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBGYW5nIFd1IDxmYW5nd3VAcXRpLnF1YWxjb21tLmNvbT4KRGF0
ZTogRnJpLCA4IE1heSAyMDI2IDE0OjUzOjQ5ICswODAwClN1YmplY3Q6IFtQQVRDSCAxLzJdIGdl
bmVyaWNhcm02NC1waW5jdHJsLmNmZzogZW5hYmxlIENPTkZJR19QSU5DVFJMX1FDUzYxNQoKRW5h
YmxlIFFDUzYxNSBwaW4gY29udHJvbGxlciBkcml2ZXIgZm9yIFN5c3RlbVJlYWR5IGNvbXBsaWFu
Y2UuClRoaXMgY29uZmlnIGlzIHJlcXVpcmVkIGZvciBnZW5lcmljIExpbnV4IGRpc3RyaWJ1dGlv
biBJU08gaW1hZ2VzCnRvIGJvb3Qgb24gUUNTNjE1LWJhc2VkIGhhcmR3YXJlLgoKU2lnbmVkLW9m
Zi1ieTogRmFuZyBXdSA8ZmFuZ3d1QHF0aS5xdWFsY29tbS5jb20+Ci0tLQogYnNwL2dlbmVyaWNh
cm02NC9nZW5lcmljYXJtNjQtcGluY3RybC5jZmcgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYnNwL2dlbmVyaWNhcm02NC9nZW5lcmljYXJtNjQt
cGluY3RybC5jZmcgYi9ic3AvZ2VuZXJpY2FybTY0L2dlbmVyaWNhcm02NC1waW5jdHJsLmNmZwpp
bmRleCBiNmFiYTY5Li5kNmM2MjI3IDEwMDY0NAotLS0gYS9ic3AvZ2VuZXJpY2FybTY0L2dlbmVy
aWNhcm02NC1waW5jdHJsLmNmZworKysgYi9ic3AvZ2VuZXJpY2FybTY0L2dlbmVyaWNhcm02NC1w
aW5jdHJsLmNmZwpAQCAtNjksNiArNjksOCBAQCBDT05GSUdfUElOQ1RSTF9NU004OTk4PW0KIENP
TkZJR19QSU5DVFJMX1FDTTIyOTA9bQogIyBRdWFsY29tbSBRQ1M0MDQgcGluIGNvbnRyb2xsZXIg
ZHJpdmVyCiBDT05GSUdfUElOQ1RSTF9RQ1M0MDQ9bQorIyBRdWFsY29tbSBRQ1M2MTUgcGluIGNv
bnRyb2xsZXIgZHJpdmVyCitDT05GSUdfUElOQ1RSTF9RQ1M2MTU9bQogIyBRdWFsY29tbSBUZWNo
bm9sb2dpZXMgSW5jIFFDUzgzMDAgcGluIGNvbnRyb2xsZXIgZHJpdmVyCiBDT05GSUdfUElOQ1RS
TF9RQ1M4MzAwPW0KICMgUXVhbGNvbW0gVGVjaG5vbG9naWVzIFFERjJ4eHggcGluIGNvbnRyb2xs
ZXIgZHJpdmVyCi0tIAoyLjUzLjAud2luZG93cy4yCgo=

--_005_PH8PR02MB11449F3D24F262F954397B357FE3D2PH8PR02MB11449na_
Content-Type: application/octet-stream;
	name="0002-genericarm64.cfg-enable-CONFIG_INTERCONNECT_QCOM_QCS.patch"
Content-Description: 
 0002-genericarm64.cfg-enable-CONFIG_INTERCONNECT_QCOM_QCS.patch
Content-Disposition: attachment;
	filename="0002-genericarm64.cfg-enable-CONFIG_INTERCONNECT_QCOM_QCS.patch";
	size=1090; creation-date="Fri, 08 May 2026 07:33:18 GMT";
	modification-date="Fri, 08 May 2026 07:34:50 GMT"
Content-Transfer-Encoding: base64

RnJvbSA3N2YzZWUwZGI5ZmYwMTY2YWMwMTg2ZDIxZmJiMDY5OGQ1OTNlMmEwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBGYW5nIFd1IDxmYW5nd3VAcXRpLnF1YWxjb21tLmNvbT4KRGF0
ZTogRnJpLCA4IE1heSAyMDI2IDE0OjU0OjE3ICswODAwClN1YmplY3Q6IFtQQVRDSCAyLzJdIGdl
bmVyaWNhcm02NC5jZmc6IGVuYWJsZSBDT05GSUdfSU5URVJDT05ORUNUX1FDT01fUUNTNjE1CgpF
bmFibGUgUUNTNjE1IGludGVyY29ubmVjdCBkcml2ZXIgZm9yIFN5c3RlbVJlYWR5IGNvbXBsaWFu
Y2UuClRoaXMgY29uZmlnIGlzIHJlcXVpcmVkIGZvciBnZW5lcmljIExpbnV4IGRpc3RyaWJ1dGlv
biBJU08gaW1hZ2VzCnRvIGJvb3Qgb24gUUNTNjE1LWJhc2VkIGhhcmR3YXJlLgoKU2lnbmVkLW9m
Zi1ieTogRmFuZyBXdSA8ZmFuZ3d1QHF0aS5xdWFsY29tbS5jb20+Ci0tLQogYnNwL2dlbmVyaWNh
cm02NC9nZW5lcmljYXJtNjQuY2ZnIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2JzcC9nZW5lcmljYXJtNjQvZ2VuZXJpY2FybTY0LmNmZyBiL2Jz
cC9nZW5lcmljYXJtNjQvZ2VuZXJpY2FybTY0LmNmZwppbmRleCBiYWE3NmIwLi44ZDYwN2EzIDEw
MDY0NAotLS0gYS9ic3AvZ2VuZXJpY2FybTY0L2dlbmVyaWNhcm02NC5jZmcKKysrIGIvYnNwL2dl
bmVyaWNhcm02NC9nZW5lcmljYXJtNjQuY2ZnCkBAIC0xODE1LDYgKzE4MTUsOCBAQCBDT05GSUdf
SU5URVJDT05ORUNUX1FDT01fT1NNX0wzPW0KIENPTkZJR19JTlRFUkNPTk5FQ1RfUUNPTV9RQ00y
MjkwPW0KICMgUXVhbGNvbW0gUUNTNDA0IGludGVyY29ubmVjdCBkcml2ZXIKIENPTkZJR19JTlRF
UkNPTk5FQ1RfUUNPTV9RQ1M0MDQ9bQorIyBRdWFsY29tbSBRQ1M2MTUgaW50ZXJjb25uZWN0IGRy
aXZlcgorQ09ORklHX0lOVEVSQ09OTkVDVF9RQ09NX1FDUzYxNT1tCiAjIFF1YWxjb21tIFFDUzgz
MDAgaW50ZXJjb25uZWN0IGRyaXZlcgogQ09ORklHX0lOVEVSQ09OTkVDVF9RQ09NX1FDUzgzMDA9
bQogIyBRdWFsY29tbSBTQTg3NzVQIGludGVyY29ubmVjdCBkcml2ZXIKLS0gCjIuNTMuMC53aW5k
b3dzLjIKCg==

--_005_PH8PR02MB11449F3D24F262F954397B357FE3D2PH8PR02MB11449na_--

