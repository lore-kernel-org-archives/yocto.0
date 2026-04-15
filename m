Return-Path: <Haitao.Liu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 502ABF531FF
	for <webhook@archiver.kernel.org>; Wed, 15 Apr 2026 09:06:28 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.14609.1776243984158581682
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Apr 2026 02:06:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=ly41BfaJ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=8565fa3143=haitao.liu@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63F6Sic92506156
	for <yocto@lists.yoctoproject.org>; Wed, 15 Apr 2026 02:06:23 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=PPS06212021;
	 bh=PP9GNG8y52n0eRpkVIeUU6yOBwgU1BGdtmtBOP7rOsc=; b=ly41BfaJZrqD
	6x87YyxZRfZ4QXup9skxpC0X/kVdGzzBXSgmUZhWU6I36fgh2rzVw4AOInWUBR8E
	7NrpX26bZpXfXMtQb25UcfIP3OEEjSdU0mNCN5OF6rgc/2RueD9uo/bb52oNEetP
	X6eRqB4HbZfkXitdu/GysNZtOtPXgclIPX5pN+QBpe/PBZWv18K7XcSBLNymBnas
	NgrbwTFZz4qqV+4pb1fOK+gDfvNFpbi0yYcyHpqZ9kYkX/ugH81YkD6YvbGzuHN3
	/tMTZUhdn5++sBSN/R7SCB0Yi9GmvHE9X0U/3gfT4+w0JORFWacGUjJ6u7jxuPXo
	gZAo86YMZg==
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [128.224.246.36])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4dh86m9sjs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 15 Apr 2026 02:06:23 -0700 (PDT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) by
 ala-exchng01.corp.ad.wrs.com (10.11.224.121) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.61; Wed, 15 Apr 2026 02:06:23 -0700
Received: from pek-lpd-susbld.wrs.com (10.11.232.110) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server id
 15.1.2507.61 via Frontend Transport; Wed, 15 Apr 2026 02:06:22 -0700
From: Haitao Liu <haitao.liu@windriver.com>
To: <kai.kang@windriver.com>, <yocto@lists.yoctoproject.org>
Subject: [yocto][meta-anaconda][PATCH 2/2] layer.conf: Update to wrynose release series
Date: Wed, 15 Apr 2026 17:06:20 +0800
Message-ID: <20260415090620.2450794-2-haitao.liu@windriver.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415090620.2450794-1-haitao.liu@windriver.com>
References: <20260415090620.2450794-1-haitao.liu@windriver.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Authority-Analysis: v=2.4 cv=Q5riJY2a c=1 sm=1 tr=0 ts=69df550f cx=c_pps
 a=AbJuCvi4Y3V6hpbCNWx0WA==:117 a=AbJuCvi4Y3V6hpbCNWx0WA==:17
 a=A5OVakUREuEA:10 a=VkNPw1HP01LnGYTKEx00:22 a=bi6dqmuHe4P4UrxVR6um:22
 a=HK-ge7EqtdluswH-FwHe:22 a=t7CeM3EgAAAA:8 a=_IDilM48DmjwzaWJ-6oA:9
 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: 4vrR_SjRxJsXRbnri1PHv0qt9sUBWu03
X-Proofpoint-ORIG-GUID: 4vrR_SjRxJsXRbnri1PHv0qt9sUBWu03
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE1MDA4MiBTYWx0ZWRfXy0fI716YDjCA
 X9Vm+udLJwyt3VH+BdI3Japy3dkOrPIUE3ayreMIb1aBU2XFWHAiMLTSl6hCfz9K1xRwCnP3OfH
 T3tvcNRACvhcpfoNx7lHKCMioSOK3PB7Ph6yET3GwiwzPoOXkAxCGIy0VbXIhUMhHXYqnr0Uks4
 VzQoy6RRqirVifTIkQo05LXMiFdu1f9JzYeQg2ULye1LwcxIFA+7hORn7VxBdMNG5ehOdoCVE6k
 bXhx/Q4Zyup/kFTQYVGjKTX8UWKm1fl+4657H4ip9/eyYNjvMltz3HHJ+vrz5nr6jzLTeJPJYQ7
 QT1HIUyDAzx1jmdYXd6hJ0YVz2sIDpAq//XGAK8yzBzsipWxfkbN5nnPS8DdcDy4Op5ky1X4RWx
 INh9FSE0Po2QLD7w++5RweyWjoDY9XWRGwk7h1XVuBAa5eQg8VaHOF04M9Orj0mfqecNN6pqzIW
 +bZWXgdcvhKhIOnf20Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-14_04,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1011 impostorscore=0 adultscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604070000
 definitions=main-2604150082
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Apr 2026 09:06:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66418

Signed-off-by: Haitao Liu <haitao.liu@windriver.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 2e09189..eb37b98 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -11,7 +11,7 @@ BBFILE_PRIORITY_meta-anaconda = "10"
 
 LAYERVERSION_meta-anaconda = "2"
 
-LAYERSERIES_COMPAT_meta-anaconda = "whinlatter"
+LAYERSERIES_COMPAT_meta-anaconda = "wrynose"
 
 LAYERDEPENDS_meta-anaconda = " \
     core \
-- 
2.34.1


