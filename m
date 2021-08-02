Received: from NAM10-DM6-obe.outbound.protection.outlook.com (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.86])
 by mx.groups.io with SMTP id smtpd.web11.424.1627937248969600712
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Aug 2021 13:47:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@xilinx.onmicrosoft.com header.s=selector2-xilinx-onmicrosoft-com header.b=hAJ4mnbr;
 spf=pass (domain: xilinx.com, ip: 40.107.93.86, mailfrom: ckalluri@xilinx.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ChAWrID89lj4jh/egiBtU9uncHW1uCs6UdLGJvdgxgpybCh7jP5Ri4nEgtWvq4VpkUSe9qktl8S3vmIy/RNcYMEZKByR4vvYZeeF1hSjXn2Eqzeb9i+Tk2F/h0zU5cEMjK2RcZfosWYv9ai9RapMGlojGbXiBcdRgbkXX4ck6poVsU3VO+eF9OH2MT63kxPb34LxGHpjhbU1F516VanYN3uLCDrz9oYDcZf0YOu2gvLtWsrlgPowqBwZ2W+h+a3vmiF0lOIzbknLEMkbx1rVhODyhyqckH3pU0NbQ9ckaSb0bYIiz9Tbx+7UaxJwzJ1UL2tMyfp/iHehik6rkIizGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ihRq7brR/+8+YZaNp3KqOB+PzgCJbzLr4y3C0ZD6q7s=;
 b=Tinb3pLCaIp+UanYtPBfqi0A3V8R/MbhGvIh3laTYG5vqaeTPVDtu/3aH8UJPSO6WHnjJtB/OzDpB+gpGqgzD6BjMzhPishj4Fuzf6A2KEAM631gaYH7f/ECbg1aUgpS32L/kpyNEqzMOp9eRPSNx6xwPGdbVFE1G19d0s5lMlOhMvlGgIQHkTYFhkQLRUldq1l5VY43eaoblAG+/DFzITt2a4FStBF/D2JnHwp7WLVisnG/jBmsqWNEc9GJPC4vo/ZzUeP4ztY3RtUZ8QKo+wjkG7bzuKk0z7PML27O46E/QG8XGpPB08rcyAYpyiM6fqx9sFYgYolP3UhYF0ITTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=xilinx.com; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ihRq7brR/+8+YZaNp3KqOB+PzgCJbzLr4y3C0ZD6q7s=;
 b=hAJ4mnbrYd/pXK3y2gNoy5ec59Dy3eAmj0hhzV1Qxm1f+w5ggthloRNkFoYRgFhjSmUh2R1u1zaDZl+tzyEpGHf5n7V+SQFpVTQWTQGRhajcKb6XRr+/EPMNJCYFW5oEUaKMc6Ki/1wZBFe3zK9sQNqsQtw16qDH+1GYV/7fUXU=
Received: from BN6PR16CA0015.namprd16.prod.outlook.com (2603:10b6:404:f5::25)
 by BYAPR02MB4549.namprd02.prod.outlook.com (2603:10b6:a03:15::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.25; Mon, 2 Aug
 2021 20:47:27 +0000
Received: from BN1NAM02FT026.eop-nam02.prod.protection.outlook.com
 (2603:10b6:404:f5:cafe::73) by BN6PR16CA0015.outlook.office365.com
 (2603:10b6:404:f5::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend
 Transport; Mon, 2 Aug 2021 20:47:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; lists.yoctoproject.org; dkim=none (message not
 signed) header.d=none;lists.yoctoproject.org; dmarc=pass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch01.xlnx.xilinx.com;
Received: from xsj-pvapexch01.xlnx.xilinx.com (149.199.62.198) by
 BN1NAM02FT026.mail.protection.outlook.com (10.13.2.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4373.18 via Frontend Transport; Mon, 2 Aug 2021 20:47:26 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 2 Aug 2021 13:47:26 -0700
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server id
 15.1.2176.2 via Frontend Transport; Mon, 2 Aug 2021 13:47:26 -0700
Return-Path: ckalluri@xilinx.com
Envelope-to: yocto@lists.yoctoproject.org,
 jpewhacker@gmail.com
Received: from [172.19.2.12] (port=32852 helo=xsjckalluri50.xilinx.com)
	by smtp.xilinx.com with esmtp (Exim 4.90)
	(envelope-from <chandana.kalluri@xilinx.com>)
	id 1mAeqM-00044I-Ce; Mon, 02 Aug 2021 13:47:26 -0700
From: "Chandana kalluri" <ckalluri@xilinx.com>
To: <yocto@lists.yoctoproject.org>
CC: <jpewhacker@gmail.com>, Sai Hari Chandana Kalluri
	<chandana.kalluri@xilinx.com>
Subject: [meta-mingw][master][PATCH] Convert to new override syntax This is the result of automated script (0.9.0) conversion:
Date: Mon, 2 Aug 2021 13:47:24 -0700
Message-ID: <1627937244-15436-1-git-send-email-chandana.kalluri@xilinx.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5642ea46-2c5d-412a-950e-08d955f6bcd8
X-MS-TrafficTypeDiagnostic: BYAPR02MB4549:
X-Microsoft-Antispam-PRVS: 
	<BYAPR02MB45498A3CD5ADA38CFFEC6841B0EF9@BYAPR02MB4549.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AlDML45NT0dsWV98+RKPRIXOUPBexM7Nr9elWkWIq5RmdIv0XeTP/Pl0wn7ilmPNT3ggzRgyQbtFk8kNQhWvf7x5wX5eUduw3W1tQJT8jasdRv7fRHGLa5JpRMRRTbyGEkYz692Gtkidogx4EjK1cyCn2nCJ9zayfycSIsEwawORbai33twn/8nA22q9TFNmaFYi5L0t6KcvjogZZbbOZHxNcFS69DXc4EvSOWfOsjeug6saCB3hfnoXCcA8v/2n4Uy+IGB9splJFpET+iG8p4f2aUlTZlrPDtT9iz/NPwgJJD+ODUuaw+jEx19bAp/JY61CfJ+Zs8ZsT9+kyK1eROar9E1Z0pCoiLMhWx6l/PPzT/TvaMFSgZOYMBNywgY501QE5HUlZX7QF0vhYvTGZl8qX8ReOoBk4gCZzxqq1jC0jHmEGWQ2A55gdpOpNT8iOe4gxUkh+KB4gF6pzR9UcOnvS6kCD4Wak9BVe7u6Fb4+AxqvUEMaXyxrVxhhlMJpzmfotkOWIh1Np2fod54FT41DEyqFK0t84TooTwLV/qYT4yV+sAPXO2cIIcuBJK4Vc8WxhGp80/WeEybGQmcI/mQYbhj4H3rRLdCjtE1Y4XibaxejeSAUteHPPKhY8RP/k6rfopDu3A2Q1t1Por6cAItuJc9aarm99mhoiMY1A4N3BluSD90xemBDucYzRkrt6Mt64SaqBy2cJivP+POBHmTZRj9AQBFH/58etNsUm8e38BpoE8AlGjfp6Xh6Ko8/
X-Forefront-Antispam-Report: 
	CIP:149.199.62.198;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapexch01.xlnx.xilinx.com;PTR:unknown-62-198.xilinx.com;CAT:NONE;SFS:(4636009)(39860400002)(376002)(396003)(346002)(136003)(36840700001)(46966006)(82310400003)(6916009)(2906002)(2616005)(356005)(107886003)(36906005)(83380400001)(186003)(54906003)(70206006)(70586007)(9786002)(4326008)(336012)(26005)(82740400003)(426003)(7636003)(47076005)(36756003)(478600001)(8936002)(5660300002)(7696005)(8676002)(316002)(36860700001)(102446001)(49413001);DIR:OUT;SFP:1101;
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2021 20:47:26.6942
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5642ea46-2c5d-412a-950e-08d955f6bcd8
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.62.198];Helo=[xsj-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BN1NAM02FT026.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4549
Content-Type: text/plain

oe-core/scripts/contrib/convert-overrides.py .

converting the metadata to use : as the override character instead of

Signed-off-by: Sai Hari Chandana Kalluri <chandana.kalluri@xilinx.com>
---
 conf/machine-sdk/include/mingw32-common.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 6c43fc9..74cd940 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -4,8 +4,8 @@ SDK_VENDOR:sdkmingw32 = "-w64"
 
 NATIVESDKLIBC = "libc-mingw"
 
-PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32 = "nativesdk-mingw-w64-runtime"
-PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial_mingw32 = "nativesdk-mingw-w64-runtime"
+PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc:mingw32 = "nativesdk-mingw-w64-runtime"
+PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial:mingw32 = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-gettext"
 PREFERRED_PROVIDER_virtual/nativesdk-libiconv = "nativesdk-libiconv"
-- 
2.7.4

