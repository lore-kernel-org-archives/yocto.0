Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A86EC77B7C
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:05:44 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web11.40415.1683655543398165660
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:05:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@ibm.com header.s=pp1 header.b=RODE78uz;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353724.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349I53l4006203;
	Tue, 9 May 2023 18:05:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=OCI1D21+Lppbng7h1dJLCqbHJA1s7V+RECUhieG3oq0=;
 b=RODE78uzomfk0b3loAsOiWl006RyufRVe+nSzCXPN9fHIJvsx/pHVn73QnZ2/qzSJYWP
 ib5w5v5JafbyHXYZ4a7Xb4ZPRxPN+jKl9GFuwYarec54osP6oUlnKjUNt4obURp5arK4
 d2LazC9q4aFXZYwbBYY16yefYySwgaln6kFdyPAySx28/m7WXR0ZVcXHNcSAs1j87FO1
 FWYdK8kTGo9bGULtLbxTin8LtWaXujE/Xe0pQHszWbibkSi4DMjI+3G/cjv/OHKrlpBu
 Lh3G7wLQ5fUBwH8NyTndxAJL0f6LdCD79DuNM9NS59He8b3MOqvJVNJtqmxKEQmR52kL QA== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfsnq2s6v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 18:05:41 +0000
Received: from m0353724.ppops.net (m0353724.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349HfgUT004570;
	Tue, 9 May 2023 18:05:41 GMT
Received: from ppma02dal.us.ibm.com (a.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.10])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfsnq2s5y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 18:05:41 +0000
Received: from pps.filterd (ppma02dal.us.ibm.com [127.0.0.1])
	by ppma02dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349GGCto011429;
	Tue, 9 May 2023 18:05:40 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([9.208.129.120])
	by ppma02dal.us.ibm.com (PPS) with ESMTPS id 3qf7wdwuaw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 18:05:40 +0000
Received: from smtpav03.wdc07v.mail.ibm.com (smtpav03.wdc07v.mail.ibm.com [10.39.53.230])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349I5daf61473098
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 18:05:39 GMT
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 276D55805A;
	Tue,  9 May 2023 18:05:39 +0000 (GMT)
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 786EF58054;
	Tue,  9 May 2023 18:05:38 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by smtpav03.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 18:05:38 +0000 (GMT)
Message-ID: <2458d001-940c-96dc-cfe8-792d5e48cbe8@linux.ibm.com>
Date: Tue, 9 May 2023 14:05:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] [meta-security][PATCH 7/8] linux: overlayfs: Add kernel
 patch resolving a file change notification issue
Content-Language: en-US
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>, yocto@lists.yoctoproject.org,
        akuster808@gmail.com
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
 <20230428122316.521800-8-stefanb@linux.ibm.com> <ZEvAl09z9fluq3Cr@nuoska>
 <0d7cf75b-cd5c-18a7-652c-aff4505e074d@linux.ibm.com>
 <CANPvuR=3YHfc6Dz26ZVF2bo5AZ0jmF-T1raSwiS-nd55bRza+A@mail.gmail.com>
 <2aa5daa3-8a0e-4e55-469d-9e4576995328@linux.ibm.com>
 <CANPvuRmSbxuVR=UwNoZwJS5xAJfV9-=KysXCc0qjxpTHj0Kw+g@mail.gmail.com>
From: Stefan Berger <stefanb@linux.ibm.com>
In-Reply-To: <CANPvuRmSbxuVR=UwNoZwJS5xAJfV9-=KysXCc0qjxpTHj0Kw+g@mail.gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: MKs_PKJLu_vgRSKpww35Tv7JrYpnEhVu
X-Proofpoint-ORIG-GUID: i7Dr16TemwBmWwm1R_WxN38ENhv0xPtV
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_10,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 malwarescore=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 bulkscore=0 adultscore=0
 mlxlogscore=999 impostorscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305090146
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-001b2d01.pphosted.com id 349I53l4006203
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:05:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59939



On 5/9/23 13:05, Jose Quaresma wrote:
> Stefan Berger <stefanb@=E2=80=8Alinux.=E2=80=8Aibm.=E2=80=8Acom> escrev=
eu no dia ter=C3=A7a, 9/05/2023 =C3=A0(s) 17:=E2=80=8A21: On 5/9/23 10:=E2=
=80=8A53, Jose Quaresma wrote: > Hi Stefan, > > Having this patch applied=
=C2=A0unconditionally=C2=A0to all kernels doesn't work and the patch
> ZjQcmQRYFpfptBannerStart
> This Message Is From an External Sender
> This message came from outside your organization.
> ZjQcmQRYFpfptBannerEnd
>=20
>=20
> Stefan Berger <stefanb@linux.ibm.com <mailto:stefanb@linux.ibm.com>> es=
creveu no dia ter=C3=A7a, 9/05/2023 =C3=A0(s) 17:21:
>=20
>=20
>=20
>     On 5/9/23 10:53, Jose Quaresma wrote:
>      > Hi Stefan,
>      >
>      > Having this patch applied=C2=A0unconditionally=C2=A0to all kerne=
ls doesn't work and the patch fails in many downstream=C2=A0kernels.
>      > I suggest=C2=A0reverting this one if no other solutions come up.
>=20
>     Then let me drop this one. I just posted v2 of this series and can =
repost in v3 with this patch dropped and possibly
>     only have it applied in the OpenBMC project. I suppose my conclusio=
n from OpenBMC, which currently works with a 6.1.15
>     kernel, that all other Yocto projects also now use a >=3D 6.1.15 ke=
rnel, was wrong?
>=20
>=20
> yup! is also my opinion.
> but after reverting this patch some other new issues comes up because t=
he ima side effects changes
> so linux-firmware dont build any more.

Can you either point me to the changes or tell me how you build linux-fir=
mware so that I can recreate the issue locally?

    Stefan

>=20
> Jose
>=20
>=20
>      =C2=A0 =C2=A0 =C2=A0Stefan
>=20
>      >
>      > Jose
>      >
>      > Stefan Berger <stefanb@linux.ibm.com <mailto:stefanb@linux.ibm.c=
om> <mailto:stefanb@linux.ibm.com <mailto:stefanb@linux.ibm.com>>> escrev=
eu no dia sexta, 28/04/2023 =C3=A0(s) 13:55:
>      >
>      >
>      >
>      >=C2=A0 =C2=A0 =C2=A0On 4/28/23 08:48, Mikko Rapeli wrote:
>      >=C2=A0 =C2=A0 =C2=A0 > Hi,
>      >=C2=A0 =C2=A0 =C2=A0 >
>      >=C2=A0 =C2=A0 =C2=A0 > On Fri, Apr 28, 2023 at 08:23:15AM -0400, =
Stefan Berger wrote:
>      >=C2=A0 =C2=A0 =C2=A0 >> Add a temporary patch that resolves a fil=
e change notification issue
>      >=C2=A0 =C2=A0 =C2=A0 >> with overlayfs where IMA did not become a=
ware of the file changes
>      >=C2=A0 =C2=A0 =C2=A0 >> since the 'lower' inode's i_version had n=
ot changed. The issue will be
>      >=C2=A0 =C2=A0 =C2=A0 >> resolved in later kernels with the follow=
ing patch that builds on
>      >=C2=A0 =C2=A0 =C2=A0 >> newly addd feature (support for STATX_CHA=
NGE_COOKIE) in v6.3-rc1:
>      >=C2=A0 =C2=A0 =C2=A0 >>
>      >=C2=A0 =C2=A0 =C2=A0 >> https://lore.kernel.org/linux-integrity/2=
0230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499ab=
b6e3191693948add2ff459 <https://lore.kernel.org/linux-integrity/20230418-=
engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e31916=
93948add2ff459> <https://lore.kernel.org/linux-integrity/20230418-engste-=
gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948ad=
d2ff459 <https://lore.kernel.org/linux-integrity/20230418-engste-gastwirt=
schaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459>=
>
>      >=C2=A0 =C2=A0 =C2=A0 >
>      >=C2=A0 =C2=A0 =C2=A0 > Would be nice to have Upstream-Status for =
each patch. I guess status
>      >=C2=A0 =C2=A0 =C2=A0 > would be Backport here.
>      >
>      >=C2=A0 =C2=A0 =C2=A0It's quite possible that this series here htt=
ps://lkml.org/lkml/2022/10/21/624 <https://lkml.org/lkml/2022/10/21/624>
>      >=C2=A0 =C2=A0 =C2=A0(alone? <https://lkml.org/lkml/2022/10/21/624=
(alone <https://lkml.org/lkml/2022/10/21/624(alone>?>) would provide the =
infrastructure for STATX_CHANGE_COOKIE (introduced in 3/8)
>      >=C2=A0 =C2=A0 =C2=A0and have that referenced patch applied which =
isn't upstreamed so far, either.
>      >
>      >=C2=A0 =C2=A0 =C2=A0For now this two-liner seemed simpler and res=
olves the issue. I understand the concern, though...
>      >
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Stefan
>      >
>      >=C2=A0 =C2=A0 =C2=A0 >
>      >=C2=A0 =C2=A0 =C2=A0 > Cheers,
>      >=C2=A0 =C2=A0 =C2=A0 >
>      >=C2=A0 =C2=A0 =C2=A0 > -Mikko
>      >=C2=A0 =C2=A0 =C2=A0 >
>      >=C2=A0 =C2=A0 =C2=A0 >> Signed-off-by: Stefan Berger <stefanb@lin=
ux.ibm.com <mailto:stefanb@linux.ibm.com> <mailto:stefanb@linux.ibm.com <=
mailto:stefanb@linux.ibm.com>>>
>      >=C2=A0 =C2=A0 =C2=A0 >> ---
>      >=C2=A0 =C2=A0 =C2=A0 >>=C2=A0 =C2=A0...Increment-iversion-upon-fi=
le-changes.patch | 42 +++++++++++++++++++
>      >=C2=A0 =C2=A0 =C2=A0 >>=C2=A0 =C2=A0.../recipes-kernel/linux/linu=
x_ima.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 +
>      >=C2=A0 =C2=A0 =C2=A0 >>=C2=A0 =C2=A02 files changed, 43 insertion=
s(+)
>      >=C2=A0 =C2=A0 =C2=A0 >>=C2=A0 =C2=A0create mode 100644 meta-integ=
rity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-cha=
nges.patch
>      >=C2=A0 =C2=A0 =C2=A0 >>
>      >=C2=A0 =C2=A0 =C2=A0 >> diff --git a/meta-integrity/recipes-kerne=
l/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch b/meta-=
integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-fil=
e-changes.patch
>      >=C2=A0 =C2=A0 =C2=A0 >> new file mode 100644
>      >=C2=A0 =C2=A0 =C2=A0 >> index 0000000..d2b5c28
>      >=C2=A0 =C2=A0 =C2=A0 >> --- /dev/null
>      >=C2=A0 =C2=A0 =C2=A0 >> +++ b/meta-integrity/recipes-kernel/linux=
/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
>      >=C2=A0 =C2=A0 =C2=A0 >> @@ -0,0 +1,42 @@
>      >=C2=A0 =C2=A0 =C2=A0 >> +From e9ed62e8d1d3eee7ffe862d9812c5320d3b=
9bd88 Mon Sep 17 00:00:00 2001
>      >=C2=A0 =C2=A0 =C2=A0 >> +From: Stefan Berger <stefanb@linux.ibm.c=
om <mailto:stefanb@linux.ibm.com> <mailto:stefanb@linux.ibm.com <mailto:s=
tefanb@linux.ibm.com>>>
>      >=C2=A0 =C2=A0 =C2=A0 >> +Date: Thu, 6 Apr 2023 11:27:29 -0400
>      >=C2=A0 =C2=A0 =C2=A0 >> +Subject: [PATCH] ovl: Increment iversion=
 upon file changes
>      >=C2=A0 =C2=A0 =C2=A0 >> +
>      >=C2=A0 =C2=A0 =C2=A0 >> +This is a temporary patch for kernels th=
at do not implement
>      >=C2=A0 =C2=A0 =C2=A0 >> +STATX_CHANGE_COOKIE (<=3D 6.2). The succ=
essor patch will be this one:
>      >=C2=A0 =C2=A0 =C2=A0 >> +
>      >=C2=A0 =C2=A0 =C2=A0 >> +https://lore.kernel.org/linux-integrity/=
20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499a=
bb6e3191693948add2ff459 <https://lore.kernel.org/linux-integrity/20230418=
-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191=
693948add2ff459> <https://lore.kernel.org/linux-integrity/20230418-engste=
-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948a=
dd2ff459 <https://lore.kernel.org/linux-integrity/20230418-engste-gastwir=
tschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459=
>>
>      >=C2=A0 =C2=A0 =C2=A0 >> +
>      >=C2=A0 =C2=A0 =C2=A0 >> +Increment the lower inode's iversion for=
 IMA to be able to recognize
>      >=C2=A0 =C2=A0 =C2=A0 >> +changes to the file.
>      >=C2=A0 =C2=A0 =C2=A0 >> +
>      >=C2=A0 =C2=A0 =C2=A0 >> +Signed-off-by: Stefan Berger <stefanb@li=
nux.ibm.com <mailto:stefanb@linux.ibm.com> <mailto:stefanb@linux.ibm.com =
<mailto:stefanb@linux.ibm.com>>>
>      >=C2=A0 =C2=A0 =C2=A0 >> +---
>      >=C2=A0 =C2=A0 =C2=A0 >> + fs/overlayfs/file.c | 3 +++
>      >=C2=A0 =C2=A0 =C2=A0 >> + 1 file changed, 3 insertions(+)
>      >=C2=A0 =C2=A0 =C2=A0 >> +
>      >=C2=A0 =C2=A0 =C2=A0 >> +diff --git a/fs/overlayfs/file.c b/fs/ov=
erlayfs/file.c
>      >=C2=A0 =C2=A0 =C2=A0 >> +index 6011f955436b..1dfe5e7bfe1c 100644
>      >=C2=A0 =C2=A0 =C2=A0 >> +--- a/fs/overlayfs/file.c
>      >=C2=A0 =C2=A0 =C2=A0 >> ++++ b/fs/overlayfs/file.c
>      >=C2=A0 =C2=A0 =C2=A0 >> +@@ -13,6 +13,7 @@
>      >=C2=A0 =C2=A0 =C2=A0 >> + #include <linux/security.h>
>      >=C2=A0 =C2=A0 =C2=A0 >> + #include <linux/mm.h>
>      >=C2=A0 =C2=A0 =C2=A0 >> + #include <linux/fs.h>
>      >=C2=A0 =C2=A0 =C2=A0 >> ++#include <linux/iversion.h>
>      >=C2=A0 =C2=A0 =C2=A0 >> + #include "overlayfs.h"
>      >=C2=A0 =C2=A0 =C2=A0 >> +
>      >=C2=A0 =C2=A0 =C2=A0 >> + struct ovl_aio_req {
>      >=C2=A0 =C2=A0 =C2=A0 >> +@@ -408,6 +409,8 @@ static ssize_t ovl_w=
rite_iter(struct kiocb *iocb, struct iov_iter *iter)
>      >=C2=A0 =C2=A0 =C2=A0 >> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 if (ret !=3D -EIOCBQUEUED)
>      >=C2=A0 =C2=A0 =C2=A0 >> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ovl_aio_cleanup_handler(aio_req);
>      >=C2=A0 =C2=A0 =C2=A0 >> +=C2=A0 =C2=A0 }
>      >=C2=A0 =C2=A0 =C2=A0 >> ++=C2=A0 =C2=A0if (ret > 0)
>      >=C2=A0 =C2=A0 =C2=A0 >> ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
inode_maybe_inc_iversion(inode, false);
>      >=C2=A0 =C2=A0 =C2=A0 >> + out:
>      >=C2=A0 =C2=A0 =C2=A0 >> +=C2=A0 =C2=A0 revert_creds(old_cred);
>      >=C2=A0 =C2=A0 =C2=A0 >> + out_fdput:
>      >=C2=A0 =C2=A0 =C2=A0 >> +--
>      >=C2=A0 =C2=A0 =C2=A0 >> +2.34.1
>      >=C2=A0 =C2=A0 =C2=A0 >> +
>      >=C2=A0 =C2=A0 =C2=A0 >> diff --git a/meta-integrity/recipes-kerne=
l/linux/linux_ima.inc b/meta-integrity/recipes-kernel/linux/linux_ima.inc
>      >=C2=A0 =C2=A0 =C2=A0 >> index 0b6f530..9d48e5c 100644
>      >=C2=A0 =C2=A0 =C2=A0 >> --- a/meta-integrity/recipes-kernel/linux=
/linux_ima.inc
>      >=C2=A0 =C2=A0 =C2=A0 >> +++ b/meta-integrity/recipes-kernel/linux=
/linux_ima.inc
>      >=C2=A0 =C2=A0 =C2=A0 >> @@ -2,6 +2,7 @@ FILESEXTRAPATHS:append :=3D=
 "${THISDIR}/linux:"
>      >=C2=A0 =C2=A0 =C2=A0 >>
>      >=C2=A0 =C2=A0 =C2=A0 >>=C2=A0 =C2=A0SRC_URI +=3D " \
>      >=C2=A0 =C2=A0 =C2=A0 >>=C2=A0 =C2=A0 =C2=A0 =C2=A0${@bb.utils.con=
tains('DISTRO_FEATURES', 'ima', 'file://ima.scc', '', d)} \
>      >=C2=A0 =C2=A0 =C2=A0 >> +=C2=A0 =C2=A0 file://0001-ovl-Increment-=
iversion-upon-file-changes.patch \
>      >=C2=A0 =C2=A0 =C2=A0 >>=C2=A0 =C2=A0"
>      >=C2=A0 =C2=A0 =C2=A0 >>
>      >=C2=A0 =C2=A0 =C2=A0 >>=C2=A0 =C2=A0do_configure() {
>      >=C2=A0 =C2=A0 =C2=A0 >> --
>      >=C2=A0 =C2=A0 =C2=A0 >> 2.34.1
>      >=C2=A0 =C2=A0 =C2=A0 >>
>      >=C2=A0 =C2=A0 =C2=A0 >
>      >=C2=A0 =C2=A0 =C2=A0 >>
>      >=C2=A0 =C2=A0 =C2=A0 >>
>      >=C2=A0 =C2=A0 =C2=A0 >>
>      >=C2=A0 =C2=A0 =C2=A0 >
>      >
>      >
>      >
>      >
>      >
>      > --
>      > Best regards,
>      >
>      > Jos=C3=A9 Quaresma
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
> View/Reply Online (#59934): https://lists.yoctoproject.org/g/yocto/mess=
age/59934
> Mute This Topic: https://lists.yoctoproject.org/mt/98557297/1792208
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [stefanb@linu=
x.ibm.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

