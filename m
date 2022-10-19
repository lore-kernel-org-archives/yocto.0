Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0AA8C4321E
	for <webhook@archiver.kernel.org>; Wed, 19 Oct 2022 08:43:01 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web08.5729.1666168968077635147
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Oct 2022 01:42:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=nflaMCIk;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from Hephaistos.local (unknown [94.31.102.219])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id D5FF140181;
	Wed, 19 Oct 2022 10:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1666168963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8qTSOCtdZMM4Q5dDuHkG4GjoLcG3K8+vJD1DJnVaaeU=;
	b=nflaMCIk6hU5Ti39BV9pR2slKAwdjDDqhMM4xTTyaxQp2iAnUiQK2HiXLwUaHlQSEwylcp
	qcY/0wejph3U2pGpftXRf44ya/8aSWC92IXJ4WLKp+fV/WtCpXES6VPRB5qBEznQwQOA7J
	9Y0LFxxkwtnadFDi74Ou+PXvpNUQ+Qo=
Date: Wed, 19 Oct 2022 10:42:42 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Dealing with go dependencies in recipes - native
 docker-compose
Message-ID: <Y0+4gnAskTl8UnWh@Hephaistos.local>
References: <Y0WtLKYWtdcM9wIp@Hephaistos.local>
 <CADkTA4PEob-LJpM_oEkxO-hbyLq5DnENFOaYzvkhnKvu8hziqQ@mail.gmail.com>
 <Y0gbF+3+kU0Z3UW8@aglaia.inside-m2m.de>
 <CADkTA4MmC_PCX8+XiXD_dX+aSnfBRtkoP0LzwyGi=PMNpArssQ@mail.gmail.com>
 <Y06GaXT/pwZ8eSS+@aglaia.inside-m2m.de>
 <171F2C43CEC2B33F.27826@lists.yoctoproject.org>
 <CADkTA4ONwOMCAPexh+_srLiPm+TMs1pKiXCWPqfM+1FUy9X_yQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <CADkTA4ONwOMCAPexh+_srLiPm+TMs1pKiXCWPqfM+1FUy9X_yQ@mail.gmail.com>
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Oct 2022 08:43:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58364

On Tue, Oct 18, 2022 at 01:39:34PM -0400, Bruce Ashfield wrote:

> root@qemux86-64-c9:~# /usr/lib/docker/cli-plugins/docker-compose versio=
n
>=20
> Docker Compose version v2.11.2

root@insidem2m:~/docker-nginx-demo# docker compose version
Docker Compose version v2.11.2

I did a test run with a small docker-compose.yml for a nginx hello world =
demo.
It worked flawlessly, downloading, installing and starting went really
fine.

Perfect, nice work!

Kind Regards
Konstantin




--=20
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Stra=DFe 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de=20

Gesch=E4ftsf=FChrung: Michael Emmert, Ingo Haase, Dr. Fred K=F6nemann, De=
rek Uhlig
HRB: 111204, AG Hannover


