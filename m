Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06E6C0502A
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:29:56 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.55465.1661653794171079337
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:29:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Pi4cEWh7;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2Tr4u011295;
	Sun, 28 Aug 2022 02:29:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=AtdpXqb407BdxceSTqs2At6/ArFNtrb8xkxoQIlbqVY=;
 b=Pi4cEWh7e/XCHwDVMd6UmM/SA3qJp2tArxhzyAORCMSKZS5hFMWJb71xH0sI00BrCpLu
 EVnXZ4Lje/ZHcgVJYPcyr7t7L0E6tQneGWGmjTYJTCxo8ngX+XheEypdnMyAzuG/TtfJ
 dWhOJ+Xi9V+h2RWD3ajDT8OdjzkjDjIig3pLhwQQi94fCH/TPpzo1dpuz1pwLpFBvpQi
 vKl2cjFzBDODTBHYmSRtADKQ22IScVk6aBLUn4J32LwliEpRO6vpFhFkVFNOEqf7bjTv
 BQc/SWjH7ENES917k90xlC2QjxnVirjsVAAsSS83LJmwYpYi0Q6qoVXDb4YTsbnMV4q4 /g==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j78g2gq45-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 28 Aug 2022 02:29:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=InpT0VvXAjuKa3wpUsxKW8jzLccYogGt/veQXwtp81PPp1IID3Qftn/TZwzfuncvbbRXo+BdDvd+Sa3N5FJnThW6MvdMjYP3Gv59KiI1EBqW58HDpvC3ezDdyWQ8zgfVwFsX3cmtTQAGZhG2G+Tvzqf0nqtCpl0Q2kjr7XbLoH3akpbx7Cg9Hb6XPhWUYnjBP9DK+bzrW6NKbLx5wEVDGwcwGFtbDAb7zDfWY6ul0XsuMZwn+CfGHItW0aunKVbmNr4zX/iKUrcWFZNKh+7hIVAzfF5Pg8AzZeL6KXbhOyyslmlEG32V9UiEttULNfWbZ5bwg6HvAVuuvjygjYDmwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AtdpXqb407BdxceSTqs2At6/ArFNtrb8xkxoQIlbqVY=;
 b=PtQn832nNv5dZYXbZPXrnt8olwTLxGp+vUhFr7Gp7vPUKo3t1LFzqUYNSJ7WkZrturYwPwNmGCcQfOLyqRfF+3Q0938OeCGVFsUKjnv8Pke8xcLYlWdJOyc+8qek9EGti6Jy9oVjmzTyXMeTwEpbCnsnZCuKZjnEC5Fe3zYQPle94NYwQRqIRgrmuPchO6gmfhL5TeDNFaBYZSgWg/0kadvmelnTqhHDpHiIIkp7X4PVmlzFA0xXQU4/hg/r+VXZ0TgeAP1pCczkfkw5gqxeozWZae690bOSTw20L3rAg27FLAx/ORjGcDwfBeNEItlmewyUlZa1CDxVKjtSaVGm0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:29:50 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:29:50 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 03/16] libselinux: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:21 +0800
Message-Id: <20220828022934.47592-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220828022934.47592-1-yi.zhao@windriver.com>
References: <20220828022934.47592-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0058.apcprd02.prod.outlook.com
 (2603:1096:4:54::22) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c67bed8f-0453-495e-370b-08da889d2e98
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8n8tx3pXrp6XlTqvzAoja0oLrE8qGcB0Mov113XkUEqkTSHT4hZ9nnPOErbyWYknB8qnzCfoA83ZcwZi4N2Z2sLUCcKNJJQui/zqFQO+Njsa0VnyBVIcczY6hQgY8QrlK9pXiISRRS7dvVkXlOmkpVFZZiodVsi5fecRnRJCfw4uoOQWmgL5fzqMGbnmq1hHGZrfoff5VyS7mxfUZWvNjkcHtUYC9RXtJavpYiIIPuxyFPOrkMYUFTsaQG1SgPm14oUhxvZAR6TtroGxhaPG6PP5FWERWDJiEjRt/zpGgxhyFzh8dILN957EP6zSJf9hWrRBOO4WD1HxnlVbmLp2f7qCpTfG0Yl/KjepGBfyqVIBYNigntkasp7DPXJt83aczObawyzQ7N52WEYD2OymaQoNJnzvdp4xQcGtsEW7q/jJSxzvEuLh+7GggkrcOqtNs3CdeBQsh1E/m/+QTTqQIJ427IWpRXXzrg3YPzcMLGHmYSicGvvy3PRp6U2KRBe/+kphTHMn+x9EADbovPHqLDCycqRj97aAXxiPnFOD7gbkVd3pL8GkoK2M3c57eUYdPPMwW1T6aHA1TZX11z6f49LFxj8/kH+u405ACaOoetX9EbigrGLPQjbRE6IHMGohl+xoI0pVdIxrz3mzJ+m2zFLerUkrOhgAP/kPqSJcNaSXXTO/m2OqeCRhMpO4zC0Vd/aZE4ii3zema27Dx8WjyVs1yrfApHRaJfBfGZEaGyXC5O3Uv0LHuMZC6uD19YQdOilKvfm72Ld0EEeNxQCvyQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(44832011)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?n9QZShujBjunKInNd9Ow7MbpLJxB65Y5XLxZli7kf+bW+uRuqvM4BH/ybgEf?=
 =?us-ascii?Q?lvelf9DBSBlvVbh7RPCzLq/nxQGQqBItMrwo44grb33bCE6PGKtEPwipPIEu?=
 =?us-ascii?Q?jBFoUnBqxbpICGG8A9d8zZNM9oRacrmRI6DONix0WwvQKayvu4l4wYEsDRie?=
 =?us-ascii?Q?FqJx/EjMHnKbMyIrkLQEtHkzcdxwHRgF5PcUREID3ruzrwNq++ZOvevR8rIi?=
 =?us-ascii?Q?yQ7xGSn8+7sBSmy30ir8KoF9Quk1ExSKEmKg+4WyKgYrwCdSAFpX43l+WwUA?=
 =?us-ascii?Q?t70rckImAOPgdVd6ipdEszKoiQzZ6MU1/fhmGDzHUsAS3ShPi0kbMRQsr09M?=
 =?us-ascii?Q?9Iz+TJomc8QRv7oi1Na9azJMLyfXgwOqQzu2dDzzLVbSuEVqsofj47JlpuI3?=
 =?us-ascii?Q?u8cyyHV9TU00ziDIJJEpO+VAhk7RU0BWL++udOagXC5m7m/tk58s1iVahCvB?=
 =?us-ascii?Q?vsSM5w4bGtEKn5GqlaMX94lq4hONznwH3MgZi74e6ZHKT1lSKb6Z6iNz72M+?=
 =?us-ascii?Q?nPt7Iuhc06OUINaLk/KwXExb3t+XBDIkKqLXcMpRxVlv5CKsCNpvBBMyfICy?=
 =?us-ascii?Q?1JjEXaR7jMPh+cAjpezoF+vBh6op6UW0QWNtjVApEuyvtPscGW+Rzz8ZzTE4?=
 =?us-ascii?Q?cxs0LEYBj89uX/NfCK96aJsu6eKvWOrPeU7fuRfmrtWRCdLEywj+5LoQuBWg?=
 =?us-ascii?Q?Zmy4ZH88sc0Z9te034NP5QQuXEHpq/g0nVMHaGFZM35sYQHeYBBd5YpTTvPK?=
 =?us-ascii?Q?hevH2YVgbb6jwVSWGufqIVI6fieQ/N4VCYP7WBa9I2O/Pax51xa3Vy2viHs0?=
 =?us-ascii?Q?lUieIhI9dHfEte1Ct4IzsGluvg5P6fgAIMR8AWswDsVc7r1z65xMTcLKhJcN?=
 =?us-ascii?Q?hj022e9okHA72y8Rq9tMJBhxG465fQTOSwDSo42ge7SCT9z+1h7587BmmmSW?=
 =?us-ascii?Q?FTlZ+ZIRfyJ7AxfIRwK1wfWU6YvOU4Ff/m4OgsFVfeKx8MW9dC4pI/G1DSgL?=
 =?us-ascii?Q?lvGzRy8QlZvymtTSeYlIt7By8HHMECMT2gbHuEkO88jT/07fPbYe0k27M7Ab?=
 =?us-ascii?Q?JdrVRjfimD8Wh72aoi6PMI+zA1tySDqZyQL1PEVpRzFJ3swAZVgPzdGZdTFt?=
 =?us-ascii?Q?LWh9T8fYbOiEs01LRluMtr6dGGc2EY+SYmwiuEL8LVYjAlzgslMObgjN/ktN?=
 =?us-ascii?Q?F+9pZN6RmFXWffdZtBR897Vo/eV7iA2OgjD1meyHpEDBRk7yXBDAtks8JCmn?=
 =?us-ascii?Q?N2M9X0ncCv6ePWwbcCGaMag0pUCbwta8QyoYKzqbKJ+eAGUNIG8tAuxG5cZ9?=
 =?us-ascii?Q?QAvt56sZyLw7VBNQ707nsRgsejMeotFuBRr1IXSiamO12f68e763+9yvceog?=
 =?us-ascii?Q?TEvVD5mBNSybxqTxvV7TRVnwrxoVFquZDVMR7f8qzO9qu2I72cvUXA6JDPda?=
 =?us-ascii?Q?Glybq3VI++xvLI0kqQrjbl9Qw5OaAU/YZTH3IUAluzVySnn7G+o98CcocwHP?=
 =?us-ascii?Q?az5CGi1SBlyYwrBIZLnng3SXfq0zwo6cs8X2FAOVDl95Pg44zU9XI5FJ0knx?=
 =?us-ascii?Q?FdAO6dAzHR29CbpA/QWLN4ChA4eOq0H3bsVpl8jp?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c67bed8f-0453-495e-370b-08da889d2e98
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:29:50.0567
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 7bdMyemA08d71bPP/f6D/7FD8asXX+wVxS4pXe3Yqt06oR8FruoLcl2/Jd2/b2IuqSEQl2wmWSLU/fZd7Uy+yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-ORIG-GUID: fWhzhsxNQ8EQJ8eS8ENHvVRzAKvUiNCC
X-Proofpoint-GUID: fWhzhsxNQ8EQJ8eS8ENHvVRzAKvUiNCC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 mlxscore=0 mlxlogscore=621 lowpriorityscore=0 adultscore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:29:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57918

Use libpcre2 instead of libpcre.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{libselinux_3.3.bb => libselinux_3.4.bb}       | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)
 rename recipes-security/selinux/{libselinux_3.3.bb => libselinux_3.4.bb} (77%)

diff --git a/recipes-security/selinux/libselinux_3.3.bb b/recipes-security/selinux/libselinux_3.4.bb
similarity index 77%
rename from recipes-security/selinux/libselinux_3.3.bb
rename to recipes-security/selinux/libselinux_3.4.bb
index 1144840..8009d6d 100644
--- a/recipes-security/selinux/libselinux_3.3.bb
+++ b/recipes-security/selinux/libselinux_3.4.bb
@@ -8,9 +8,9 @@ LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
 require selinux_common.inc
 
-inherit lib_package python3native pkgconfig
+inherit lib_package pkgconfig
 
-DEPENDS += "libsepol libpcre"
+DEPENDS = "libsepol libpcre2"
 DEPENDS:append:libc-musl = " fts"
 
 S = "${WORKDIR}/git/libselinux"
@@ -22,8 +22,7 @@ def get_policyconfigarch(d):
     target = p.sub('i386',target)
     return "ARCH=%s" % (target)
 
-EXTRA_OEMAKE += "${@get_policyconfigarch(d)}"
-EXTRA_OEMAKE += "LDFLAGS='${LDFLAGS} -lpcre' LIBSEPOLA='${STAGING_LIBDIR}/libsepol.a'"
+EXTRA_OEMAKE = "${@get_policyconfigarch(d)}"
 EXTRA_OEMAKE:append:libc-musl = " FTS_LDLIBS=-lfts"
 
 BBCLASSEXTEND = "native"
-- 
2.25.1


