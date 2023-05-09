Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B956C7EE22
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:19:44 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.40650.1683656382390587238
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:19:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@ibm.com header.s=pp1 header.b=pylgxHQi;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353728.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349I8mOM011499
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 18:19:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=B/1VkSHyHsl52O8iYEhwvR8fen6ZX1WHsDfz/dLu3/E=;
 b=pylgxHQizIn0wpjJyVf1GupQY65v746S+v0EBgUA/Ly/9tvGqHVR8ijmt/9t2yU+HZ/L
 Y1c3Lswty6TrHzMSF8nYBSaw/Nt7aBXuDDCbS87/NjwwunP7ZcbrG9wIYUAHW9U2DHAG
 mpHcf6xuI1uPCoc+1yq6AwsiX28RuXqu+v24q4K9PRfxVHfO5fd4qo+ZAOH/biK08/Y5
 ssSrSQTVppEX65BRBbcN2xgDUSKQyopHbtOyfdvcCExuKWCIyRMDqU7P2pGlAhRUQhL4
 i/AGHKPPKwr4hdHNjfjV9c9INwUOP69y6wa9mVBvG5XkwJmwdf6djomJCCqDp+VyfmnH hw== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qftt812w1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:19:40 +0000
Received: from m0353728.ppops.net (m0353728.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349I9jFi016229
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 18:19:40 GMT
Received: from ppma01dal.us.ibm.com (83.d6.3fa9.ip4.static.sl-reverse.com [169.63.214.131])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qftt812vs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 18:19:40 +0000
Received: from pps.filterd (ppma01dal.us.ibm.com [127.0.0.1])
	by ppma01dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349FvXrO020736;
	Tue, 9 May 2023 18:19:39 GMT
Received: from smtprelay07.dal12v.mail.ibm.com ([9.208.130.99])
	by ppma01dal.us.ibm.com (PPS) with ESMTPS id 3qf7njnyhh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 18:19:39 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay07.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349IJcjX37945800
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 18:19:38 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5670258056;
	Tue,  9 May 2023 18:19:38 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E4C525803F;
	Tue,  9 May 2023 18:19:37 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 18:19:37 +0000 (GMT)
Message-ID: <3688fa9f-bdb2-4a99-f7d0-56683313d82c@linux.ibm.com>
Date: Tue, 9 May 2023 14:19:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] [meta-security][PATCH 0/2] Drop a kernel patch and a
 kernel config option
Content-Language: en-US
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: yocto@lists.yoctoproject.org, akuster808@gmail.com
References: <20230509175457.1038298-1-stefanb@linux.ibm.com>
 <CANPvuRnZzw0Tdr=i6VzNW3wNAPnDwo6kPGmh52M0nOWmOO7OWw@mail.gmail.com>
From: Stefan Berger <stefanb@linux.ibm.com>
In-Reply-To: <CANPvuRnZzw0Tdr=i6VzNW3wNAPnDwo6kPGmh52M0nOWmOO7OWw@mail.gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: bAoEyxYNg--nibGjhHRPxl-XGUe523dR
X-Proofpoint-GUID: 4vzUXaJQd2hrqvTEy8yIsLGOWWANnJrr
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_11,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 bulkscore=0 mlxscore=0 impostorscore=0 clxscore=1015 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305090150
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-001b2d01.pphosted.com id 349I8mOM011499
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:19:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59942



On 5/9/23 14:11, Jose Quaresma wrote:
> Hi Stefan, Stefan Berger <stefanb@=E2=80=8Alinux.=E2=80=8Aibm.=E2=80=8A=
com> escreveu no dia ter=C3=A7a, 9/05/2023 =C3=A0(s) 18:=E2=80=8A55: This=
 PR removes a kernel patch related to overlayfs and IMA appraisal file ch=
ange notifictions and a squashfs xattr kernel config option.
> ZjQcmQRYFpfptBannerStart
> This Message Is From an External Sender
> This message came from outside your organization.
> ZjQcmQRYFpfptBannerEnd
> Hi Stefan,
>=20
> Stefan Berger <stefanb@linux.ibm.com <mailto:stefanb@linux.ibm.com>> es=
creveu no dia ter=C3=A7a, 9/05/2023 =C3=A0(s) 18:55:
>=20
>     This PR removes a kernel patch related to overlayfs and IMA apprais=
al file change
>     notifictions and a squashfs xattr kernel config option.
>=20
>      =C2=A0 =C2=A0Stefan
>=20
>     Stefan Berger (2):
>      =C2=A0 linux: overlayfs: Drop kernel patch resolving a file change
>      =C2=A0 =C2=A0 notification issue
>      =C2=A0 ima: Drop kernel config option CONFIG_SQUASHFS_XATTR=3Dy fr=
om ima.cfg
>=20
>      =C2=A0...Increment-iversion-upon-file-changes.patch | 42 ---------=
----------
>      =C2=A0.../recipes-kernel/linux/linux/ima.cfg=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 1 -
>      =C2=A0.../recipes-kernel/linux/linux_ima.inc=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 1 -
>=20
> CONFIG_SYSTEM_TRUSTED_KEYS=3D
> Unfortunately=C2=A0this is not enough=C2=A0because in the full patchset=
 you are overriding the do_configure task
> on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is i=
ncluded in every recipe that follies=C2=A0the
> pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).

You are referring tho this here?

do_configure() {
     sed -i "s|^CONFIG_SYSTEM_TRUSTED_KEYS=3D.*|CONFIG_SYSTEM_TRUSTED_KEY=
S=3D\"${IMA_EVM_ROOT_CA}\"|" .config
}

You are saying that this deactivates some other do_configure's ? If this =
is the case, what would be the right syntax to fix it?


It's a no-op on a .config that does not contain the CONFIG_SYSTEM_TRUSTED=
_KEYS=3D option already.=3D

    Stefan

>=20
> This breaks=C2=A0many recipes like=C2=A0linux-firmware and maybe others.
> The root cause of the issue is now on=C2=A0f4f7624d2e but because this =
patch is too evasive, maybe everything has to be reversed.
> I am now building with the full patchset=C2=A0revert and so far the bui=
ld is looking good.


>=20
> Jose
>=20
>      =C2=A03 files changed, 44 deletions(-)
>      =C2=A0delete mode 100644 meta-integrity/recipes-kernel/linux/linux=
/0001-ovl-Increment-iversion-upon-file-changes.patch
>=20
>     --=20
>     2.34.1
>=20
>=20
>=20
> --=20
> Best regards,
>=20
> Jos=C3=A9 Quaresma
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59940): https://lists.yoctoproject.org/g/yocto/mess=
age/59940
> Mute This Topic: https://lists.yoctoproject.org/mt/98789504/1792208
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [stefanb@linu=
x.ibm.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

