Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22DC8C7EE22
	for <webhook@archiver.kernel.org>; Mon,  8 May 2023 16:21:30 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web11.112214.1683562886093580788
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 May 2023 09:21:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@ibm.com header.s=pp1 header.b=IfcOfxX3;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 348GAvKS010500
	for <yocto@lists.yoctoproject.org>; Mon, 8 May 2023 16:21:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 mime-version : subject : to : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=b7fOjv45MgxN4RZpDeVJXHs7NV8PQOVjPeJbnvQYJ+Q=;
 b=IfcOfxX3xXnFMUZDTMLPmaR6aklzLHubzrb/VcSwUsHev3jGX+MYGlzJbWygZMOfiiXJ
 7F92zhZqMdgZdEgZEFc16RdCNreZ7ftx7gzz5g9DDuFcnaWw/sFQWPyoeSZsZY7XglzS
 MW9TtFYrD6QAjO8NxiVdyDWe9G1lSFKuVNFwa+fLOXhtt97ixH9ZUMpCCfXB8iV+onra
 GVOfKCKa2UaSmKb8dvFmh87D9KnhT8ILi3ezZxJFb1YELJ8sdjPTU+h7HO96jxYnH0st
 FaHlKGZcoG/wgqm1p7ov/iOum1C4QEg3sfc2S/PaaRDpTfnP7DdJxbiytSDVYdnOReVk ag== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qf3gw1rfc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 08 May 2023 16:21:25 +0000
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 348GB8QP011442
	for <yocto@lists.yoctoproject.org>; Mon, 8 May 2023 16:21:25 GMT
Received: from ppma05wdc.us.ibm.com (1b.90.2fa9.ip4.static.sl-reverse.com [169.47.144.27])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qf3gw1rcr-5
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 May 2023 16:21:25 +0000
Received: from pps.filterd (ppma05wdc.us.ibm.com [127.0.0.1])
	by ppma05wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 348DHxmZ012026;
	Mon, 8 May 2023 16:13:01 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([9.208.129.120])
	by ppma05wdc.us.ibm.com (PPS) with ESMTPS id 3qdeh737vp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 May 2023 16:13:01 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com [10.39.53.229])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 348GD0ld66126156
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 8 May 2023 16:13:00 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C8ABF58058;
	Mon,  8 May 2023 16:13:00 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6F71758059;
	Mon,  8 May 2023 16:13:00 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Mon,  8 May 2023 16:13:00 +0000 (GMT)
Message-ID: <9387c772-541e-6a27-90c5-951d78173b2b@linux.ibm.com>
Date: Mon, 8 May 2023 12:12:59 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [meta-security][PATCH 0/8] Fix IMA and EVM support
Content-Language: en-US
To: akuster808 <akuster808@gmail.com>, yocto@lists.yoctoproject.org
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
 <f206bfe3-8cf0-d08f-8c24-77e0689baac1@gmail.com>
From: Stefan Berger <stefanb@linux.ibm.com>
In-Reply-To: <f206bfe3-8cf0-d08f-8c24-77e0689baac1@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: zgHPiAOcAzf7a-n2EWuN8HE_wDox5fOv
X-Proofpoint-GUID: WRYfl910O2Dp1uBPbzAFhHhkRKGwCPxz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-08_12,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=999
 suspectscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0
 mlxscore=0 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2305080107
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-001b2d01.pphosted.com id 348GAvKS010500
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 May 2023 16:21:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59907



On 4/30/23 10:16, akuster808 wrote:

>=20
> This is adding a delay on merging until I get the test sorted out on my=
 end.
>=20
> I do have a question regarding the Kernel config changes. Do we really =
need "CONFIG_SQUASHFS_XATTR=3Dy" ?

I will remove this and make this an OpenBMC-specific option.

    Stefan


>=20
> BR,
> Armin
>=20
>=20
>>
>> Stefan Berger (8):
>> =C2=A0=C2=A0 ima: Document and replace keys and adapt scripts for EC k=
eys
>> =C2=A0=C2=A0 ima: Fix the ima_policy_appraise_all to appraise executab=
les &
>> =C2=A0=C2=A0=C2=A0=C2=A0 libraries
>> =C2=A0=C2=A0 ima: Fix the IMA kernel feature
>> =C2=A0=C2=A0 ima: Rename IMA_EVM_POLICY_SYSTEMD to IMA_EVM_POLICY
>> =C2=A0=C2=A0 ima: Sign all executables and the ima-policy in the root =
filesystem
>> =C2=A0=C2=A0 integrity: Update the README for IMA support
>> =C2=A0=C2=A0 linux: overlayfs: Add kernel patch resolving a file chang=
e
>> =C2=A0=C2=A0=C2=A0=C2=A0 notification issue
>> =C2=A0=C2=A0 ima-evm-utils: Update ima-evm-utils to v1.5 and add a pat=
ch
>>
>> =C2=A0 meta-integrity/README.md=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0 22 +--
>> =C2=A0 meta-integrity/classes/ima-evm-rootfs.bbclass |=C2=A0 34 ++++-
>> =C2=A0 meta-integrity/data/debug-keys/README.md=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0 17 +++
>> =C2=A0 .../data/debug-keys/ima-local-ca.pem=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 15 ++
>> =C2=A0 .../data/debug-keys/ima-local-ca.priv=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 7 +
>> =C2=A0 .../data/debug-keys/privkey_ima.pem=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 17 +--
>> =C2=A0 meta-integrity/data/debug-keys/x509_ima.der=C2=A0=C2=A0 | Bin 7=
07 -> 620 bytes
>> =C2=A0 .../0001-ima-fix-ima_inode_post_setattr.patch |=C2=A0 51 ------=
-
>> =C2=A0 ...Increment-iversion-upon-file-changes.patch |=C2=A0 42 ++++++
>> =C2=A0 ...for-creating-files-using-the-mknodat.patch | 138 -----------=
-------
>> =C2=A0 ...-file-hash-setting-by-user-to-fix-an.patch |=C2=A0 60 ------=
--
>> =C2=A0 .../recipes-kernel/linux/linux/ima.cfg=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 |=C2=A0 46 ++++++
>> =C2=A0 .../recipes-kernel/linux/linux/ima.scc=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 4 +
>> =C2=A0 .../recipes-kernel/linux/linux_ima.inc=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 |=C2=A0 11 +-
>> =C2=A0 ...ation-using-ioctl-when-evm_portable-.patch |=C2=A0 35 +++++
>> =C2=A0 ...-evm-utils_1.4.bb =3D> ima-evm-utils_1.5.bb} |=C2=A0=C2=A0 9=
 +-
>> =C2=A0 .../files/ima_policy_appraise_all=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 9 +-
>> =C2=A0 meta-integrity/scripts/ima-gen-CA-signed.sh=C2=A0=C2=A0 |=C2=A0=
=C2=A0 9 +-
>> =C2=A0 meta-integrity/scripts/ima-gen-local-ca.sh=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0 6 +-
>> =C2=A0 meta-integrity/scripts/ima-gen-self-signed.sh |=C2=A0 41 ------
>> =C2=A0 20 files changed, 240 insertions(+), 333 deletions(-)
>> =C2=A0 create mode 100644 meta-integrity/data/debug-keys/README.md
>> =C2=A0 create mode 100644 meta-integrity/data/debug-keys/ima-local-ca.=
pem
>> =C2=A0 create mode 100644 meta-integrity/data/debug-keys/ima-local-ca.=
priv
>> =C2=A0 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/00=
01-ima-fix-ima_inode_post_setattr.patch
>> =C2=A0 create mode 100644 meta-integrity/recipes-kernel/linux/linux/00=
01-ovl-Increment-iversion-upon-file-changes.patch
>> =C2=A0 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/00=
02-ima-add-support-for-creating-files-using-the-mknodat.patch
>> =C2=A0 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/Re=
vert-ima-limit-file-hash-setting-by-user-to-fix-an.patch
>> =C2=A0 create mode 100644 meta-integrity/recipes-kernel/linux/linux/im=
a.cfg
>> =C2=A0 create mode 100644 meta-integrity/recipes-kernel/linux/linux/im=
a.scc
>> =C2=A0 create mode 100644 meta-integrity/recipes-security/ima-evm-util=
s/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-=
.patch
>> =C2=A0 rename meta-integrity/recipes-security/ima-evm-utils/{ima-evm-u=
tils_1.4.bb =3D> ima-evm-utils_1.5.bb} (71%)
>> =C2=A0 delete mode 100755 meta-integrity/scripts/ima-gen-self-signed.s=
h
>>
>=20

