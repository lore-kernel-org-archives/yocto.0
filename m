Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70EA6C28B28
	for <webhook@archiver.kernel.org>; Thu, 13 Mar 2025 09:16:39 +0000 (UTC)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.163])
 by mx.groups.io with SMTP id smtpd.web10.10519.1741857391665326734
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Mar 2025 02:16:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=Qg9PztIa;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=vqAXFm5L;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 81.169.146.163, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1741857389; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=DecqBO+10HoOKzmvpGKVsKMpK4DhAaxmUOz7G8glpgMGixEpapRIeWL+ycPgD3kij0
    q4uBn42Hsq+x/GK2eMTaTeslWYgSRa09gbARnh+keuy3dsKufhGvIT0HdxnhfvjWw99h
    Jizi7Bm4eoWLWzjTB2o3nyotPqFbQY9fEu7sp4rGGWb0Mllb1s75GAtyvYqjNJw+iyJ4
    +XIxUBSvOWLB6jeb1G5/BGq9g7YxCaY1exKrbBOUtKWBAbVN+XG4wW1iodMVJJiZSlgw
    zG6J2nTzSXB1W9pZflWwrYMJZ0Sn+ZHEU0tA9nZhI1REMzJ8SM7AYKJNoeNwBDXNr4rc
    v40A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1741857389;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=7PZ33pNaRBcHAhoReZ5xF3I5gyvX8dH4FmEmlRx8QN8=;
    b=d9ou5mC3WRn15y4dswVmKz5nGCR+raDKUEqlqEe15ZowC5qQjnVUejPdncCHx6ZbO1
    ZfNmSK5BSAEXQrsXKy7ekBB/ZIr7PytC22rPm8UioI5hDE23rUDTsWSA8anSV7E7Gjyp
    Zz7cCEPpT37R9VPz3JvgRSnf0OcZqREfNRpMtHqzm2HINwaXIokv1qii1VotluP1ydyo
    nevYbTVNJqqeOf8CJyOO+fDIfPYguwEa8WycxYT1xwe6MO4/Upldd0ff6NRi00IFTG9X
    /35xUtIjobW9UuuKB9f6vbXqnz6f4yWgEBSgU0VjUMsYf9TkWe2pUm78BJto/dMjD2W4
    0OCQ==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1741857389;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=7PZ33pNaRBcHAhoReZ5xF3I5gyvX8dH4FmEmlRx8QN8=;
    b=Qg9PztIa8EVmuD/j4ONNyQ9vddsoowVHUMbAaCN0f+OUf8/KKxbQJGluqkOie34YkH
    VVlnjrd0Zbx56hef3kIs3V6FKuyAsrt4xAyC8xQ3Q9KuvF5643Tp/TLLxJLFhAO9JGlp
    52f1fsQU1cfcWBlOID/iWzf8MV1LT4nMKafo+gjXGnnJTkpGiICkGAg0inC+hv395FG8
    wxMm8v2vFm8wB6LSHVMBDgGp3UxZ6I+XjtJ285MU/yxkxvYBcRl0JgR4ObjTHXfCSrya
    D4OGmywpQnZmZR4ehtepXlucQmunbMHHD/PNyF1B9N6nhF7a+4220GFcWaYS9eDb1k0w
    Cq1A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1741857389;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=7PZ33pNaRBcHAhoReZ5xF3I5gyvX8dH4FmEmlRx8QN8=;
    b=vqAXFm5LueG6y1pGMdIEp1ufUYFc8QMZhxjd1uhIOXgxa6T33zhqnMfL/0qbV9DShH
    keCRXO1surQ6SlGeHNCA==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD7T1oMG+TLVuVbxkCQk4="
Received: from ox-live-app105.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.3.0 AUTH)
    with ESMTPSA id j1bda812D9GTcs8
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate);
    Thu, 13 Mar 2025 10:16:29 +0100 (CET)
Date: Thu, 13 Mar 2025 10:16:29 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com,
	"Gyorgy Sarvari via lists.yoctoproject.org"
 <skandigraun=gmail.com@lists.yoctoproject.org>
Message-ID: <1504675712.5312442.1741857389278@webmail.strato.de>
In-Reply-To: <cb9c03cc-949d-468e-8a6f-d1f6f593537e@gmail.com>
References: <78350915.5121127.1741794175287@webmail.strato.de>
 <cb9c03cc-949d-468e-8a6f-d1f6f593537e@gmail.com>
Subject: Re: [yocto] Copy file from ZIP archive to image
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev73
X-Originating-Client: open-xchange-appsuite
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Mar 2025 09:16:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64948

Hi Gyorgy,

thanks for the answer. The issue is gone after unzipping and adding the fil=
es directly. This solves the issue.

> Gyorgy Sarvari via lists.yoctoproject.org <skandigraun=3Dgmail.com@lists.=
yoctoproject.org> hat am 13.03.2025 09:21 CET geschrieben:
>=20
> =20
> I have 2 thoughts which may or may not be worthless:
>=20
> 1. Are there any non-US-ASCII characters in any of the filenames in your
> zip archive? If yes, can you change them, and try again?
>=20
> 2. If #1leads nowhere, try to add some print() statements to
> meta/lib/oe/package.py, just before the failing subprocess call. Try to
> capture the executed command and its output, and see if it sheds some
> light at the issue.
>=20
> On 12.03.25 16:42, Daniel Kampert via lists.yoctoproject.org wrote:
> > I have a ZIP archive with some media, html and JSON files and I want
> > to copy them with this recipe
> > =C2=A0
> > SUMMARY =3D "Frontend application"
> > LICENSE =3D "Proprietary"
> > LIC_FILES_CHKSUM =3D " \
> > file://${WORKDIR}/LICENSE;md5=3D03fe683ef28b9ddfe7f658a0f4b3b80e \
> > "
> > SRC_URI =3D " \
> > file://LICENSE \
> > file://frontend.zip \
> > "
> > do_install () {
> > =C2=A0 install -d ${D}/opt/app/frontend
> > =C2=A0 cp -r ${WORKDIR}/build/* ${D}/opt/app/frontend
> > }
> > FILES_${PN} +=3D "/opt/app/frontend/*"
> > =C2=A0
> > But I get these errors
> >
> > ERROR: frontend-1.0-r0 do_package: Fatal errors occurred in subprocesse=
s:
> > 'utf-8' codec can't decode byte 0x9a in position 619: invalid start
> > byte: Traceback (most recent call last):
> > File
> > "/BSP5/os/build/../layers/openembedded-core/meta/lib/oe/utils.py",
> > line 280, in run
> > ret =3D self._target(*self._args, **self._kwargs)
> > File
> > "/BSP5/os/build/../layers/openembedded-core/meta/lib/oe/package.py",
> > line 251, in filedeprunner
> > output =3D subprocess.check_output(shlex.split(rpmdeps) + pkgfiles,
> > stderr=3Dsubprocess.STDOUT).decode("utf-8")
> > UnicodeDecodeError: 'utf-8' codec can't decode byte 0x9a in position
> > 619: invalid start byte
> > =C2=A0
> > How can I fix them?
> > =C2=A0
> > Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
> > =C2=A0
> > Ing. Daniel Kampert, M. Sc.
> > Embedded Systems Solutions
> > Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> > Phone: +49 (0)174 6932561
> > E-Mail: kontakt@daniel-kampert.de
> > Web:=C2=A0www.daniel-kampert.de <https://www.daniel-kampert.de>
> >
> >=20
> >
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64947): https://lists.yoctoproject.org/g/yocto/messag=
e/64947
> Mute This Topic: https://lists.yoctoproject.org/mt/111662118/9229641
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kontakt@daniel=
-kampert.de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards

Ing. Daniel Kampert, M. Sc.=20
Embedded Systems Solutions
Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland=20
Phone: +49 (0)174 6932561=20
E-Mail: kontakt@daniel-kampert.de=20
Web:=C2=A0www.daniel-kampert.de (https://www.daniel-kampert.de)

