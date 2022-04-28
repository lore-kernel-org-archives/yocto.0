Return-Path: <mikko.rapeli@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB1DC433EF
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 11:15:06 +0000 (UTC)
Received: from esa8.hc324-48.eu.iphmx.com (esa8.hc324-48.eu.iphmx.com
 [207.54.65.242])
 by mx.groups.io with SMTP id smtpd.web11.8536.1651144504300835777
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 04:15:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1
 header.b=gd4jXIGH;
 spf=pass (domain: bmw.de, ip: 207.54.65.242,
 mailfrom: prvs=110bfcb55=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1651144504; x=1682680504;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=l3T+bkggPJubkKRlav6nuMf5GciGEh9cToiIq4cDLdg=;
  b=gd4jXIGHvFMuhIdkQFDQZoeOUQVdldNu62xrWbS9fXvU67ASK6F5YvHA
   rrPUUxVmQ+iTd65Tl43vZZABp95nnt767BGms6k09d2IjnfHwifI6lcld
   xQlkbysCoLHOuy+7sR+d7ENwGOmkdlq0st58H1+j7JFHBif0v0abG/tDH
   8=;
Received: from esagw2.bmwgroup.com (HELO esagw2.muc) ([160.46.252.38]) by
 esa8.hc324-48.eu.iphmx.com with ESMTP/TLS; 28 Apr 2022 13:15:01 +0200
Received: from esabb2.muc ([160.50.100.34])  by esagw2.muc with ESMTP/TLS;
 28 Apr 2022 13:15:01 +0200
Received: from smucm30j.bmwgroup.net (HELO SMUCM30J.europe.bmw.corp)
 ([160.46.167.46])
 by esabb2.muc with ESMTP/TLS; 28 Apr 2022 13:15:01 +0200
Received: from SMUCMP08F.europe.bmw.corp (10.30.13.72) by
 SMUCM30J.europe.bmw.corp
 (160.46.167.46) with Microsoft SMTP Server (TLS;
 Thu, 28 Apr 2022 13:15:00 +0200
Received: from SMUCMP08E.europe.bmw.corp (2a03:1e80:a15:58f::1:24) by
 SMUCMP08F.europe.bmw.corp (2a03:1e80:a15:58f::2013) with Microsoft SMTP
 Server (version=TLS; Thu, 28 Apr 2022 13:15:00 +0200
Received: from SMUCMP08E.europe.bmw.corp ([10.30.13.71]) by
 SMUCMP08E.europe.bmw.corp ([10.30.13.71]) with mapi id 15.02.0922.027; Thu,
 28 Apr 2022 13:15:00 +0200
From: <Mikko.Rapeli@bmw.de>
To: <ayoub.zaki@googlemail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Custom DISTRO_VERSION with git describe
Thread-Topic: [yocto] Custom DISTRO_VERSION with git describe
Thread-Index: AQHYWu/NHOIM5fB3nEOeoB4y+UIMXa0FCv6A
Date: Thu, 28 Apr 2022 11:15:00 +0000
Message-ID: <Ymp3MwKCqW2DbWe2@korppu>
References: 
 <CA+-BmJZxufzfqd=VR6MH+ZB3osYwpSyHvW=SvNNpag3gs+Wz8w@mail.gmail.com>
In-Reply-To: 
 <CA+-BmJZxufzfqd=VR6MH+ZB3osYwpSyHvW=SvNNpag3gs+Wz8w@mail.gmail.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="us-ascii"
Content-ID: <2D07C9315A6BE84EB8200811976AC1A7@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 11:15:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56931

Hi,

On Thu, Apr 28, 2022 at 01:04:22PM +0200, Ayoub Zaki via lists.yoctoproject=
.org wrote:
> hello,
>=20
>=20
> I would like to have a custom DISTRO_VERSION based on "git describe" of m=
y
> layer:
>=20
>=20
> 1) In my layer meta-mylayer/conf/layer.conf, I defined the following:
>=20
> # Set variable to get the location of the layer
> > MY_LAYER_BASE :=3D '${LAYERDIR}'
>=20
>=20
>=20
> 2) I created a my_distro_version.bbclass with following:
>=20
> def my_distro_version(d):
> >     import subprocess
> >     project_path =3D d.getVar('MY_LAYER_BASE', True)
> >     cmd =3D "git describe --tags"

I would also add --always and --dirty to be sure non-tagged clones
of repo work and builds with local modifications get marked as such.

> >     proc =3D subprocess.Popen(cmd, stdout=3Dsubprocess.PIPE, shell=3DTr=
ue,
> > cwd=3Dproject_path)
> >     out, err =3D  proc.communicate()
> >     return out.decode("utf-8").rstrip()
>=20
>=20
> 3)  Then I inherited it my  meta-mylayer/conf/distro/my_distro.conf :
>=20
> INHERIT +=3D "my_distro_version"
> > DISTRO_VERSION =3D "${@my_distro_version(d)}"

DISTRO_VERSION :=3D "${@my_distro_version(d)}"

That should do it :)

Cheers,

-Mikko=

