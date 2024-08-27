Return-Path: <soumya.sambu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CD9EC5472F
	for <webhook@archiver.kernel.org>; Tue, 27 Aug 2024 14:25:03 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.79061.1724768696831296926
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Aug 2024 07:24:56 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=89691699bf=soumya.sambu@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47RBKskC020014
	for <yocto@lists.yoctoproject.org>; Tue, 27 Aug 2024 07:24:56 -0700
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 417f1kav03-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 27 Aug 2024 07:24:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PVl9Qd0Rxqyy/X40imh0hdcEg8EwCfzay0tFlZR2J9W7BKZ2cnoZUCTW2YBG5teuAtBNDlSB5vOo+md9FW0YpPsyS900Sf4aHZ6IFSmNvrFzB59hd/JSs4jncqdoYN1aWVcHL6+y+6TegXC5OSSja6UvNu97ULFND2FYBbQqeOkPRjfZ5ZhdRRQfgGZgPWMqAXXsBeJgASdA3isAsSMUMG2JVKTq7ouvujEjcGlnXFiNHw65WY2eCPy7V8LL8jphbq/mMF9B2phUYLmjAiuL9oCnpOk7DP+xzF6rl/H+Q3R7+U6X2D+cFVWJKorbChZba3hsv55hZ+N+HAUQ7RzRPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1uSrUBkwPLsjV1z3pARgLsQr1Lz1QoZfttnV2VWmR0E=;
 b=ewM7oZDd7E3d7KFlkLs1YsMZV1d2l2GwzLJV6S6KcpLfG0GmH5G3ND54PDTEeiUCE3J1/Vzm4R12x/ko1G6qjuE2LP1k0MRHdG/3Hxuk8A96h38iNuheAKlbxD+SXgm8OGDI678Hw1wS3Jcwhdak07w2LtlK7duuFFU/WNazaljfIzLoR4Aqg3YyFg7wV1MVvGFMip0cjCMzXpd9nakeNTvDdUOe88tFVhPqrWhhfnmOaDpV6ySjQ63jbceS9cNdeblR3HRGUdnDKQdiUD99gzHPCRjXT+aAsd9fZrXExpYLltXytpMLnTrEI48XnGMNJ0fjmxJ1fj+x35zBt9esbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BYAPR11MB3397.namprd11.prod.outlook.com (2603:10b6:a03:1b::29)
 by MW4PR11MB6887.namprd11.prod.outlook.com (2603:10b6:303:225::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Tue, 27 Aug
 2024 14:24:51 +0000
Received: from BYAPR11MB3397.namprd11.prod.outlook.com
 ([fe80::14d5:b763:637b:cb68]) by BYAPR11MB3397.namprd11.prod.outlook.com
 ([fe80::14d5:b763:637b:cb68%3]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 14:24:50 +0000
From: "Sambu, Soumya" <Soumya.Sambu@windriver.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "Chellam,
 Divya" <Divya.Chellam@windriver.com>
Subject: Re: [yocto] [PATCH] tpm2-tools: fix CVE-2024-29039
Thread-Topic: [yocto] [PATCH] tpm2-tools: fix CVE-2024-29039
Thread-Index: AQHa+GPfuN7VoiESzEOdT50sn3F907I7KJ2n
Date: Tue, 27 Aug 2024 14:24:50 +0000
Message-ID: 
 <BYAPR11MB3397493860E3A016B023093D81942@BYAPR11MB3397.namprd11.prod.outlook.com>
References: <20240827085239.644001-1-divya.chellam@windriver.com>
In-Reply-To: <20240827085239.644001-1-divya.chellam@windriver.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: Divya.Chellam@windriver.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3397:EE_|MW4PR11MB6887:EE_
x-ms-office365-filtering-correlation-id: ca65ad85-ecc1-4537-7659-08dcc6a40320
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?p1OuNiPr52TKvwV8Eq3Uw6PuBJPSXe3+u04euvOTQQrXsfc72/rPFgM40kDk?=
 =?us-ascii?Q?gUHiJL1O8r4fvnWTH7ZDBgvUr52BKOq5RzY441KnEI8iRC5pf6pur6CavBEq?=
 =?us-ascii?Q?iWh0psfwGk/3mt/x1U+0x/PAYvYY9oEFyA/2OZZ1f/TL6YI081wDgA4PcOky?=
 =?us-ascii?Q?YFuCslK6vJvNxFzx5iETY7PtzIHz3hdithh5QzESJBbZXmR0oN71p6uMYK79?=
 =?us-ascii?Q?XhBt9bwgyxicr+efiHSj5kBwx0AAjJ7d25cH8Y9foX12GlyuDh77H939qZNN?=
 =?us-ascii?Q?JVJjxlchYYA+OXJdNx+XbzcvJd9jwhn6Llm+lHgneYQIwuLv1QVJoSR6ihyK?=
 =?us-ascii?Q?73x5Y+Exwvqa9RG6MYI9ZRAAhVy/gx64utq0DcL7ItsM5yqvrduE+9N4DYv+?=
 =?us-ascii?Q?d1jhdbg0imkGBPWobzC8vzc2M5vLboZrsTcnrY/iig+xRBM9RrLKDXgjyJeC?=
 =?us-ascii?Q?qDjK42k21te+nQpxGMDE8AppU8L+6FTHArKcW2MPdEbkim/Qq4F9x+iJ8mEp?=
 =?us-ascii?Q?Sz8/bZGvXVkr+WW4VNd+EliwfaYTa7yJKgdrwiCKHuJaM5jl3eslpRPAN0TW?=
 =?us-ascii?Q?ZjJM+5udHNox5OqwjfIHVt6toKuSybn5w/lsPTa2qXvkpvvkLUhlBJdQVHo8?=
 =?us-ascii?Q?iFL8BBu6zTP4RdYNCMtg5nGTHtVfHgb1CecC9fttELQO/cW/kfpumMxo4cLn?=
 =?us-ascii?Q?+/WXr3aTqZ+k+5Tn/ewzKORzW5vFeaPm052LfEc0BqHylmlUAEjhx1oI5Oa3?=
 =?us-ascii?Q?Ub1lmokVVXO6kEKXSJH+uXeE0b+kRM5rjZ++UYTLVDCR953PlmzZRGmQM7Hb?=
 =?us-ascii?Q?GW2JD+PE9WnBpUXxPWq3pbjBcZHUoH06igx2m9NdXBe8KNFgtzuC+ZL44K24?=
 =?us-ascii?Q?F1g91i6IOaDNVKE1zp9x8xjui0+uSP9D+fnmaZEZmIYWUzmhK4znpsVnR+Oh?=
 =?us-ascii?Q?H6iReDE82V9q2JlsoT9BIZO6lPdfK4C2JZ1mA+pGGy2iNIZB5iq1jpudePfa?=
 =?us-ascii?Q?pxZTLOiL0/8OrxY81A7MgdZLii+v6a037Cyjo6IhhLfPqg0JVHeKNhExQmti?=
 =?us-ascii?Q?Yp8omwJLmTyb9JNJ5h+vbWn0MRGepOpXdPUqCWczeShG1b8OJ6dn3yeXBg8w?=
 =?us-ascii?Q?h+5t5RX8YSkoOn69zh4zGyGhKZKIZqCE+2Vzf3JAjXwEYnitQeD0r+/U60r5?=
 =?us-ascii?Q?kQLG8uN6IScQIppyhK2dvuMKxn0bvkagNc3lLWEsdSDT3LUPmyE6JRTNCJAe?=
 =?us-ascii?Q?V3yyiKwieNDGvnxEEtw2Wowf5JL/QEnB4kwWvXhndpQSK39nRfdqLalplzl1?=
 =?us-ascii?Q?SL+949rx69rLR8jzB31E5f2Slx66IVL6RT3m5DMcu+E36Itwf4jj6YlD0Nbm?=
 =?us-ascii?Q?bEmHkS4=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3397.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?HoCJVSoqEYP0zlQA8mLUcwp0ifdzwwxEGpMp4BeN8FLT8IesiR50RGvonVX2?=
 =?us-ascii?Q?m5ngip/15Nznzzhu8r/i6LhHlJKfVQLdwSgai2gXl3X3mDareXhmj9RDc0C5?=
 =?us-ascii?Q?N2BK56zXiXsphFpYqT9TST/pwBZJkTyVqX48UQXErJEiBzfqgIl0nMrxPHmM?=
 =?us-ascii?Q?k3yEnHtf1Xas9cyz3euRtu35Y9C5IbyHu/1P3dWQZ1VS/i8f6RHuYCanoyif?=
 =?us-ascii?Q?2l9EKGHYKJWcQfnFDByt+vFGWH8Ww99dBQKQeJqFUl3rFm5/4vOrs5kV17Tp?=
 =?us-ascii?Q?asQpFYbI/DyNHLR/XV6A7Zvl45LAJ7E0FRO3jXrBN2wKZLiI9drnGEqLXAFX?=
 =?us-ascii?Q?9jtCVIOCARp6ybuTQiPPghzWPPZGzT0/pKJJ01p0H1q5bsLdUhCPVyy1uVmy?=
 =?us-ascii?Q?jOvbRJ+NezFMTLlYeNQJmagHPJwsnlt/ybYq1tibP6fi+ae8A2CHWWBQMubG?=
 =?us-ascii?Q?dhpBG8soLZADv6vzVJKUS0drpI9w58jxxNjzWEXMtjHgv01Pz8K0sUU3A7In?=
 =?us-ascii?Q?QukY+KzieGE/1kd6cN/h5LQdOmt/I6JOw3Fz5Tgxd/djQRkaFU+7c1/Qhd8a?=
 =?us-ascii?Q?6RBKib2HFTDV79UfQfF6H3mo17CnUM1G7m8Z3qrUjvti1Hr0JiNhZsummVPb?=
 =?us-ascii?Q?fHInwcsI2geaAacs+Hvjp87puFddsiTbl/uklsNZHc/ziZWej8GmG6U+yQCi?=
 =?us-ascii?Q?AntuL5vQzbXD1dBd5rXx/dJ45bJzjh/sfrfnBoJkbKfXTN4SzplbprCbUrn9?=
 =?us-ascii?Q?LKl+wYOXk00C4vj3mZe8+4WE4VGeu5XAYLXuV/tZqoKSAuJK2WX751FF0jNt?=
 =?us-ascii?Q?FM5O726Hw/tbgMwJAizO5SUujzku6Okwg0umFwPwYgMbz/LiJO0tvOVhFplE?=
 =?us-ascii?Q?O6ArmuuTtJRgP/Fn5h7OmTh1bT8JMfKCHkdkZvQI2AjXSSQB8yTdG6eyArZ6?=
 =?us-ascii?Q?hQm5LEphdgIpzUb3DYvLClCoWg91fWEWubMCP6XjXGiXla/3DcFAX2GXTpWh?=
 =?us-ascii?Q?dnvzbAiraUOorEe85GoeaYnUQAL0bqk967BF0WAbHTIjYHKnlctgqa9pzaL9?=
 =?us-ascii?Q?6Q9zucchyE3qeQ1u95FflnUhWEdfHZwXBq/XNK8fVfxaC00f+wMPGY45385F?=
 =?us-ascii?Q?70TsLt9D/rSqRQ2DcaJeqmnhMS+J9cn8fJnWmXplOVL67n9qMmpGP5LcRsrn?=
 =?us-ascii?Q?agJjbMEUwIAz8rVYLUs7ezrlWm9pd+B3zxoR5wVZu1FlHuYBzJY5HUIXIeXi?=
 =?us-ascii?Q?LnUFlUDaKFkDp7rxh5xtVs8ygvFjC1dJxrDlWylEtkoGggQujXYbGgmxHoWI?=
 =?us-ascii?Q?uj4PStFwLd87m35kjqMqqIUBD8rv1VaiDTYYtLjzq+sX/czlHcGn3tCw9VPX?=
 =?us-ascii?Q?Nyt8pDtd5gFfVz97VzLV0MLNpocoYJstzoLo67TmQfzKTf+Gg3z8jtI1dB1z?=
 =?us-ascii?Q?PzUZcvWq3ZTCq6SbhttmN4RblTs6/ZGJHDMyDpmKzyg4jtG4oYKVx+YDC/fP?=
 =?us-ascii?Q?sBQiE3TjJoH2DaH+bksdL/UrCB+RHUyLAenBqU+Kfah4DRvUlPHpRM3exx6I?=
 =?us-ascii?Q?RO2tqsi1tkJSYfsiA3U3Ci59rJdQUg3GVvvCIfGR?=
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB3397493860E3A016B023093D81942BYAPR11MB3397namp_"
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3397.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca65ad85-ecc1-4537-7659-08dcc6a40320
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2024 14:24:50.9120
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tu7Jm7xdKw2NyWSqxIZCyFl7cZmWj7VOemydxQ2xCv7eEq7Mw4oxiYpoWdicHxxCbLr+Kxlmt2Yzea1g5h861Pzu6yZhaGUfsHXDn71SX1M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6887
X-Proofpoint-ORIG-GUID: x8cA2KX5vePH-5en37KE6xALDyS4QWPQ
X-Authority-Analysis: v=2.4 cv=McQ+uI/f c=1 sm=1 tr=0 ts=66cde1b8 cx=c_pps a=gHjWyi4SN+6fNgZLRl0D7Q==:117 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=yoJbH4e0A30A:10 a=bRTqI5nwn0kA:10 a=t7CeM3EgAAAA:8 a=iGHA9ds3AAAA:8 a=xNf9USuDAAAA:8
 a=NEAV23lmAAAA:8 a=bUQKSiCPAAAA:8 a=qHUOglpnbeFhvRd7ip0A:9 a=CjuIK1q_8ugA:10 a=AeQMEsc8cJ9VLwYuTUMA:9 a=R4ngUqk2nHtcrmUr:21 a=frz4AuCg-hUA:10 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10 a=T1a-OTYGVawA:10 a=ImwWUX5h3JJ3gRE9moBe:22 a=FdTzh2GWekK77mhwV6Dw:22
 a=nM-MV4yxpKKO9kiQg6Ot:22 a=SEwjQc04WA-l_NiBhQ7s:22 a=-fHZXUhsFbuwFN3fwQAr:22
X-Proofpoint-GUID: x8cA2KX5vePH-5en37KE6xALDyS4QWPQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-27_08,2024-08-27_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=999 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1011
 mlxscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.21.0-2407110000 definitions=main-2408270107
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Aug 2024 14:25:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63750

--_000_BYAPR11MB3397493860E3A016B023093D81942BYAPR11MB3397namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Kindly ignore this mail, on behalf of @Chellam, Divya<mailto:Divya.Chellam@=
windriver.com>.

Regards,
Soumya
________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of dchellam via lists.yoctoproject.org <Divya.Chellam=3Dwindriver.com@list=
s.yoctoproject.org>
Sent: Tuesday, August 27, 2024 2:22 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: [yocto] [PATCH] tpm2-tools: fix CVE-2024-29039

From: Divya Chellam <divya.chellam@windriver.com>

tpm2 is the source repository for the Trusted Platform Module (TPM2.0)
tools. This vulnerability allows attackers to manipulate tpm2_checkquote
outputs by altering the TPML_PCR_SELECTION in the PCR input file.
As a result, digest values are incorrectly mapped to PCR slots and banks,
providing a misleading picture of the TPM state. This issue has been
patched in version 5.7.

Reference:
https://security-tracker.debian.org/tracker/CVE-2024-29039

Upstream-patch:
https://github.com/tpm2-software/tpm2-tools/commit/98599df9392a346216c5a059=
b8d35271286100bb

Signed-off-by: Divya Chellam <divya.chellam@windriver.com>
---
 .../tpm2-tools/CVE-2024-29039.patch           | 92 +++++++++++++++++++
 .../recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb |  4 +-
 2 files changed, 95 insertions(+), 1 deletion(-)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/CVE-2024-29=
039.patch

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/CVE-2024-29039.pat=
ch b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/CVE-2024-29039.patch
new file mode 100644
index 0000000..e3dc5c9
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/CVE-2024-29039.patch
@@ -0,0 +1,92 @@
+From 98599df9392a346216c5a059b8d35271286100bb Mon Sep 17 00:00:00 2001
+From: Juergen Repp <juergen_repp@web.de>
+Date: Tue, 5 Mar 2024 22:11:38 +0100
+Subject: [PATCH] tpm2_checkquote: Add comparison of pcr selection.
+
+The pcr selection which is passed with the --pcr parameter it not
+compared with the attest. So it's possible to fake a valid
+attestation.
+
+Fixes: CVE-2024-29039
+
+Signed-off-by: Juergen Repp <juergen_repp@web.de>
+Signed-off-by: Andreas Fuchs <andreas.fuchs@infineon.com>
+
+CVE: CVE-2024-29039
+
+Upstream-Status: Backport [https://github.com/tpm2-software/tpm2-tools/com=
mit/98599df9392a346216c5a059b8d35271286100bb]
+
+Signed-off-by: Divya Chellam <divya.chellam@windriver.com>
+---
+ tools/misc/tpm2_checkquote.c | 41 +++++++++++++++++++++++++++++++++++-
+ 1 file changed, 40 insertions(+), 1 deletion(-)
+
+diff --git a/tools/misc/tpm2_checkquote.c b/tools/misc/tpm2_checkquote.c
+index 9225b25..d682f48 100644
+--- a/tools/misc/tpm2_checkquote.c
++++ b/tools/misc/tpm2_checkquote.c
+@@ -48,6 +48,37 @@ static tpm2_verifysig_ctx ctx =3D {
+         .pcr_hash =3D TPM2B_TYPE_INIT(TPM2B_DIGEST, buffer),
+ };
+
++static bool compare_pcr_selection(TPML_PCR_SELECTION *attest_sel, TPML_PC=
R_SELECTION *pcr_sel) {
++    if (attest_sel->count !=3D pcr_sel->count) {
++        LOG_ERR("Selection sizes do not match.");
++        return false;
++    }
++    for (uint32_t i =3D 0; i < attest_sel->count; i++) {
++        for (uint32_t j =3D 0; j < pcr_sel->count; j++) {
++            if (attest_sel->pcrSelections[i].hash =3D=3D
++                pcr_sel->pcrSelections[j].hash) {
++                if (attest_sel->pcrSelections[i].sizeofSelect !=3D
++                        pcr_sel->pcrSelections[j].sizeofSelect) {
++                    LOG_ERR("Bitmask size does not match");
++                    return false;
++                }
++                if (memcmp(&attest_sel->pcrSelections[i].pcrSelect[0],
++                           &pcr_sel->pcrSelections[j].pcrSelect[0],
++                           attest_sel->pcrSelections[i].sizeofSelect) !=
=3D 0) {
++                    LOG_ERR("Selection bitmasks do not match");
++                    return false;
++                }
++                break;
++            }
++            if (j =3D=3D pcr_sel->count - 1) {
++                LOG_ERR("Hash selections to not match.");
++                return false;
++            }
++        }
++    }
++    return true;
++}
++
+ static bool verify_signature() {
+
+     bool result =3D false;
+@@ -212,7 +243,7 @@ static tool_rc init(void) {
+     }
+
+     TPM2B_ATTEST *msg =3D NULL;
+-    TPML_PCR_SELECTION pcr_select;
++    TPML_PCR_SELECTION pcr_select =3D { 0 };
+     tpm2_pcrs * pcrs;
+     tool_rc return_value =3D tool_rc_general_error;
+
+@@ -279,6 +310,14 @@ static tool_rc init(void) {
+         goto err;
+     }
+
++    if (ctx.flags.pcr) {
++        if (!compare_pcr_selection(&ctx.attest.attested.quote.pcrSelect,
++                                   &pcr_select)) {
++            LOG_ERR("PCR selection does not match PCR slection from attes=
t!");
++            goto err;
++        }
++    }
++
+     // Figure out the digest for this message
+     bool res =3D tpm2_openssl_hash_compute_data(ctx.halg, msg->attestatio=
nData,
+             msg->size, &ctx.msg_hash);
+--
+2.40.0
+
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb b/meta-tpm/=
recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
index c20af7e..e4966d7 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
@@ -6,7 +6,9 @@ SECTION =3D "tpm"

 DEPENDS =3D "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"

-SRC_URI =3D "https://github.com/tpm2-software/${BPN}/releases/download/${P=
V}/${BPN}-${PV}.tar.gz"
+SRC_URI =3D "https://github.com/tpm2-software/${BPN}/releases/download/${P=
V}/${BPN}-${PV}.tar.gz \
+           file://CVE-2024-29039.patch \
+          "

 SRC_URI[sha256sum] =3D "c0b402f6a7b3456e8eb2445211e2d41c46c7e769e05fe4d890=
9ff64119f7a630"

--
2.40.0


--_000_BYAPR11MB3397493860E3A016B023093D81942BYAPR11MB3397namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Kindly ignore this mail, on behalf of <a href=3D"mailto:Divya.Chellam@windr=
iver.com" id=3D"OWAAM700136" class=3D"tWKOu mention ms-bgc-nlr ms-fcl-b">
@Chellam, Divya</a>.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Regards,<br>
Soumya</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of dchellam via list=
s.yoctoproject.org &lt;Divya.Chellam=3Dwindriver.com@lists.yoctoproject.org=
&gt;<br>
<b>Sent:</b> Tuesday, August 27, 2024 2:22 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> [yocto] [PATCH] tpm2-tools: fix CVE-2024-29039</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">From: Divya Chellam &lt;divya.chellam@windriver.co=
m&gt;<br>
<br>
tpm2 is the source repository for the Trusted Platform Module (TPM2.0)<br>
tools. This vulnerability allows attackers to manipulate tpm2_checkquote<br=
>
outputs by altering the TPML_PCR_SELECTION in the PCR input file.<br>
As a result, digest values are incorrectly mapped to PCR slots and banks,<b=
r>
providing a misleading picture of the TPM state. This issue has been<br>
patched in version 5.7.<br>
<br>
Reference:<br>
<a href=3D"https://security-tracker.debian.org/tracker/CVE-2024-29039">http=
s://security-tracker.debian.org/tracker/CVE-2024-29039</a><br>
<br>
Upstream-patch:<br>
<a href=3D"https://github.com/tpm2-software/tpm2-tools/commit/98599df9392a3=
46216c5a059b8d35271286100bb">https://github.com/tpm2-software/tpm2-tools/co=
mmit/98599df9392a346216c5a059b8d35271286100bb</a><br>
<br>
Signed-off-by: Divya Chellam &lt;divya.chellam@windriver.com&gt;<br>
---<br>
&nbsp;.../tpm2-tools/CVE-2024-29039.patch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; | 92 +++++++++++++++++++<br>
&nbsp;.../recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb |&nbsp; 4 +-<br>
&nbsp;2 files changed, 95 insertions(+), 1 deletion(-)<br>
&nbsp;create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/CVE-20=
24-29039.patch<br>
<br>
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/CVE-2024-29039.pat=
ch b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/CVE-2024-29039.patch<br>
new file mode 100644<br>
index 0000000..e3dc5c9<br>
--- /dev/null<br>
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/CVE-2024-29039.patch<br>
@@ -0,0 +1,92 @@<br>
+From 98599df9392a346216c5a059b8d35271286100bb Mon Sep 17 00:00:00 2001<br>
+From: Juergen Repp &lt;juergen_repp@web.de&gt;<br>
+Date: Tue, 5 Mar 2024 22:11:38 +0100<br>
+Subject: [PATCH] tpm2_checkquote: Add comparison of pcr selection. <br>
+<br>
+The pcr selection which is passed with the --pcr parameter it not <br>
+compared with the attest. So it's possible to fake a valid <br>
+attestation.<br>
+<br>
+Fixes: CVE-2024-29039<br>
+<br>
+Signed-off-by: Juergen Repp &lt;juergen_repp@web.de&gt;<br>
+Signed-off-by: Andreas Fuchs &lt;andreas.fuchs@infineon.com&gt;<br>
+<br>
+CVE: CVE-2024-29039<br>
+<br>
+Upstream-Status: Backport [<a href=3D"https://github.com/tpm2-software/tpm=
2-tools/commit/98599df9392a346216c5a059b8d35271286100bb">https://github.com=
/tpm2-software/tpm2-tools/commit/98599df9392a346216c5a059b8d35271286100bb</=
a>]<br>
+<br>
+Signed-off-by: Divya Chellam &lt;divya.chellam@windriver.com&gt;<br>
+---<br>
+ tools/misc/tpm2_checkquote.c | 41 +++++++++++++++++++++++++++++++++++-<br=
>
+ 1 file changed, 40 insertions(+), 1 deletion(-)<br>
+<br>
+diff --git a/tools/misc/tpm2_checkquote.c b/tools/misc/tpm2_checkquote.c<b=
r>
+index 9225b25..d682f48 100644<br>
+--- a/tools/misc/tpm2_checkquote.c<br>
++++ b/tools/misc/tpm2_checkquote.c<br>
+@@ -48,6 +48,37 @@ static tpm2_verifysig_ctx ctx =3D {<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .pcr_hash =3D TPM2B_TYPE_=
INIT(TPM2B_DIGEST, buffer),<br>
+ };<br>
+ <br>
++static bool compare_pcr_selection(TPML_PCR_SELECTION *attest_sel, TPML_PC=
R_SELECTION *pcr_sel) {<br>
++&nbsp;&nbsp;&nbsp; if (attest_sel-&gt;count !=3D pcr_sel-&gt;count) {<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LOG_ERR(&quot;Selection sizes =
do not match.&quot;);<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return false;<br>
++&nbsp;&nbsp;&nbsp; }<br>
++&nbsp;&nbsp;&nbsp; for (uint32_t i =3D 0; i &lt; attest_sel-&gt;count; i+=
+) {<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (uint32_t j =3D 0; j &lt; =
pcr_sel-&gt;count; j++) {<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (at=
test_sel-&gt;pcrSelections[i].hash =3D=3D<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; pcr_sel-&gt;pcrSelections[j].hash) {<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; if (attest_sel-&gt;pcrSelections[i].sizeofSelect !=3D<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pcr_sel-&=
gt;pcrSelections[j].sizeofSelect) {<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LOG_ERR(&quot;Bitmask size does n=
ot match&quot;);<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return false;<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; }<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; if (memcmp(&amp;attest_sel-&gt;pcrSelections[i].pcrSelect=
[0],<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; &amp;pcr_sel-&gt;pcrSelections[j].pcrSelect[0],<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; attest_sel-&gt;pcrSelections[i].sizeofSelect) !=3D 0) {<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LOG_ERR(&quot;Selection bitmasks =
do not match&quot;);<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return false;<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; }<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; break;<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (j =
=3D=3D pcr_sel-&gt;count - 1) {<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; LOG_ERR(&quot;Hash selections to not match.&quot;);<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; return false;<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
++&nbsp;&nbsp;&nbsp; }<br>
++&nbsp;&nbsp;&nbsp; return true;<br>
++}<br>
++<br>
+ static bool verify_signature() {<br>
+ <br>
+&nbsp;&nbsp;&nbsp;&nbsp; bool result =3D false;<br>
+@@ -212,7 +243,7 @@ static tool_rc init(void) {<br>
+&nbsp;&nbsp;&nbsp;&nbsp; }<br>
+ <br>
+&nbsp;&nbsp;&nbsp;&nbsp; TPM2B_ATTEST *msg =3D NULL;<br>
+-&nbsp;&nbsp;&nbsp; TPML_PCR_SELECTION pcr_select;<br>
++&nbsp;&nbsp;&nbsp; TPML_PCR_SELECTION pcr_select =3D { 0 };<br>
+&nbsp;&nbsp;&nbsp;&nbsp; tpm2_pcrs * pcrs;<br>
+&nbsp;&nbsp;&nbsp;&nbsp; tool_rc return_value =3D tool_rc_general_error;<b=
r>
+ <br>
+@@ -279,6 +310,14 @@ static tool_rc init(void) {<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto err;<br>
+&nbsp;&nbsp;&nbsp;&nbsp; }<br>
+ <br>
++&nbsp;&nbsp;&nbsp; if (ctx.flags.pcr) {<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!compare_pcr_selection(&am=
p;ctx.attest.attested.quote.pcrSelect,<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;pcr_select)) =
{<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LOG_ER=
R(&quot;PCR selection does not match PCR slection from attest!&quot;);<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto e=
rr;<br>
++&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
++&nbsp;&nbsp;&nbsp; }<br>
++<br>
+&nbsp;&nbsp;&nbsp;&nbsp; // Figure out the digest for this message<br>
+&nbsp;&nbsp;&nbsp;&nbsp; bool res =3D tpm2_openssl_hash_compute_data(ctx.h=
alg, msg-&gt;attestationData,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; m=
sg-&gt;size, &amp;ctx.msg_hash);<br>
+-- <br>
+2.40.0<br>
+<br>
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb b/meta-tpm/=
recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb<br>
index c20af7e..e4966d7 100644<br>
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb<br>
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb<br>
@@ -6,7 +6,9 @@ SECTION =3D &quot;tpm&quot;<br>
&nbsp;<br>
&nbsp;DEPENDS =3D &quot;tpm2-abrmd tpm2-tss openssl curl autoconf-archive&q=
uot;<br>
&nbsp;<br>
-SRC_URI =3D &quot;<a href=3D"https://github.com/tpm2-software/${BPN}/relea=
ses/download/${PV}/${BPN}-${PV}.tar.gz">https://github.com/tpm2-software/${=
BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz</a>&quot;<br>
+SRC_URI =3D &quot;<a href=3D""></a>https://github.com/tpm2-software/${BPN}=
/releases/download/${PV}/${BPN}-${PV}.tar.gz \<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"fi=
le://CVE-2024-29039.patch">file://CVE-2024-29039.patch</a> \<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<br>
&nbsp;<br>
&nbsp;SRC_URI[sha256sum] =3D &quot;c0b402f6a7b3456e8eb2445211e2d41c46c7e769=
e05fe4d8909ff64119f7a630&quot;<br>
&nbsp;<br>
-- <br>
2.40.0<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_BYAPR11MB3397493860E3A016B023093D81942BYAPR11MB3397namp_--

