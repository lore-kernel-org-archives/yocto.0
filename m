Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75D3BC7EE23
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 17:55:14 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web10.40032.1683654905113172137
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 10:55:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=S3ylfryA;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353724.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349HeXpf031718
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 17:55:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=Q828mrjF+lSztpNK1yIc8feygB1xcne3bmF5We+VaMs=;
 b=S3ylfryApjBSG7Dt7KE4+ewHepIlVi3+G4+JfRjGB0esQt+nPRnY5FCeaR13pzGsbY7H
 YquttpP0JpALsQehniyit5EsSFFAvAn3O/eQapOENT8VMvVf29qLHqMHurAw1YRKflb7
 98JoO/Rk0sPJ3fGgJ+5SgvMmQc3ByO4qs+N8OQHrSxkt2kKZ/+XmkB0bf8KaqkGdsHzj
 ObiDIsnhrAX566cWIY9uphUVr40jqFN0WUzJf41B5ybwp6VcC/uheyT2aAz/BNsM4lvE
 A4pOKEqn7oadfUNNJE8SuAFkzHESsQIVmIcJZ2MkeyctYH+LaFjjF0jKkAQQucaPGfh1 rw== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfsnq2e44-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 17:55:03 +0000
Received: from m0353724.ppops.net (m0353724.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349Hp93A008238
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 17:55:03 GMT
Received: from ppma05wdc.us.ibm.com (1b.90.2fa9.ip4.static.sl-reverse.com [169.47.144.27])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfsnq2e3q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 17:55:03 +0000
Received: from pps.filterd (ppma05wdc.us.ibm.com [127.0.0.1])
	by ppma05wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349H6vh6002499;
	Tue, 9 May 2023 17:55:02 GMT
Received: from smtprelay03.dal12v.mail.ibm.com ([9.208.130.98])
	by ppma05wdc.us.ibm.com (PPS) with ESMTPS id 3qf88u4hne-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 17:55:02 +0000
Received: from smtpav05.wdc07v.mail.ibm.com (smtpav05.wdc07v.mail.ibm.com [10.39.53.232])
	by smtprelay03.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349Ht14E3539622
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 17:55:02 GMT
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CC04E58059;
	Tue,  9 May 2023 17:55:01 +0000 (GMT)
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 42C4458066;
	Tue,  9 May 2023 17:55:01 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav05.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 17:55:01 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, quaresma.jose@gmail.com,
        Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH 0/2] Drop a kernel patch and a kernel config option
Date: Tue,  9 May 2023 13:54:55 -0400
Message-Id: <20230509175457.1038298-1-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: BZvYeqGqORnqLCHgra18j-Uby_oKmVLD
X-Proofpoint-ORIG-GUID: _UM4V7SkTLXxgg6DKtY7iUuvi2rV9vG3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_10,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 malwarescore=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 bulkscore=0 adultscore=0
 mlxlogscore=736 impostorscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305090146
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 17:55:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59936

This PR removes a kernel patch related to overlayfs and IMA appraisal file change
notifictions and a squashfs xattr kernel config option.

   Stefan

Stefan Berger (2):
  linux: overlayfs: Drop kernel patch resolving a file change
    notification issue
  ima: Drop kernel config option CONFIG_SQUASHFS_XATTR=y from ima.cfg

 ...Increment-iversion-upon-file-changes.patch | 42 -------------------
 .../recipes-kernel/linux/linux/ima.cfg        |  1 -
 .../recipes-kernel/linux/linux_ima.inc        |  1 -
 3 files changed, 44 deletions(-)
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch

-- 
2.34.1


