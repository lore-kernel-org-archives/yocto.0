Return-Path: <petar.koynov@ni.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 381F3C77B75
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 18:15:31 +0000 (UTC)
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.156.75])
 by mx.groups.io with SMTP id smtpd.web11.58029.1684347329748925444
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 11:15:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ni.com header.s=pps11062020 header.b=FH/YA9P8;
 spf=pass (domain: ni.com, ip: 148.163.156.75, mailfrom: prvs=4501ff683e=petar.koynov@ni.com)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34HF70an027776;
	Wed, 17 May 2023 13:15:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=PPS11062020;
 bh=8jTs9lqKW+tFF3lxi7u20gtPP7SpfjAhq/jjsLoGakQ=;
 b=FH/YA9P84TmgTREUxGQwT7fXk1KuR7ninNe+j7NK8vCiLmBz0dfC8//nYtLh5Jh+2ZMn
 I5uh7EKyiMoUUvw2ziqGjbROfAYDmY2ZW8Lq7s9Gv+WukNVFu3yLpdSW03054jXpLOF0
 /L5odHOgrAHPrz053vg7phqw/GBonUpw+/r8/aXJ2W42YKl+aSwXNDXpONFXIDl5iMKK
 40ddjFHkxrq31cmvgz7UmBRNtOpYxLJw+kPQI9iQHIxXbQVqCLMK41ZchPJxU5B4nA/t
 HM3QUubhRxl1ycNJnsisw4s36wpRm8EssuD0m2VewgwgT1w/VFsbmDYUI8m2y6uaHLmz KA== 
Received: from ni.com ([130.164.80.23])
	by mx0a-00010702.pphosted.com (PPS) with ESMTPS id 3qj82rrv3p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 May 2023 13:15:28 -0500
Received: from us-aus-excas-p2.ni.corp.natinst.com (us-aus-excas-p2.ni.corp.natinst.com [130.164.68.18])
	by us-aus-skprod2.natinst.com (8.17.1.19/8.17.1.19) with ESMTPS id 34HIFRWW021970
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 May 2023 13:15:27 -0500
Received: from us-aus-excas-p2.ni.corp.natinst.com (130.164.68.18) by
 us-aus-excas-p2.ni.corp.natinst.com (130.164.68.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 17 May 2023 13:15:27 -0500
Received: from pkoynov-devsystem.amer.corp.natinst.com (172.18.68.32) by
 us-aus-excas-p2.ni.corp.natinst.com (130.164.68.18) with Microsoft SMTP
 Server id 15.2.1118.26 via Frontend Transport; Wed, 17 May 2023 13:15:27
 -0500
From: Petar Koynov <petar.koynov@ni.com>
To: <opkg-devel@googlegroups.com>, <yocto@lists.yoctoproject.org>
CC: Petar Koynov <petar.koynov@ni.com>
Subject: [opkg-utils PATCH]     opkg-feed: Fix adding feeds with same name as architecture
Date: Wed, 17 May 2023 13:15:07 -0500
Message-ID: <20230517181507.891794-1-petar.koynov@ni.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: WE4YLnb-lWRWhXDg4mZqL4nS8XXV1m-K
X-Proofpoint-ORIG-GUID: WE4YLnb-lWRWhXDg4mZqL4nS8XXV1m-K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-17_03,2023-05-17_02,2023-02-09_01
X-Proofpoint-Spam-Reason: orgsafe
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 18:15:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60046

    Attempting to add feeds with some special names was returning an error:
    "5   The named feed already exists"
    This is because the feed name matched with a configured architecture.
    Add a second grep to feedExists to ignore lines starting with "arch".

Signed-off-by: Petar Koynov <petar.koynov@ni.com>
---
 opkg-feed | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/opkg-feed b/opkg-feed
index 25ef879..98850fa 100755
--- a/opkg-feed
+++ b/opkg-feed
@@ -300,7 +300,7 @@ feedExists()
 	fi
 
 	local feedRegex="$( createFeedLineRegex "$1" )"
-	grep -Eoh "$feedRegex" "${ARGS[confDir]}"/*.conf &>/dev/null
+	grep -Eoh "$feedRegex" "${ARGS[confDir]}"/*.conf | grep -vE "^arch\s" &>/dev/null
 	if [[ "$?" == "$IE_GREP_MATCH" ]] ; then
 		return $S_OK
 	fi
-- 
2.32.0


