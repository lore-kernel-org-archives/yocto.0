Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ABACC25B75
	for <webhook@archiver.kernel.org>; Fri, 31 May 2024 22:17:52 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web10.25841.1717193863033568966
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 May 2024 15:17:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bLAepXIU;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: simonkbaby@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2c1a16805f9so1970943a91.0
        for <yocto@lists.yoctoproject.org>; Fri, 31 May 2024 15:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717193862; x=1717798662; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LhwWeHnx6bSh6nMCbskrGx7viw8hhaFehb2QCJ1apMU=;
        b=bLAepXIUYD6MBwV2xzfUvCN7NHW2DB2dQpD0dqKnV/QiXhNehDna28m+lX77sbq6r+
         RDUHZ7MzihBH9F1br8+ijps+j/ZKCE768c5s4o1Nh7idpuHIMXJvrVRX8UNdU2F44IgG
         K5kP2bb0mQoeA0ienK9wL9BjaxHrII3zHvJDtV88lG4osIq7OryXvwDoLkKxBeQCFtZh
         HfS4AkxD6LCKMvNnRDEBsxgiD7i3eCry1jgOiIYTFs+SkK4xNWpVA+bKY8Hj4kV5VUy1
         mOK6/jqni8elpQrfzB2TEK0bukMr8pVDbUUlLL3GBvnF16YOe9QG3fW3rMQ4xrWD1wZZ
         G32g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717193862; x=1717798662;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LhwWeHnx6bSh6nMCbskrGx7viw8hhaFehb2QCJ1apMU=;
        b=D3O4DqOeYPjCqvHgiRY+9G5EDOquwYrp/srEAeeSfGOX3IwUzBWdhukRQhvedGRMnS
         dAgZdoF6MMueD1vOQ6ncfZxMYmuNksGZQUzlNh/wg6JLQV0Dwd/qXvdEO2t0dbZgg06I
         YMz3rUfkiAG4GXn0+gGA5qoFmuGZhnvbCZ4n9WRsNFMVmMZohCKg4E9OUqYM5IYxhp57
         fWM2ZzU2y6wakNm4KiFO3BYQKIvO1NCyzmMTvQNOTUSzjhSFia3VQxqreFD2fjNgo6Dq
         i+3XDZtcr9ACVw9gp9CAgv4Q/uPDS0/PwcTwYgvW5KsR5wxEcTy4qkvqpCyesoOJEQJM
         nlpA==
X-Gm-Message-State: AOJu0YxtVNlCNT2foWIOw9yEiGWaS+pX+1Fzp1OJB+8mqQKwHKiWiNbd
	tFeXleC8fKN7fFdss72pwh6uNm9xAF/UebZfcvkGre2owwWi24BNaxxTaqm49e3RB4weItsPxhB
	tfihemUY7xZ6YSm86tMeYbWBRDDr06oHL
X-Google-Smtp-Source: AGHT+IF4B+a6jA7CPwuA7go3M76CY3MMPNLjX+BLF+nsk0qwp6LzlEQbJe8Xl/V5PKp3LaUh3FTt89vUmjQW0CWDPvc=
X-Received: by 2002:a17:90b:1012:b0:2bf:e473:7045 with SMTP id
 98e67ed59e1d1-2c1acd998dcmr8453678a91.21.1717193861940; Fri, 31 May 2024
 15:17:41 -0700 (PDT)
MIME-Version: 1.0
From: SIMON BABY <simonkbaby@gmail.com>
Date: Fri, 31 May 2024 15:17:30 -0700
Message-ID: <CAEFUPH03pVQO2pmeyCwQ4WW_mEGJXZvV=2Wihi+LL2+woEUhPg@mail.gmail.com>
Subject: query on do_stage
To: Yocto Mailing list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000026cc8a0619c75a4d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 May 2024 22:17:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63251

--00000000000026cc8a0619c75a4d
Content-Type: text/plain; charset="UTF-8"

Hei Team,

I have a recipe below. I did not see the staging directory under the tmp
generated folder. Is there a hidden folder or where are the files going?


DESCRIPTION = "UMSD SDK library for Marvell Switch Product Family."
LICENSE = "CLOSED"
PR = "r0"
PROVIDES = "marvell-umsd"
SRC_URI = "file://UMSD_v${PV}.tar.gz"

S = "${WORKDIR}/UMSD_v${PV}"

MSD_ROOT="${S}"
MSD_USER_BASE="${MSD_ROOT}"
MSD_PROJ_NAME="msdDrv"
MSD_TOOL_DIR="${MSD_USER_BASE}/tools"
RELEASE="YES"
OS_RUN="LINUX"
TOPAZ_BUILD="YES"
PERIDOT_BUILD="YES"
AGATE_BUILD="YES"
PEARL_BUILD="YES"
AMETHYST_BUILD="YES"
export STAGING_INCDIR
export STAGING_LIBDIR

do_compile () {
        make -C  ${MSD_ROOT}/src MSD_USER_BASE=${MSD_USER_BASE}/
MSD_PROJ_NAME=msdDrv MSD_TOOL_DIR="${MSD_USER_BASE}/tools" RELEASE=YES
OS_RUN:=LINUX PERIDOT_BUILD=YES
}


do_stage () {
        mkdir -p ${STAGING_INCDIR}/marvell-umsd
        *cp --dereference -R ${MSD_ROOT}/include/*
${STAGING_INCDIR}/marvell-umsd/*
       * cp ${MSD_ROOT}/library/msdDrv.o ${STAGING_LIBDIR}*
}



I checked the path below and could not see the include files or the
msdDrv.o copied anywhere. Please correct me with any other solution. Can I
go with do_install () ?
The requirement is to use this recipe as a dependency for other modules to
use the include file and library.

sbaby@eadlng-build-machine:~/workspace/05222024_simon/ecp-nic-test/build$
ls -ll
tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/marvell-umsd/3.0.7-r0/
total 40
drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 deploy-ipks
drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 license-destdir
drwxr-xr-x 7 sbaby sbaby 4096 May 29 10:46 pkgdata-pdata-input
drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-packagedata
drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-package_qa
drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-package_write_ipk
drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-populate_lic
drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-populate_sysroot
drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 sysroot-destdir
drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 temp

Regards
Simon

--00000000000026cc8a0619c75a4d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hei=C2=A0Team,</div><div><br></div><div>I have a reci=
pe below. I did not see the staging directory under the tmp generated folde=
r. Is there a hidden folder or where are the files going?</div><div><br></d=
iv><div><br></div><div><span class=3D"gmail-im" style=3D"color:rgb(80,0,80)=
">DESCRIPTION =3D &quot;UMSD SDK library for Marvell Switch Product Family.=
&quot;<br>LICENSE =3D &quot;CLOSED&quot;<br>PR =3D &quot;r0&quot;<br>PROVID=
ES =3D &quot;marvell-umsd&quot;<br>SRC_URI =3D &quot;file://UMSD_v${PV}.tar=
.gz&quot;<br><br>S =3D &quot;${WORKDIR}/UMSD_v${PV}&quot;<br><br>MSD_ROOT=
=3D&quot;${S}&quot;<br>MSD_USER_BASE=3D&quot;${MSD_ROOT}&quot;<br>MSD_PROJ_=
NAME=3D&quot;msdDrv&quot;<br>MSD_TOOL_DIR=3D&quot;${MSD_USER_BASE}/tools&qu=
ot;<br>RELEASE=3D&quot;YES&quot;<br>OS_RUN=3D&quot;LINUX&quot;<br>TOPAZ_BUI=
LD=3D&quot;YES&quot;<br>PERIDOT_BUILD=3D&quot;YES&quot;<br>AGATE_BUILD=3D&q=
uot;YES&quot;<br>PEARL_BUILD=3D&quot;YES&quot;<br>AMETHYST_BUILD=3D&quot;YE=
S&quot;<br></span>export STAGING_INCDIR<br>export STAGING_LIBDIR<br><br>do_=
compile () {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 make -C =C2=A0${MSD_ROOT}/src M=
SD_USER_BASE=3D${MSD_USER_BASE}/ MSD_PROJ_NAME=3DmsdDrv MSD_TOOL_DIR=3D&quo=
t;${MSD_USER_BASE}/tools&quot; RELEASE=3DYES OS_RUN:=3DLINUX PERIDOT_BUILD=
=3DYES<span class=3D"gmail-im" style=3D"color:rgb(80,0,80)"><br>}<br><br><b=
r>do_stage () {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 mkdir -p ${STAGING_INCDIR}/m=
arvell-umsd<br></span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <b>cp --dereference -R ${=
MSD_ROOT}/include/* ${STAGING_INCDIR}/marvell-umsd/</b><br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0<b> cp ${MSD_ROOT}/library/msdDrv.o ${STAGING_LIBDIR}</b><br>}=
<br><br></div><div><br></div><div><br></div><div>I checked the path below a=
nd could not see the include files or the=C2=A0

msdDrv.o

 copied anywhere. Please correct me with any other solution. Can I go with =
do_install () ?</div><div>The requirement=C2=A0is to use this recipe as a d=
ependency for other modules to use the=C2=A0include file and library.=C2=A0=
</div><div><br></div><div>sbaby@eadlng-build-machine:~/workspace/05222024_s=
imon/ecp-nic-test/build$ ls -ll tmp/work/cortexa7hf-neon-vfpv4-poky-linux-g=
nueabi/marvell-umsd/3.0.7-r0/<br>total 40<br>drwxr-xr-x 3 sbaby sbaby 4096 =
May 29 10:46 deploy-ipks<br>drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 lice=
nse-destdir<br>drwxr-xr-x 7 sbaby sbaby 4096 May 29 10:46 pkgdata-pdata-inp=
ut<br>drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-packagedata=
<br>drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-package_qa<br=
>drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-package_write_ip=
k<br>drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-populate_lic=
<br>drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-populate_sysr=
oot<br>drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 sysroot-destdir<br>drwxr-=
xr-x 2 sbaby sbaby 4096 May 29 14:52 temp<br></div><div><br></div><div>Rega=
rds</div><font color=3D"#888888"><div>Simon</div></font></div>

--00000000000026cc8a0619c75a4d--

