Return-Path: <Sandeep.J@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC01BCDB479
	for <webhook@archiver.kernel.org>; Wed, 24 Jun 2026 07:00:02 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.1353.1782284401608244961
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jun 2026 00:00:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=DqoH6TLO;
 spf=none, err=permanent DNS error (domain: oak-lpgbuild12.wrs.com, ip: 205.220.178.238, mailfrom: prvs=06358bf7f3=sj10@oak-lpgbuild12.wrs.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65O6u4XS1645308
	for <yocto@lists.yoctoproject.org>; Wed, 24 Jun 2026 07:00:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=cc:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=PPS06212021; bh=L23ynXeFm
	RysQcAP6zMR6l+jW1XzT/DKWEbmhg70XFQ=; b=DqoH6TLOz8THI3GWHdiuMMWKW
	0MZhUqh+T+IyXgGQcfUclfFlC52U/Bcl4OxCn8MyMigsdOzLS33t3vKJIjE95sha
	u436SDwHU0KcmSu+9UHd5eVctxNAo9R0WWE67EKYdpM3wyVqsBki83BIddbdtPgu
	n3N4C2kkmq8+eO91zsvljbD86VrmoiNoLbquKGhWWC25YxWTlYRb18zFIDnc3o6L
	17n8t12L9uxkOWZ3k4ZMU5V7ZSpkxuPvaXyitUqfj6HORi+TQxPgNX/hakK/dB87
	BfbzDtQYUNHpt8CNq1BA9Q2Jjaj8IcgOslgyNHQO5H1QeIdLzCJ9KMlMaDUtQ==
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [128.224.246.36])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4ewg2wvsk4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 24 Jun 2026 07:00:00 +0000 (GMT)
Received: from ala-exchng01.corp.ad.wrs.com (10.11.224.121) by
 ala-exchng01.corp.ad.wrs.com (10.11.224.121) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.61; Tue, 23 Jun 2026 23:59:59 -0700
Received: from oak-lpgbuild12.wrs.com (10.11.232.110) by
 ala-exchng01.corp.ad.wrs.com (10.11.224.121) with Microsoft SMTP Server id
 15.1.2507.61 via Frontend Transport; Tue, 23 Jun 2026 23:59:59 -0700
Received: by oak-lpgbuild12.wrs.com (Postfix, from userid 1762445396)
	id 06EE33900104; Wed, 24 Jun 2026 06:59:58 +0000 (UTC)
From: Sandeep J <Sandeep.J@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: <SunilKumar.Dora@windriver.com>, <Sundeep.Kokkonda@windriver.com>,
        <Shiva.Komati@windriver.com>, <randy.macleod@windriver.com>,
        <hongxu.jia@windriver.com>, <liezhi.yang@windriver.com>,
        <kai.kang@windriver.com>, Sandeep J <Sandeep.J@windriver.com>
Subject: [meta-anaconda][PATCH] README: update source code URL to valid HTTPS link
Date: Wed, 24 Jun 2026 06:59:58 +0000
Message-ID: <20260624065958.1549176-1-Sandeep.J@windriver.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: hNWwYJKY07j2Z2Adsit_ooYeh98L9YNh
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI0MDA1NiBTYWx0ZWRfX+vnVK2ygyyRj
 +9TI/9HPbU1cD3INgJ958KgmYI/EgFo+wYYsooCVy+hOrAdnTjAMfvDvs+rnq8FGANByKOrWkFd
 OGI1UF5I7VQY/AfXr3bsfT5wTDCaxheJqz3X2av/r+WCMS/vjX6j
X-Proofpoint-GUID: hNWwYJKY07j2Z2Adsit_ooYeh98L9YNh
X-Authority-Analysis: v=2.4 cv=Xdm5Co55 c=1 sm=1 tr=0 ts=6a3b8070 cx=c_pps
 a=AbJuCvi4Y3V6hpbCNWx0WA==:117 a=AbJuCvi4Y3V6hpbCNWx0WA==:17
 a=FelO9ux0wxsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=bi6dqmuHe4P4UrxVR6um:22
 a=klDOsUkWDRETUCZYPvoE:22 a=iGHA9ds3AAAA:8 a=t7CeM3EgAAAA:8
 a=9g1Cs-DWaAmY1ZuxVPEA:9 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI0MDA1NiBTYWx0ZWRfX25/OsnA8VKic
 C7PRLCIdcP4hsAiA9t8DYIFmG8Me7/3vdO74DjKReqKb5qKgxep/hNCcZH2DLfeFSx2IlXfHaYu
 Fuss5QbmZY8OZJAwbFwDDpitZMMZn6Dj/+jl7z7gRf/WmWNzFz6BX/n3IttUKv8eteY7xijQKEH
 oLQNdNj/o3v2CHTg2z6A0hQ/oWb2p8K/B/6v2tonJrSSdR9kW3WRz+upWQtvMNG8PxBxYko2Yka
 X0Ujb7sKqS+zCuOiStfXZetwMpb0KT8Dq33vTSFdVObM55/wDXsDFWtCOCvTzR42Utiqp5ya69t
 xMAZ356U1Rq437p3lfQ46ozZm2LZBVN7LbZ+181b4R4fuTf0URhwTEfCDUe+JCT0gfwSn4Arzm4
 Q1kKuwMcde1Xl2vvaexljzmBNSOfFUcGEIyJLlrxDOKpAJZGZC+4HQlvQHFcuKnGNb06+I/JXaj
 kqyOQxkTEZ3hbWY0taw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-24_02,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 priorityscore=1501 adultscore=0
 impostorscore=0 malwarescore=0 clxscore=1011 bulkscore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606240056
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jun 2026 07:00:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66608

Update old URL:
   http://git.yoctoproject.org/git/meta-anaconda
to use https:
   https://git.yoctoproject.org/meta-anaconda

Signed-off-by: Sandeep J <Sandeep.J@windriver.com>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 52377d1..bce9d0f 100644
--- a/README
+++ b/README
@@ -34,7 +34,7 @@ revision: HEAD
 Source code
 -----------
 git://git.yoctoproject.org/meta-anaconda
-http://git.yoctoproject.org/git/meta-anaconda
+https://git.yoctoproject.org/meta-anaconda
 
 Maintenance
 -----------

