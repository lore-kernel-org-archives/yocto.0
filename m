Return-Path: <mikko.rapeli@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD4F3C433EF
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 11:52:16 +0000 (UTC)
Received: from esa12.hc324-48.eu.iphmx.com (esa12.hc324-48.eu.iphmx.com
 [207.54.72.34])
 by mx.groups.io with SMTP id smtpd.web08.8979.1651146731894127215
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 04:52:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1
 header.b=BD9jOUiO;
 spf=pass (domain: bmw.de, ip: 207.54.72.34,
 mailfrom: prvs=110bfcb55=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1651146731; x=1682682731;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=NROPlgAk5VP94l+6d0zLLKquFLsy13nZQWL0YbyPaAY=;
  b=BD9jOUiOmDppXVc1x5Kynm7un3gaEwcwmA46RDehsVNdJ+4tg09AXURr
   R6wy+2kph5H2x80jaSSSr9qnX5H4/j3Hmjtzg8vqCHuyOl+kY2aqBH0Y2
   1msBODo2jbhb36HL9RZG6fhhURHlKzH/EuBEP87vHMroqiuUbBhdGJ9OO
   g=;
Received: from esagw2.bmwgroup.com (HELO esagw2.muc) ([160.46.252.38]) by
 esa12.hc324-48.eu.iphmx.com with ESMTP/TLS; 28 Apr 2022 13:52:08 +0200
Received: from esabb3.muc ([160.50.100.30])  by esagw2.muc with ESMTP/TLS;
 28 Apr 2022 13:52:09 +0200
Received: from smucm15k.bmwgroup.net (HELO smucm15k.europe.bmw.corp)
 ([160.48.96.67])
 by esabb3.muc with ESMTP/TLS; 28 Apr 2022 13:52:09 +0200
Received: from SMUCMP08A.europe.bmw.corp (10.30.13.67) by
 smucm15k.europe.bmw.corp
 (160.48.96.67) with Microsoft SMTP Server (TLS;
 Thu, 28 Apr 2022 13:52:08 +0200
Received: from SMUCMP08E.europe.bmw.corp (2a03:1e80:a15:58f::1:24) by
 SMUCMP08A.europe.bmw.corp (2a03:1e80:a15:58f::212c) with Microsoft SMTP
 Server (version=TLS; Thu, 28 Apr 2022 13:52:08 +0200
Received: from SMUCMP08E.europe.bmw.corp ([10.30.13.71]) by
 SMUCMP08E.europe.bmw.corp ([10.30.13.71]) with mapi id 15.02.0922.027; Thu,
 28 Apr 2022 13:52:08 +0200
From: <Mikko.Rapeli@bmw.de>
To: <ayoub.zaki@googlemail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Custom DISTRO_VERSION with git describe
Thread-Topic: [yocto] Custom DISTRO_VERSION with git describe
Thread-Index: AQHYWu/NHOIM5fB3nEOeoB4y+UIMXa0FCv6AgAAC0ICAAAIeAIAAAaqAgAADyIA=
Date: Thu, 28 Apr 2022 11:52:08 +0000
Message-ID: <Ymp/526iIco9iMuV@korppu>
References: 
 <CA+-BmJZxufzfqd=VR6MH+ZB3osYwpSyHvW=SvNNpag3gs+Wz8w@mail.gmail.com>
 <Ymp3MwKCqW2DbWe2@korppu>
 <CA+-BmJYsMtjHw=bUUJ2-DF4N-Jvun_9uYh9k=a_DrUoBoSAdiQ@mail.gmail.com>
 <Ymp7VsxfuQeCSgKx@korppu>
 <CA+-BmJY1jCPuv=iUnvKghVZ48MosAEfbn5Nx5DopW6H8BmvjXg@mail.gmail.com>
In-Reply-To: 
 <CA+-BmJY1jCPuv=iUnvKghVZ48MosAEfbn5Nx5DopW6H8BmvjXg@mail.gmail.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5082FDEF4511DF46886A5357892FB803@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 11:52:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56937

Hi,

On Thu, Apr 28, 2022 at 01:38:35PM +0200, Ayoub Zaki wrote:
> I'm also suing dunfell branch, I did a small modification in
> my_distro_version.bbclass:
>=20
> def my_distro_version(d):
> >     import subprocess
> >     project_path =3D d.getVar('MY_LAYER_BASE', True)
> >     cmd =3D "git describe --tags"
> >     proc =3D subprocess.Popen(cmd, stdout=3Dsubprocess.PIPE, shell=3DTr=
ue,
> > cwd=3Dproject_path)
> >     out, err =3D  proc.communicate()
> >     return out.decode("utf-8").rstrip()
> > MY_DISTRO_VERSION :=3D "${@my_distro_version(d)}"
>=20
>=20
>=20
> Then in meta-mylayer/conf/distro/my_distro.conf I used:
>=20
> > INHERIT +=3D "my_distro_version"
> > DISTRO_VERSION :=3D "${MY_DISTRO_VERSION}"
>=20
>=20
> It seems to be working now :-)

Good! Just a hint that you might want to set SDK_VERSION to the same.

Cheers,

-Mikko=

