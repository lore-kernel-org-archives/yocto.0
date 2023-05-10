Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA6E3C77B7D
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 14:20:29 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.18741.1683728429359137592
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 07:20:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@ibm.com header.s=pp1 header.b=nWyzLNRy;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353726.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34AEHaXI012169;
	Wed, 10 May 2023 14:20:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=+l6ps3ftPxDRuQ9KU3jMsrOFupEl2wPwDo6YmW4tmA8=;
 b=nWyzLNRyCQZ1WVFyz+rQVPoxRDbr56LTSc5bMlKk8/+q1fyNN3vbth6dKVQA0fGOJ3hM
 ItiXxuv97cw0zuCBuBVY82RzRCrs0X/qN1qr3s9DIr/mGZBFM+2sKKp8hYsz6U6+AYqM
 eIcjCxMoXlkdf0OmnukEPGVidAmGunoTMWSa6ROult2VJ7puvpBHoauh3x9zSLDiQXib
 tqZNum1fgW8PrvpV9VSo9KJHesWqPFprZ5e59NNCgmHO97aGNqKHO6NopFrFEuPJyJLg
 pTh3YEBdQvbPlnxngW/1xIIvgou2R31ylxGEdm11Xd47Nx+mGP4k3RBKzbOS/0pC/huK ig== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgc2ysn5b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:20:26 +0000
Received: from m0353726.ppops.net (m0353726.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 34AE9mAK006541;
	Wed, 10 May 2023 14:20:25 GMT
Received: from ppma02wdc.us.ibm.com (aa.5b.37a9.ip4.static.sl-reverse.com [169.55.91.170])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qgc2ysn4k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:20:25 +0000
Received: from pps.filterd (ppma02wdc.us.ibm.com [127.0.0.1])
	by ppma02wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 34ABeH2S014614;
	Wed, 10 May 2023 14:20:24 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([9.208.130.100])
	by ppma02wdc.us.ibm.com (PPS) with ESMTPS id 3qf7ey9cc0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 14:20:24 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 34AEKNNk5767796
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 14:20:23 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C06F158058;
	Wed, 10 May 2023 14:20:23 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6D77558057;
	Wed, 10 May 2023 14:20:23 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Wed, 10 May 2023 14:20:23 +0000 (GMT)
Message-ID: <b978da27-925a-3c09-2b26-53eda9cadb77@linux.ibm.com>
Date: Wed, 10 May 2023 10:20:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] [meta-security][PATCH 1/8] Revert "ima-evm-utils: Update
 ima-evm-utils to v1.5 and add a patch"
Content-Language: en-US
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: Armin Kuster <akuster808@gmail.com>,
        Jose Quaresma <quaresma.jose@gmail.com>, yocto@lists.yoctoproject.org,
        Jose Quaresma <jose.quaresma@foundries.io>
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
 <c636e528-ca65-dae0-e772-2c43afd16ff3@gmail.com>
 <3bf73334-5196-85e7-2a79-a47a7ae6da4d@linux.ibm.com>
 <ZFuY1UtAFKNI4Oyt@nuoska>
From: Stefan Berger <stefanb@linux.ibm.com>
In-Reply-To: <ZFuY1UtAFKNI4Oyt@nuoska>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: EoEADzEqCBdtJdTXMznZw5eFoUyBqSjj
X-Proofpoint-GUID: ssAjariokCjKrf015OIGaaswkcjR2mSQ
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 adultscore=0 mlxlogscore=999 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 mlxscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100113
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-001b2d01.pphosted.com id 34AEHaXI012169
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 14:20:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59962



On 5/10/23 09:15, Mikko Rapeli wrote:
> Hi,
>=20
> On Wed, May 10, 2023 at 08:23:18AM -0400, Stefan Berger wrote:
>>
>>
>> On 5/10/23 07:44, Armin Kuster wrote:
>>>
>>>
>>> On 5/9/23 2:56 PM, Jose Quaresma wrote:
>>>> This reverts commit 9de807705b27b05bbf84e9f16502fe6cdaa8928f.
>>>>
>>>> The full patchset are overriding the do_configure task and also adde=
d a kernel patch
>>>> on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file i=
s included
>>>> in every recipe that follows the pattern pattern starting by linux- =
(recipes-kernel/linux/linux-%.bbappend).
>>>> So the patch fails in some recipes and also do_configure task doesn'=
t make sense.
>>>> This breaks many recipes like linux-firmware and maybe others.
>>>
>>> I fail to see how=C2=A0 this package update is part of the issue abov=
e. I am still trying to sort out the store here to figure out how we move=
 forward.
>>
>> My suggestion would be that I post a v2 of my fix patches containing:
>>
>> 1) removal of the Linux kernel patch
>> 2) removal of the squashfs option (less important)
>> 3) the suggestion outlined here: https://lists.yoctoproject.org/g/yoct=
o/message/59955
>>     but modified to look like this with '&& [ -f .config ]' appended:
>>
>>   do_configure:append() {
>>       if [ "${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'yes', '', =
d)}" =3D "yes" ] && [ -f .config ] ; then
>>           sed -i "s|^CONFIG_SYSTEM_TRUSTED_KEYS=3D.*|CONFIG_SYSTEM_TRU=
STED_KEYS=3D\"${IMA_EVM_ROOT_CA}\"|" .config
>>       fi
>>   }
>>
>> I don't want to hold things up but maybe it's worth discussing the sug=
gested changes.
>>
>>  From what I can see 'bitbake linux-firmware' builds under OpenBMC now=
 with these suggested changes
>> and it did NOT build before. My suggestion would be to discuss the pro=
posal under that thread there.
>> The problems seem to be that the file meta-security/meta-integrity/rec=
ipes-kernel/linux/linux-%.bbappend
>> matches the pattern linux-firmware as well and therefore its contents =
get included when building
>> linux-firmware. When building linux-firmware while having also DISTRO_=
FEATURES ima set in local.conf then the
>> ima.scc is added to SRC_URI and the do_configure is also appended. The=
 latter will not have side-effects but
>> I don't know about the former nor how to create a better filter (other=
 than DISTRO_FEATURES) for not having
>> these included for linux-firmware.
>=20
> Why is the bbappend applying changes to all recipes where name starts w=
ith
> "linux-"?
>=20
> It is aiming at Linux kernel recipes which by default in yocto are
> called "linux-yocto", so the bbappend could simply be
> "linux-yocto_%.bbappend" (or "linux-yocto%.bbappend to catch the rt
> and other variants too).

Thanks.

I am trying to enable IMA & EVM under OpenBMC. When I rename linux-%.bbap=
pend to linux-yocto_%.bbappend
then none of the IMA support becomes active under OpenBMC, so it doesn't =
help much for OpenBMC. If I rename it to
linux-aspeed_%.bbappend then it works for OpenBMC but that's probably not=
 the filename you would want to have in
meta-security.

So I guess the solution is to rename the file to linux-yocto%.bbappend an=
yway (I won't test it in this env) but
then require that OpenBMC include the linux_ima.inc using a statement lik=
e this

require ${@bb.utils.contains_any('DISTRO_FEATURES', 'integrity ', '../../=
../../meta-security/meta-integrity/recipes-kernel/linux/linux_ima.inc', '=
', d)}

in its own linux-aspeed_%.bbappend.

Does this sound correct?

     Stefan

>=20
> I think it's a bad idea to try to apply this change automatically to al=
l
> possible BSP layer kernels which may or may not have names starting wit=
h
> "linux-" and it's well known that there are a lot of recipe names which
> start with "linux-" which are not Linux kernels (linux-firmware,
> linux-libc-headers, linux-dummy etc).


>=20
> Cheers,
>=20
> -Mikko

