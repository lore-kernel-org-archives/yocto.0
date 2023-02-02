Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D255C61DA4
	for <webhook@archiver.kernel.org>; Thu,  2 Feb 2023 22:00:25 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.5343.1675375223467002873
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Feb 2023 14:00:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=ZxrjDuBE;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=1397bcf936=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 312Lu49o020271
	for <yocto@lists.yoctoproject.org>; Thu, 2 Feb 2023 22:00:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=PPS06212021;
 bh=INyMV01nowOs1mJjBURrojdojLG8HQD93w2i/C84tQc=;
 b=ZxrjDuBE/mcyKE9xnokdeOmqMinUCG/53LFLmLGqebBJ/NFdInd/8wsbkoIn8lCR6eCH
 y68rLcmeTxgmfocBe8JFldMWFk78Zm6eGSygpoMfM1MVXOY8M7ACAOfSCvuFi91za3pz
 SEJquS5UyyBL2IWkqY20X1+/qRCEDKhfNX+EwppXLbDjAZA7rg5I0mGesOdU64shPZxY
 KfORKldttyCqry+t+4LL/r2sSqmZPQ6pH75+BavyAp0pOwc61E8eDRyZbQma0yEbF1gG
 oVU67nzrDr5q+qWMYOQ0Gs+xeExZ3HinUenSQXN/Edo+OmhOn4GSuAS8bSjJ6NOABhKv iw== 
Received: from ala-exchng01.corp.ad.wrs.com (unknown-82-252.windriver.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ncrx3duv4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 22:00:22 +0000
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Thu, 2 Feb 2023 14:00:20 -0800
Received: from vme.wrs.com (172.25.44.4) by ala-exchng01.corp.ad.wrs.com
 (147.11.82.252) with Microsoft SMTP Server id 15.1.2507.17 via Frontend
 Transport; Thu, 2 Feb 2023 14:00:20 -0800
From: Randy MacLeod <Randy.MacLeod@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [] [PATCH yocto-autobuilder-helper] config.json: set oe-time-dd-test.sh timeout to 3 seconds
Date: Thu, 2 Feb 2023 17:00:20 -0500
Message-ID: <20230202220020.106670-1-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: nsmVeK00z0MlZnh5YkSs44u4iOTkhlLf
X-Proofpoint-ORIG-GUID: nsmVeK00z0MlZnh5YkSs44u4iOTkhlLf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-02_14,2023-02-02_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 impostorscore=0
 adultscore=0 malwarescore=0 clxscore=1011 mlxlogscore=769 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302020195
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 22:00:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59149

For the month of January 2023, the distribution of dd times has a long
tail that extends to 13 seconds with 2 events exceeding the current
limit of 30 seconds.

Reduce the timeout to 3 seconds based on the observed distribution of
dd times, which would result in the timout triggering about 20 times a month.
That's enough data to be useful but not so much that it's overwhelming the
logging or the people who will analyze it. It also avoids the rapid increase
in the tail of the distribution which starts to rise exponentially under 2 seconds.
It's sensible response time for people to expect the system to have.

Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 446528a..e50ec44 100644
--- a/config.json
+++ b/config.json
@@ -68,7 +68,7 @@
             "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'",
             "BB_HEARTBEAT_EVENT = '60'",
             "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
-            "BB_LOG_HOST_STAT_CMDS_INTERVAL = 'oe-time-dd-test.sh -c 100 -t 15'",
+            "BB_LOG_HOST_STAT_CMDS_INTERVAL = 'oe-time-dd-test.sh -c 100 -t 3'",
             "BB_LOG_HOST_STAT_ON_FAILURE = '1'",
             "BB_LOG_HOST_STAT_CMDS_FAILURE = 'oe-time-dd-test.sh -l'",
             "SDK_TOOLCHAIN_LANGS += 'rust'",
-- 
2.34.1


