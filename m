Return-Path: <changqing.li@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F7ACDB46E
	for <webhook@archiver.kernel.org>; Thu, 12 Oct 2023 05:26:09 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.4908.1697088364172402615
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Oct 2023 22:26:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=dg5fnhn0;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=8649d0404b=changqing.li@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39C4U13D029477
	for <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 22:26:04 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PPS06212021; bh=dkb8t
	PYObCS6A4Um7l//z4U+Cp5FOaeyFkBRQsXivO0=; b=dg5fnhn06+Tedgtq7anyf
	MjQcFVGtsfbSOoxzUzM9jrLm9j18uQPXaKGUVm6j3CzFw7QsPmAXBQ7PX/UM8QqE
	oO0FVx7BiIKh9G2dUmVgvg7PzBh7ITgu6F+91jny6aCf5ertqzjaWOko9Q7esmM1
	rRKVSyU7w/oAJ1kA7I11EaqXwO5kLMrXrabC3FK8EhgDW9ePA6z/JsqyfALtbNL0
	KZaVYzmO1Fk6SJlZElqT/RollZklw56x+QEMYDAjl9XAFXYCNxJF10pGXKA6BhuP
	LUrUh+S5hYYTUzrhGwcMCOfJhksI1Sfp+t3v4PfZ/wh/aNWwwIP9CVb7RcBuv+4r
	g==
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3tnhq494qe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 22:26:03 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 22:26:02 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 22:26:01 -0700
From: <changqing.li@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [kirkstone][PATCH] meta-cgl-common: fix ParseError
Date: Thu, 12 Oct 2023 13:26:01 +0800
Message-ID: <20231012052601.665079-1-changqing.li@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: FIVTbH5EG6wbnzcngkQP8r6uq8fxArKf
X-Proofpoint-GUID: FIVTbH5EG6wbnzcngkQP8r6uq8fxArKf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-12_02,2023-10-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 clxscore=1015 mlxlogscore=718 phishscore=0 mlxscore=0
 spamscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2309180000 definitions=main-2310120045
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Oct 2023 05:26:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61325

From: Changqing Li <changqing.li@windriver.com>

Layeindex update.py report warning:
WARNING: Error parsing distro configuration file /meta-cgl/meta-cgl-common/conf/distro/poky-cgl.conf: ParseError at /meta-cgl/meta-cgl-common/conf/distro/poky-cgl.conf:1: Could not include required file conf/distro/poky-lsb.conf

Refer meta-yocto commit: 00fdefff55717331a220fe624f29c387970d31d7
[poky-altcfg: Replace poky-lsb with poky-altcfg]

replace poky-lsb with poky-altcfg here, and also add layer yocto
as LAYERDEPENDS for fixing above warning

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 meta-cgl-common/conf/distro/poky-cgl.conf | 2 +-
 meta-cgl-common/conf/layer.conf           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/conf/distro/poky-cgl.conf b/meta-cgl-common/conf/distro/poky-cgl.conf
index 10feab9..2932dcf 100644
--- a/meta-cgl-common/conf/distro/poky-cgl.conf
+++ b/meta-cgl-common/conf/distro/poky-cgl.conf
@@ -1,4 +1,4 @@
-require conf/distro/poky-lsb.conf
+require conf/distro/poky-altcfg.conf
 
 DISTRO = "poky-cgl"
 DISTROOVERRIDES .= ":poky-cgl"
diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index 2e21879..59ee224 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "cgl-common"
 BBFILE_PATTERN_cgl-common = "^${LAYERDIR}/"
 BBFILE_PRIORITY_cgl-common = "7"
 
-LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
+LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux yocto"
 
 LAYERSERIES_COMPAT_cgl-common = "honister kirkstone"
 
-- 
2.25.1


