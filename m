Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8952FC7EE22
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 12:58:59 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.15941.1683723536492165576
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 05:58:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@ibm.com header.s=pp1 header.b=FjcA0zJB;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34ACWrpB008930;
	Wed, 10 May 2023 12:58:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=yWypXWF8evY5s8PWK43NfVMjDVLJSRLSgbKv6pz4wAo=;
 b=FjcA0zJBYtnywiW5DeDkjKofCx83QjDRrFuRhg/IdM0cDrCnyiSKfge+sOx8G9q5GH+A
 IEA06gF/kMhQpBKRpg/RVVtOzljmWQS78MOkpRVeZluWq4jTwEfm38CkfMl3mqUvss5B
 E9GiOS45kii5lwSLzDJ79Mwu8lVrloe41NiLVv5OGKGKea6GP2HeABuSwOgcTwnuSHP7
 Bn9HVECXe4n3r2rTjUb760OcnfxjilFEmlyZCBA35gTDNm8UdhCdYeXpq8zNyxZ6K8Pi
 yTFFurXFJlMjm050BCmZhr+FahcpdZLKBY4MFkZaxD0LOSNtTqb/El1KeNGHrf/2491T ng== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgaa2b1m2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 12:58:53 +0000
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 34AChQPr011565;
	Wed, 10 May 2023 12:58:53 GMT
Received: from ppma01dal.us.ibm.com (83.d6.3fa9.ip4.static.sl-reverse.com [169.63.214.131])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgaa2b1kk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 12:58:53 +0000
Received: from pps.filterd (ppma01dal.us.ibm.com [127.0.0.1])
	by ppma01dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 34AAMnhb019493;
	Wed, 10 May 2023 12:23:20 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([9.208.129.120])
	by ppma01dal.us.ibm.com (PPS) with ESMTPS id 3qf7nju2jy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 12:23:20 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com [10.39.53.229])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 34ACNJuG65405240
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 12:23:19 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 494295805C;
	Wed, 10 May 2023 12:23:19 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CE9D158058;
	Wed, 10 May 2023 12:23:18 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Wed, 10 May 2023 12:23:18 +0000 (GMT)
Message-ID: <3bf73334-5196-85e7-2a79-a47a7ae6da4d@linux.ibm.com>
Date: Wed, 10 May 2023 08:23:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] [meta-security][PATCH 1/8] Revert "ima-evm-utils: Update
 ima-evm-utils to v1.5 and add a patch"
Content-Language: en-US
To: Armin Kuster <akuster808@gmail.com>,
        Jose Quaresma <quaresma.jose@gmail.com>, yocto@lists.yoctoproject.org
Cc: Jose Quaresma <jose.quaresma@foundries.io>
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
 <c636e528-ca65-dae0-e772-2c43afd16ff3@gmail.com>
From: Stefan Berger <stefanb@linux.ibm.com>
In-Reply-To: <c636e528-ca65-dae0-e772-2c43afd16ff3@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: t7RFNPWtHRIsVyieCBWfB07t1DFSJJi9
X-Proofpoint-ORIG-GUID: gjMvAidtcGdNQzBospTDseTdLqk1czFP
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 spamscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 clxscore=1011 suspectscore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100099
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-001b2d01.pphosted.com id 34ACWrpB008930
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 12:58:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59960



On 5/10/23 07:44, Armin Kuster wrote:
>=20
>=20
> On 5/9/23 2:56 PM, Jose Quaresma wrote:
>> This reverts commit 9de807705b27b05bbf84e9f16502fe6cdaa8928f.
>>
>> The full patchset are overriding the do_configure task and also added =
a kernel patch
>> on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is =
included
>> in every recipe that follows the pattern pattern starting by linux- (r=
ecipes-kernel/linux/linux-%.bbappend).
>> So the patch fails in some recipes and also do_configure task doesn't =
make sense.
>> This breaks many recipes like linux-firmware and maybe others.
>=20
> I fail to see how=C2=A0 this package update is part of the issue above.=
 I am still trying to sort out the store here to figure out how we move f=
orward.

My suggestion would be that I post a v2 of my fix patches containing:

1) removal of the Linux kernel patch
2) removal of the squashfs option (less important)
3) the suggestion outlined here: https://lists.yoctoproject.org/g/yocto/m=
essage/59955
    but modified to look like this with '&& [ -f .config ]' appended:

  do_configure:append() {
      if [ "${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'yes', '', d)}=
" =3D "yes" ] && [ -f .config ] ; then
          sed -i "s|^CONFIG_SYSTEM_TRUSTED_KEYS=3D.*|CONFIG_SYSTEM_TRUSTE=
D_KEYS=3D\"${IMA_EVM_ROOT_CA}\"|" .config
      fi
  }

I don't want to hold things up but maybe it's worth discussing the sugges=
ted changes.

 From what I can see 'bitbake linux-firmware' builds under OpenBMC now wi=
th these suggested changes
and it did NOT build before. My suggestion would be to discuss the propos=
al under that thread there.
The problems seem to be that the file meta-security/meta-integrity/recipe=
s-kernel/linux/linux-%.bbappend
matches the pattern linux-firmware as well and therefore its contents get=
 included when building
linux-firmware. When building linux-firmware while having also DISTRO_FEA=
TURES ima set in local.conf then the
ima.scc is added to SRC_URI and the do_configure is also appended. The la=
tter will not have side-effects but
I don't know about the former nor how to create a better filter (other th=
an DISTRO_FEATURES) for not having
these included for linux-firmware.

   Stefan

>=20
> - armin
>>
>> Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
>> ---
>> =C2=A0 ...ation-using-ioctl-when-evm_portable-.patch | 35 ------------=
-------
>> =C2=A0 ...-evm-utils_1.5.bb =3D> ima-evm-utils_1.4.bb} |=C2=A0 9 ++---
>> =C2=A0 2 files changed, 2 insertions(+), 42 deletions(-)
>> =C2=A0 delete mode 100644 meta-integrity/recipes-security/ima-evm-util=
s/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-=
.patch
>> =C2=A0 rename meta-integrity/recipes-security/ima-evm-utils/{ima-evm-u=
tils_1.5.bb =3D> ima-evm-utils_1.4.bb} (71%)
>>
>> diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-uti=
ls/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch b/meta=
-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-g=
eneration-using-ioctl-when-evm_portable-.patch
>> deleted file mode 100644
>> index 3624576..0000000
>> --- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001=
-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
>> +++ /dev/null
>> @@ -1,35 +0,0 @@
>> -From 00ace817c5134d9844db387cadb9517ebad43808 Mon Sep 17 00:00:00 200=
1
>> -From: Stefan Berger <stefanb@linux.ibm.com>
>> -Date: Tue, 18 Apr 2023 11:43:55 -0400
>> -Subject: [PATCH] Do not get generation using ioctl when evm_portable =
is true
>> -
>> -If a signatures is detected as being portable do not attempt to read =
the
>> -generation with the ioctl since in some cases this may not be support=
ed
>> -by the filesystem and is also not needed for computing a portable
>> -signature.
>> -
>> -This avoids the current work-around of passing --generation 0 when th=
e
>> -ioctl is not supported by the filesystem.
>> -
>> -Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
>> ----
>> - src/evmctl.c | 2 +-
>> - 1 file changed, 1 insertion(+), 1 deletion(-)
>> -
>> -diff --git a/src/evmctl.c b/src/evmctl.c
>> -index 6d2bb67..c35a28c 100644
>> ---- a/src/evmctl.c
>> -+++ b/src/evmctl.c
>> -@@ -376,7 +376,7 @@ static int calc_evm_hash(const char *file, unsign=
ed char *hash)
>> -=C2=A0=C2=A0=C2=A0=C2=A0 if (mode_str)
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 st.st_mode =3D strto=
ul(mode_str, NULL, 10);
>> -
>> --=C2=A0=C2=A0=C2=A0 if (!evm_immutable) {
>> -+=C2=A0=C2=A0=C2=A0 if (!evm_immutable && !evm_portable) {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (S_ISREG(st.st_mo=
de) && !generation_str) {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 int fd =3D open(file, 0);
>> -
>> ----
>> -2.39.2
>> -
>> -
>> diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-uti=
ls_1.5.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1=
.4.bb
>> similarity index 71%
>> rename from meta-integrity/recipes-security/ima-evm-utils/ima-evm-util=
s_1.5.bb
>> rename to meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_=
1.4.bb
>> index 8ac080c..873aeeb 100644
>> --- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.=
bb
>> +++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.=
bb
>> @@ -6,13 +6,8 @@ DEPENDS +=3D "openssl attr keyutils"
>> =C2=A0 DEPENDS:class-native +=3D "openssl-native keyutils-native"
>> -FILESEXTRAPATHS:append :=3D "${THISDIR}/${PN}:"
>> -
>> -SRC_URI =3D " \
>> -=C2=A0=C2=A0=C2=A0 https://github.com/mimizohar/ima-evm-utils/release=
s/download/v${PV}/${BP}.tar.gz \
>> -=C2=A0=C2=A0=C2=A0 file://0001-Do-not-get-generation-using-ioctl-when=
-evm_portable-.patch \
>> -"
>> -SRC_URI[sha256sum] =3D "45f1caa3ad59ec59a1d6a74ea5df38c413488cd952ab6=
2d98cf893c15e6f246d"
>> +SRC_URI =3D "https://sourceforge.net/projects/linux-ima/files/${BPN}/=
${BP}.tar.gz"
>> +SRC_URI[sha256sum] =3D "fcf85b31d6292051b3679e5f17ffa7f89b6898957aad0=
f59aa4e9878884b27d1"
>> =C2=A0 inherit pkgconfig autotools features_check
>>
>>
>>
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59959): https://lists.yoctoproject.org/g/yocto/mess=
age/59959
> Mute This Topic: https://lists.yoctoproject.org/mt/98790790/1792208
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [stefanb@linu=
x.ibm.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

