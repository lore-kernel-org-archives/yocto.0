Received: from NAM11-BN8-obe.outbound.protection.outlook.com (NAM11-BN8-obe.outbound.protection.outlook.com [40.107.236.66])
 by mx.groups.io with SMTP id smtpd.web10.11750.1615395168910175789
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 08:52:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assaabloy.com header.s=selector2 header.b=Zb3KJ17s;
 spf=pass (domain: assaabloy.com, ip: 40.107.236.66, mailfrom: lukasz.plachno@assaabloy.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=of6NfelNG2BuZCYZs+unurCLTSOLdb6Mt7av36l2sIRTkNvxDQF2WWIWwy4NMcOLtR3qbA0ayfG1/9nUI6jT8JlIz4iu0zD0w0asCP/ATl7MVzr5JaAFym3rByRq+eTyIyGNLJyoOe4zYYvUsSrZDHfHGluvWcf+d8g+vHjaD2lHAZaFicvAMQGfvjjSrIM11HizE9ocypBbDV2w2Vc4v1u3L7PvU2LGZ6PdjMtAxL3GSqn7Ij9Zva8sUv5Es+i8U1xzen8eKNGs/iQjE+QVQfRKae5rYHtfxk+AtEG1Jbo5sJ0IZm1uraehE4mVUIPW4qMJYYqX77aP8QWf7VNwHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eUeg0u7FWakBlaUPmbohXSkSx1Fui2/XdVRb6fft8vo=;
 b=e6fN3ZouJVNfDQopaJ+LOap/OnEajgCp4tnMpmIA3Awesm9RXpjxl+dgXgvF5Rssf7YYJczKEXEs8sdZa22hvQ00HtQt6JOVbo+xZfJbC0N6cKTUdSCeOWv4USikmCKXeSX4LmOXkH6acfqKsbIT98R+Y6sEjbwYhPMmef5Y2uFqlN30AG4gwr62jM8oJBX4boa+ubzlaVqvYlbhyu4SHvWnN7WKgrgAsT5Vd8kgv+cMNOH3fI+FdRxE+JcvJEG20c1OVPnxwFDLcZ1vyOKud5iY0AorrGW923Ggj9x1kowsVaGTb4cQGf5MVjXbtFUoc48wWsI86s8IpoeXFPE/Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 141.81.165.41) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=assaabloy.com; dmarc=pass (p=reject sp=reject pct=20)
 action=none header.from=assaabloy.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=assaabloy.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eUeg0u7FWakBlaUPmbohXSkSx1Fui2/XdVRb6fft8vo=;
 b=Zb3KJ17s7VoH4WT38IQUOuRdcoP3DSpM2bhzl5j6dgAx7zP9gqpGJWyZZu/DW49K+2VPqc+XW9I7ntKAUjr9v2HPXErwTmvCNrFPJYGTxGen+xsKuiQfnNLjseVWyGaQ2tNiDsvWtsrQlNDImEWAlFxNcI7Hv86Wmw+22XC/Wpcc6hmUuQtrPtLTHoNNvBBvO1q+vma7EFdVDyYYBq9lxXdf2ZEneCUnrdgSDaZWJ0ONuh/ImAVj/jb+jPL/eYyAMr467BzFluy4X/Pq5CGz6zR9s0vZ4Qy2nTQKhJfM/PwZAwPmX8QR/OxxXSIg7dhDR+WHoatAIIftCGkUuLk6Qg==
Received: from DM6PR08CA0065.namprd08.prod.outlook.com (2603:10b6:5:1e0::39)
 by DM6PR10MB4314.namprd10.prod.outlook.com (2603:10b6:5:216::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.30; Wed, 10 Mar
 2021 16:52:47 +0000
Received: from DM3NAM02FT032.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:1e0:cafe::e) by DM6PR08CA0065.outlook.office365.com
 (2603:10b6:5:1e0::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17 via Frontend
 Transport; Wed, 10 Mar 2021 16:52:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 141.81.165.41)
 smtp.mailfrom=assaabloy.com; lists.yoctoproject.org; dkim=none (message not
 signed) header.d=none;lists.yoctoproject.org; dmarc=pass action=none
 header.from=assaabloy.com;
Received-SPF: Pass (protection.outlook.com: domain of assaabloy.com designates
 141.81.165.41 as permitted sender) receiver=protection.outlook.com;
 client-ip=141.81.165.41; helo=assaabloy.com;
Received: from assaabloy.com (141.81.165.41) by
 DM3NAM02FT032.mail.protection.outlook.com (10.13.5.65) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.3912.25 via Frontend Transport; Wed, 10 Mar 2021 16:52:47 +0000
Received: from DEMEESEX0007.ad.global (10.230.40.21) by DEDUSSEX0010.ad.global
 (10.230.103.39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_DHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2106.2; Wed, 10 Mar 2021
 17:52:43 +0100
Received: from DEMEESEX0012.ad.global (10.230.40.47) by DEMEESEX0007.ad.global
 (10.230.40.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_DHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2106.2; Wed, 10 Mar 2021
 17:52:43 +0100
Received: from plkrasdv0029.vlan.int (10.230.48.241) by DEMEESEX0012.ad.global
 (10.230.40.47) with Microsoft SMTP Server id 15.1.2106.2 via Frontend
 Transport; Wed, 10 Mar 2021 17:52:43 +0100
From: lukasz.plachno@assaabloy.com
To: <yocto@lists.yoctoproject.org>
CC: =?UTF-8?q?=C5=81ukasz=20P=C5=82achno?= <lukasz.plachno@assaabloy.com>
Subject: [meta-security][PATCH] fscryptctl: Fix installation path
Date: Wed, 10 Mar 2021 17:52:41 +0100
Message-ID: <20210310165241.23796-1-lukasz.plachno@assaabloy.com>
X-Mailer: git-send-email 2.17.1
Return-Path: Lukasz.Plachno@assaabloy.com
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 50c8b998-2ce8-4a4a-cb68-08d8e3e4ef0a
X-MS-TrafficTypeDiagnostic: DM6PR10MB4314:
X-Microsoft-Antispam-PRVS: 
	<DM6PR10MB43145A595AC0C90C3BE961D78F919@DM6PR10MB4314.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	71uyVuynOt4wtcC1IanvN+kB6vwcxdChTgfsJ2+QjznrZzWxC6zSioIicnmSUg5lD5FV9FURe53ER0oiQH9jN0qsgS2iX80TEKCx9ZUOmJ1sBijqQH+rVI/Tu5eAOF8jeFFvK4IoVz5zFDcohT2HGty14MWHBNv5vKb13vMwUZpgfb9B3rntc4x+YwOjvMwe94EqI9aZsQK50rgD/8Wafu4OkEfoFkltVfrpFXJDv/pC4GkGuWa07+Ihjru1DtZwY/Bw5S/3fUJu2RTtmtSDTiG9nfJAGLLMqvckXwCFZsYsQttbk4W4NOG7RDuuLS5VvnMY/x9LdLLP7mNhHGGW0J+UIrMljaM0JaFjLex+T83e88EJH5VNTiIOn0C6QJA66IQMDuQ2cO83AiUj4K7ZpSdiuB0fKuAPsAqZLwLjTWjjK9mcm80J8ZDUzT1w2ocg65OqUuUfq9G2nb4AD21wNnZmAx1Q0JQ0T2lecCGL0DHpIb3m3vTK4o6tBQEVNDV/ByQf8HvU0lKYcbbT+yoeaUHQpWKo+1bw2rg5+FI9SNXMp6lQ78HfxgvcQPqOPUzS+4XehScuPpw8pYUWTVc21oxtUFCWXzIki+vuMdxNthhvnw+QoQiIwAnt9tlr5+xXe61oVR9F13zrSj9KFCelUPml+5gnbOBKEG55nEjtLTO3cXXdMoC7juvfiM8TzG8o
X-Forefront-Antispam-Report: 
	CIP:141.81.165.41;CTRY:DK;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:assaabloy.com;PTR:smtp.assaabloy.net;CAT:NONE;SFS:(4636009)(396003)(376002)(136003)(39860400002)(346002)(46966006)(36840700001)(8936002)(4744005)(356005)(1076003)(36860700001)(70206006)(478600001)(6916009)(7636003)(86362001)(336012)(34020700004)(36756003)(2616005)(4326008)(15650500001)(5660300002)(8676002)(186003)(107886003)(82310400003)(47076005)(82740400003)(2906002)(26005)(83380400001)(316002)(70586007);DIR:OUT;SFP:1101;
X-OriginatorOrg: assaabloy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2021 16:52:47.2467
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 50c8b998-2ce8-4a4a-cb68-08d8e3e4ef0a
X-MS-Exchange-CrossTenant-Id: f0bdc1c9-5148-4f86-ac40-edd976e1814c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f0bdc1c9-5148-4f86-ac40-edd976e1814c;Ip=[141.81.165.41];Helo=[assaabloy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DM3NAM02FT032.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB4314
Content-Type: text/plain

 - Without the patch fscryptctl is installed in
   /usr/bin/usr/local/bin instead of /usr/bin.
---
 recipes-security/fscryptctl/fscryptctl_1.0.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/fscryptctl/fscryptctl_1.0.0.bb b/recipes-security/fscryptctl/fscryptctl_1.0.0.bb
index 440b4e3..df76a3d 100644
--- a/recipes-security/fscryptctl/fscryptctl_1.0.0.bb
+++ b/recipes-security/fscryptctl/fscryptctl_1.0.0.bb
@@ -15,7 +15,7 @@ SRC_URI = "git://github.com/google/fscryptctl.git"
 S = "${WORKDIR}/git"
 
 do_install() {
-    oe_runmake DESTDIR=${D}${bindir} install
+    oe_runmake DESTDIR=${D} PREFIX=/usr install
 }
 
 RRECOMMENDS_${PN} += "\
-- 
2.17.1

