Return-Path: <mikko.rapeli@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA513C433EF
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 11:32:56 +0000 (UTC)
Received: from esa9.hc324-48.eu.iphmx.com (esa9.hc324-48.eu.iphmx.com
 [207.54.69.27])
 by mx.groups.io with SMTP id smtpd.web10.8792.1651145567283883293
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 04:32:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1
 header.b=VtOm91AL;
 spf=pass (domain: bmw.de, ip: 207.54.69.27,
 mailfrom: prvs=110bfcb55=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1651145567; x=1682681567;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=MqZzs31+OmHYkeJs8JzubZP8GCvAmkh50FB6pFNLmAY=;
  b=VtOm91ALOa8C1mv63P7whoMfHnlAFmrtdEHlTcdsmnpscRgKOKYaXcIV
   j/HoVDP5fJmkT0iuecxKYkDyoVA0Zc0jxkq78ETB2XbvlXpkYlm7FcLTI
   XD5cqj5xn+44N48m/soNvWjAdPo8XVhyVwA1xGtnswXb2Few7xnnTnTEW
   A=;
Received: from esagw1.bmwgroup.com (HELO esagw1.muc) ([160.46.252.34]) by
 esa9.hc324-48.eu.iphmx.com with ESMTP/TLS; 28 Apr 2022 13:32:44 +0200
Received: from esabb6.muc ([160.50.100.50])  by esagw1.muc with ESMTP/TLS;
 28 Apr 2022 13:32:39 +0200
Received: from smucm21j.bmwgroup.net (HELO smucm21j.europe.bmw.corp)
 ([160.48.96.124])
 by esabb6.muc with ESMTP/TLS; 28 Apr 2022 13:32:40 +0200
Received: from SMUCMP08A.europe.bmw.corp (10.30.13.67) by
 smucm21j.europe.bmw.corp
 (160.48.96.124) with Microsoft SMTP Server (TLS;
 Thu, 28 Apr 2022 13:32:39 +0200
Received: from SMUCMP08E.europe.bmw.corp (2a03:1e80:a15:58f::1:24) by
 SMUCMP08A.europe.bmw.corp (2a03:1e80:a15:58f::212c) with Microsoft SMTP
 Server (version=TLS; Thu, 28 Apr 2022 13:32:39 +0200
Received: from SMUCMP08E.europe.bmw.corp ([10.30.13.71]) by
 SMUCMP08E.europe.bmw.corp ([10.30.13.71]) with mapi id 15.02.0922.027; Thu,
 28 Apr 2022 13:32:39 +0200
From: <Mikko.Rapeli@bmw.de>
To: <ayoub.zaki@googlemail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Custom DISTRO_VERSION with git describe
Thread-Topic: [yocto] Custom DISTRO_VERSION with git describe
Thread-Index: AQHYWu/NHOIM5fB3nEOeoB4y+UIMXa0FCv6AgAAC0ICAAAIeAA==
Date: Thu, 28 Apr 2022 11:32:39 +0000
Message-ID: <Ymp7VsxfuQeCSgKx@korppu>
References: 
 <CA+-BmJZxufzfqd=VR6MH+ZB3osYwpSyHvW=SvNNpag3gs+Wz8w@mail.gmail.com>
 <Ymp3MwKCqW2DbWe2@korppu>
 <CA+-BmJYsMtjHw=bUUJ2-DF4N-Jvun_9uYh9k=a_DrUoBoSAdiQ@mail.gmail.com>
In-Reply-To: 
 <CA+-BmJYsMtjHw=bUUJ2-DF4N-Jvun_9uYh9k=a_DrUoBoSAdiQ@mail.gmail.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="us-ascii"
Content-ID: <3C4E2DC04DF83548B82264D749055EDD@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 11:32:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56934

On Thu, Apr 28, 2022 at 01:25:03PM +0200, Ayoub Zaki wrote:
> Hi,
>=20
> thanks for the quick reply I tried your suggestion but I get:
>=20
> ERROR: Unable to parse Var <DISTRO_VERSION[:=3D]>
> Traceback (most recent call last):
>   File "Var <DISTRO_VERSION[:=3D]>", line 1, in <module>
> bb.data_smart.ExpansionError: Failure expanding variable
> DISTRO_VERSION[:=3D], expression was ${@my_distro_version(d)} which trigg=
ered
> exception NameError: name 'my_distro_version' is not defined

Did you include the bbclass?

> I think in this case the INHERIT doesn't work !

Well I have in distro config:

require classes/distroversion.bbclass

which has a single python function

def get_distro_version(d, dirty=3DTrue, abbrev=3DNone):

which basically calls "git describe --always --dirty --abbrev=3D8",
the last one was added when git versions started behaving differently
and breaking reproducibility.

And then distro config also has:

DISTRO_VERSION :=3D "${@get_distro_version(d)}"

This works for me up to yocto 3.1 dunfell at least.

Cheers,

-Mikko=

