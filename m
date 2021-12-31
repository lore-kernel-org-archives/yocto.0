Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12D20C433EF
	for <webhook@archiver.kernel.org>; Fri, 31 Dec 2021 02:08:03 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.6914.1640916481721451735
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Dec 2021 18:08:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=hZkFOzOw;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=89994c103b=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1BV1goT0000424;
	Thu, 30 Dec 2021 18:08:01 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=LjI57ib3aEcDAEws7rB3WRnYY5S5M+f5v/QL/Be9DZw=;
 b=hZkFOzOwKYuu2sMBeR0Kni3/W85tRQ00Na8UqT+kycRHd4+AFtOk3k3sPYArQW50JfyU
 D8xXY++kmfOffC6iCd6yNcGnTjkVQe0cDto81akKbtD7v3HougXeiPQ6tI/6sEVknfg8
 Vkx0Osimw2XJF3vz/CyCM4lcVtbr5yzBvicIh0ck70/ajLfoMeT6lyvJ4Koo2bNLPOfA
 u5YtbJuM1FjXA6eC4SiBOroAUAvmWqsDyG5OzOoGMwTjFsAQxJI/0NMMW4yoC/yRDxWZ
 WntOkjWInv12tmvKTIB2ZCedfKvViFMpLEduQ6Wcr160Vy7n7aDEoqowxRirOwA5ugMa VQ==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2170.outbound.protection.outlook.com [104.47.57.170])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3d94fs0j3q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Dec 2021 18:08:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vk266qIBHo/w2fPUIJTk8UX1/KXWN94BEela9b+CxWHU+yw//b3KRe/nj2yTVEqtwC8wtmfXB/Y77uR6zWwX12mTeSzOV/O/6Wk4n8vOQ5OleHTs4S0JyL8FPhYw0JK8HMxqMkRC7y8g0hVEFaSvJc7sC/CxBgeNdtimD4obYaAYfJys+WfYhr23gnDS2fhv2QZeKN8F4573xUCdEvSj+zDtJqxN8Imm0CmIDnUp1wxIKPthcVl9ISmf0Ko1ff1kh9fRlnPcfoI7Ts1+VK/XpI5rmShi+syp5PoSmX25LSStjRgNe/7AZYOZfKAJ3qf8DHHKKtq5eJK0MVOJiYCxEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LjI57ib3aEcDAEws7rB3WRnYY5S5M+f5v/QL/Be9DZw=;
 b=gZbLSRuJED81Ua8vpuuZR1eFbdIEkNeT1c6unJT6bNCD5oyvXLlbCLvwjCO++go/r71Kq1j0YiyZfkz8Ytkc76JknQbCZ8BtGRkriWx2MzggDwTbnOgBSMulC5/UfWrkIn5Y/VPPZqWG3eSKkvLKMwIVpK8fPLdhVSmbE5vrq2lM2ICzilR+f2W4U6B84cXzKqmRdxmuEIcVYahVuSkmePHdG/Fe9v379gCF1itnjgYNq7sNQs7IY+Ocf6cNVfGv15QpjtKzi4nKHPZEgXXtWTtRbbIHHFue2ihssvSRXec8cMKYjqaBRwGRb+lzmg0cBraAaNoix9nF/DXL29DOpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB0046.namprd11.prod.outlook.com (2603:10b6:301:67::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.19; Fri, 31 Dec
 2021 02:08:00 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4%5]) with mapi id 15.20.4844.014; Fri, 31 Dec 2021
 02:07:59 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH 3/3] cluster-glue: add UPSTREAM_CHECK_GITTAGREGEX
Date: Fri, 31 Dec 2021 10:07:45 +0800
Message-Id: <20211231020745.1149339-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211231020745.1149339-1-yi.zhao@windriver.com>
References: <20211231020745.1149339-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HK2PR02CA0180.apcprd02.prod.outlook.com
 (2603:1096:201:21::16) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f96a0321-fc47-477f-a414-08d9cc025e79
X-MS-TrafficTypeDiagnostic: MWHPR11MB0046:EE_
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB004639F4DFC5C870FCB72513F9469@MWHPR11MB0046.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:157;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aMnmjILXabo/gJE6yUDJNp01Rvw1Jv/z0S5D8NUzvpAwtsCbSJF37y6XRyDSJOkpwVILzBGfi4eTPCiigNt3mTeh9H90ccqIN9lHCJbUrYkOrXoxqMzZjaPc/LpoZIhM9P1wXa17S14IgL6/+hM0ziyv3b/7pJZyg10B++92/6DSpFClSSdb9d+wWWKPqM0K9Z8QbjpHWOV/G9NVp+zNLzFpb/bvtdfVkVQ/xEMsUTc2hJkO+p/jxrfjv34RDLTlTIpbwa7o2/5/XiDadlMx6Em8v1qzpvu5b2l2h5OUffQfyo2siErBZTwMMoompIGjWcT3oKwPzDV8r00riWHy9JcYAuMHZJv3/g/clh8dOPd8xxH3/xAHEVIHT/PaAIUfbpdIR4AC3N6HkCtC1z21nCUEoJh4Nh1mLsppECYmAoqCK4dets+mAv+vt559jU28m8lUHfHIrspUh+h4rh1+8G0MjGVB3nqZf7RILMfdmAC3UYKYmucjf5mKEE5f1lB1tEJQMequycS+DpkAJ5FkJIhLB5sjT/PbIAJm4ohrL8O5fXq39Vw4LxKkAGfNinpB0Tox4to5seaxDrwJnzIJUVHKNB6rcw+5dQU5DZq+HRe68jpePEeWhltad24H7elJ+g3GOL1qys8Kcd1ybI7DbiQFYaCNE9XURaR7HnCVUhy8upsrIfLHOAqNSZ/kSTksmeXdS5iSkz2h47FUZrFvng==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8936002)(66556008)(66476007)(186003)(26005)(2906002)(316002)(508600001)(6512007)(38350700002)(36756003)(38100700002)(52116002)(6486002)(8676002)(5660300002)(86362001)(6506007)(44832011)(6666004)(2616005)(66946007)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?469tuNFenq6OClvF9Ne54xyQ6fPks+oCnZcUvaUVEbfGxP9RuD/A2FVJ+NGs?=
 =?us-ascii?Q?2AwYxBrsZNvlV97kEU7U/oVhtZpzw5bCzwIJf3tyKYOOprFlFfsxSQaOPYw7?=
 =?us-ascii?Q?tjzMvFmjR4yJOvxVKSPpcP8MdrdfHBVgXMY3JJzdIO+UPMyS9AC4ZcwCgQH/?=
 =?us-ascii?Q?AoP0yWnxN5HFovP3f0sHBz+FSTAK5LkyH2CwGBUiNTBhzDdgLAmlL9tnyGd3?=
 =?us-ascii?Q?z8QhwJdmLPbXfycpblAxdY2z5b5xK22ta/CWOxyttyECTtOBiIs447Y995h4?=
 =?us-ascii?Q?lFwZRiNj8VeHg6MGiqm0ORfZPRpyedBacPKlIJ5xEM0MoGqE/xKBM8pav/AV?=
 =?us-ascii?Q?h5ONHo+B5qQSTAgFcaPJpSKn1eYrnLp2xAosGSgJ3ycQLxJYx9Jm/PGFuzGS?=
 =?us-ascii?Q?pW2l+bLgS+MVahtYbg6SM8nIXpGnRVARHq1bSKEwXyKrzy6jfcvgZXV7d2qn?=
 =?us-ascii?Q?Q5Fdtjn46azSO3iK7s89FEOptBDhGp37NOAeo/MdtWJJ5ANIPN3YB+DGqnUt?=
 =?us-ascii?Q?w5swyoBMKJ+8EBK4QEHb7hk6CjJg7TH4m8FPqWP+wYcAcZv5mz53XHCT3i0z?=
 =?us-ascii?Q?a/cqaGZVnJeXGK6lYRciAPeua6C4GrODKM1N/LONAxMxrgxux41eZeGy17Y9?=
 =?us-ascii?Q?dENH2HA6ai723UoFXmuh2LAP88zzLf1WWLF4iz5JPrFqIRVrMO7QhjdXMssS?=
 =?us-ascii?Q?8GvaMWy1yP2oXkhn7XomUkUZpTiFAtS4A1ghhnAMR1vAL93IB3pLGxN9s7an?=
 =?us-ascii?Q?xXqq9FgDFuW4aRIt/z52rYq+cQ+6IEbzXghL0uN+wfWxaIYpvJgRch68K8+B?=
 =?us-ascii?Q?JUrwirEQI6S6OOKpE5kUDjyjp1lyQnxlhrUYEbFRc6VYYCQwi+oLQGx4ZGaA?=
 =?us-ascii?Q?Lo+SRkwW0K/BgC5Ax8nHXY8U7xjkFZiKjKbztBtn/q05QK4wchosNV1YkvKi?=
 =?us-ascii?Q?3a57/Be7A8dYGcjCiMJSMJycTZwDgRDJumv0xsMT11gAsPdQiXPSUyE1RKmQ?=
 =?us-ascii?Q?4qLv68z3p4iksMQBlFFVij6RzZ9DHTkY/bye+9KlcvwXDCQ8iFpzFI0DscDe?=
 =?us-ascii?Q?KApMTOFUdUoZ0xtheKC3mnSuL4tXASrvEzOr7okV7iqzzbkkUHrQXteiYEro?=
 =?us-ascii?Q?ma8uDhYr1OwagorYsYEnZ1B/UaNEr9UKm8m0B4I+dOIwRkzCiqNU/FH32Qbc?=
 =?us-ascii?Q?Rh15xtTXZ1IXXZ+6MNh2o8CutkZkB4btSVHkosC5hHW0ne4tF7nvv16mO2xX?=
 =?us-ascii?Q?khZHYtqGJWFqEJyrxKVAg/aDh746H5Pnm1F2tzVlPPFvQsDS8ZrDjmp+s0cV?=
 =?us-ascii?Q?HrgX43RFM8L9beCHCmp+khnjndgtOewct25ZN2UyDYpb+UX0XEJPBUu7vQ+I?=
 =?us-ascii?Q?VjampbZiE8b4aAbziLOCkL7D8F+26vKnnJgWCs/S6LpEh4IotEDHm5rdqVBH?=
 =?us-ascii?Q?tvoYNiOsgoXpO3UcJ98h1Rs2yVhRXDL35OT1xvpEs6kYGIi7zgE7wJZaRtFg?=
 =?us-ascii?Q?hpeY3OiZIc59nDyAyMWVKsUFd+yHm7ZjdMHZ9xQtQs0D6VKye4/sms2kTNvX?=
 =?us-ascii?Q?89uM2Y26kqMjOviQfkEmYFsnnTWyuxEM5Kug+2TuFnLAKKwrHT+ONsTym40W?=
 =?us-ascii?Q?ZsmTeD0P7u4K3zT8coaGrjg=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f96a0321-fc47-477f-a414-08d9cc025e79
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2021 02:07:59.9564
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 nE23qkBSlKBjJFAIYBFBs9+jTH+QKhlEcMcruA/XmpbfZa0Ctnpy4PxdJ43hyJN7jHjMsJeKwY1vRQ/lrSqSPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0046
X-Proofpoint-GUID: chk6gAoPPHzpoXD7CIcfVpOEPDZ3Gmr-
X-Proofpoint-ORIG-GUID: chk6gAoPPHzpoXD7CIcfVpOEPDZ3Gmr-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-30_09,2021-12-30_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0
 malwarescore=0 spamscore=0 mlxscore=0 adultscore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 bulkscore=0 mlxlogscore=838
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112310009
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Dec 2021 02:08:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55695

Add UPSTREAM_CHECK_GITTAGREGEX to check the correct latest version.

Before the patch:
$ devtool latest-version cluster-glue
INFO: Current version: 1.0.12
INFO: Latest version: 10
INFO: Latest version's commit: 62fac3c02affab05abe39c185dad3a91367d3f58

After the patch:
$ devtool latest-version cluster-glue
INFO: Current version: 1.0.12
INFO: Latest version: 1.0.12
INFO: Latest version's commit: 1bc77825c0cfb0c80f9c82a061af7ede68676cb4

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
index acd3149..c9d1bac 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
@@ -22,6 +22,8 @@ SRC_URI:append_libc-uclibc = " file://kill-stack-protector.patch"
 
 SRCREV = "fd5a3befacd23d056a72cacd2b8ad6bba498e56b"
 
+UPSTREAM_CHECK_GITTAGREGEX = "glue-(?P<pver>\d+(\.\d+)+)"
+
 inherit autotools useradd pkgconfig systemd multilib_script multilib_header
 
 SYSTEMD_SERVICE:${PN} = "logd.service"
-- 
2.25.1


