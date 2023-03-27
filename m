Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC966C76195
	for <webhook@archiver.kernel.org>; Mon, 27 Mar 2023 16:36:20 +0000 (UTC)
Subject: How to add missing ca-certificates to truststore in older version of yocto?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Munich, Bavaria, DE (95.91.248.160)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Mar 2023 09:36:13 -0700
Message-ID: <MWCT.1679934973535004564.JPB2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WVFmXbX7HPqZXNoT6Ejf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Mar 2023 16:36:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59529

--WVFmXbX7HPqZXNoT6Ejf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

i am working with "Morty" release of yocto. Due to organizational reasons w=
e still have to use "Morty" but will be upgraded soon.
But, there are some certificates missing in the OpenSSL truststore. Now, I =
would like to add them to the image during build. Certificates are mainly f=
or Amazon services (Amazon_Root_CAs). I beleive this can be done with ca-ce=
rtificates_%.bbappend. I would like to know how will the .crt files be conv=
erted to .pem format and also how will ca-certficates.crt file will be upda=
ted in /etc/ssl/certs/ dir? The recipe is=C2=A0http://cgit.openembedded.org=
/openembedded-core/tree/meta/recipes-support/ca-certificates/ca-certificate=
s_20160104.bb?h=3Dmorty

--WVFmXbX7HPqZXNoT6Ejf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />i am working with "Morty" release of yocto. Due to organi=
zational reasons we still have to use "Morty" but will be upgraded soon.<br=
 />But, there are some certificates missing in the OpenSSL truststore. Now,=
 I would like to add them to the image during build. Certificates are mainl=
y for Amazon services (Amazon_Root_CAs). I beleive this can be done with ca=
-certificates_%.bbappend. I would like to know how will the .crt files be c=
onverted to .pem format and also how will ca-certficates.crt file will be u=
pdated in /etc/ssl/certs/ dir? The recipe is&nbsp;http://cgit.openembedded.=
org/openembedded-core/tree/meta/recipes-support/ca-certificates/ca-certific=
ates_20160104.bb?h=3Dmorty

--WVFmXbX7HPqZXNoT6Ejf--

