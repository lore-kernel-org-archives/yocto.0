Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9270C77B75
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 20:33:28 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.327.1683664403988999571
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 13:33:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@ibm.com header.s=pp1 header.b=OC00S7RP;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353727.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349KJW6t005064
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 20:33:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=ENeTDClvM0/o+VohHcMB3LEqB9uTh1++x4qam4Jcrh8=;
 b=OC00S7RPYSUUqO0m7FDtF3E9FCpjkBH3fKfz2S1CSKdPsyTuPdpIwhvaUxnGmWiNPxPs
 hsVD7MUVWeELyTEXSuBpOVha6NsdMRe0lPyCwgz/d+hr6BsD4Z62WryiY1DOCso45LfK
 UIrPZyRC+vk66pQtSENWXciuo0dNTkhxpqKk9x6/Fu/Ld0q1DardYK54sUu8BHrh/zIe
 wTVKrgBWMwT/4n3qJmltC136CG++IDFAMmRP2DX2qtGTmpNFh1MWSOiETxvwwEaDKNqE
 fz/hx1noSzCi9K5r1NmTpV9XtmadhHL7/RiuYhjXAs1UOM7aMxbN1oheCdDa4SuYtrab Bg== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfuf73kvd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 20:33:23 +0000
Received: from m0353727.ppops.net (m0353727.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349KX0Vs017173
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 20:33:22 GMT
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com [169.55.85.253])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfuf73ktv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 20:33:22 +0000
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
	by ppma01wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349KFUT7014973;
	Tue, 9 May 2023 20:33:21 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([9.208.130.100])
	by ppma01wdc.us.ibm.com (PPS) with ESMTPS id 3qf7ptnbkw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 20:33:21 +0000
Received: from smtpav01.wdc07v.mail.ibm.com (smtpav01.wdc07v.mail.ibm.com [10.39.53.228])
	by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349KXKda1114858
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 20:33:20 GMT
Received: from smtpav01.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 235A658055;
	Tue,  9 May 2023 20:33:20 +0000 (GMT)
Received: from smtpav01.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A4B8F5804B;
	Tue,  9 May 2023 20:33:19 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by smtpav01.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 20:33:19 +0000 (GMT)
Message-ID: <dc74bbd7-6a2b-989d-3212-9894648b9fe6@linux.ibm.com>
Date: Tue, 9 May 2023 16:33:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] [meta-security][PATCH 0/2] Drop a kernel patch and a
 kernel config option
Content-Language: en-US
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: yocto@lists.yoctoproject.org, akuster808@gmail.com
References: <20230509175457.1038298-1-stefanb@linux.ibm.com>
 <CANPvuRnZzw0Tdr=i6VzNW3wNAPnDwo6kPGmh52M0nOWmOO7OWw@mail.gmail.com>
 <3688fa9f-bdb2-4a99-f7d0-56683313d82c@linux.ibm.com>
 <CANPvuRk1=MGv-h-kNkiB9pG9E6XQ+3kx-ZKX6_+0LZ+stt-PAQ@mail.gmail.com>
From: Stefan Berger <stefanb@linux.ibm.com>
In-Reply-To: <CANPvuRk1=MGv-h-kNkiB9pG9E6XQ+3kx-ZKX6_+0LZ+stt-PAQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: o059Dfg56NCYJwLLPcysOwf1OItX9CuD
X-Proofpoint-ORIG-GUID: OCnDv3yzaKHdmZ15nYKAq4ofVSM6EkxP
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_13,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 suspectscore=0 mlxscore=0
 clxscore=1015 mlxlogscore=999 adultscore=0 bulkscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305090169
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-001b2d01.pphosted.com id 349KJW6t005064
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 20:33:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59955



On 5/9/23 14:43, Jose Quaresma wrote:

>=20
>     You are referring tho this here?
>=20
>     do_configure() {
>      =C2=A0 =C2=A0 =C2=A0sed -i "s|^CONFIG_SYSTEM_TRUSTED_KEYS=3D.*|CON=
FIG_SYSTEM_TRUSTED_KEYS=3D\"${IMA_EVM_ROOT_CA}\"|" .config
>     }
>=20
>     You are saying that this deactivates some other do_configure's ? If=
 this is the case, what would be the right syntax to fix it?
>=20
>=20
> Yes, this is the problem. The right fix IMHO is reverting because we ca=
n't assume that the .config=C2=A0it's always there
> on the bitbake build directory=C2=A0and this only happens when building=
=C2=A0the kernel.
>=20
> Another no less significant side effect is that this change is also app=
lied to a wide range of recipes,
> anyone starting with the name linux-*.bb.

I suppose it only included linux_ima.inc since 'integrity' was set in DIS=
TRO_FEATURES.

$ cat meta-security/meta-integrity/recipes-kernel/linux/linux-%.bbappend
require ${@bb.utils.contains_any('DISTRO_FEATURES', 'integrity ', 'linux_=
ima.inc', '', d)}


I modified the linux_ima.inc to look like this here now:


$ cat meta-security/meta-integrity/recipes-kernel/linux/linux_ima.inc
FILESEXTRAPATHS:append :=3D "${THISDIR}/linux:"

SRC_URI +=3D " \
     ${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'file://ima.scc', '',=
 d)} \
"

do_configure:append() {
     if [ "${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'yes', '', d)}"=
 =3D "yes" ]; then
         sed -i "s|^CONFIG_SYSTEM_TRUSTED_KEYS=3D.*|CONFIG_SYSTEM_TRUSTED=
_KEYS=3D\"${IMA_EVM_ROOT_CA}\"|" .config
     fi
}

KERNEL_FEATURES:append =3D " ${@bb.utils.contains('DISTRO_FEATURES', 'mod=
sign', ' features/ima/modsign.scc', '', d)}"

inherit ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', 'kernel-modsig=
n', '', d)}
-------------------------------------------------------------------------=
---------------

This now filters the inclusion of ima.scc and the configure only runs und=
er that same condition.

    Stefan

