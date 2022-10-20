Return-Path: <throos@amazon.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41238C433FE
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 08:51:35 +0000 (UTC)
Received: from smtp-fw-9103.amazon.com (smtp-fw-9103.amazon.com [207.171.188.200])
 by mx.groups.io with SMTP id smtpd.web09.7499.1666255887219665875
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 01:51:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amazon.de header.s=amazon201209 header.b=jVGKvglK;
 spf=pass (domain: amazon.de, ip: 207.171.188.200, mailfrom: prvs=2853493d9=throos@amazon.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
  t=1666255887; x=1697791887;
  h=from:to:subject:date:message-id:mime-version;
  bh=EsS+1M3dfJOZHLEkCT3I++zXaa33goXuDoFlcMI5l9I=;
  b=jVGKvglKAouXSnM0XtDlU+maloEfj1+ipWJ4Veej2YymUNMGX9qC/0E/
   as08xCvh3l6QLYP2t1qU8CZqwseQ6iyiZ+cDo7K73t7DLCcXoCh61KA4Y
   D9sFcfiPgXsyA9Fsk9+JOLhWLg9VP0vBpfiq7IW7rNqRArOjkmoQVhAwe
   s=;
X-IronPort-AV: E=Sophos;i="5.95,198,1661817600"; 
   d="scan'208,217";a="1065865283"
Received: from pdx4-co-svc-p1-lb2-vlan3.amazon.com (HELO email-inbound-relay-pdx-1box-2bm6-32cf6363.us-west-2.amazon.com) ([10.25.36.214])
  by smtp-border-fw-9103.sea19.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 08:51:21 +0000
Received: from EX13D21EUC004.ant.amazon.com (pdx1-ws-svc-p6-lb9-vlan2.pdx.amazon.com [10.236.137.194])
	by email-inbound-relay-pdx-1box-2bm6-32cf6363.us-west-2.amazon.com (Postfix) with ESMTPS id 0856E810A1
	for <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 08:51:20 +0000 (UTC)
Received: from EX19D016EUC004.ant.amazon.com (10.252.51.241) by
 EX13D21EUC004.ant.amazon.com (10.43.164.16) with Microsoft SMTP Server (TLS)
 id 15.0.1497.42; Thu, 20 Oct 2022 08:51:18 +0000
Received: from EX19D016EUC001.ant.amazon.com (10.252.51.169) by
 EX19D016EUC004.ant.amazon.com (10.252.51.241) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.15; Thu, 20 Oct 2022 08:51:18 +0000
Received: from EX19D016EUC001.ant.amazon.com ([fe80::997f:8b89:37cd:3dc9]) by
 EX19D016EUC001.ant.amazon.com ([fe80::997f:8b89:37cd:3dc9%3]) with mapi id
 15.02.1118.015; Thu, 20 Oct 2022 08:51:18 +0000
From: "Roos, Thomas" <throos@amazon.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: devtool upgrade multiple architectures possible?
Thread-Topic: devtool upgrade multiple architectures possible?
Thread-Index: AQHY5GBJFdT/o66P9kucvSEBztf4OA==
Date: Thu, 20 Oct 2022 08:51:18 +0000
Message-ID: <75ec6ceef6ad49b59ab966d928753cc6@amazon.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.43.165.145]
Content-Type: multipart/alternative;
	boundary="_000_75ec6ceef6ad49b59ab966d928753cc6amazonde_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 08:51:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58370

--_000_75ec6ceef6ad49b59ab966d928753cc6amazonde_
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi,
wondering if it's possible when doing a "devtool upgrade" for a binary reci=
pe to upgrade SRC rev for all architectures in that recipe. Or is this a mi=
ssing feature?
E.g. here do an "aarch64.sha256sum" as well when running devtool upgrade an=
d not only "x86-64.sha256sum"


SRC_URI[x86-64.sha256sum] =3D "aeec1a4fb34ffabbac931ba430601807133659a4bd02=
703c33044e80c925bed2"
SRC_URI[aarch64.sha256sum] =3D "69aa5a95b3f9030e1fef5b5886e4c97f75fffa7534d=
c2c98e59ef402a819a0aa"

Full file: https://github.com/aws4embeddedlinux/meta-aws/blob/942651026c7a9=
1b9703609d7658bd1649350acaf/recipes-devtools/amazon-corretto/corretto-17-bi=
n_17.0.5.8.1.bb

If this is not currently possible, I can create a bugzilla feature request,=
 but wanted to ask first.

Cheers,
Thomas




Amazon Web Services EMEA SARL
38 avenue John F. Kennedy, L-1855 Luxembourg
Sitz der Gesellschaft: L-1855 Luxemburg
eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284

Amazon Web Services EMEA SARL, Niederlassung Deutschland
Marcel-Breuer-Str. 12, D-80807 Muenchen
Sitz der Zweigniederlassung: Muenchen
eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 242240, =
USt-ID DE317013094




--_000_75ec6ceef6ad49b59ab966d928753cc6amazonde_
Content-Type: text/html; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi,<br>
wondering if it's possible when doing a &quot;devtool upgrade&quot; for a b=
inary recipe to upgrade SRC rev for all architectures in that recipe. Or is=
 this a missing feature?<br>
E.g. here do an <span>&quot;aarch64.sha256sum</span>&quot; as well when run=
ning devtool upgrade and not only &quot;<span>x86-64.sha256sum</span>&quot;=
<br>
<br>
</p>
<div>SRC_URI[x86-64.sha256sum] =3D &quot;aeec1a4fb34ffabbac931ba43060180713=
3659a4bd02703c33044e80c925bed2&quot;<br>
SRC_URI[aarch64.sha256sum] =3D &quot;69aa5a95b3f9030e1fef5b5886e4c97f75fffa=
7534dc2c98e59ef402a819a0aa&quot;<br>
<br>
Full file: <a href=3D"https://github.com/aws4embeddedlinux/meta-aws/blob/94=
2651026c7a91b9703609d7658bd1649350acaf/recipes-devtools/amazon-corretto/cor=
retto-17-bin_17.0.5.8.1.bb" class=3D"OWAAutoLink" id=3D"LPlnk428840">
https://github.com/aws4embeddedlinux/meta-aws/blob/942651026c7a91b9703609d7=
658bd1649350acaf/recipes-devtools/amazon-corretto/corretto-17-bin_17.0.5.8.=
1.bb</a><br>
<br>
If this is not currently possible, I can create a bugzilla feature request,=
 but wanted to ask first.<br>
<br>
Cheers,</div>
<div>Thomas<br>
</div>
<br>
<p></p>
</div>
<br><br><br>Amazon Web Services EMEA SARL
<br>38 avenue John F. Kennedy, L-1855 Luxembourg
<br>Sitz der Gesellschaft: L-1855 Luxemburg
<br>eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284
<br>
<br>Amazon Web Services EMEA SARL, Niederlassung Deutschland
<br>Marcel-Breuer-Str. 12, D-80807 Muenchen
<br>Sitz der Zweigniederlassung: Muenchen
<br>eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 2422=
40, USt-ID DE317013094
<br><br><br>
</body>
</html>

--_000_75ec6ceef6ad49b59ab966d928753cc6amazonde_--


