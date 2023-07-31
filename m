Return-Path: <kexin.hao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AB90C001DE
	for <webhook@archiver.kernel.org>; Mon, 31 Jul 2023 05:33:55 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.1377.1690781624823812409
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 Jul 2023 22:33:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=c8iKEU2l;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=75769f2347=kexin.hao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36V56Yvd022567;
	Sun, 30 Jul 2023 22:33:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:cc:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=d251QmVy+HtkSvavPv
	u2G8xjQKuNn3xyNMjL7z2wKGE=; b=c8iKEU2loXgsEZxA3Nk1pqWgDDoYRGgVPa
	td3OhioAd9mqexSxjz+2voYWnhPSkQN5FRebxf/4eqCN6zxDaIEawbpv2/bjHZnr
	H/yWvUQqINfoQgnlIqXq63H8CxkS4f6J47c0sPeOj8sHhrKSakdYn0lXO3th6q3G
	yXilrw27eka7XJZh9dqwhk2Oa3jPj2M2+4rgcEebmSP2uVGmRMvrIW5dlZgMPWw0
	OCxNNvQlp7HeF7wvBD5YvmObjDBxhIYIeZkVUvvtD9X6f9ZQabe1i4Jad8WBa6Dd
	0s6ZEvcD9FOwc29xFt9LJkwEQsW5w9Vckb7UXRLVPEc/p9JutfVg==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3s4x2017ha-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 30 Jul 2023 22:33:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DmyDyqzQUhy6QTXaOGsevdtmqj/1xSpMp+mSsNS6dHLlPe1Yw8IAs0XdSqB7otTMii7HUQC6TFJPUCe4WHLQuH8Qskff48kN7ASWjVaTFsrtCWfbNWlrmygeBaYlLdrA3F9TjFm+aWywKcLOx4Vjkk8oTN5R0KDnrmz/IgfKjo9S2Tj3NxAbtBnZnZZK4y/PU7T5OGNd76d6jCRw9WVDzJJdSLWMHwV4q1zcx+od7q9wiMZqhMh34TPKMVv/9kRmQFBSmMeBSi+t+R2zUEeQUZcstErAJX97U06l1cJB1HUVt7keozV541KIanRNl8GLSim5ywGBRX6wzXnqiiUZgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d251QmVy+HtkSvavPvu2G8xjQKuNn3xyNMjL7z2wKGE=;
 b=Z94Hr2399bW+OuTXiLhaK/Z5vF5MustLNxFBJHRTwgbykyXEFxCUKSpnMmIh9xyVHJxIlBmjdkejB0ODWHG7cHkrvfn3oergR5jB0iB7G8MwXzT7lb1us2Vo7NrdWR43AgCAH/ctkqxhKhhNDD0y1WN7m30brKib2zmxucdYCeuageFpuRhShgmUzkmjIhl8NAix61rq7POZG9DbtQzkLTzZIzKZO64uxFevlCF2qoPPluOWERZX5Tx3wfJjmpOwNVvTSUwt5hWArbx+WzeyWd5tDB3p2/2IVWNkzbDfQOd6SpkjgpRSkdg/zLqgdEioVb4fzRBnDOHoQW5qWD0ewg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com (2603:10b6:a03:479::15)
 by DM4PR11MB5279.namprd11.prod.outlook.com (2603:10b6:5:38a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Mon, 31 Jul
 2023 05:33:39 +0000
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::c2ef:ab6:1819:5819]) by SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::c2ef:ab6:1819:5819%7]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 05:33:39 +0000
From: Kevin Hao <kexin.hao@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster808@gmail.com>
Subject: [meta-security][PATCH] linux-yocto-rt: Add the bbappend for rt kernel
Date: Mon, 31 Jul 2023 13:33:16 +0800
Message-Id: <20230731053316.3859836-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.39.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGXP274CA0008.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::20)
 To SJ0PR11MB8270.namprd11.prod.outlook.com (2603:10b6:a03:479::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB8270:EE_|DM4PR11MB5279:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ea0db0e-39cc-46a8-d7e5-08db9187b1a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZXOiYxDReRi/9cit3E9IvyOpSbeuvee7fsF0TVpU1YfxqMH/Dx9Z7CMbU/Q0v+jD/erhRAZ8P/SN0kpk9upVg3260O5LtFwwiMUo2JSerTbuO1kEasqy1/obvcsK+kLk+kcV5sFbssZ5FDAjt2Vi0tiJtq0hL6aTtzf6EN+nzrpAm6/u9C907A5Dlp4bXRjvr2CCmGBO/MoxBodiReJWzqMn7KgUvg33EH/nSFhQ5cP6iiUuty/XYKlwuInG8jWkoabq9UWwpsdiWyrLaYpgAdMsLnHneNbNNVlHmpYHXLuAB+TgVvxb5LrIycpYKkueqcbQ4cGZQpbCRTbuw7X39xGVAw3GAqJo5pgcIWNncdfBX8QOxr4slumSiAdhPdUCFcR2nMmZeVFLC/Mkb0omUIT7JlokXr7qUK5l6Qaj9vCMBe/igxCYXLW6iefQtRAQq/0lIoQ9WwjvFLj/VTeTAAbYSwB3IBEb/9D5nR2s8d1jJ29vRMXSZcIvd1pzNdJQtJ7ZiyuBuaHGVzFKyM6naVX9FMYvzNKon7C/ucH93tSrwgAR954YJEYaHpeLWueXXDASrG9cqM28DfgQp6e+EgCJQsbMNGtf7pUoTpZPnZgeUadXFzCJb0/HU0CjYjpL
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB8270.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(366004)(396003)(136003)(39850400004)(451199021)(38350700002)(38100700002)(86362001)(36756003)(6512007)(6666004)(478600001)(52116002)(6486002)(2616005)(186003)(26005)(6506007)(1076003)(8936002)(8676002)(5660300002)(66946007)(66556008)(66476007)(2906002)(41300700001)(15650500001)(6916009)(4326008)(4744005)(316002)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?3NmJ2Nbacvz+/R8SucnnZYSZLrc7+zdw2ot8250JLI+oTvSsLolqmJiFzeqq?=
 =?us-ascii?Q?Z4Hv6NxObYR8WlILAO0ltoSeEWClmFbItqVA2V6xrhz9IFoRjf51H6lnL/jc?=
 =?us-ascii?Q?tdchrzw4UV0liG7MVOhf/+RTCvP5g0JTCl+etuFJfY6AzplcB9iTxYiNwbFX?=
 =?us-ascii?Q?dyWz2u3cw5BNErOXL+YmsVrgMkk2NJY/99i6kI2fmiC9JtT19mtkstvqRVSl?=
 =?us-ascii?Q?5CgMH+hn5x7oOeoLNNBqTQ+YDtE6r3uHTZ8yQAymAgMYGgUHKWpeGU4gGUgU?=
 =?us-ascii?Q?iRgwIMciVk7OuH6/fdIuu0eU7Z2h1aBd4GcFReo/odVU+He/LWBTQ0oSohrB?=
 =?us-ascii?Q?BAEyX8msgtz14NequB7G01L64NgLSDO4//H2YUjn1ZkZHM09DYYszo2r9GWw?=
 =?us-ascii?Q?KqaYxjpGwEXn6YXFqV+jYrea2ydXxAbbdlyqgoTbv8k3DW0BJ7KkqU3e94bk?=
 =?us-ascii?Q?YFtTPCbbZevQ74GN1+bikzY3DaRzv49mkGORB2PpTpxUh56hgSbw8IqQtbZi?=
 =?us-ascii?Q?2S+U5QHorlWQPRbGHHeTno8vd9aDMC+aRYZFdMZ7nMpXYBT/Gl0HHprDkZf1?=
 =?us-ascii?Q?kT+l/lGYS3CCWHw9c9yJInHbPQWS0IW1P7TQN5OvHazSxmDLDenHRvBciNAC?=
 =?us-ascii?Q?SpHrcN5iMz7LNCvujDmOsvvGCACNYhDxG1/LAwd/1u3lJWi8GtiIU52zNRTE?=
 =?us-ascii?Q?NbCaOD1LPN41H7EgvGrLov+OXr3JcXsqu+y8oO4jN6a1MkqMKFqyXdnOJ/wD?=
 =?us-ascii?Q?hL0NPp30A+FgH+ova4DaF6M2V7GTI1GrFOi+cuHm0Ayy54ro71Wysk2lh+KB?=
 =?us-ascii?Q?kdoYTonHuTSyWlb9jg0AuVtSI0Bz+PeBvCHglcnpB1Of9TscBabH1OsceXZC?=
 =?us-ascii?Q?9/HYw3XjjOMKatdSHy/2AhEQsnSAC11l+F+7ZdyBROmJ2HXqOOAK8uSyDIyB?=
 =?us-ascii?Q?/nxaPWMmuFiMANRtJM5StINHN1Ig4CAMz52BUlSX++qeRWJjbU5lHVitAHjk?=
 =?us-ascii?Q?aO6gsqLdmV3X3hAxIht3gr23fH4Gv97qE0JqsZP2QrNjuSJAnOy6GLP0m6Qs?=
 =?us-ascii?Q?6AhtUfUG95mnTVgyh5UtWw/vigxvR8kLX2VFeWsaZ5i8iUmLauEXXQQ0lfA1?=
 =?us-ascii?Q?iZTUoifh7udaP4K3B6OSW2SLbEYsGypBFqjTUKLJoOyUcrKJvNwALc5uPASk?=
 =?us-ascii?Q?8zy6iX0AT/5RZ+OaqL3XhDr108ZdLIFHCmICi10SvtjwiT/TlmN+0V44Q356?=
 =?us-ascii?Q?eZqXmyi32J7Ekr/fk+pXEfq/mKVqmkcTuUImCk5veSSo9gdsK1syxli+guwJ?=
 =?us-ascii?Q?I94TnyQowOWwkh+0yErLkWucNQXjI6ibpCVtBjqJIYiaax5FVxmEDSCNzBBV?=
 =?us-ascii?Q?NKOyYWEAaLQq4AHThoWh84BehwPFU9hjBzgnrvNhqn3vO84QggVuCgSdSYOi?=
 =?us-ascii?Q?lvxQi3ZC9M+eNR1Eh0UY6/27ZEC/UKp2XmktaeJhhj0cM/0PhpVQlDrgbj1L?=
 =?us-ascii?Q?FgRYs9C9A2o0HEVjnvBP0RQplHRfiDldZPfeFEw0iN/W5hgPXMDShM+nzEEz?=
 =?us-ascii?Q?+nK4NsrBu5K7O1rtoA1T9iE84y2tK+WLiBlNF6Z2?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ea0db0e-39cc-46a8-d7e5-08db9187b1a3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB8270.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2023 05:33:39.2958
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2ndKAqBIuW4QlOcKoqNQ6vsGJBsH01KaZNy1MtHZ+OIrw2j+VF+WiAkV03L+Wp8H4IexZG5xMwFbl/CKiFoNJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5279
X-Proofpoint-GUID: Qackeh--wNhx_AIGqIosHwmQF9q6kfnd
X-Proofpoint-ORIG-GUID: Qackeh--wNhx_AIGqIosHwmQF9q6kfnd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-27_10,2023-07-26_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 spamscore=0 priorityscore=1501 bulkscore=0 impostorscore=0 mlxlogscore=581
 adultscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2306200000
 definitions=main-2307310049
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Jul 2023 05:33:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60687

So that the security features in this layer can be used on the
rt kernel.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 recipes-kernel/linux/linux-yocto-rt_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-kernel/linux/linux-yocto-rt_%.bbappend

diff --git a/recipes-kernel/linux/linux-yocto-rt_%.bbappend b/recipes-kernel/linux/linux-yocto-rt_%.bbappend
new file mode 100644
index 000000000000..79dfeacf8bb0
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-rt_%.bbappend
@@ -0,0 +1 @@
+require ${@bb.utils.contains('DISTRO_FEATURES', 'security', 'linux-yocto_security.inc', '', d)}
-- 
2.39.2


