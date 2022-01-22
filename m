Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF971C433F5
	for <webhook@archiver.kernel.org>; Sat, 22 Jan 2022 07:45:10 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.5843.1642837509593859099
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jan 2022 23:45:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=qbHJvpa6;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=8021fa1707=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 20M7j8TJ022266;
	Fri, 21 Jan 2022 23:45:08 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=KTRa0I+CDAihtGeVK89MsPU9ZY7Ih+TPkQmW/KtIqAA=;
 b=qbHJvpa60t4x9iFD56SjkN84rUSHLi7rYonq3dRyHLkY11xHx2Bfr9DAUgmXEWbYWK+F
 I0YwS4GuI7tCLDw5wAfsexlPw5ZRTfQQCP/KnN6LK/jqejb3T1j79eWel8qKciBAVsBU
 zW5761U9eIitnmeVA9N0HexVuO+efWgFr2xU/fEs50rZ1RFDeEArRsW7elYfT/5WY1Dy
 3RJV8BPHi8AnawMCIBk9QuQPaSKlH3bBBbMtily+ysEU2WOjhWOq18D5lII30/DXmDnp
 RfGF12qlBSQODfNq1sy9yf+ukGGFBTwwW0msg3ggMK66nUF6tOA4KYO/Ew69BJ0oedMz Ag==
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2171.outbound.protection.outlook.com [104.47.59.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3dqhx18wxx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Jan 2022 23:45:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NwrRrCWAskS4T7FdKUjDHIioq2dGh6NscAbAIxB/7GsvyEn5o4Y6WLXNkoaOqCcv2qrmi8XnE0NHmp7ETOQFmBXDU03LGIL00tcjMnz+EnPCIgSGwoOmod6Fdh/Qm/fcdadibY48lCirvj8rDa0GyR8g6AGBukkSDzWgSS0I1Bqs8nAoGCk4ikMurYDskTu0g+p5svTIDZt7IRCWeJ8nq22vptD75CU589lGsppC7nKBHLPzLX0y/HEC3JkaO2kX5VTLTiij9xrnhIYZl8pzCiIMfMqZSwGGL2Llq8/NPpNURVUqpiDaVLkiJFYN/HeiUm7rhKVIjm/uie/7m0ljIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KTRa0I+CDAihtGeVK89MsPU9ZY7Ih+TPkQmW/KtIqAA=;
 b=oI+5g7Kw5vC9xpMOv2dVZ9uHfAN28AvHT2uEi7vxd9u+UnwnMDr3Qg7YM8ob9hZmL0q0wol4yDcFf7Cp3ureKuWZ4KElY9HTejt8bw/26Yynw3hwYhCFMeXQOfEgKrDLO6U5PMzc7wyFcTshDpMDEJRmHveeg5uulOAjVwkc+yKyK4OUNGN8p1/3FFmPd8SZ9HtQVPftEMLqkHtsFJrYM62mpa6aQf4uQXjvW7e/+VLjnbj102PVqxw/j+ZydOrvfwDlZco9cghMwdUJRK0fv/KaDcVWzTi4lg4L1mqjhS0irKUxZxBoXGzGp3Zu+8ajKoWSWXnrmpwwmmVaLR8fww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by BN6PR11MB4130.namprd11.prod.outlook.com (2603:10b6:405:77::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.7; Sat, 22 Jan
 2022 07:45:05 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1446:8499:7fbb:a706]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1446:8499:7fbb:a706%7]) with mapi id 15.20.4909.013; Sat, 22 Jan 2022
 07:45:05 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, akuster808@gmail.com
Subject: [meta-security][PATCH] samhain: upgrade 4.4.3 -> 4.4.6
Date: Sat, 22 Jan 2022 15:44:50 +0800
Message-Id: <20220122074450.392752-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SL2P216CA0130.KORP216.PROD.OUTLOOK.COM (2603:1096:101:1::9)
 To CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 945237a6-8458-4bba-0a3f-08d9dd7b1b04
X-MS-TrafficTypeDiagnostic: BN6PR11MB4130:EE_
X-Microsoft-Antispam-PRVS: 
	<BN6PR11MB413012859E9256AA2158B38AF95C9@BN6PR11MB4130.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:546;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pwKT9S6MPiJVI4SNtysmJ2fcAdtTYUYnbYv+vUtNyGzYGQ+KBwwGE2GifDS8TnUXBF1HhShylVBgAnXlIC49P5yHTST9PSU5ds1H1Kk5RLSaf9rn0Oq5oPouwT/SFyzOXacjOif9WPWkUloHTlcivJyCAE4icqMuJkzTIDv27CMY0xiiN3wlzLlvCVXquLhzlesCTSkl4KeIiUK4wdRo/bOs6M6yMnh2+fBn6Ou7zj2i8ruC1ZomjMCRlocAAjfEliTQZVAYRfFUOzbkXfosAVKuo0pNAJpMPvCd8/rVggMqTgtILNVW4Md68SW7VsAs07kyqp7Y6upYDf+Qshq0/zj6+A0dc5XsBgTpVxXK5hxRlQqqW42H0tQoXtZUb4Uy8tdPVMcNRncsXFriglNgWr1pFjrAv6xPNIotxlLbF0FyXvsCVDIqcdAz9+XFnlx1ftYnMnaFAcRy3gnpBLCzEkGzXjli9YAAZBWycvgUEfi5FTEE3FyGmSkwlegDFSPQFa/kTzysC+NMzHbEBaKRsZbmPS+G+DRxsxOe2BWtif063KffyKS/Q5ywWx6ObcvPvV4gcSBWpOEhHe4N1uwcv7fVHwIitBVemQnjp59XHB9YTCOBU53A+stsGCXbgCgTCv21x5vyfHxdoXQmFpD1uVMy9hHPimB6ICOOPlwN8uQe+i+Pn1VwRRa+E1AlBJSgK22PA912EM9ipOjq75+02gPl/BwNQm1cB2st9f7ndX/qHI5S8tKztsQ6pBh+9LQxiysTu0qEWHPOhItedCLwne7ymui0VMxnClZAJ/T1B5E=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(186003)(1076003)(26005)(6506007)(86362001)(36756003)(5660300002)(83380400001)(38350700002)(38100700002)(52116002)(6486002)(508600001)(8936002)(2616005)(2906002)(6666004)(316002)(6512007)(66556008)(66946007)(66476007)(8676002)(44832011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?VASukcYxGLQhu8QSQZeVgl3Dt+Hgao/RyQXxgO3AqISCzvi8EWguN4ilXQNw?=
 =?us-ascii?Q?lEPHgVmoy3Rur0rkacxYzJA0kDpwhNDHj8U1PPJyrUYeK7AXhRrDPB+dadw2?=
 =?us-ascii?Q?mndHYVqN2E24MAGVych5b/DbE4fAcJeRSk5m8lStIlXAC4+EYOsvqYTYntt4?=
 =?us-ascii?Q?biPOZYJEvEop9GflfQtFZUCxQ0bvUv8KAHoO2HTcZxw11eij4LhWP2KL5Jkl?=
 =?us-ascii?Q?gn6QC5TOwZSl6FtziPYdG0jSGj3J3ZlPSP163nw7sduu0O9eP9pYeh+kGuTT?=
 =?us-ascii?Q?oOF5mLELMbJ6an8GqxdSTXzMmLW2ObUfa2WSYRyPJWKHXxFyVgLt6m9H6m9N?=
 =?us-ascii?Q?c1Vc/ihjU89iG+QOO90oXeGHJyalGuZ2pNwGcIR/a/Ln3VjEkWGvlJVxN2rt?=
 =?us-ascii?Q?8tvizh3qH/3DvXTMXqndpOkTvpNbwI+s+OZp98LtYrA8ZYUZPcizoRera2+g?=
 =?us-ascii?Q?WlG9dvrmrhiVoKnamWfZUzqyovttsKlce+P+z85DEdYzNsU28UjddwNKbWsx?=
 =?us-ascii?Q?I51jySMFXfncZt2lZhroQc8vBnuomM91Su1KAuRsMboHmfU4CnO75emYqX2u?=
 =?us-ascii?Q?YN8QZ+riyzikC3GhdSglLUeJf/t+NF4KxlCcRUfa6yLvT9oW8Ut0GnOJP/tW?=
 =?us-ascii?Q?0O4vS637tFLLhxeJrE1eZixjHQQEB+UWqGjAQ7ZeFwv5kQZJMz8w2KYMZe6M?=
 =?us-ascii?Q?8opW+90w+/lDsuNxu8j6UYk09hYcKmo+0c63A4uJUHvIHkYhPJUgK+MTDezo?=
 =?us-ascii?Q?VMjwkxMk8PbcwtUSqiXezjK2tZxPUSMKUiTq2BH9/UKqu2cSuigzTjTvn7Jd?=
 =?us-ascii?Q?YXNkbUcSg533SXjxwhZSWsdrjNUfvT171I518RXP5/XCZdJ/vKqROXFM+F/5?=
 =?us-ascii?Q?mQg22w9hj6RMnNz0FAlbfqe+jw5BCR7M17I7vuBbbrEOrx15TDND3Dvg/IfL?=
 =?us-ascii?Q?5mQwVtNC6KJUBQlx1cDxM6hHwXkM4LV7lt800NOKHzZlN7LO3qTzKlQQTX2v?=
 =?us-ascii?Q?cvbKpOtrPy2Q3hSQGyUydqGET6r4mdWQP0z0KcE0ew7ajvtd29qurydPV5dF?=
 =?us-ascii?Q?Me6zJW6MKLohXhBQkqWh5rH5oLIU53WcSadkHmntwwIqBrRPF3CwInKEfykR?=
 =?us-ascii?Q?COFrhVuICX4onC2YiC5YeiRACN5oNqZjN/0lMGx8HPpPphZQlvm5AHbTCUCy?=
 =?us-ascii?Q?gF/03aEDGf2L4yUjKytguvgfStOE76y/m9jARmgOKTzxwdAlglbo71WSpTQ+?=
 =?us-ascii?Q?Q2jptkQ8gLJoY5IvaYIGCXS2LZKgL1TXWZHZa187xTbJlaFnyU/MfeJde4g/?=
 =?us-ascii?Q?OSGG5aTGVXWIQN2DThETlizOrZPtaDLJBIoOsG697zxAEgu04lIy6iHzFUzA?=
 =?us-ascii?Q?LUWt6xH4rJKmPNgvy4mhYkg5dWrsnaqMDWZ3lxt6kcHNe1kT8uv/X/Ntvp5o?=
 =?us-ascii?Q?6IoTWbHOLxLGbfLd9uXnHYK9+YmdR3EoJ3S3Z9piB0oy6gbnfHYLWqHmpYhI?=
 =?us-ascii?Q?KPr+eoUAWlUAsw7gXNO/wvqwJjKrMkOmm2dXulAceKCIbxkHoAAGGJiIz18h?=
 =?us-ascii?Q?XWEbxecRl3o5plLiNFsWm+R1SvjAKgPZ+ebkl5I8T941p2/lV2WLh4MdQleD?=
 =?us-ascii?Q?EmJqWsG1dg+3g6PufXTkkaM=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 945237a6-8458-4bba-0a3f-08d9dd7b1b04
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2022 07:45:05.6426
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 J342oxdV4kCLarLtJXY3Dmi0oT3q4yK1VkSAiK3x3yJjA2T0H9ga8GxPmoAFDA1SahIB4MvoHlCPDE79i5ejwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4130
X-Proofpoint-GUID: 9UHegw9oilUe4Hj4ywG03wyUrBmQj0zm
X-Proofpoint-ORIG-GUID: 9UHegw9oilUe4Hj4ywG03wyUrBmQj0zm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-22_03,2022-01-21_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0
 spamscore=0 bulkscore=0 mlxlogscore=816 priorityscore=1501 malwarescore=0
 clxscore=1015 phishscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2201220049
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Jan 2022 07:45:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55944

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-ids/samhain/samhain.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 97f5f2d..077e118 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -3,7 +3,7 @@ HOMEPAGE    = "http://www.la-samhna.de/samhain/"
 LICENSE     = "GPLv2"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 
-PV = "4.4.3"
+PV = "4.4.6"
 
 SRC_URI = "https://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://${INITSCRIPT_NAME}.init \
@@ -21,7 +21,7 @@ SRC_URI = "https://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://samhain-fix-initializer-element-is-not-constant.patch \
            "
 
-SRC_URI[sha256sum] = "3e57574036d5055e9557ec5095818b419ea6c4365370fc2ccce1e9f87f9fad08"
+SRC_URI[sha256sum] = "0b511a184066759cd864f6d15fe941ed3fe60f0cdc886dab68daa191d567de24"
 
 UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
 UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
-- 
2.25.1


