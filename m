Return-Path: <mikko.rapeli@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE1B2C433EF
	for <webhook@archiver.kernel.org>; Wed, 16 Mar 2022 09:12:39 +0000 (UTC)
Received: from esa10.hc324-48.eu.iphmx.com (esa10.hc324-48.eu.iphmx.com
 [207.54.69.29])
 by mx.groups.io with SMTP id smtpd.web09.22937.1647421957548597374
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 02:12:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1
 header.b=KOMSbvPf;
 spf=pass (domain: bmw.de, ip: 207.54.69.29,
 mailfrom: prvs=067c27cfd=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1647421957; x=1678957957;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=mpsenZzgpAyvNqlIF/7dJASHT3Y22rchDZpr1ztjawk=;
  b=KOMSbvPfpn4jGUyAKr/3bYvOsc0XERo0ZCVrqjqvAwl+79+60ZilAIt7
   rcKOvNd3z5C3Pnr6EUvN/o2ak+Tvc97yjID1jm87spbB+erhkk1PVFLi3
   ZLLW3kgAHnDcIVtzydG1pJL2eINxeqB2rgpW4mmNEwuv7Nanp82u9eJ8k
   g=;
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
 esa10.hc324-48.eu.iphmx.com with ESMTP/TLS; 16 Mar 2022 10:12:35 +0100
Received: from esabb6.muc ([160.50.100.50])  by esagw6.muc with ESMTP/TLS;
 16 Mar 2022 10:12:35 +0100
Received: from smucm33l.bmwgroup.net (HELO smucm33l.europe.bmw.corp)
 ([160.46.167.68])
 by esabb6.muc with ESMTP/TLS; 16 Mar 2022 10:12:35 +0100
Received: from smucm33l.europe.bmw.corp (160.46.167.68) by
 smucm33l.europe.bmw.corp
 (160.46.167.68) with Microsoft SMTP Server (TLS;
 Wed, 16 Mar 2022 10:12:34 +0100
Received: from smucm33l.europe.bmw.corp ([160.46.167.68]) by
 smucm33l.europe.bmw.corp ([160.46.167.68]) with mapi id 15.00.1497.028; Wed,
 16 Mar 2022 10:12:34 +0100
From: <Mikko.Rapeli@bmw.de>
To: <hrsourabh011@gmail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to manage disk space while working with Yocto?
Thread-Topic: [yocto] How to manage disk space while working with Yocto?
Thread-Index: AQHYOQsRc5DPVRviZECEBsHiLYMjNazBqRUA
Date: Wed, 16 Mar 2022 09:12:34 +0000
Message-ID: <YjGqAFTxBi4EIILq@korppu>
References: <Glxl.1647417254477654340.oyPL@lists.yoctoproject.org>
In-Reply-To: <Glxl.1647417254477654340.oyPL@lists.yoctoproject.org>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
Content-Type: text/plain; charset="us-ascii"
Content-ID: <9931A29FBC397A4CA13D1D8953EB8335@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 09:12:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56457

Hi,

On Wed, Mar 16, 2022 at 12:54:14AM -0700, Sourabh Hegde wrote:
> Hello All,
>=20
> I am using Yocto for one of my project. I know that Yocto needs a good am=
ount of disk space for build activities. And also I am working as non-root =
user in Ubuntu 20.04. But I often run into space issues during build.
>=20
> WARNING: The free space of [...]/tmp-glibc (overlay) is running low (0.55=
5GB left)
> ERROR: No new tasks can be executed since the disk space monitor action i=
s "STOPTASKS"!
> WARNING: The free space of [...]/downloads (overlay) is running low (0.55=
5GB left)
> ERROR: No new tasks can be executed since the disk space monitor action i=
s "STOPTASKS"!
> WARNING: The free space of [...]/sstate-cache (overlay) is running low (0=
.555GB left)
> ERROR: No new tasks can be executed since the disk space monitor action i=
s "STOPTASKS"!
>=20
> I have tried deleting $TMPDIR (build/tmp) , $SSTATE_DIR (build/sstate-cac=
he) , $DL_DIR (build/downloads). But these things didn't help me.
>=20
> Is there any way to allocate more space to user in Ubuntu? And also what =
is the best practice for space usage while working with Yocto?
>=20
> Can anyone please let me know how to resolve this issue?
>=20
> Your help will be much appreciated.

This is a common problem. I run to this almost weekly basis doing a lot yoc=
to compiles
on my developer machine.

Solution for me is to manually check before compiling that I still have
100's gigabytes of diskspace free. If not, I will delete first build/tmp
directories. If that doesn't give me enough free space, I sometimes need to
delete the whole build directory which includes the sstate cache directorie=
s.
In worst case I need to delete also the download cache directories which
in my case lives outside of build directories.

On CI build servers I start every build by cleaning the build directory but=
 I do
preserve the sstate cache, cache directory (prserv database from previous r=
elease),
and download cache. Size of the caches on each CI server is monitored separ=
ately.

Hope this helps,

-Mikko=

