Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.85])
 by mx.groups.io with SMTP id smtpd.web11.681.1597266158336392289
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 14:02:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@xilinx.onmicrosoft.com header.s=selector2-xilinx-onmicrosoft-com header.b=iaDifR+u;
 spf=pass (domain: xilinx.com, ip: 40.107.243.85, mailfrom: ckalluri@xilinx.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j3HP2xdEaMyGlEneN9MXK4oNjtfpMxg6+KRmgbWV8J3qCH5HVPBOAyO1vL3dLbJPLgK8/gLLdElZOBgmDkoYyjhUDGOx/gOz3B5or0zjI+GN+lxFQ967vtGCQpthWefVAg4sDIfiQPRBeNAb1KIJMtc8bM+NrvrPUKuCJWb7cmcXpuC0o6UEbOsrR9wmFaUGCEbKhg/RYjGyt/F+QM9cDj85hT+/+158JsyqRaKcHWDZGwZtquG3/m6Owxw9QebQjkyZgxYdkBsoJWq8v/WiAhrAnMsSvhmznLxKCu4+Y24LmtOTg1xz5jXwq437OyCQy8CcDcDIjxbqE6DGRL08og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X4N+X6QR2HP4qYw/bpAURXbieF594VF1QLMdlNmPBQw=;
 b=NaADXPiFoj3JWkG9artMukCe7i+/3JNuvILbBfxK4Fkilt3WEOz+w5byZSCzL6IlDPYFEMf8giQ1IuTdvNtsChdtGUmefrLbtYqki54FMvO4E9a8ugsEJXHWTdn9zHcj8cpzJkQE9hfcl/6MM7zLREhsLYQr1qN4X8LZwgByAHw7uYxWr34c/GSpsgqmVwFuIEzmJJaHx3g7UzsXvR38wd9TdVVRDe+pZUBs+FeEH2dVhSNMO1SCibxh04c7EZcAIBjVswrXklCdGtv3X7XIQNMzQAsa29+hsXi08asBSqAlCokY9IyRP5iFpRwgcL/LT5RIAUURDOjKMzVC4mFsCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X4N+X6QR2HP4qYw/bpAURXbieF594VF1QLMdlNmPBQw=;
 b=iaDifR+u1b+qU3TnKfP5bg5nDqSkGn+/kwChE3J3JeqzWPNMuUhAVFMnxOogEzvPPu8lBNmRqBpwpNzuQhwtwpyuMldP9WHAdozVmMQB6om/eU9as1seYhcscqgerH1E1dYNiRWidVN3BksdxD/xvrrQ75jAJjWTi4o7POfwvFs=
Received: from DM6PR02CA0130.namprd02.prod.outlook.com (2603:10b6:5:1b4::32)
 by MWHPR02MB2382.namprd02.prod.outlook.com (2603:10b6:300:5b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.15; Wed, 12 Aug
 2020 21:02:35 +0000
Received: from CY1NAM02FT042.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:1b4:cafe::b1) by DM6PR02CA0130.outlook.office365.com
 (2603:10b6:5:1b4::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.16 via Frontend
 Transport; Wed, 12 Aug 2020 21:02:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.yoctoproject.org; dkim=none (message not
 signed) header.d=none;lists.yoctoproject.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT042.mail.protection.outlook.com (10.152.75.136) with Microsoft SMTP
 Server id 15.20.3283.16 via Frontend Transport; Wed, 12 Aug 2020 21:02:35
 +0000
Return-Path: chandana.kalluri@xilinx.com
Received: from [149.199.38.66] (port=51269 helo=smtp.xilinx.com)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
	(envelope-from <chandana.kalluri@xilinx.com>)
	id 1k5xtB-0002Bz-U7
	for yocto@lists.yoctoproject.org; Wed, 12 Aug 2020 14:02:25 -0700
Received: from [127.0.0.1] (helo=localhost)
	by xsj-pvapsmtp01 with smtp (Exim 4.63)
	(envelope-from <chandana.kalluri@xilinx.com>)
	id 1k5xtK-0001QH-VJ
	for yocto@lists.yoctoproject.org; Wed, 12 Aug 2020 14:02:35 -0700
Received: from [172.19.2.12] (helo=xsjckalluri50.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <chandana.kalluri@xilinx.com>)
	id 1k5xtH-0001Q7-Aw; Wed, 12 Aug 2020 14:02:31 -0700
From: "Chandana kalluri" <ckalluri@xilinx.com>
To: yocto@lists.yoctoproject.org
Cc: Sai Hari Chandana Kalluri <chandana.kalluri@xilinx.com>
Subject: [poky][master][PATCH] qemu.inc: Use virtual/libgl instead of mesa
Date: Wed, 12 Aug 2020 14:02:30 -0700
Message-Id: <1597266150-3500-1-git-send-email-chandana.kalluri@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 2c097cdc-5df7-4e16-2ee3-08d83f0309a0
X-MS-TrafficTypeDiagnostic: MWHPR02MB2382:
X-Microsoft-Antispam-PRVS: 
	<MWHPR02MB2382C00368D5927D1C6B4BDAB0420@MWHPR02MB2382.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	KnntBoe71fE82HqPFwTlsz0E64pBspozoRR1kSpLnpcv8Lp3io7xQF1n9wv6EmXCVYMOJP6cZ6gC4GoY4mYLE9vh2/04Xx4bZZfvlvIgaqGlp9zUlOJQ+r5KktRIYrPPHtzGdZ8f9xAbrta6X/8jmh5kNcFKpvk10ZY5neEDEW1HeyVLB2D1bepOgaYYM0vd0PyZo4rs7qccxBhtCd/8iz9rHHc9kcZ4ZJ2/R85dvK+gWeLvJFcBPnnIAiUOcjFi+ca/XKm61249GhZo0c5WMDKAYAMMSEZMNW/kyy/KDF1K3juG7mdz6I4ZZGxehmKNbBDxJSOgFxX01VNmUCeALoH1iM3LimqUtP0up+lJAkX+8tIuLL3DFJzpVSoiP36pKGLYtwgmANJnx6N+DPcUTMo3XOR3Lc72L9GEhPXbXMkOT40+ucKf+wjy29jdMc5ZHhECL7WknWM35HGoKnHkGQ==
X-Forefront-Antispam-Report: 
	CIP:149.199.60.83;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapsmtpgw01;PTR:unknown-60-83.xilinx.com;CAT:NONE;SFS:(396003)(136003)(376002)(346002)(39860400002)(46966005)(70586007)(336012)(2906002)(9786002)(107886003)(83080400001)(81166007)(83380400001)(7696005)(26005)(478600001)(82740400003)(356005)(70206006)(8676002)(82310400002)(47076004)(5660300002)(36756003)(4326008)(8936002)(6916009)(186003)(316002)(2616005)(426003);DIR:OUT;SFP:1101;
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2020 21:02:35.1849
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c097cdc-5df7-4e16-2ee3-08d83f0309a0
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.60.83];Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-AuthSource: 
	CY1NAM02FT042.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2382
Content-Type: text/plain

If there are multiple providers of virtual/libgl and mesa is not the default
provider, the recipe compilation fails.  Use virtual/libgl to pick the default
provider.

Signed-off-by: Sai Hari Chandana Kalluri <chandana.kalluri@xilinx.com>
---
 meta/recipes-devtools/qemu/qemu.inc                        | 2 +-
 meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/qemu/qemu.inc b/meta/recipes-devtools/qemu/qemu.inc
index b1c822b..dada4b8 100644
--- a/meta/recipes-devtools/qemu/qemu.inc
+++ b/meta/recipes-devtools/qemu/qemu.inc
@@ -163,7 +163,7 @@ PACKAGECONFIG[nettle] = "--enable-nettle,--disable-nettle,nettle"
 PACKAGECONFIG[libusb] = "--enable-libusb,--disable-libusb,libusb1"
 PACKAGECONFIG[fdt] = "--enable-fdt,--disable-fdt,dtc"
 PACKAGECONFIG[alsa] = "--audio-drv-list='oss alsa',,alsa-lib"
-PACKAGECONFIG[glx] = "--enable-opengl,--disable-opengl,mesa"
+PACKAGECONFIG[glx] = "--enable-opengl,--disable-opengl,virtual/libgl"
 PACKAGECONFIG[lzo] = "--enable-lzo,--disable-lzo,lzo"
 PACKAGECONFIG[numa] = "--enable-numa,--disable-numa,numactl"
 PACKAGECONFIG[gnutls] = "--enable-gnutls,--disable-gnutls,gnutls"
diff --git a/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb b/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
index 29b1262..5282119 100644
--- a/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
+++ b/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
@@ -8,7 +8,7 @@ HOMEPAGE = "https://virgil3d.github.io/"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=c81c08eeefd9418fca8f88309a76db10"
 
-DEPENDS = "libdrm mesa libepoxy"
+DEPENDS = "libdrm virtual/libgl libepoxy"
 SRCREV = "7d204f3927be65fb3365dce01dbcd04d447a4985"
 SRC_URI = "git://anongit.freedesktop.org/virglrenderer \
            file://0001-gallium-Expand-libc-check-to-be-platform-OS-check.patch \
-- 
2.7.4

