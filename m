Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.9269.1625733928909928087
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jul 2021 01:45:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@leica-geosystems.com header.s=selector1 header.b=of7Zw68n;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: leica-geosystems.com, ip: 198.145.29.25, mailfrom: massimo.toscanelli@leica-geosystems.com)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130093.outbound.protection.outlook.com [40.107.13.93])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8617B38C069E
	for <yocto@yoctoproject.org>; Thu,  8 Jul 2021 08:45:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jZ1Oyqtqdt31fBTqg9UEia1IsmjgWs4OZJG7NRjJkKIXffnUOtOcjbr+DyFPxEa0Tt7da1NEP0PzJNX7KgqTC/NW9IMHij0PgSdGzyD+UshY+/BVkQrBQ8G1iw+uzEOqTtcH3xssuZAPEppimvEM0HFaNBWFGTYM6Vk5iAAxMdf3FTkf/RlTmiI0tJanYsh4ICfFWJhhfcARgTpj0BMTSQAoNPMxELokuhmXe5xviVeIbwLclvwr6avaybH3jHc+olAur9tGkHA+aYvHzfDMETo3bHO1Et8WRljC1M1nkpo4sAzvY+sOxtNnVzCQLz9YQ02SPGYVYMryoNq2/csBBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D6ljHO2erJay/1LgOKlFLUimH+WeTBJLJVG1EIq+Vec=;
 b=MtHMrpYMpLW9An6yO6Ln75JrUHPjlLxGq2Yk1qERvWeEsSn+UYVOf9ZC1TD+fHZOn42CHwq7axoEIyTY+KNXaGuGB5U9EiboNMjctl9WIARBSt3c3US2jUxegKGg6tmAEDTMu5uEab8xjN5tk/upjV7uhEli83xALN0Czb6UKXDdb80QjKEZgb5lOUAjvvuh7E/MOw6ChEdiBdw4UyVvBq+d1bL7Xu8HyCNSHmpu8aqXabRqxjOwmaky6SOrQzMqOFXPVKOY0XA28F8a25WfgJB0dVzjB9vE/CI5jwCR5A6zFvRMVP0JC1DM2PkiqA+fxKo8C9T+P1ZvLtq7++1NoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=yoctoproject.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=quarantine sp=quarantine
 pct=100) action=none header.from=leica-geosystems.com; dkim=none (message not
 signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D6ljHO2erJay/1LgOKlFLUimH+WeTBJLJVG1EIq+Vec=;
 b=of7Zw68neHcfI2kedwssuQGJ3dN8H+jVYMGyQujQdEIIZXTSE+EwGQW1kfdRfaDIBmPlDFkDgYbDbtNclaICsG32DpQJO6PmfTulIyPRa9WwvbsMpvZbxZGJ+3MBu2XpHLP1hRjIBQW1wGe243/GdFdxkY0iqRjN/TAgzWLm5JA=
Received: from AM6PR0202CA0038.eurprd02.prod.outlook.com
 (2603:10a6:20b:3a::15) by HE1PR0602MB2876.eurprd06.prod.outlook.com
 (2603:10a6:3:dd::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.31; Thu, 8 Jul
 2021 08:45:24 +0000
Received: from VE1EUR02FT063.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:3a:cafe::cd) by AM6PR0202CA0038.outlook.office365.com
 (2603:10a6:20b:3a::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.21 via Frontend
 Transport; Thu, 8 Jul 2021 08:45:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; yoctoproject.org; dkim=none (message not
 signed) header.d=none;yoctoproject.org; dmarc=pass action=none
 header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=hexagon.com;
Received: from hexagon.com (193.8.40.94) by
 VE1EUR02FT063.mail.protection.outlook.com (10.152.13.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.20 via Frontend Transport; Thu, 8 Jul 2021 08:45:24 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.60.34.56]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Thu, 8 Jul 2021 10:45:24 +0200
From: "massimo toscanelli" <massimo.toscanelli@leica-geosystems.com>
To: yocto@yoctoproject.org
Cc: massimo toscanelli <massimo.toscanelli@leica-geosystems.com>
Subject: [meta-raspberrypi][PATCH] userland: add dtc dependency
Date: Thu,  8 Jul 2021 08:45:22 +0000
Message-Id: <20210708084522.10558-1-massimo.toscanelli@leica-geosystems.com>
X-Mailer: git-send-email 2.17.1
X-OriginalArrivalTime: 08 Jul 2021 08:45:24.0041 (UTC) FILETIME=[97A96B90:01D773D5]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: ca0115aa-28ea-4772-3c6d-08d941ecba58
X-MS-TrafficTypeDiagnostic: HE1PR0602MB2876:
X-Microsoft-Antispam-PRVS: 
	<HE1PR0602MB287618F46D9D5259AE98F48CA0199@HE1PR0602MB2876.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+RftA3oewrMWZHbqoPneZC7hiE8Xdhz8R8y3xNH4rvVC2LqSKhWOyRVr8EL70caGVf2ZP5c8odj1pYKHLR/O0ujrrUqE1GUguJDoIb2RPpgfTAJyRyPj8+IrtjgKNcaHXlcX/64YVPAHt8rmJSHWDqV0p7w3q8oYYjaXo0SftRrmerfJPuQ7Mg5uy4aTX4xWO6kzXx+HpvXag62/8rlL+cg8V7CSeA/JHClRboIIWIwp/gghRvwEYEa17YgDNKqYfLUAnnHRgxrPCI0VgP9sGPhH6H9vM5xsgp6e6XTxdFX8HGbBiT7XzRJK1V9Q+385Hrsl1ReMZgdgii6kE8zMr7RXzr9qiCqeOPqurHff8OyY75b6LQC+varfJD5Nw50k/6UNM48NrpZHA53ZdyiiWvHgX9ULxMWze1DLu0byh/BNzUEgh7o4/zFBVOg9GvfiWs9Ig/9KCyy4/ycz+xo6tOFJzdsxnMx6jFc3pc/o20d4swcxwEb6wMw0byBOGpI0ytCrrXxtYQJrdHFHar0hX/AjXev1qAx8oNmecB1lPdQD6E/JS79UE3L6eGn1tRV0rRst76TfTjWxwQirm4eZIQj1A4OWTh7xQ+vws1CwvIw7AKIFNIM497rjMj5Vb2CJIlaYHzfHc+dvrkycVWA2z8Nz92oewpg/CW2wFqfDNjrDwtI3IeyrgZ1pCSd8OWmGVykPdTr7hF4TQGHvAZaUSA==
X-Forefront-Antispam-Report: 
	CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(4636009)(39860400002)(396003)(136003)(346002)(376002)(46966006)(36840700001)(83380400001)(82740400003)(186003)(81166007)(356005)(36756003)(2616005)(36860700001)(47076005)(4744005)(70206006)(4326008)(70586007)(8676002)(336012)(2906002)(6916009)(1076003)(26005)(8936002)(5660300002)(316002)(107886003)(86362001)(478600001)(82310400003);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2021 08:45:24.3518
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ca0115aa-28ea-4772-3c6d-08d941ecba58
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR02FT063.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0602MB2876
Content-Type: text/plain

When using dtparam, dtoverlay converts /proc/device-tree to a .dtb and
loads it. However, if dtc is not installed, this operation cannot be
done and every call to dtparam fails.

Therefore, dtc needs to be added to the list of userland dependencies
in order to properly call dtparam.

Signed-off-by: massimo toscanelli <massimo.toscanelli@leica-geosystems.com>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index ead81f0..9ec57c9 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -104,5 +104,5 @@ FILES_${PN}-dev += "${includedir} \
 FILES_${PN}-doc += "${datadir}/install"
 FILES_${PN}-dbg += "${libdir}/plugins/.debug"
 
-RDEPENDS_${PN} += "bash"
+RDEPENDS_${PN} += "bash dtc"
 RDEPENDS_${PN} += "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "libegl-mesa", "", d)}"
-- 
2.17.1

