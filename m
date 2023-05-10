Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 011B5C7EE23
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 14:51:39 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web11.19455.1683730294200414789
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 07:51:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=QsBCli/A;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34AEZo9K017219;
	Wed, 10 May 2023 14:51:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=fzWgTlHdC9RcSdpVhwH6Nx+UIVH6EciBmp2Z5unZvjc=;
 b=QsBCli/AbGwoibP0hHuFL3tNxurmfdUMtiT+Ad2aVeH289kHVJqhh6Ww02tkOYPT66vj
 g7LC82zFa77va04/CIKjiXpT9fcMYMCSIFSYTr7aQELK4PLw19d2OMWcoUxXmLje7kLP
 P9lnwOPzAgvsrOARXqSQH21YeCkJOMatlZs/F6XhroQRu8XvJrMS8di2mtTCYxNQieIc
 W4TRq8rDuq6d0rTcCqy9xFtpV+XByrNSwTD6YR2NZA+AZERW4D/Qgly4dnkdUSJUed44
 WGgW4lE+Pg+epK0nLTYAWNk6Xmc1I4IvMM7kyzEVrFnHbz/RPmjRWO+/QqZec+EV/jwu /Q== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgaa2emdt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:32 +0000
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 34AEa7XP018471;
	Wed, 10 May 2023 14:51:32 GMT
Received: from ppma05wdc.us.ibm.com (1b.90.2fa9.ip4.static.sl-reverse.com [169.47.144.27])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgaa2emda-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:32 +0000
Received: from pps.filterd (ppma05wdc.us.ibm.com [127.0.0.1])
	by ppma05wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 34ACVDbd002509;
	Wed, 10 May 2023 14:51:31 GMT
Received: from smtprelay04.wdc07v.mail.ibm.com ([9.208.129.114])
	by ppma05wdc.us.ibm.com (PPS) with ESMTPS id 3qf88u99vu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:31 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com [10.241.53.105])
	by smtprelay04.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 34AEpT5x36766016
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 14:51:30 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A81C858043;
	Wed, 10 May 2023 14:51:29 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 42EF25805D;
	Wed, 10 May 2023 14:51:29 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Wed, 10 May 2023 14:51:29 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, quaresma.jose@gmail.com, mikko.rapeli@linaro.org,
        Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH v2 4/4] integrity: Rename linux-%.bbappend to linux-yocto%.bbappend
Date: Wed, 10 May 2023 10:51:25 -0400
Message-Id: <20230510145125.1067280-5-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230510145125.1067280-1-stefanb@linux.ibm.com>
References: <20230510145125.1067280-1-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: yq5PWOr-_flA-f0-pWQABLtrLDNPIJ1F
X-Proofpoint-ORIG-GUID: qQysLnEV7C6V3LohlC2i6INT2xrGihoN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 spamscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 clxscore=1015 suspectscore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100117
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 14:51:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59971

To avoid having linux-%.bbappend included in targets unrelated to the
linux kernel, rename linux-%.bbappend to linux-yocto%.bbappend.

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 .../linux/{linux-%.bbappend => linux-yocto%.bbappend}             | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename meta-integrity/recipes-kernel/linux/{linux-%.bbappend => linux-yocto%.bbappend} (100%)

diff --git a/meta-integrity/recipes-kernel/linux/linux-%.bbappend b/meta-integrity/recipes-kernel/linux/linux-yocto%.bbappend
similarity index 100%
rename from meta-integrity/recipes-kernel/linux/linux-%.bbappend
rename to meta-integrity/recipes-kernel/linux/linux-yocto%.bbappend
-- 
2.34.1


