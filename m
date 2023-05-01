Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B543C77B73
	for <webhook@archiver.kernel.org>; Mon,  1 May 2023 00:38:25 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.83265.1682901504540350480
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 Apr 2023 17:38:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@ibm.com header.s=pp1 header.b=hWkPvjuD;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353727.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3410YZYQ025941
	for <yocto@lists.yoctoproject.org>; Mon, 1 May 2023 00:38:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=i+kPVG6DzvFFIzM5P1FHA0byxo1Mh+lAONlfxaJ+BMo=;
 b=hWkPvjuD6u7zlFZkQw5Worf/q8krSrl4MQ/MN22neU5xpds1wHUH+Ueucxtx1683eCwQ
 Z/Q3hW7OckVp+YaPkU+7Yn73J0CDkUdPwLUJ5VDcyu/7FVlkJ6AtrTcYjvvQz3rKHc6K
 mbBfxgeDwPPqEwLxAl3mSpeGIHKMJKPYLzvK/RjTqdT4DtE8MWwziDETH4Xppb/C/cze
 gyDrK4MHuNgC281ZjweG8VMVqM+uqeYvvK6pWRMHZmlsiNE58ZV0JPPQKwZ3ig6mytMp
 KrEuNwC3Tg0YJ/PtwUo0uTwgtX4rWVrj6zDpFDWCgy7HsyjvTd5nqrY+KU+amyNDQ2Tf VA== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q9r8v3fre-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 01 May 2023 00:38:23 +0000
Received: from m0353727.ppops.net (m0353727.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3410ar6a001502
	for <yocto@lists.yoctoproject.org>; Mon, 1 May 2023 00:38:23 GMT
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com [169.53.41.122])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q9r8v3fr7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 01 May 2023 00:38:23 +0000
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
	by ppma04dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 33UMvRDW008047;
	Mon, 1 May 2023 00:33:22 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([9.208.130.100])
	by ppma04dal.us.ibm.com (PPS) with ESMTPS id 3q8tv7t25x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 01 May 2023 00:33:22 +0000
Received: from smtpav05.dal12v.mail.ibm.com (smtpav05.dal12v.mail.ibm.com [10.241.53.104])
	by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 3410XLoq14615290
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 1 May 2023 00:33:21 GMT
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5FE5C5805D;
	Mon,  1 May 2023 00:33:21 +0000 (GMT)
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 2ED0058056;
	Mon,  1 May 2023 00:33:21 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by smtpav05.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Mon,  1 May 2023 00:33:21 +0000 (GMT)
Message-ID: <695c5d85-3948-43d6-7a87-8b56404edb4b@linux.ibm.com>
Date: Sun, 30 Apr 2023 20:33:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] [meta-security][PATCH 0/8] Fix IMA and EVM support
Content-Language: en-US
To: Armin Kuster <akuster808@gmail.com>, yocto@lists.yoctoproject.org
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
 <f206bfe3-8cf0-d08f-8c24-77e0689baac1@gmail.com>
From: Stefan Berger <stefanb@linux.ibm.com>
In-Reply-To: <f206bfe3-8cf0-d08f-8c24-77e0689baac1@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: -wNnBaSq0xWu42bA_19ukjmTvwRcTLyk
X-Proofpoint-ORIG-GUID: 0PaPFMsbTiOYjAOiPlZ7mw44lPdCKXc3
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-30_09,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 adultscore=0
 lowpriorityscore=0 clxscore=1015 mlxscore=0 malwarescore=0 mlxlogscore=999
 spamscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305010002
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-001b2d01.pphosted.com id 3410YZYQ025941
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 May 2023 00:38:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59826



On 4/30/23 10:16, Armin Kuster wrote:
>=20
> Stefan,
>=20
> On 4/28/23 8:23 AM, Stefan Berger wrote:
>> This series of patches fixes the current support for IMA and EVM
>> by removing outdated patches for example and adding kernel config
>> options. I have tried out these patches with OpenBMC where the
>> appraisal policy now enforces signed executables and libraries.
>>
>> =C2=A0=C2=A0=C2=A0 Stefan
>=20
> Thanks for the patches. Its nice to have a Content expert contribute.
>=20
> There is a test suite I am using to double check things and its not pas=
sing. I think it needs to be adapted to some of these changes.
>=20
> see: meta-integrity/lib/oeqa/runtime/cases/ima.py

How does one run the test suite? I have so far only used the changes with=
 a build of OpenBMC.
I had seen the tests, though, and saw they assumed IMA was going to start=
 before systemd.
In the OpenBMC log I see this here:

[    0.984195] ima: No TPM chip found, activating TPM-bypass!
[    0.985167] ima: Allocated hash algorithm: sha256
[    0.991810] ima: No architecture policies found

These are easy...

This one is due to me adding IMA policy load support into an init script:

Activated EVM: 2 [ activated with 0x80000002 ]
[    2.248222] ima: policy update completed

My patches for OpenBMC are here:

https://gerrit.openbmc.org/c/openbmc/openbmc/+/62933

This one has the init script changes: https://gerrit.openbmc.org/c/openbm=
c/openbmc/+/62929/1

>=20
>=20
> This is adding a delay on merging until I get the test sorted out on my=
 end.
>=20
> I do have a question regarding the Kernel config changes. Do we really =
need "CONFIG_SQUASHFS_XATTR=3Dy" ?

I added this because of OpenBMC using squashfs and we need the xattr supp=
ort for security.ima and .evm.



Regards,
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
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59823): https://lists.yoctoproject.org/g/yocto/mess=
age/59823
> Mute This Topic: https://lists.yoctoproject.org/mt/98557294/1792208
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [stefanb@linu=
x.ibm.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

