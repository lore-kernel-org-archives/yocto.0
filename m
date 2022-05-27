Return-Path: <mikko.rapeli@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF4DEC433EF
	for <webhook@archiver.kernel.org>; Fri, 27 May 2022 15:45:19 +0000 (UTC)
Received: from esa7.hc324-48.eu.iphmx.com (esa7.hc324-48.eu.iphmx.com
 [207.54.71.126])
 by mx.groups.io with SMTP id smtpd.web10.5195.1653666309858880845
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 May 2022 08:45:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=TN1SezZ2;
 spf=pass (domain: bmw.de, ip: 207.54.71.126,
 mailfrom: prvs=139699e56=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1653666310; x=1685202310;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=UQ4Sl2xDUW7ewMNaZhlCipOPDfSKu6e+aq6ruxjWMXg=;
  b=TN1SezZ2kRXAuv8sdf+hMAsoEnmEFjcLbmpknXouvBj3EL6ca9uUUx73
   /B8SHtnQ7TBq0KgWPPoKxsdY79a28Jj8FMMpa7z58VjWIlzBnZ3vTdZH/
   xhFGHgQoti21J1iSgZmPuuyPFijMe5u80M3tDGRrhklUBUVdZOvi02dfo
   Q=;
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
 esa7.hc324-48.eu.iphmx.com with ESMTP/TLS; 27 May 2022 17:44:50 +0200
Received: from esabb6.muc ([160.50.100.50])  by esagw4.muc with ESMTP/TLS;
 27 May 2022 17:44:50 +0200
Received: from smucm17m.bmwgroup.net (HELO smucm17m.europe.bmw.corp)
 ([160.48.96.77])
 by esabb6.muc with ESMTP/TLS; 27 May 2022 17:44:50 +0200
Received: from SMUCMP08G.europe.bmw.corp (10.30.13.73) by
 smucm17m.europe.bmw.corp
 (160.48.96.77) with Microsoft SMTP Server (TLS;
 Fri, 27 May 2022 17:44:50 +0200
Received: from SMUCMP08E.europe.bmw.corp (2a03:1e80:a15:58f::1:24) by
 SMUCMP08G.europe.bmw.corp (2a03:1e80:a15:58f::2039) with Microsoft SMTP
 Server (version=TLS; Fri, 27 May 2022 17:44:49 +0200
Received: from SMUCMP08E.europe.bmw.corp ([10.30.13.71]) by
 SMUCMP08E.europe.bmw.corp ([10.30.13.71]) with mapi id 15.02.0922.027; Fri,
 27 May 2022 17:44:49 +0200
From: <Mikko.Rapeli@bmw.de>
To: <dan@engineeredarts.co.uk>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] host file contamination with recipes using cmake and
 find_package
Thread-Topic: [yocto] host file contamination with recipes using cmake and
 find_package
Thread-Index: AQHYcdubyXwGeq/xqESPtKZpydbiNa0ytk4AgAAD2QCAAAH/gA==
Date: Fri, 27 May 2022 15:44:49 +0000
Message-ID: <YpDx8SvCLfnCooyz@korppu>
References: <VDCD.1653664077949368330.uKFK@lists.yoctoproject.org>
 <YpDtCghBbiV8fiZO@korppu>
 <4ef989e9-e640-e6e7-59e7-e8a64c724b18@engineeredarts.co.uk>
In-Reply-To: <4ef989e9-e640-e6e7-59e7-e8a64c724b18@engineeredarts.co.uk>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <EF28A5DE54C92842AD6841A841A5629B@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 May 2022 15:45:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57204

Hi,

On Fri, May 27, 2022 at 04:37:40PM +0100, Daniel Squires wrote:
> We are indeed using
>=20
> inherit cmake
>=20
> The CMakeLists.txt adds a few bits to CMAKE_CXX_FLAGS but does not outrig=
ht
> clobber it. I have noticed in other recipes some things like:
>=20
> EXTRA_OECONF =3D " --with-openssl=3D${STAGING_DIR_HOST}${prefix} \
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "
>
> And from the docs it seems like this maybe intended to help with this, bu=
t I
> am not entirely sure. Does that look right?=A0 I don't currently have acc=
ess
> to one of the systems where the build is failing but I'll try it out next
> week.

To me this looks wrong. If CMake is used and toolchain.cmake variables not =
overwritten,
the sysroot path is set and openssl will be found from default system inclu=
de
directories inside sysroot and nothing like this needs to be added as long =
as
DEPENDS has openssl. I'd debug this under bitbake -c devshell.

Cheers,

-Mikko=

