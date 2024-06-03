Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C86BC25B76
	for <webhook@archiver.kernel.org>; Mon,  3 Jun 2024 16:43:28 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web11.88872.1717433001059125179
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jun 2024 09:43:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GvE18IKr;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: simonkbaby@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2c1e6eadb54so149757a91.3
        for <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 09:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717433000; x=1718037800; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vkeiK9ducuL98Aw2I02WKqCD0Crxd5Us2FPmKpn/2gU=;
        b=GvE18IKrAGO6nHEvrUIQ48H6BS7YPry7cty8lcda53s7/O9mgPY7n9Q07uGbO8mup8
         nSKefGaVudpjm1KKxaLEdiQaocKj7Jwz8hp6vfkAQjI8cC+VQMueLU4LLljpPbs6Dq7H
         Fq4F0aOqVQ9AgrG1nezvL71znO7DI8tsrWgNoZaU5RWm0uf5MyxlsZUKBlrW05kUWevy
         WEl0KKRS9XUU6ki1h8pIgwOJOHdjo92/43DyaVMjfdIXvGrIqBuCBAFZg7t5gzfQbQh4
         TTGB1YpLpEbAELBmSioCH6XSU9hvuC6yr8EeD/PQBpX/sobpAEv63pNUOJMXsOk4qoZA
         3AIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717433000; x=1718037800;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vkeiK9ducuL98Aw2I02WKqCD0Crxd5Us2FPmKpn/2gU=;
        b=VmrQf7eM78gUEobDUrnyWmLGian7P8eVdWSWAdfMB1sDDu4q6kn8/OpwrGgTK2WVBM
         xmWttgVNeEDbOKVKJ/bDTlcMFJGTDgmJdh6jlpgojS/kT8CbKQt1hbIQPnwOG0usgJjZ
         h5b5JUR6n50ymRx2dO5n5VWmzMtcMtVPCZwCOOR9u/JMdWMGbqx+h8BTb6FojNBYbIEv
         hMjN+Kke2r+aah2x9vMZXLp8uI0+UJ43BYxi5bH/LK3G5s6q0Nzavs5KjCL9b1vtkjG1
         jhzEeDY1RRFQ9Fw4EkoyxosQSpHIg3lNdIqP6m5zxyGglff5SHxZkIzxbSEWy/Q4Homn
         QnFA==
X-Gm-Message-State: AOJu0YwV4GkGS8nU+7rH58RX4nGwLdnRGmSgk6vT9t8KanLKqRyuWhkf
	Esc0RUTvvaoowKEiyFdw7arrwD5pzKcHj/fWidGp8xaz2REHcDCDNesQ5DoWZG19sf28rdi0I2S
	wLyFZqFIvg2rkecVUVmcq86WjW84=
X-Google-Smtp-Source: AGHT+IE11BITf05G1jwf05X0rBuB7zyFfm5UwFiGtBtQuPklHoVT8dMcmNgR43a667w4Jj5TQHODk1z+OQFjbg75Zp8=
X-Received: by 2002:a17:90b:f87:b0:2bd:ed6d:de9 with SMTP id
 98e67ed59e1d1-2c1dc587d1amr8169439a91.24.1717433000305; Mon, 03 Jun 2024
 09:43:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFUPH03pVQO2pmeyCwQ4WW_mEGJXZvV=2Wihi+LL2+woEUhPg@mail.gmail.com>
 <CANNYZj855qs0zrV0_6qYXrhtmLE-eVsG2-y_a=9oUGvmFvYNXg@mail.gmail.com>
In-Reply-To: <CANNYZj855qs0zrV0_6qYXrhtmLE-eVsG2-y_a=9oUGvmFvYNXg@mail.gmail.com>
From: SIMON BABY <simonkbaby@gmail.com>
Date: Mon, 3 Jun 2024 09:43:09 -0700
Message-ID: <CAEFUPH33YJ7QWTN5hgoZH_-TAoobRzZTtMgU+Zsk7XqV8TyjEg@mail.gmail.com>
Subject: Re: [yocto] query on do_stage
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e8acb40619ff078a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 16:43:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63263

--000000000000e8acb40619ff078a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander,

Thank you for your comments. I tried the below sequence of commands and
still could not see anything generated for include or library files.

bitbake -c clean marvell-umsd
bitbake -c clean -f marvell-umsd
bitbake -c cleansstate marvell-umsd
rm -rf sstate-cache/

sbaby@eadlng-build-machine:~/workspace/05222024_simon/ecp-nic-test/build/tm=
p/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/marvell-umsd/3.0.7-r0$
ls
configure.sstate  deploy-source-date-epoch  license-destdir  packages-split
 pkgdata-pdata-input  pseudo          recipe-sysroot-native
 sysroot-destdir  UMSD_v3.0.7
deploy-ipks       image                     package          pkgdata
  pkgdata-sysroot      recipe-sysroot  source-date-epoch      temp


My recipe does not have do_install() but it has do_stage() function. Where
are those files generated? (Marked in bold below)

do_stage () {
        mkdir -p ${STAGING_INCDIR}/marvell-umsd
        *cp --dereference -R ${MSD_ROOT}/include/*
${STAGING_INCDIR}/marvell-umsd/*
       * cp ${MSD_ROOT}/library/msdDrv.o ${STAGING_LIBDIR}*
}



Regards
Simon


On Sat, Jun 1, 2024 at 3:10=E2=80=AFAM Alexander Kanavin <alex.kanavin@gmai=
l.com>
wrote:

> The folders indicate that the build happened entirely from sstate, and
> so only the sstate objects for populate_sysroot and package_write_ipk
> tasks were executed. You need to use -c cleansstate first and rerun
> it.
>
> Alex
>
> On Sat, 1 Jun 2024 at 00:17, SIMON BABY via lists.yoctoproject.org
> <simonkbaby=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hei Team,
> >
> > I have a recipe below. I did not see the staging directory under the tm=
p
> generated folder. Is there a hidden folder or where are the files going?
> >
> >
> > DESCRIPTION =3D "UMSD SDK library for Marvell Switch Product Family."
> > LICENSE =3D "CLOSED"
> > PR =3D "r0"
> > PROVIDES =3D "marvell-umsd"
> > SRC_URI =3D "file://UMSD_v${PV}.tar.gz"
> >
> > S =3D "${WORKDIR}/UMSD_v${PV}"
> >
> > MSD_ROOT=3D"${S}"
> > MSD_USER_BASE=3D"${MSD_ROOT}"
> > MSD_PROJ_NAME=3D"msdDrv"
> > MSD_TOOL_DIR=3D"${MSD_USER_BASE}/tools"
> > RELEASE=3D"YES"
> > OS_RUN=3D"LINUX"
> > TOPAZ_BUILD=3D"YES"
> > PERIDOT_BUILD=3D"YES"
> > AGATE_BUILD=3D"YES"
> > PEARL_BUILD=3D"YES"
> > AMETHYST_BUILD=3D"YES"
> > export STAGING_INCDIR
> > export STAGING_LIBDIR
> >
> > do_compile () {
> >         make -C  ${MSD_ROOT}/src MSD_USER_BASE=3D${MSD_USER_BASE}/
> MSD_PROJ_NAME=3DmsdDrv MSD_TOOL_DIR=3D"${MSD_USER_BASE}/tools" RELEASE=3D=
YES
> OS_RUN:=3DLINUX PERIDOT_BUILD=3DYES
> > }
> >
> >
> > do_stage () {
> >         mkdir -p ${STAGING_INCDIR}/marvell-umsd
> >         cp --dereference -R ${MSD_ROOT}/include/*
> ${STAGING_INCDIR}/marvell-umsd/
> >         cp ${MSD_ROOT}/library/msdDrv.o ${STAGING_LIBDIR}
> > }
> >
> >
> >
> > I checked the path below and could not see the include files or the
> msdDrv.o copied anywhere. Please correct me with any other solution. Can =
I
> go with do_install () ?
> > The requirement is to use this recipe as a dependency for other modules
> to use the include file and library.
> >
> > sbaby@eadlng-build-machine:~/workspace/05222024_simon/ecp-nic-test/buil=
d$
> ls -ll
> tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/marvell-umsd/3.0.7-r0/
> > total 40
> > drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 deploy-ipks
> > drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 license-destdir
> > drwxr-xr-x 7 sbaby sbaby 4096 May 29 10:46 pkgdata-pdata-input
> > drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-packagedata
> > drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-package_qa
> > drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52
> sstate-install-package_write_ipk
> > drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-populate_lic
> > drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52
> sstate-install-populate_sysroot
> > drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 sysroot-destdir
> > drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 temp
> >
> > Regards
> > Simon
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#63251):
> https://lists.yoctoproject.org/g/yocto/message/63251
> > Mute This Topic: https://lists.yoctoproject.org/mt/106417703/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--000000000000e8acb40619ff078a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Alexander,<div><br></div><div>Thank you for your com=
ments. I tried the below sequence of commands and still could not see anyth=
ing generated for include or library files.=C2=A0</div><div><br></div><div>=
bitbake -c clean marvell-umsd<br>bitbake -c clean -f marvell-umsd <br>bitba=
ke -c cleansstate marvell-umsd<br>rm -rf sstate-cache/<br></div><div><br></=
div><div>sbaby@eadlng-build-machine:~/workspace/05222024_simon/ecp-nic-test=
/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/marvell-umsd/3.0.7=
-r0$ ls<br>configure.sstate =C2=A0deploy-source-date-epoch =C2=A0license-de=
stdir =C2=A0packages-split =C2=A0pkgdata-pdata-input =C2=A0pseudo =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0recipe-sysroot-native =C2=A0sysroot-destdir =C2=
=A0UMSD_v3.0.7<br>deploy-ipks =C2=A0 =C2=A0 =C2=A0 image =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 package =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0pkgdata =C2=A0 =C2=A0 =C2=A0 =C2=A0 pkgdata-sysroot =C2=
=A0 =C2=A0 =C2=A0recipe-sysroot =C2=A0source-date-epoch =C2=A0 =C2=A0 =C2=
=A0temp<br></div><div><br></div><div><br></div><div>My recipe does not have=
 do_install() but it has do_stage() function. Where are those files generat=
ed? (Marked in bold below)</div><div><br></div><div><span style=3D"color:rg=
b(80,0,80)">do_stage () {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 mkdir -p ${STAGING=
_INCDIR}/marvell-umsd<br></span>=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<b>cp --de=
reference -R ${MSD_ROOT}/include/* ${STAGING_INCDIR}/marvell-umsd/</b><br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0<b>=C2=A0cp ${MSD_ROOT}/library/msdDrv.o ${STAGI=
NG_LIBDIR}</b><br>}<br></div><div><br></div><div><br></div><div><br></div><=
div>Regards</div><div>Simon</div><div><br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jun 1, 2024 at 3:10=
=E2=80=AFAM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com"=
>alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">The folders indicate that the build happened entirel=
y from sstate, and<br>
so only the sstate objects for populate_sysroot and package_write_ipk<br>
tasks were executed. You need to use -c cleansstate first and rerun<br>
it.<br>
<br>
Alex<br>
<br>
On Sat, 1 Jun 2024 at 00:17, SIMON BABY via <a href=3D"http://lists.yoctopr=
oject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a><=
br>
&lt;simonkbaby=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=
=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hei Team,<br>
&gt;<br>
&gt; I have a recipe below. I did not see the staging directory under the t=
mp generated folder. Is there a hidden folder or where are the files going?=
<br>
&gt;<br>
&gt;<br>
&gt; DESCRIPTION =3D &quot;UMSD SDK library for Marvell Switch Product Fami=
ly.&quot;<br>
&gt; LICENSE =3D &quot;CLOSED&quot;<br>
&gt; PR =3D &quot;r0&quot;<br>
&gt; PROVIDES =3D &quot;marvell-umsd&quot;<br>
&gt; SRC_URI =3D &quot;file://UMSD_v${PV}.tar.gz&quot;<br>
&gt;<br>
&gt; S =3D &quot;${WORKDIR}/UMSD_v${PV}&quot;<br>
&gt;<br>
&gt; MSD_ROOT=3D&quot;${S}&quot;<br>
&gt; MSD_USER_BASE=3D&quot;${MSD_ROOT}&quot;<br>
&gt; MSD_PROJ_NAME=3D&quot;msdDrv&quot;<br>
&gt; MSD_TOOL_DIR=3D&quot;${MSD_USER_BASE}/tools&quot;<br>
&gt; RELEASE=3D&quot;YES&quot;<br>
&gt; OS_RUN=3D&quot;LINUX&quot;<br>
&gt; TOPAZ_BUILD=3D&quot;YES&quot;<br>
&gt; PERIDOT_BUILD=3D&quot;YES&quot;<br>
&gt; AGATE_BUILD=3D&quot;YES&quot;<br>
&gt; PEARL_BUILD=3D&quot;YES&quot;<br>
&gt; AMETHYST_BUILD=3D&quot;YES&quot;<br>
&gt; export STAGING_INCDIR<br>
&gt; export STAGING_LIBDIR<br>
&gt;<br>
&gt; do_compile () {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0make -C=C2=A0 ${MSD_ROOT}/src MSD_USE=
R_BASE=3D${MSD_USER_BASE}/ MSD_PROJ_NAME=3DmsdDrv MSD_TOOL_DIR=3D&quot;${MS=
D_USER_BASE}/tools&quot; RELEASE=3DYES OS_RUN:=3DLINUX PERIDOT_BUILD=3DYES<=
br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt; do_stage () {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mkdir -p ${STAGING_INCDIR}/marvell-um=
sd<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cp --dereference -R ${MSD_ROOT}/inclu=
de/* ${STAGING_INCDIR}/marvell-umsd/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cp ${MSD_ROOT}/library/msdDrv.o ${STA=
GING_LIBDIR}<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I checked the path below and could not see the include files or the=C2=
=A0 msdDrv.o copied anywhere. Please correct me with any other solution. Ca=
n I go with do_install () ?<br>
&gt; The requirement is to use this recipe as a dependency for other module=
s to use the include file and library.<br>
&gt;<br>
&gt; sbaby@eadlng-build-machine:~/workspace/05222024_simon/ecp-nic-test/bui=
ld$ ls -ll tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/marvell-umsd/3=
.0.7-r0/<br>
&gt; total 40<br>
&gt; drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 deploy-ipks<br>
&gt; drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 license-destdir<br>
&gt; drwxr-xr-x 7 sbaby sbaby 4096 May 29 10:46 pkgdata-pdata-input<br>
&gt; drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-packagedata<=
br>
&gt; drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-package_qa<b=
r>
&gt; drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-package_writ=
e_ipk<br>
&gt; drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-populate_lic=
<br>
&gt; drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-populate_sys=
root<br>
&gt; drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 sysroot-destdir<br>
&gt; drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 temp<br>
&gt;<br>
&gt; Regards<br>
&gt; Simon<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#63251): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/63251" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/63251</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10641770=
3/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/106417703/1686489</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">ale=
x.kanavin@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--000000000000e8acb40619ff078a--

