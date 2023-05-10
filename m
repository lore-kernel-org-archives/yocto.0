Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06444C77B7C
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 14:51:40 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web11.19451.1683730292165067395
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 07:51:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=DTLl+Nh5;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34AEcoP3006902;
	Wed, 10 May 2023 14:51:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=9IA66r+cjDcoSI0LS29FWbSSosRMW6izU983rhjBd24=;
 b=DTLl+Nh5nCF0VcM834FnA9uLroE8wT+nU7DSewMDn3DpU50hpc7N7YvkqF4WPdJKB4lW
 k2DDCBK/HtEEaMnK8WqEyEo+DCobNsNK5N72HHnKdlOSN7BdPLEvKBj+z7Ca+nd9uxQ9
 ST6Lu1F2Ciz5nmotmBXChwIBgIK8M0OzWozD8hrxJl+gxAI1t7FMbFcGlT4wKRAMBBFX
 fGATQ3SfEMDAPspE6bUTHkZWSjqHQcIYqSqGfMGsEGI1lcLuTuUr9ItyWd53I0t2SY+e
 YYfN/5vwBblEjDgjJLlf3uiu+NqNqDYcdfzjLI0LpPc/XThzvvNJXeVNLo7OcPqoY4rM ug== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgce6t4ng-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:30 +0000
Received: from m0353725.ppops.net (m0353725.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 34AEcwWa007298;
	Wed, 10 May 2023 14:51:30 GMT
Received: from ppma01dal.us.ibm.com (83.d6.3fa9.ip4.static.sl-reverse.com [169.63.214.131])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgce6t4n8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:30 +0000
Received: from pps.filterd (ppma01dal.us.ibm.com [127.0.0.1])
	by ppma01dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 34ADiIWd019493;
	Wed, 10 May 2023 14:51:29 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([9.208.129.120])
	by ppma01dal.us.ibm.com (PPS) with ESMTPS id 3qf7njusad-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:51:29 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com [10.241.53.105])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 34AEpRPe66126286
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 14:51:28 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A3C685805D;
	Wed, 10 May 2023 14:51:27 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3E4B858063;
	Wed, 10 May 2023 14:51:27 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Wed, 10 May 2023 14:51:27 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, quaresma.jose@gmail.com, mikko.rapeli@linaro.org,
        Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH v2 0/4] Fix some issues due to IMA related changes
Date: Wed, 10 May 2023 10:51:21 -0400
Message-Id: <20230510145125.1067280-1-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: -YcUdxlWI7mFE6AN4RvPGugfK0lwAAGL
X-Proofpoint-ORIG-GUID: n9Wmxr4zViFcaLBnrM05JQA2nHhkWDmj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 mlxlogscore=950 priorityscore=1501 lowpriorityscore=0 phishscore=0
 spamscore=0 clxscore=1015 mlxscore=0 malwarescore=0 impostorscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100117
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 14:51:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59967

This patchset removes a kernel patch related to overlayfs and IMA appraisal file
change notifictions and a squashfs xattr kernel config option.
Further, it fixes the do_configure function and renames linux-%.bbappend to
linux-yocto%.bbappend to avoid side-effects in build targets unrelated to
the Linux kernel, such as kernel-firmware.

   Stefan

Stefan Berger (4):
  linux: overlayfs: Drop kernel patch resolving a file change
    notification issue
  ima: Drop kernel config option CONFIG_SQUASHFS_XATTR=y from ima.cfg
  integrity: Fix the do_configure function
  integrity: Rename linux-%.bbappend to linux-yocto%.bbappend

 ...linux-%.bbappend => linux-yocto%.bbappend} |  0
 ...Increment-iversion-upon-file-changes.patch | 42 -------------------
 .../recipes-kernel/linux/linux/ima.cfg        |  1 -
 .../recipes-kernel/linux/linux_ima.inc        |  7 ++--
 4 files changed, 4 insertions(+), 46 deletions(-)
 rename meta-integrity/recipes-kernel/linux/{linux-%.bbappend => linux-yocto%.bbappend} (100%)
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch

-- 
2.34.1


