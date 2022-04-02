Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3870C64EBE
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:48 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web09.13921.1648918648314264497
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 Apr 2022 09:57:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@inside-m2m.de
 header.s=default header.b=SSj1KWo2;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244,
 mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from localhost (localhost [127.0.0.1])
	by mail.inside-m2m.de (Postfix) with ESMTP id 5B14140250;
	Sat,  2 Apr 2022 18:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1648918645;
	bh=Iixo9jcQO+qjQPsw8MY+Cso5FunGgJAj+vuxftRE1dU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SSj1KWo2NJzlhn4KhF7YUBUOu6dOHbmTdCnIi7XDvWN4YZBr9NmtZdZ0ySvjs6ZqU
	 6AU27I52mNe4e6fPBuAyba8RtU456I9+eXjvDIOgsqvYlagLKm0fiSukTAa2KziRjY
	 SBYLiSZ/pfea4nXMvKm8DaTPLHbR/RMkm45qsOA7wmbcAdO+su+tRBBd5RmktUt8nB
	 x1xlcb2EAoojd3j2GmKWvPAgNDEKWRWsY+oHYZHMpjA1bgiroixwJY+IMn6GvTHsb4
	 R+8JJ8Ob+GiBSTsMvv4G6cfMpAVK/qnO5LYy6vGn34KP7Ta8rkh8ypwS49vmE0HOdT
	 TFCGZBa2DY/nQ==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
	by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HMtpetfF47_8; Sat,  2 Apr 2022 18:57:25 +0200 (CEST)
Received: from Hephaistos (unknown [94.31.102.219])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id EAEB1400E8;
	Sat,  2 Apr 2022 18:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1648918645;
	bh=Iixo9jcQO+qjQPsw8MY+Cso5FunGgJAj+vuxftRE1dU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SSj1KWo2NJzlhn4KhF7YUBUOu6dOHbmTdCnIi7XDvWN4YZBr9NmtZdZ0ySvjs6ZqU
	 6AU27I52mNe4e6fPBuAyba8RtU456I9+eXjvDIOgsqvYlagLKm0fiSukTAa2KziRjY
	 SBYLiSZ/pfea4nXMvKm8DaTPLHbR/RMkm45qsOA7wmbcAdO+su+tRBBd5RmktUt8nB
	 x1xlcb2EAoojd3j2GmKWvPAgNDEKWRWsY+oHYZHMpjA1bgiroixwJY+IMn6GvTHsb4
	 R+8JJ8Ob+GiBSTsMvv4G6cfMpAVK/qnO5LYy6vGn34KP7Ta8rkh8ypwS49vmE0HOdT
	 TFCGZBa2DY/nQ==
Date: Sat, 2 Apr 2022 18:57:23 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Quentin Schulz <foss@0leil.net>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] installed and not shipped files. [installed-vs-shipped]
Message-ID: <YkiAc8drAhKIhBLr@Hephaistos>
References: <Ykb1BRU174mnFl0a@Hephaistos>
 <9EFA4EA1-8709-4BB3-A9CB-99BA85DAD75D@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <9EFA4EA1-8709-4BB3-A9CB-99BA85DAD75D@0leil.net>
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56646

On Sat, Apr 02, 2022 at 12:13:26PM +0200, Quentin Schulz wrote:

> FILES variables is compatible with glob from Python so that should work=
 but that's really the first time I see this, usually it's just the direc=
tory or dir/*. Learned something new today :)

:-)

> Are you on honister (or master/soon kirkstone) release? If so, it's FIL=
ES:${PN} and not FILES_${PN}.

That's it!=20
I wasn't aware of this change, could have searched for another couple of
days!

Thank.
you.
very.
much.

Kind Regards
Konsti


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


