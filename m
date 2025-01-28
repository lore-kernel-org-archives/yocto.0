Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D7CC0218A
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 14:32:08 +0000 (UTC)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.163])
 by mx.groups.io with SMTP id smtpd.web10.18481.1738074717326539500
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2025 06:31:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=mexYZCNn;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=MYksiV45;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 81.169.146.163, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1738074714; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=fge8SNCrXPXZ1XwnJXVAcifUjyz07GVQ2iDmCw3xxJBm01MflfWlVWJrDNe7chSa04
    IVo443L8uOPq/CjgadDkVCeRdOogI4GMWN2S2i/b1/cA3OTEn86Ol/PLbWcVsG2D7MpO
    HfJHDJ/jGAtapMyr6AivqQ/7eXdPOgfdAIRyFXLEm6U+R6AdZ5wsa91Oq3IY3c04xS/j
    0te+1cxhNRZLcwL0+pk0lQLDwUb1/H5EnsIigaxVzpHj5waI9mo7Ze9esu6DwGFyXsb+
    L1SJtdr0pTfg+5bcPGC7uWmddD9F7OZIVMNjO+B7EQNz0ai6EWLsMgGtyHFN9g1w1t7S
    2NTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1738074714;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=lKbGM+y7WUW8xioZcgVGDOkEs+5H9NtYaat4o8qsK04=;
    b=jeADA0+b5omknATFe7oYjvaRtt+mp9JZzwvPDyGgfG1myDh1IbA4G8tn3hVCjggNnK
    JyeY7zCTjgUPn3do0voe9Ky758abwd/emb2VjysUZHr8RaUN5kRoC5wbfI6gc4P+XSrZ
    qbrOM1TH1aN5YvZHikh41WZEethyqDJjKFbKw4NNsou/KXNS2SSLwQqq0v1VSA5+w7jv
    1RyCTHmWFETTQi0X12ssn9WVPk/6E7f7c4j6Hro02ITwoY2EXOygjhHb/ZC23p7JF6e1
    6Zjq2Uo8mpz4iQzSRLNlon9fHVtxp8o5AvaGa9sSSCBSvxDjzQiiwTc1gtVmSMcx1tgk
    zucw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1738074714;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=lKbGM+y7WUW8xioZcgVGDOkEs+5H9NtYaat4o8qsK04=;
    b=mexYZCNnJGO5+wkBVTNCcCx2AkSQEO8dY0eeWZ4wGHa7zD69yvFUmut3XwM3M5WMFE
    +w/xLokGq6BG7XL/L9+Zv+7WCtXMM3/3xAX0Caw3g90vpQuLI9K6dR097E1refzF2Yg7
    2eiZ8ZcK5Cx0IgdyEjQitzsI+rYQlh8Y4KSOu243fYSdatGJXPqpP2+8RI/15EPpWWqs
    o5w9FQtSH27uZd40Gt09SCteYFB4whm9yDnRj1g5ISk2izgcpT//Mw2yVcfj+d92yt0q
    60IhVdKpFeFH1EuU/qy2IN31qFQ8VsgDJtATohSTPf/xl9iH4m1Qhe4yd7GLQ1kaTVu3
    XxFg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1738074714;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=lKbGM+y7WUW8xioZcgVGDOkEs+5H9NtYaat4o8qsK04=;
    b=MYksiV45uVQvEQdYrcZSVSAFcB9M3j7XFSD6het92fzZoKEN/sUmaF6V7v8lZqs/LR
    6jtK66Nd1vNze2uBjjAA==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD7T1oMG+TLVuVbxkCQk4="
Received: from ox-live-app103.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.2.17 AUTH)
    with ESMTPSA id j04bdd10SEVszkN
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate);
    Tue, 28 Jan 2025 15:31:54 +0100 (CET)
Date: Tue, 28 Jan 2025 15:31:54 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com,
	"Gyorgy Sarvari via lists.yoctoproject.org"
 <skandigraun=gmail.com@lists.yoctoproject.org>
Message-ID: <653099279.996654.1738074714316@webmail.strato.de>
In-Reply-To: <832a2079-e313-4251-8db1-d12d507838d7@gmail.com>
References: <1632036912.2804242.1738050313269@webmail.strato.de>
 <832a2079-e313-4251-8db1-d12d507838d7@gmail.com>
Subject: Re: [yocto] QA issue with ladspa_dsp.so
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev72
X-Originating-Client: open-xchange-appsuite
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 14:32:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64664

Hi Gyorgy,

thanks. I wasn=C2=B4t aware of this. I fixed it at it works.

> Gyorgy Sarvari via lists.yoctoproject.org <skandigraun=3Dgmail.com@lists.=
yoctoproject.org> hat am 28.01.2025 09:28 CET geschrieben:
>=20
> =20
> Assuming you are using Honister, or newer, you need to change the syntax=
=20
> from RDEPENDS_${PN} to RDEPENDS:${PN} ("_" vs ":"). Guide to syntax=20
> change:=20
> https://docs.yoctoproject.org/dev/migration-guides/migration-3.4.html#ove=
rride-syntax-changes,
>=20
> Also, when you use ":append", it is recommended to add spaces around the=
=20
> value, otherwise it could be mangled with other values in the same=20
> variable. (You can't have too many spaces, but you can have too few)
>=20
> On 28.01.25 08:45, Daniel Kampert via lists.yoctoproject.org wrote:
> > I try to port an echo cancellation recipe to Kirkstone and run into=20
> > this issue:
> > /ERROR: audio-1.0-r0 do_package_qa: QA Issue:=20
> > /usr/lib/ladspa/ladspa_dsp.so contained in package audio requires=20
> > libltdl.so.7()(64bit), but no providers found in RDEPENDS:audio?=20
> > [file-rdeps]/
> > /ERROR: audio-1.0-r0 do_package_qa: Fatal QA errors were found,=20
> > failing task./
> > /ERROR: Logfile of failure stored in:=20
> > .../build/tmp/work/cortexa53-tdx-linux/audio/1.0-r0/temp/log.do_package=
_qa.489020/=20
> >
> > /ERROR: Task (.../recipes-init/audio/audio_1.0.bb:do_package_qa)=20
> > failed with exit code '1/
> > And I already tried to fix this issue with adding
> > /RDEPENDS_${PN}:append =3D "libltdl"/
> > to the "audio" package of my recipe, but it still doesn=C2=B4t work. Wh=
at=20
> > is the correct way to fix it?
> > Thanks!
> >
> >=20
> >
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64660): https://lists.yoctoproject.org/g/yocto/messag=
e/64660
> Mute This Topic: https://lists.yoctoproject.org/mt/110855648/9229641
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

