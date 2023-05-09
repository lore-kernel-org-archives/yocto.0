Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF438C77B75
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:43:34 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web10.41229.1683657810338331267
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:43:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@ibm.com header.s=pp1 header.b=UhN5Tas5;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353724.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349IfvnP030085
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 18:43:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : from : to : cc : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=vZbp5Pm+r+T8cVIqDOerhKgIUL1skL1jQusbGe09p3g=;
 b=UhN5Tas5S1TnL5RSHlD0UkaeNGnnlhaH6NF7kfTuxHnINdv7jXXtsN1cgve1nkcQZosw
 EzcZhDluQ8ycdn+gWf+8NWLPcCs/D6oH4eIg48hLZSXbrpY2PZX0QVlGjii6l+h5D6J8
 2Pc87bCmD0Jon9bcPnjUSXKWpRTw2QjTs5U0WM6wnFgBeMYDLognxe529niHoZb2qXmL
 ABg54pv11K6HdQpitp2YqOnuvIcxDXbl0yr6Yv1Tdfm3nIKUwOmsB39rGREOy63ojc9w
 /QHTh5KWfmjs+1DrD+lf1uAcSRQpIacTB0T2gnUhUpCex4I0xmNiKNYagWrEe0nlOgHd yQ== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfup701ax-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:43:29 +0000
Received: from m0353724.ppops.net (m0353724.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349Ig8nO030404
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 18:43:29 GMT
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com [169.53.41.122])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfup701am-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 18:43:29 +0000
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
	by ppma04dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349Fspus032212;
	Tue, 9 May 2023 18:43:28 GMT
Received: from smtprelay04.dal12v.mail.ibm.com ([9.208.130.102])
	by ppma04dal.us.ibm.com (PPS) with ESMTPS id 3qf7s6p2y7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 18:43:28 +0000
Received: from smtpav05.dal12v.mail.ibm.com (smtpav05.dal12v.mail.ibm.com [10.241.53.104])
	by smtprelay04.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349IhRiQ38666732
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 18:43:27 GMT
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3E35958068;
	Tue,  9 May 2023 18:43:27 +0000 (GMT)
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id F3FCA58056;
	Tue,  9 May 2023 18:43:26 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by smtpav05.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 18:43:26 +0000 (GMT)
Message-ID: <1e9a97ce-ad24-0225-1026-a615b4b76421@linux.ibm.com>
Date: Tue, 9 May 2023 14:43:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] [meta-security][PATCH 0/2] Drop a kernel patch and a
 kernel config option
Content-Language: en-US
From: Stefan Berger <stefanb@linux.ibm.com>
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: yocto@lists.yoctoproject.org, akuster808@gmail.com
References: <20230509175457.1038298-1-stefanb@linux.ibm.com>
 <CANPvuRnZzw0Tdr=i6VzNW3wNAPnDwo6kPGmh52M0nOWmOO7OWw@mail.gmail.com>
 <3688fa9f-bdb2-4a99-f7d0-56683313d82c@linux.ibm.com>
In-Reply-To: <3688fa9f-bdb2-4a99-f7d0-56683313d82c@linux.ibm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: HBucCimtwei2obOxHIF4phuDvy_p9KqM
X-Proofpoint-GUID: _pPsEn2nNNUYIM7L9PJYpY1_iWuLyZ3x
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_11,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 impostorscore=0 bulkscore=0 mlxscore=0
 adultscore=0 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305090150
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-001b2d01.pphosted.com id 349IfvnP030085
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:43:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59944



On 5/9/23 14:19, Stefan Berger wrote:
>=20
>=20
> On 5/9/23 14:11, Jose Quaresma wrote:

>> CONFIG_SYSTEM_TRUSTED_KEYS=3D
>> Unfortunately=C2=A0this is not enough=C2=A0because in the full patchse=
t you are overriding the do_configure task
>> on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is =
included in every recipe that follies=C2=A0the
>> pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
>=20
> You are referring tho this here?
>=20
> do_configure() {
>  =C2=A0=C2=A0=C2=A0 sed -i "s|^CONFIG_SYSTEM_TRUSTED_KEYS=3D.*|CONFIG_S=
YSTEM_TRUSTED_KEYS=3D\"${IMA_EVM_ROOT_CA}\"|" .config
> }
>=20
> You are saying that this deactivates some other do_configure's ? If thi=
s is the case, what would be the right syntax to fix it?
>=20

Jose, is the correct syntax to use do_configure:append () ? Can you try w=
ith this syntax?

    Stefan

>=20
> It's a no-op on a .config that does not contain the CONFIG_SYSTEM_TRUST=
ED_KEYS=3D option already.=3D
>=20
>  =C2=A0=C2=A0 Stefan
>=20
>>
>> This breaks=C2=A0many recipes like=C2=A0linux-firmware and maybe other=
s.
>> The root cause of the issue is now on=C2=A0f4f7624d2e but because this=
 patch is too evasive, maybe everything has to be reversed.
>> I am now building with the full patchset=C2=A0revert and so far the bu=
ild is looking good.
>=20
>=20
>>
>> Jose
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A03 files changed, 44 deletions(-)
>> =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0delete mode 100644 meta-integrity/recip=
es-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
>>
>> =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 2.34.1
>>
>>
>>
>> --=20
>> Best regards,
>>
>> Jos=C3=A9 Quaresma
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#59940): https://lists.yoctoproject.org/g/yocto/mes=
sage/59940
>> Mute This Topic: https://lists.yoctoproject.org/mt/98789504/1792208
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [stefanb@lin=
ux.ibm.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

