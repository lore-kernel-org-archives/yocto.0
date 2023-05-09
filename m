Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C931BC7EE22
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 13:31:12 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.32531.1683639063378202131
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 06:31:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=eBvYrucE;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349DIP6G032124
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:31:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=LXxU3QiOT+yHcK43Gu24eiMIi8ylLJMnUHSbvQW7wBg=;
 b=eBvYrucEi9qJfVpv/43UaLC7OV5hekzG/zTIyI7t7y9JDfcyha6b4c2Wy0gM+UToyCTs
 WZQYLFdT1f2plk5+7aNTIu3B6fbsB5o9eA6rLJtXks38Wk8C1cDfXp9Ff4X95l2pAk/y
 XgXn4e2PnPBxce+TUdj1fde0sHmElIgP4EQARe/7xRyuIrNgIqov4G8Iva1H5hc6LUcp
 0jMYh+rPQfUVGHGmAQnRZHwe1A0g8C4B4iqZJUcOnz77kmkQUqs0Ey7gwy8nYZyUAvCy
 /oehdk2VHNd/X/CNY+wDvi4H/vlcs2R5TnXjCGBZkilXgE3M3ru1b4MWf9RVHGqBKbs3 wA== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfp3djkb4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:31:01 +0000
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349D8Yvn003712
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:31:01 GMT
Received: from ppma05wdc.us.ibm.com (1b.90.2fa9.ip4.static.sl-reverse.com [169.47.144.27])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfp3djka1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:31:00 +0000
Received: from pps.filterd (ppma05wdc.us.ibm.com [127.0.0.1])
	by ppma05wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 3499eqva002509;
	Tue, 9 May 2023 13:30:59 GMT
Received: from smtprelay01.wdc07v.mail.ibm.com ([9.208.129.119])
	by ppma05wdc.us.ibm.com (PPS) with ESMTPS id 3qf88u3f73-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:30:59 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay01.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349DUvX232965306
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 13:30:58 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BBC6F58059;
	Tue,  9 May 2023 13:30:57 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7157C58062;
	Tue,  9 May 2023 13:30:57 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 13:30:57 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH v2 0/8] Fix IMA and EVM support
Date: Tue,  9 May 2023 09:30:45 -0400
Message-Id: <20230509133053.1032476-1-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: WOfema2mD67xrYQtB2A39SyDtfqEQ6bq
X-Proofpoint-GUID: Tu2TjLQU3ZaQNM7tCz0UFpE_hc0NVzJW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_08,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxscore=0 mlxlogscore=921 spamscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305090106
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:31:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59919

This series of patches fixes the current support for IMA and EVM
by removing outdated patches for example and adding kernel config
options. I have tried out these patches with OpenBMC where the
appraisal policy now enforces signed executables and libraries.

   Stefan

v2:
 - appended 'appraise_type=imasig' to IMA policy rules
 - removed CONFIG_SQUASHFS_XATTR from ima.cfg

Stefan Berger (8):
  ima: Document and replace keys and adapt scripts for EC keys
  ima: Fix the ima_policy_appraise_all to appraise executables &
    libraries
  ima: Fix the IMA kernel feature
  ima: Rename IMA_EVM_POLICY_SYSTEMD to IMA_EVM_POLICY
  ima: Sign all executables and the ima-policy in the root filesystem
  integrity: Update the README for IMA support
  linux: overlayfs: Add kernel patch resolving a file change
    notification issue
  ima-evm-utils: Update ima-evm-utils to v1.5 and add a patch

 meta-integrity/README.md                      |  22 +--
 meta-integrity/classes/ima-evm-rootfs.bbclass |  34 ++++-
 meta-integrity/data/debug-keys/README.md      |  17 +++
 .../data/debug-keys/ima-local-ca.pem          |  15 ++
 .../data/debug-keys/ima-local-ca.priv         |   7 +
 .../data/debug-keys/privkey_ima.pem           |  17 +--
 meta-integrity/data/debug-keys/x509_ima.der   | Bin 707 -> 620 bytes
 .../0001-ima-fix-ima_inode_post_setattr.patch |  51 -------
 ...Increment-iversion-upon-file-changes.patch |  42 ++++++
 ...for-creating-files-using-the-mknodat.patch | 138 ------------------
 ...-file-hash-setting-by-user-to-fix-an.patch |  60 --------
 .../recipes-kernel/linux/linux/ima.cfg        |  45 ++++++
 .../recipes-kernel/linux/linux/ima.scc        |   4 +
 .../recipes-kernel/linux/linux_ima.inc        |  11 +-
 ...ation-using-ioctl-when-evm_portable-.patch |  35 +++++
 ...-evm-utils_1.4.bb => ima-evm-utils_1.5.bb} |   9 +-
 .../files/ima_policy_appraise_all             |   9 +-
 meta-integrity/scripts/ima-gen-CA-signed.sh   |   9 +-
 meta-integrity/scripts/ima-gen-local-ca.sh    |   6 +-
 meta-integrity/scripts/ima-gen-self-signed.sh |  41 ------
 20 files changed, 239 insertions(+), 333 deletions(-)
 create mode 100644 meta-integrity/data/debug-keys/README.md
 create mode 100644 meta-integrity/data/debug-keys/ima-local-ca.pem
 create mode 100644 meta-integrity/data/debug-keys/ima-local-ca.priv
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ima-fix-ima_inode_post_setattr.patch
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0002-ima-add-support-for-creating-files-using-the-mknodat.patch
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/ima.cfg
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/ima.scc
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
 rename meta-integrity/recipes-security/ima-evm-utils/{ima-evm-utils_1.4.bb => ima-evm-utils_1.5.bb} (71%)
 delete mode 100755 meta-integrity/scripts/ima-gen-self-signed.sh

-- 
2.34.1


