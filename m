Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1110.1577179432264554995
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Dec 2019 01:23:55 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=JauuUR79;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=1261e0fa79=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD1F8E01117; Tue, 24 Dec 2019 01:23:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [81.169.146.160 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22ADCE00A0A
	for <yocto@yoctoproject.org>; Tue, 24 Dec 2019 01:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1577179427;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=pbj531x7uuKC4nuyvwOqzcnklo2SO5OzLYlvl7HlRpk=;
	b=JauuUR79WqiFOELgvZMY9ePvTJX4LplIcV5XZurJkbZbfKAQ3MoHmzgdy9ou+lXnY4
	yIVL8vkQXrGvc7xgkfU00KvP6QpPFnVXOdMOGPqNA8TUaqodjbwXRVxoDTXj5VA1uP1o
	YCHTbv2BILjtKbb2BNSORqQpByb5Z6NqFsmXCWcXo4+4waspOBnB7IlWCvylgmkuxyIx
	+s2a4ygp/11n+7mlCDHb60MjQwITGbYlxDmwfARafG0pRC3UXjnGHx1xQ5nODCysyfmM
	fvPoXpyV8kbSGOjN1VAwEBVnGbrawc3ehAroaygaZ8ZCSi+TDL1p3+KVAvW95mO7Plkt
	44mA==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.1.3 AUTH)
	with ESMTPSA id v0563bvBO9Nl1or
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Tue, 24 Dec 2019 10:23:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1577179427; x=1577784227;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=pb
	j531x7uuKC4nuyvwOqzcnklo2SO5OzLYlvl7HlRpk=; b=IDcTpsQ8fVw2rQVCoT
	F9quQxW+TIVCR7BmcIGFbyF4i2kcx/y/49phddH6yw/3qsKUK4Tc0wN4qHLazLtl
	s5/S6N5p+TBsqM1/wgFI7N/QiNt5wSjxKYzuIDIAvgzePwIpn/M2HKnSGBJk5fM7
	PQswQ6k1m6B9BTNt6DSbuPKLk=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.3) with ESMTPSA id md50000230171.msg; 
	Tue, 24 Dec 2019 10:23:45 +0100
X-MDRemoteIP: 178.27.65.232
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Tue, 24 Dec 2019 10:23:45 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1261e0fa79=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Tue, 24 Dec 2019 10:23:28 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Ed Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] Raspberry pi 4 recipe and layer issues.
Message-ID: <20191224092328.kzx5fgf7322jzmlw@jholzmayr.localdomain>
References: <1603144693.1899827.1577135467329.ref@mail.yahoo.com>
 <1603144693.1899827.1577135467329@mail.yahoo.com>
MIME-Version: 1.0
In-Reply-To: <1603144693.1899827.1577135467329@mail.yahoo.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Howdy.

On Mon, Dec 23, 2019 at 09:11:07PM +0000, Ed Vidal wrote:
> The Makefile executes several lines, which set variables=C2=A0ARACHNE_V=
ER,=C2=A0GIT_REV, and=C2=A0VER_HASH.=C2=A0 =C2=A0These are used in the ru=
le which creates a file=C2=A0src/version_$(VER_HASH).cc.The line below ap=
pears to be the one that causes the error.VER_HASH =3D $(shell echo "$(AR=
ACHNE_VER) $(GIT_REV)" | sum | cut -d ' ' -f -1)
> src/version_$(VER_HASH).cc: echo "const char *version_str =3D \"arachne=
-pnr $(ARACHNE_VER) (git sha1 $(GIT_REV), $(notdir $(CXX)) `$(CXX) --vers=
ion | tr ' ()' '\n' | grep '^[0-9]' | head -n1` $(filter -f% -m% -O% -DND=
EBUG,$(CXXFLAGS)))\";" > src/version_$(VER_HASH).cc
> bin/arachne-pnr$(EXE): src/arachne-pnr.o src/netlist.o src/blif.o src/p=
ack.o src/place.o src/util.o src/io.o src/route.o src/chipdb.o src/locati=
on.o src/configuration.o src/line_parser.o src/pcf.o src/global.o src/con=
stant.o src/designstate.o src/version_$(VER_HASH).o $(CXX) $(CXXFLAGS) $(=
LDFLAGS) -o $@ $^ $(LIBS)
> These variables are based on git revision.=C2=A0 =C2=A0So I can not har=
d code them.This is the error that I get.
> /bin/sh: 1: sum: not found

If a Makefile does such _stupid_ things, then better patch it. An
example of patching something like this is

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/ut=
il-linux/util-linux/configure-sbindir.patch

which targets configure.ac, but hey, little difference to a Makefile.

Greetz
--=20
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 17039=
3
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548=20

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548

