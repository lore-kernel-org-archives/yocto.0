Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 474BCC0218D
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 07:45:16 +0000 (UTC)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.23])
 by mx.groups.io with SMTP id smtpd.web11.12866.1738050315440885770
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 23:45:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=b3x48KdQ;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=TwUDJZ2o;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 85.215.255.23, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1738050313; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=Z7603zbSp/Rs0mz4SVEmQzlwpLeQkuoZzUfelgwdC98nh4+sYN363kkgkBDlrli9AT
    LMZrD5NAEhcB6AcobVVKU4k+aG/loeAsXKbkwBpTnEOzIKAoe0/XbCHUL7eeezT3ACh3
    zCr7KtD66BOU6ZOgTjhCHDvVWFEu3iTnqTRKm8eVtfEpUaBcU2nXnlTwhY23iSaqvfxz
    bZ0wsTgpwB4jQzXX4lvZWoyqubdcANR91/4gf1G9xzolBFDWKYkwHg5N9xeSZkemPE9g
    SnE7bKGnnZlrf1Fek9amojxllhnz/mooHTpG5lHtT0PqIVHccNv4YtPxZ3EJ82ovV4ce
    S5MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1738050313;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=U79c+IYlmleqSTHDoyD9/ayjQoAP52rfgaHOJO8WjHk=;
    b=MDSTawmG8Lm5WmH+GF2UI0LWZMOaUrtjt222pjiolvsf4b38b53On+jm65AQgLTadN
    AzTLzbq/xC2dtR1gbdbQtp/wNOJHbaFsFy1xqoLsRTjfe9wF2v1j0sHfEVI5I9PBm/EO
    XQfJwoPFu031pG57qQcDQYO1vgsW2kDAyIPfWsaIsuLwICVSZ0g0wo645HXagr4+NXZe
    30Op/X/vpV5ZYWN6eyWibsqVXIDA4wDdGyxaoJJIe9WaAcTxmBX8D9FnKJOfzKclvr98
    p+fTYPZ3JGGwzM17Pvqy2eMEGrjt2CH0bps9wsAlgNpDY1GUegpdyLC0UJ8xqdtndSjB
    mZdA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1738050313;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=U79c+IYlmleqSTHDoyD9/ayjQoAP52rfgaHOJO8WjHk=;
    b=b3x48KdQQCGDOdduAxg4OMp8eoEVFWbVVJyO1vtYXRVl/KQJZ+mYseVdX0Qh/fIIgW
    iMtRUunSfOmdd2FBkCxiYzt876wrraP0Cox00d9UfI57cSftLCBo57wTxOhTJ2USmXzO
    LHvddi57B/dbWoc9zb6AePjvhUk7cD0vHpYGbQFkEnxXb2+7TmVQw0vTm3Rp8uNdCNh1
    /DDuCJkmLdIJKRJFVfxCNoM2bOWzoWXpKKfpraQWttO44+eaEZjv8J2V+jH6cNQFDWUO
    ghqt4Kv28UWBIusqhwZsXFmU0tmhfdJRVFArKlOAiiG295nBM4GdFI0Suv8kKEohBNBi
    sIrQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1738050313;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=U79c+IYlmleqSTHDoyD9/ayjQoAP52rfgaHOJO8WjHk=;
    b=TwUDJZ2osVt7WopkEO+rP4mGXNAizPud98qBjIw/t7V+BmcHsX4aW+xgdBhgUGayEu
    bvDeBrNfQ6LiClv2zoDg==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD7T1oMG+TLVuVbxkCQk4="
Received: from ox-live-app403.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.2.17 AUTH)
    with ESMTPSA id j04bdd10S7jDxNl
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate)
    for <yocto@lists.yoctoproject.org>;
    Tue, 28 Jan 2025 08:45:13 +0100 (CET)
Date: Tue, 28 Jan 2025 08:45:13 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <1632036912.2804242.1738050313269@webmail.strato.de>
Subject: QA issue with ladspa_dsp.so
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_2804241_1733460335.1738050313267"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev72
X-Originating-Client: open-xchange-appsuite
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 07:45:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64657

------=_Part_2804241_1733460335.1738050313267
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I try to port an echo cancellation recipe to Kirkstone and run into this is=
sue:
=20
ERROR: audio-1.0-r0 do_package_qa: QA Issue: /usr/lib/ladspa/ladspa_dsp.so =
contained in package audio requires libltdl.so.7()(64bit), but no providers=
 found in RDEPENDS:audio? [file-rdeps]
ERROR: audio-1.0-r0 do_package_qa: Fatal QA errors were found, failing task=
.
ERROR: Logfile of failure stored in: .../build/tmp/work/cortexa53-tdx-linux=
/audio/1.0-r0/temp/log.do_package_qa.489020
ERROR: Task (.../recipes-init/audio/audio_1.0.bb:do_package_qa) failed with=
 exit code '1
=20
And I already tried to fix this issue with adding
=20
RDEPENDS_${PN}:append =3D "libltdl"
=20
to the "audio" package of my recipe, but it still doesn=C2=B4t work. What i=
s the correct way to fix it?
=20
Thanks!
------=_Part_2804241_1733460335.1738050313267
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html>
 <head>=20
  <meta charset=3D"UTF-8">=20
 </head>
 <body>
  <div class=3D"default-style">
   I try to port an echo cancellation recipe to Kirkstone and run into this=
 issue:
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   <em>ERROR: audio-1.0-r0 do_package_qa: QA Issue: /usr/lib/ladspa/ladspa_=
dsp.so contained in package audio requires libltdl.so.7()(64bit), but no pr=
oviders found in RDEPENDS:audio? [file-rdeps]</em>
   <br><em>ERROR: audio-1.0-r0 do_package_qa: Fatal QA errors were found, f=
ailing task.</em>
   <br><em>ERROR: Logfile of failure stored in: .../build/tmp/work/cortexa5=
3-tdx-linux/audio/1.0-r0/temp/log.do_package_qa.489020</em>
   <br><em>ERROR: Task (.../recipes-init/audio/audio_1.0.bb:do_package_qa) =
failed with exit code '1</em>
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"io-ox-signature">=20
   <div class=3D"default-style">
    And I already tried to fix this issue with adding
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    <em>RDEPENDS_${PN}:append =3D "libltdl"</em>
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    to the "audio" package of my recipe, but it still doesn=C2=B4t work. Wh=
at is the correct way to fix it?
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    Thanks!
   </div>=20
  </div>=20
 </body>
</html>
------=_Part_2804241_1733460335.1738050313267--

