Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E3DC77B75
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 16:21:13 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web11.37525.1683649263903707915
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 09:21:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@ibm.com header.s=pp1 header.b=qR3VPofQ;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349GKkbw001231;
	Tue, 9 May 2023 16:21:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=R8ZDYctkDfNcvCOEu9kdSrahIE8gr7sEmwHb6zIolL4=;
 b=qR3VPofQkZT5BkcMCFuoMR+Aq07/eO/glC8ijEMTYf1LuQtnsw5Z7irRuCsCSi5ukPoL
 v5q0fxMMWqPVEvOt35tl2fUYyVw8qPLypDRiUmCGaE2E9uq3OBX3qN70FUWCSTj+MSJD
 b+YeFrt+ECJDmEjQubQKhWAxFp8GM+F2/0skioTTbTkn98SHVovRqodaoXn/GN1hqpuO
 eh0ve2kWj5F//Q8eJt+o27GmY29qaDrxWgnUxvdGx3X5cIqddZLIAOnq/tQg7biEMKhk
 CLq80J2lnj2JRG2neuMfAXz/WPFlSc39T8Y1jYrA+3Gs6Q/WX1YQZrdwuX82LwYF4rCc Ig== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfsm700a3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 16:21:02 +0000
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349GKndW001549;
	Tue, 9 May 2023 16:21:01 GMT
Received: from ppma04wdc.us.ibm.com (1a.90.2fa9.ip4.static.sl-reverse.com [169.47.144.26])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfsm7009a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 16:21:01 +0000
Received: from pps.filterd (ppma04wdc.us.ibm.com [127.0.0.1])
	by ppma04wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349GGLLn031512;
	Tue, 9 May 2023 16:21:00 GMT
Received: from smtprelay01.wdc07v.mail.ibm.com ([9.208.129.119])
	by ppma04wdc.us.ibm.com (PPS) with ESMTPS id 3qf7dkcchy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 16:21:00 +0000
Received: from smtpav03.wdc07v.mail.ibm.com (smtpav03.wdc07v.mail.ibm.com [10.39.53.230])
	by smtprelay01.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349GKxCW18088380
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 16:20:59 GMT
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4B4F558070;
	Tue,  9 May 2023 16:20:59 +0000 (GMT)
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BCA0058077;
	Tue,  9 May 2023 16:20:58 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by smtpav03.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 16:20:58 +0000 (GMT)
Message-ID: <2aa5daa3-8a0e-4e55-469d-9e4576995328@linux.ibm.com>
Date: Tue, 9 May 2023 12:20:58 -0400
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
From: Stefan Berger <stefanb@linux.ibm.com>
In-Reply-To: <CANPvuR=3YHfc6Dz26ZVF2bo5AZ0jmF-T1raSwiS-nd55bRza+A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 80w5sk8lbstXyBiXjnOXIhmo7EAXVXPS
X-Proofpoint-GUID: -cgPSuft9tXNVnB08zLasLCi70WTAZjm
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_09,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 clxscore=1015
 mlxlogscore=999 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305090132
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-001b2d01.pphosted.com id 349GKkbw001231
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 16:21:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59932



On 5/9/23 10:53, Jose Quaresma wrote:
> Hi Stefan,=20
>=20
> Having this patch applied=C2=A0unconditionally=C2=A0to all kernels does=
n't work and the patch fails in many downstream=C2=A0kernels.
> I suggest=C2=A0reverting this one if no other solutions come up.

Then let me drop this one. I just posted v2 of this series and can repost=
 in v3 with this patch dropped and possibly
only have it applied in the OpenBMC project. I suppose my conclusion from=
 OpenBMC, which currently works with a 6.1.15
kernel, that all other Yocto projects also now use a >=3D 6.1.15 kernel, =
was wrong?

     Stefan

>=20
> Jose
>=20
> Stefan Berger <stefanb@linux.ibm.com <mailto:stefanb@linux.ibm.com>> es=
creveu no dia sexta, 28/04/2023 =C3=A0(s) 13:55:
>=20
>=20
>=20
>     On 4/28/23 08:48, Mikko Rapeli wrote:
>      > Hi,
>      >
>      > On Fri, Apr 28, 2023 at 08:23:15AM -0400, Stefan Berger wrote:
>      >> Add a temporary patch that resolves a file change notification =
issue
>      >> with overlayfs where IMA did not become aware of the file chang=
es
>      >> since the 'lower' inode's i_version had not changed. The issue =
will be
>      >> resolved in later kernels with the following patch that builds =
on
>      >> newly addd feature (support for STATX_CHANGE_COOKIE) in v6.3-rc=
1:
>      >>
>      >> https://lore.kernel.org/linux-integrity/20230418-engste-gastwir=
tschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459=
 <https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-=
601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459>
>      >
>      > Would be nice to have Upstream-Status for each patch. I guess st=
atus
>      > would be Backport here.
>=20
>     It's quite possible that this series here https://lkml.org/lkml/202=
2/10/21/624
>     (alone? <https://lkml.org/lkml/2022/10/21/624(alone?>) would provid=
e the infrastructure for STATX_CHANGE_COOKIE (introduced in 3/8)
>     and have that referenced patch applied which isn't upstreamed so fa=
r, either.
>=20
>     For now this two-liner seemed simpler and resolves the issue. I und=
erstand the concern, though...
>=20
>      =C2=A0 =C2=A0 =C2=A0 Stefan
>=20
>      >
>      > Cheers,
>      >
>      > -Mikko
>      >
>      >> Signed-off-by: Stefan Berger <stefanb@linux.ibm.com <mailto:ste=
fanb@linux.ibm.com>>
>      >> ---
>      >>=C2=A0 =C2=A0...Increment-iversion-upon-file-changes.patch | 42 =
+++++++++++++++++++
>      >>=C2=A0 =C2=A0.../recipes-kernel/linux/linux_ima.inc=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 |=C2=A0 1 +
>      >>=C2=A0 =C2=A02 files changed, 43 insertions(+)
>      >>=C2=A0 =C2=A0create mode 100644 meta-integrity/recipes-kernel/li=
nux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
>      >>
>      >> diff --git a/meta-integrity/recipes-kernel/linux/linux/0001-ovl=
-Increment-iversion-upon-file-changes.patch b/meta-integrity/recipes-kern=
el/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
>      >> new file mode 100644
>      >> index 0000000..d2b5c28
>      >> --- /dev/null
>      >> +++ b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increm=
ent-iversion-upon-file-changes.patch
>      >> @@ -0,0 +1,42 @@
>      >> +From e9ed62e8d1d3eee7ffe862d9812c5320d3b9bd88 Mon Sep 17 00:00=
:00 2001
>      >> +From: Stefan Berger <stefanb@linux.ibm.com <mailto:stefanb@lin=
ux.ibm.com>>
>      >> +Date: Thu, 6 Apr 2023 11:27:29 -0400
>      >> +Subject: [PATCH] ovl: Increment iversion upon file changes
>      >> +
>      >> +This is a temporary patch for kernels that do not implement
>      >> +STATX_CHANGE_COOKIE (<=3D 6.2). The successor patch will be th=
is one:
>      >> +
>      >> +https://lore.kernel.org/linux-integrity/20230418-engste-gastwi=
rtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff45=
9 <https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft=
-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459>
>      >> +
>      >> +Increment the lower inode's iversion for IMA to be able to rec=
ognize
>      >> +changes to the file.
>      >> +
>      >> +Signed-off-by: Stefan Berger <stefanb@linux.ibm.com <mailto:st=
efanb@linux.ibm.com>>
>      >> +---
>      >> + fs/overlayfs/file.c | 3 +++
>      >> + 1 file changed, 3 insertions(+)
>      >> +
>      >> +diff --git a/fs/overlayfs/file.c b/fs/overlayfs/file.c
>      >> +index 6011f955436b..1dfe5e7bfe1c 100644
>      >> +--- a/fs/overlayfs/file.c
>      >> ++++ b/fs/overlayfs/file.c
>      >> +@@ -13,6 +13,7 @@
>      >> + #include <linux/security.h>
>      >> + #include <linux/mm.h>
>      >> + #include <linux/fs.h>
>      >> ++#include <linux/iversion.h>
>      >> + #include "overlayfs.h"
>      >> +
>      >> + struct ovl_aio_req {
>      >> +@@ -408,6 +409,8 @@ static ssize_t ovl_write_iter(struct kiocb=
 *iocb, struct iov_iter *iter)
>      >> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret !=3D -EIOCBQ=
UEUED)
>      >> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 ovl_aio_cleanup_handler(aio_req);
>      >> +=C2=A0 =C2=A0 }
>      >> ++=C2=A0 =C2=A0if (ret > 0)
>      >> ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inode_maybe_inc_iver=
sion(inode, false);
>      >> + out:
>      >> +=C2=A0 =C2=A0 revert_creds(old_cred);
>      >> + out_fdput:
>      >> +--
>      >> +2.34.1
>      >> +
>      >> diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc =
b/meta-integrity/recipes-kernel/linux/linux_ima.inc
>      >> index 0b6f530..9d48e5c 100644
>      >> --- a/meta-integrity/recipes-kernel/linux/linux_ima.inc
>      >> +++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
>      >> @@ -2,6 +2,7 @@ FILESEXTRAPATHS:append :=3D "${THISDIR}/linux:"
>      >>
>      >>=C2=A0 =C2=A0SRC_URI +=3D " \
>      >>=C2=A0 =C2=A0 =C2=A0 =C2=A0${@bb.utils.contains('DISTRO_FEATURES=
', 'ima', 'file://ima.scc', '', d)} \
>      >> +=C2=A0 =C2=A0 file://0001-ovl-Increment-iversion-upon-file-cha=
nges.patch \
>      >>=C2=A0 =C2=A0"
>      >>
>      >>=C2=A0 =C2=A0do_configure() {
>      >> --
>      >> 2.34.1
>      >>
>      >
>      >>
>      >>
>      >>
>      >
>=20
>     -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>     Links: You receive all messages sent to this group.
>     View/Reply Online (#59807): https://lists.yoctoproject.org/g/yocto/=
message/59807 <https://lists.yoctoproject.org/g/yocto/message/59807>
>     Mute This Topic: https://lists.yoctoproject.org/mt/98557297/5052612=
 <https://lists.yoctoproject.org/mt/98557297/5052612>
>     Group Owner: yocto+owner@lists.yoctoproject.org <mailto:yocto%2Bown=
er@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub <https://=
lists.yoctoproject.org/g/yocto/unsub> [quaresma.jose@gmail.com <mailto:qu=
aresma.jose@gmail.com>]
>     -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20
>=20
>=20
> --=20
> Best regards,
>=20
> Jos=C3=A9 Quaresma

