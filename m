Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D3B1C433EF
	for <webhook@archiver.kernel.org>; Fri, 31 Dec 2021 02:08:01 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.6878.1640916480590672045
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Dec 2021 18:08:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=R7kL9ypw;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=89994c103b=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1BV1ltdx017391;
	Thu, 30 Dec 2021 18:08:00 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=E06ve5Sv3Gn1ll9mHOw9lDEYXJ5yEQjrjNYiZ7gLvFc=;
 b=R7kL9ypw41j8hQtMph4MucTj29vw3m+f3setVNqqR8niF84FBhqCoC6JJrfPtrLqE8vH
 caCMV3+abXbStdtzO+DQLtHYebES1y2RctN+HazhJYpnGERrek1E+QXQ6BQXnvIzS7Ch
 peSy1h+rxg7LEpLk+fUisBYHseatlKITBCearx7qkSnE40rVp33Mnqsvgr6deZVjURtd
 m3ctKC/xl42l/mgalNEy5k/MqC+9Tqq1G5tLhCi+yI4+SMNS4m4ykvMoGgHeNRZUK7cY
 97aRWGn4gYQ26nCviNl5Qg49n1sr+ezlySjOxvHYq8JKLUX59UczO5cYeFS41HTFPn4N yA==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2175.outbound.protection.outlook.com [104.47.57.175])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3d94k6rj0y-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Dec 2021 18:08:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i4kikQgv7qBc0DPL8Epv5GEnYV6dl4H9yXj8jtwXFFalzX5ryP11ucXEhwuXyNrZRvvNmDPxamwBklynnpITodMwhuoQzdQScQW3OcoM0DIXFHeJNtLOkKasR+vJK2IbkzKWUkhiAHDL8LaB82FDUmTkOAAve8LgkLrx198UoKCHXoVkGjsoHgD1OjWNz1b1ZbIPbwIgf13nbr5eT0oqQ9ohP+KPfTRtSXZqC4ANJ8xLhfR4lHSoTkzolmgm+ZILJC1F2rwzwM8KwsdLcygeQ1yTYqOFRyQgZOkY24JZsRsgaZZs1E1sjOQiYffAf8ZZsVk/nG7x2SnjThtZfR4PkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E06ve5Sv3Gn1ll9mHOw9lDEYXJ5yEQjrjNYiZ7gLvFc=;
 b=IicSR8F29y/wmyVL5BTZkvrauEQChNs4w+H7qM8bFmqzgvGikkmfr0ALIhUcVKtyhha11O+1ViQymHerwrwrsKq4Sx3TIsyuXnmJNoY0HAozmbx7M//HNwrNOJ3cQ14VfbXR1Gzzi5VpE3b+VUkmTGwpcTs2yCwK0S5+/IygCZNnNc+9vY01dGL6mNmibrv7MNMrMW83pPOKucPzNj7rexsh231L+5kE77dEmlfXNNllnBRvtfA82iMCR1Mu+Da1gZEDWBESuWjdEJEd5DIcZS9SdcNLc6kMXRvG22EYbMLZaH96gnqCrr4B8JLZT5FzvxqrhyeVKbmhcONonMJksQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB0046.namprd11.prod.outlook.com (2603:10b6:301:67::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.19; Fri, 31 Dec
 2021 02:07:58 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4%5]) with mapi id 15.20.4844.014; Fri, 31 Dec 2021
 02:07:58 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH 2/3] ocfs2-tools: add UPSTREAM_CHECK_GITTAGREGEX
Date: Fri, 31 Dec 2021 10:07:44 +0800
Message-Id: <20211231020745.1149339-2-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: 548d0d62-3728-40e7-e450-08d9cc025daf
X-MS-TrafficTypeDiagnostic: MWHPR11MB0046:EE_
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB004606DB2EF09EEF28422D2BF9469@MWHPR11MB0046.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:369;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hhxEuN5Yb8nIyHU57TNnd9Odv0uVFcCCADnm6pBN2kdGWXodvfpdtg8axWTeplUF+ygHVmyWLjgWNKoTeR+xS/dH+fwze0XPZN/t9B5oUVcmlpHlSOroJZ9EopBRnvBsBZBAoN/WqY/k5Xagu9MEz1hrk4lZwbKf2S5dOn/xEYQzUN9kNqxBL0cOfvzP3Q10kVdoeBglRSkKSkW255sRs7FVhsQ/I363bght3g/Unq6k7MvMjjC0+3Kduh1A8Au6ta1R5cC5xP+TcnEnxNrfeBPPGZl7p1nBQTAP+LwfTK9oBu9WIXXdXkqjzVBd+u6C5NAkZh+gl5meeRVw8axaIb1an9Udl2V+0dr8xJBmJfuylmGCi2m6ooHhj7bDVJHH0/h9hjbdAZ3zWTx4b9UmEhED6KqLFz9kxKHWsc4aAWLzLoSDtrBovQwUDkLWTaQQJLAUDdTQCGcbiN3qFDNlJQ08rHYGgQ6LBgLAbx1Bv1n4mxt3nryhhZZ951kegreyIwDEdlEoTAHb4vepMThZzh9CEoBVX1p9c5QhivNNOesNYm1VG9cBy0l7dOsPHDB/bUyHTs64eQp9xVYmwEDdCP53BwPgswXQd8xfav8ugO7De5JuAGhJWVeBtsgWrhFKxFPcnm14WbsMWrFd6xhSqzTjg6IzVNlFl+HA6r1cPJGW74aL+qbQeSttsCcEDs2l4liKVwu6rC4I+5Ny/fZqzw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8936002)(66556008)(66476007)(186003)(26005)(2906002)(316002)(508600001)(6512007)(38350700002)(36756003)(38100700002)(52116002)(6486002)(8676002)(5660300002)(86362001)(6506007)(44832011)(6666004)(2616005)(66946007)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?egv/QHvY5V7qtW3q97YBEIlquXiddb154x9QGbQBdvn8QTYN20djfMzQFgty?=
 =?us-ascii?Q?celKj7bsLD/EFhTb6aB6yCzn0zx15wpBaBeUw0vezdr09EqAfDAsCfkajD10?=
 =?us-ascii?Q?Bf3V2AvNU5/HROO8WWdvqqBbtJRgdWvSU8Ir2mG8YaVbvKw6cJfYfb2Y6e5d?=
 =?us-ascii?Q?gXtZxGIpGpBNo7dgL8MN0Td7y5rS8FC6ezONyjG8KWRBdDY4qQh3omxuRPfx?=
 =?us-ascii?Q?jl4tJjqLRe+b60Lg6dJliupnPhI3SM8joS8GPskVfs3gmw7DX0ovzh/zhzJA?=
 =?us-ascii?Q?YD46IDJRDPjphMmAcaFuKSPb1IGSwUywZRFlyt8S7FMruz1vxvwc6sC4u/FB?=
 =?us-ascii?Q?AQD+xsxw1c+cVQo+icUfg0yA115FTuxdbM0n4exchB5109mDzK9USJuwD5B6?=
 =?us-ascii?Q?jPF0W4trJ8Hisjpk+3W6VIGJA5IuNu6rtVsDjGjVibavMZ6Qsr5HqV0zf2G0?=
 =?us-ascii?Q?Ds6JkEPeygUjKADoKofqlAeRthYzzNsVSXCFcr/7hSS9gk0m/ijFKaAJDd+Z?=
 =?us-ascii?Q?T7OZGQKuIs8azSq12krXOGJPFFWlhveMbGV/FpPlkKtyzojuXCMvG46feXSS?=
 =?us-ascii?Q?ETSCluZ8r7x2tdlMkhGdpRzSK7KFR328PLDPC0dcAVs6h5BKYupT2zUw520H?=
 =?us-ascii?Q?RQXOKqMEm9QPEX4NExdC6d2jvT3rsMNHHmRawDp4u5uGy5F4c3UwhAmtC6jL?=
 =?us-ascii?Q?ek4ES8XNlbghJEMrSncFvDOLRLc17Vaeh+2b2d8ZCO2I8hBh2QcvmtmaPnKW?=
 =?us-ascii?Q?M/GSHs9Lw5kRuE5BkHUCWoQ0rtZ8v6lGgDZoIHRSpAuCJeycs1mz4uS9oqgr?=
 =?us-ascii?Q?Ox5L91eE6HqA/iY7xEWzo5eVUe4yLfqd34tyJyS1Wg4XEclt4dcTPXdQ4lV3?=
 =?us-ascii?Q?b6uWYHZvbozIqfAtytUktje96yQYp0GTXMzQ5MHubd9DDjQqyouwtT16bG2b?=
 =?us-ascii?Q?NG2dK5aC73hCAQWKcxj1KjVkCE3UsRLZ+mHpWOeNSkVvf6elox78R6RxZvjd?=
 =?us-ascii?Q?Zxzca1nAJwRUk6t7MrJbmUVrEuNvAAjPez88hcOmbrp/gQUIg1A6QPd4sXky?=
 =?us-ascii?Q?/L9HLyG5E21K1ZzcYZSK9sqc2+7cdQv291vzzvPOXvsI0iP8YA66Ngj0h37z?=
 =?us-ascii?Q?SIaHx3kJT8ECA6dm7/OQirPNh5ZH6IXzsvNdie0a9G6zuuPYvJLadsdHODMp?=
 =?us-ascii?Q?Cy0YzwHt7tAhuob3pgRQ6jrp1FvzuT+CRLGns1Yo8ug9824dFrE61STjLmik?=
 =?us-ascii?Q?kxG+iZJtCs1ukoZz7A1bYA5BEKAddJTiNTR8g8gogRPvf16rvaMiMXboaUKp?=
 =?us-ascii?Q?yduZCQ8KAY0dvQTEtiD2T8QYP3u1UDgBrKVKVWFtfyB4V7MDIAfriaZU5MlU?=
 =?us-ascii?Q?uldePV2DILDEQTGv36Z6DHR0R+Qa9hKKtdBTfN70SFP8Ow97UBXbeJu+MnS/?=
 =?us-ascii?Q?DLs6I7CSWFXhxaXSw+pPgqNoNnmTvXf4md+lo+qdAvzLF+AuNacaJGiKo4HZ?=
 =?us-ascii?Q?EfGr0rm9i+fk4J1/sSCuAgOu8Opldjcj0QvWgtTf5tyI661vPMT170YUvI4Y?=
 =?us-ascii?Q?xOPrprqGwSN4np/eBbU+WoA0OLbMchoZ1Ydq/BM81bpzuqckThWuHV2/GAEr?=
 =?us-ascii?Q?q1FB8dzw/9MzOhFWxOGnex0=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 548d0d62-3728-40e7-e450-08d9cc025daf
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2021 02:07:58.6232
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 UhCmlAdfp0CUK0E+zE/3JnvrJalF0o9IxVLscQstluJk/+sVfpoEcJsSGaihYYYFVSLlYN+Vt7ojtJ00XrlRFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0046
X-Proofpoint-ORIG-GUID: ow5vdBSdjkr00vN94fWSD5xNDKuwiOex
X-Proofpoint-GUID: ow5vdBSdjkr00vN94fWSD5xNDKuwiOex
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-31_01,2021-12-30_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0
 suspectscore=0 bulkscore=0 clxscore=1011 mlxscore=0 malwarescore=0
 spamscore=0 mlxlogscore=711 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112310009
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Dec 2021 02:08:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55694

Add UPSTREAM_CHECK_GITTAGREGEX to check the correct latest version.

Before the patch:
$ devtool latest-version ocfs2-tools
INFO: Current version: 1.8.6
INFO: Latest version: 2
INFO: Latest version's commit: 80a60d697d9052d3f196a932df3d1fb5f0df52d6

After the patch:
$ devtool latest-version ocfs2-tools
INFO: Current version: 1.8.6
INFO: Latest version: 1.8.7
INFO: Latest version's commit: 80a60d697d9052d3f196a932df3d1fb5f0df52d6

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
index 7c32c54..28ef4b0 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
@@ -22,6 +22,9 @@ SRC_URI = "git://github.com/markfasheh/ocfs2-tools;branch=master;protocol=https
     file://0001-o2cb.init.sh-Remove-unneeded-lib-lsb-init-functions.patch \
 "
 SRCREV = "4d76ceb4aa7aaa1fd595368089e99575d708f719"
+
+UPSTREAM_CHECK_GITTAGREGEX = "ocfs2-tools-(?P<pver>\d+(\.\d+)+)"
+
 S = "${WORKDIR}/git"
 
 inherit autotools-brokensep pkgconfig systemd
-- 
2.25.1


