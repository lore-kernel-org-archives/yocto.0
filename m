Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82AE5C77B7F
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 12:23:28 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web10.18033.1682684602457135812
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 05:23:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=Ij4iowSv;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33SC8QKm028017
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=LNMRPjqiOaBCZjk+mFpDfFGkcdlE6+cvTSFmTPdiZbw=;
 b=Ij4iowSvjpYJXLJ7ByVjYfByXBkHeW47GN91AosboaS37ougDfeTEITEZnmdQfdDTrpO
 7zsxb1GgCEFcD0mZmxCSvX1B5h7Hgvcoj487vIbRYl4gym8A7IYe6ODdgImEvx4xnCPY
 HPU+weEgygZonGAwXPwUSoWiECLWe3HbhnKqy3jw8OT6DVx/YwUoYcLT6LGfTuBY5nt2
 KW93kmWowCWIiQ6XJoHQfq4No+8z5C7k8J3NdWR7xC8rl2Y1j04CT8nBN2X4DcsRT++J
 74BmIrL5uU1ZRkQQt/c1nga8zZ2X3CyJG9mnupRvpqglpKDruONBv3kCqRMb227t+JFq Bw== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q8d8hhgk1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:21 +0000
Received: from m0353725.ppops.net (m0353725.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 33SC8jwJ029769
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:21 GMT
Received: from ppma02wdc.us.ibm.com (aa.5b.37a9.ip4.static.sl-reverse.com [169.55.91.170])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q8d8hhgjt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:21 +0000
Received: from pps.filterd (ppma02wdc.us.ibm.com [127.0.0.1])
	by ppma02wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 33S9rwXe019479;
	Fri, 28 Apr 2023 12:23:20 GMT
Received: from smtprelay05.wdc07v.mail.ibm.com ([9.208.129.117])
	by ppma02wdc.us.ibm.com (PPS) with ESMTPS id 3q4778yjnk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:20 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay05.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 33SCNIrA32899710
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 28 Apr 2023 12:23:18 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 76F905806A;
	Fri, 28 Apr 2023 12:23:18 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 32ECA58064;
	Fri, 28 Apr 2023 12:23:18 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 28 Apr 2023 12:23:18 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH 0/8] Fix IMA and EVM support
Date: Fri, 28 Apr 2023 08:23:08 -0400
Message-Id: <20230428122316.521800-1-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 2vYFyaXjU1fIkM0ZQJ-je6yfA6J9RZal
X-Proofpoint-ORIG-GUID: fIf7LcM4_bHohbUQgI9w5Pdz9Up-WJ0q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-28_04,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=933
 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1011
 priorityscore=1501 mlxscore=0 suspectscore=0 spamscore=0 impostorscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304280098
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59797

This series of patches fixes the current support for IMA and EVM
by removing outdated patches for example and adding kernel config
options. I have tried out these patches with OpenBMC where the
appraisal policy now enforces signed executables and libraries.

   Stefan

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
 .../recipes-kernel/linux/linux/ima.cfg        |  46 ++++++
 .../recipes-kernel/linux/linux/ima.scc        |   4 +
 .../recipes-kernel/linux/linux_ima.inc        |  11 +-
 ...ation-using-ioctl-when-evm_portable-.patch |  35 +++++
 ...-evm-utils_1.4.bb => ima-evm-utils_1.5.bb} |   9 +-
 .../files/ima_policy_appraise_all             |   9 +-
 meta-integrity/scripts/ima-gen-CA-signed.sh   |   9 +-
 meta-integrity/scripts/ima-gen-local-ca.sh    |   6 +-
 meta-integrity/scripts/ima-gen-self-signed.sh |  41 ------
 20 files changed, 240 insertions(+), 333 deletions(-)
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


