Return-Path: <throos@amazon.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CEF9C4332F
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 09:18:45 +0000 (UTC)
Received: from smtp-fw-33001.amazon.com (smtp-fw-33001.amazon.com [207.171.190.10])
 by mx.groups.io with SMTP id smtpd.web09.7647.1666257517769672163
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 02:18:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amazon.de header.s=amazon201209 header.b=DGTQMdo7;
 spf=pass (domain: amazon.de, ip: 207.171.190.10, mailfrom: prvs=2853493d9=throos@amazon.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
  t=1666257518; x=1697793518;
  h=from:to:subject:date:message-id:mime-version;
  bh=Gnai+Txkqqar++MGmVjUEaDm0w9XwFBXbwQq+FViEOM=;
  b=DGTQMdo76QP7G/oe4ss5Mu20OknyHIQlPUJxPKrhMEMqyYYraqRHWUOM
   LiBanWDcKHbzXwbViOCM6GOC0mbQu1BfGPfWX3xQWbbboZzE472rjFqYw
   CHt6/24X3AH35XaRURert1bJadVb9EYz2JOxelI5VlLnsyJ2rnUTuk2Rh
   w=;
X-IronPort-AV: E=Sophos;i="5.95,198,1661817600"; 
   d="scan'208,217";a="234597124"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO email-inbound-relay-iad-1d-35b1f9a2.us-east-1.amazon.com) ([10.43.8.6])
  by smtp-border-fw-33001.sea14.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 09:18:32 +0000
Received: from EX13D42EUC004.ant.amazon.com (iad12-ws-svc-p26-lb9-vlan2.iad.amazon.com [10.40.163.34])
	by email-inbound-relay-iad-1d-35b1f9a2.us-east-1.amazon.com (Postfix) with ESMTPS id 1D7C7201347
	for <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 09:18:31 +0000 (UTC)
Received: from EX19D016EUC002.ant.amazon.com (10.252.51.183) by
 EX13D42EUC004.ant.amazon.com (10.43.164.67) with Microsoft SMTP Server (TLS)
 id 15.0.1497.42; Thu, 20 Oct 2022 09:18:30 +0000
Received: from EX19D016EUC001.ant.amazon.com (10.252.51.169) by
 EX19D016EUC002.ant.amazon.com (10.252.51.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.15; Thu, 20 Oct 2022 09:18:30 +0000
Received: from EX19D016EUC001.ant.amazon.com ([fe80::997f:8b89:37cd:3dc9]) by
 EX19D016EUC001.ant.amazon.com ([fe80::997f:8b89:37cd:3dc9%3]) with mapi id
 15.02.1118.015; Thu, 20 Oct 2022 09:18:30 +0000
From: "Roos, Thomas" <throos@amazon.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: devtool upgrade for go recipes with git "broken"
Thread-Topic: devtool upgrade for go recipes with git "broken"
Thread-Index: AQHY5GTr5j5Nvf1ZnEq1HtJaEKftBg==
Date: Thu, 20 Oct 2022 09:18:30 +0000
Message-ID: <1028eccc021a4bf5ab2520b3c4fb82a6@amazon.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.43.165.145]
Content-Type: multipart/alternative;
	boundary="_000_1028eccc021a4bf5ab2520b3c4fb82a6amazonde_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 09:18:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58372

--_000_1028eccc021a4bf5ab2520b3c4fb82a6amazonde_
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi,
when doing a "devtool upgrade" for a recipe which inherits "go" and using a=
 SRC_URI to a git repo this will fail. Complaining that the git revision is=
 "out of tree" - I found that the additional "src" folder inside the checko=
ut out sources is causing this problem and I wondering if this is necessary=
. I'm not a go programmer, but when changing this the recipe seems to produ=
ce the same result.
I did change our go recipe to don't use this additional src folder by overw=
riting the go_do_upack and go_do_configure method. Here: https://github.com=
/aws4embeddedlinux/meta-aws/blob/942651026c7a91b9703609d7658bd1649350acaf/r=
ecipes-support/amazon-ssm-agent/amazon-ssm-agent_3.1.1856.0.bb
Is this a bug or do anybody know why go use that additional src folder?

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




--_000_1028eccc021a4bf5ab2520b3c4fb82a6amazonde_
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
when doing a &quot;devtool upgrade&quot; for a recipe which inherits &quot;=
go&quot; and using a SRC_URI to a git repo this will fail. Complaining that=
 the git revision is &quot;out of tree&quot; - I found that the additional =
&quot;src&quot; folder inside the checkout out sources is causing this prob=
lem
 and I wondering if this is necessary. I'm not a go programmer, but when ch=
anging this the recipe seems to produce the same result.<br>
I did change our go recipe to don't use this additional src folder by overw=
riting the go_do_upack and go_do_configure method. Here:
<a href=3D"https://github.com/aws4embeddedlinux/meta-aws/blob/942651026c7a9=
1b9703609d7658bd1649350acaf/recipes-support/amazon-ssm-agent/amazon-ssm-age=
nt_3.1.1856.0.bb" class=3D"OWAAutoLink" id=3D"LPlnk152199" previewremoved=
=3D"true">
https://github.com/aws4embeddedlinux/meta-aws/blob/942651026c7a91b9703609d7=
658bd1649350acaf/recipes-support/amazon-ssm-agent/amazon-ssm-agent_3.1.1856=
.0.bb</a><br>
Is this a bug or do anybody know why go use that additional src folder?</p>
<p><br>
Cheers,<br>
Thomas<br>
</p>
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

--_000_1028eccc021a4bf5ab2520b3c4fb82a6amazonde_--


