Return-Path: <petar.koynov@ni.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF67C77B73
	for <webhook@archiver.kernel.org>; Mon, 22 May 2023 17:51:35 +0000 (UTC)
Received: from mx0a-00010702.pphosted.com (mx0a-00010702.pphosted.com [148.163.156.75])
 by mx.groups.io with SMTP id smtpd.web11.1964.1684777887949915452
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 May 2023 10:51:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ni.com header.s=pps11062020 header.b=M8FRG3XD;
 spf=pass (domain: ni.com, ip: 148.163.156.75, mailfrom: prvs=45064a04e9=petar.koynov@ni.com)
Received: from pps.filterd (m0239462.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34MFv21Y013982;
	Mon, 22 May 2023 12:51:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=PPS11062020;
 bh=D11TRSUCi9pH52a9z4n1EMTLsSty67anFGRziQC/xpY=;
 b=M8FRG3XD22jgBmQ1D2HHySCjEs4nFKM2RwLGxaSusPPFtvFxkU+kMCyQ8szQ4xqwlifW
 u9ufwJv9sJss4lcus9XeStodSgXouIr7e4WuBgII4niKc3T1uAdxfvXIs/eTwgpNmHv7
 9ZUWWAt3enlCK+F91pde0ed9anLQzxSoyKEhQ9btPuIueFJoFiUupC4YiA/QtZ++65bg
 6aFT3WOetH+gFsIwpUDVLQabddl1uJzGTR9sF+O8RXVPsyiW4Ciq20JE4YJhM0oWomJ9
 pJeFTYD5hH9wN+bi03MrdoblNablJEa7euQ6gqC+rH1ZW3bZD9bfnBecCP9JNnkf9mEy 0A== 
Received: from ni.com ([130.164.80.24])
	by mx0b-00010702.pphosted.com (PPS) with ESMTPS id 3qpt9ckpc2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 May 2023 12:51:26 -0500
Received: from us-aus-excas-p2.ni.corp.natinst.com (us-aus-excas-p2.ni.corp.natinst.com [130.164.68.18])
	by us-aus-skprod3.natinst.com (8.17.1.19/8.17.1.19) with ESMTPS id 34MHpF4w031714
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 May 2023 12:51:15 -0500
Received: from us-aus-excas-p2.ni.corp.natinst.com (130.164.68.18) by
 us-aus-excas-p2.ni.corp.natinst.com (130.164.68.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 22 May 2023 12:51:15 -0500
Received: from pkoynov-devsystem.amer.corp.natinst.com (172.18.68.32) by
 us-aus-excas-p2.ni.corp.natinst.com (130.164.68.18) with Microsoft SMTP
 Server id 15.2.1118.26 via Frontend Transport; Mon, 22 May 2023 12:51:15
 -0500
From: Petar Koynov <petar.koynov@ni.com>
To: <opkg-devel@googlegroups.com>, <yocto@lists.yoctoproject.org>,
        <alex.stewart@ni.com>
CC: Petar Koynov <petar.koynov@ni.com>
Subject: [opkg-utils PATCH V2]         opkg-feed: Fix adding feeds with same name as architecture
Date: Mon, 22 May 2023 12:48:16 -0500
Message-ID: <20230522174815.1110222-1-petar.koynov@ni.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: CjHaltSWU2pZFRgWoo3Mb1p_HWvmftjF
X-Proofpoint-ORIG-GUID: CjHaltSWU2pZFRgWoo3Mb1p_HWvmftjF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-22_12,2023-05-22_03,2023-05-22_02
X-Proofpoint-Spam-Reason: orgsafe
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 May 2023 17:51:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60085

        Attempting to add feeds with some special names that match
        architecture names was returning an error:
        "5   The named feed already exists"
        Make sourceTypePattern in createFeedLineRegex only match
        feed configuration lines src or dist

Signed-off-by: Petar Koynov <petar.koynov@ni.com>
---
 opkg-feed | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/opkg-feed b/opkg-feed
index 25ef879..36d4463 100755
--- a/opkg-feed
+++ b/opkg-feed
@@ -171,7 +171,7 @@ createFeedLineRegex()
 	#	1 = full source type with any quotes
 	#	2 = source type without quotes if quoted
 	#	3 = source type if unquoted
-	sourceTypePattern='("([^"]*)"|(\S+))\s+';
+	sourceTypePattern='("([^"](src|dist)(/gz)?)"|(src|dist)(/gz)?)\s+';
 
 	# Feed name capture groups (4, 5, 6)
 	#	4 = full feed name with any quotes
-- 
2.32.0


