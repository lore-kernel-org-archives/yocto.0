Return-Path: <Konrad.Weihmann@avnet.eu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37B5DC7EE2A
	for <webhook@archiver.kernel.org>; Fri,  2 Jun 2023 04:48:00 +0000 (UTC)
Received: from smtpemea03.avnet.com (smtpemea03.avnet.com [193.34.102.205])
 by mx.groups.io with SMTP id smtpd.web11.5412.1685681279047098005
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Jun 2023 21:47:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@avnet.eu header.s=20201007 header.b=UVV3BmOS;
 spf=pass (domain: avnet.eu, ip: 193.34.102.205, mailfrom: konrad.weihmann@avnet.eu)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=avnet.eu;
	s=20201007; t=1685681277;
	bh=7dNXt0JLH4lQ7tTuO9yxm3B79N319Ggr9wmvrwGLww0=;
	h=From:To:Subject:Date;
	b=UVV3BmOS6ApsQv+zH45GTwghkDOyrF6JyEYZd3Knce2cciB6WU474M4B8zXv+3zqv
	 eJdLS6kVsockTY9Sv3o8tyCmkp7uX+WjknSY0TLxaY/yahBK83H6TPP6LJegCuALVX
	 GpzO9ND6Bq1xTROqCKQpFdf+i8R3BB6Te0WXDHVRypXYBZ9cbXQFet3Po+7IpgdRA3
	 dXlx6EBmYY1shmYt01YV7PaBcO7hEGHDDHZs0hnMjfyMJQGbd5KKuczdMueD5JZQBH
	 s6yXegJm39UM9kmfNrnFC2oU6kaP/7dEF/AiZupEJ/x/GP2QnPuLyfJkOnBgME+vj/
	 b3WnG1cEzWFrA==
Received: from DEPOIX0MX19EMP2.emea.avnet.com (Not Verified[172.23.112.141]) by smtpemea03.avnet.com with Trustwave MailMarshal (v10,0,6,3739) (using TLS: TLSv1.2, ECDHE-RSA-AES256-GCM-SHA384)
	id <B6479747d0000>; Fri, 02 Jun 2023 06:47:57 +0200
Received: from DEPOIX0MX19EMP1.EMEA.AVNET.COM (172.23.112.140) by
 DEPOIX0MX19EMP2.emea.avnet.com (172.23.112.141) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.12; Fri, 2 Jun 2023 06:47:56 +0200
Received: from DEPOIX0MX19EMP1.EMEA.AVNET.COM ([fe80::4165:59c5:32c8:e746]) by
 DEPOIX0MX19EMP1.emea.avnet.com ([fe80::4165:59c5:32c8:e746%8]) with mapi id
 15.02.1258.012; Fri, 2 Jun 2023 06:47:56 +0200
From: "Weihmann, Konrad (Avnet Embedded)" <Konrad.Weihmann@avnet.eu>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Register out-of-tree fetcher with devtool
Thread-Topic: Register out-of-tree fetcher with devtool
Thread-Index: AdmVDWBRe8zMLdKYRjWxfCeHi/NFvQ==
Date: Fri, 2 Jun 2023 04:47:56 +0000
Message-ID: <bf178b45e66f404094d05cd4e1d524a2@avnet.eu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.23.112.39]
Content-Type: multipart/alternative;
	boundary="_000_bf178b45e66f404094d05cd4e1d524a2avneteu_"
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Mex/Brzf c=1 sm=1 tr=0 ts=6479747d a=6L10LVN29+KFB0AHi0rnCQ==:117 a=xqWC_Br6kY4A:10 a=VyOD0qlthIEA:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10 a=of4jigFt-DYA:10 a=cU6kfCkelfAA:10 a=7RJMDC8g7Pam8yJMMdkA:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=f9JHpSqCB5DpeaLpbXIA:9 a=QG1dpt1SeRWc2TUn:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10 a=rVnDm9A_-c-k2ki-JAcA:9
X-SEG-SpamProfiler-Score: 0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Jun 2023 04:48:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60162

--_000_bf178b45e66f404094d05cd4e1d524a2avneteu_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

we do have an out-of-tree fetcher that I would like to make use of with dev=
tool, for instance for upgrade checking.
Within our recipes the fetcher is registered by this workaround

python () {
    import foo
    bb.fetch2.methods.append(foo.FooFetcher())
}

Which isn't the nicest possible solution still does the trick.

But that doesn't work for devtool, as it seems to not take any but oe-core =
lib-paths into consideration.

For devtool check-upgrade-status <recipe with above code snippet>

I get something like "no handler for foo://... found".

Is there any way to register this out-of-tree fetcher module so tinfoil/dev=
tool can "see" them?

Cheers
Konrad


--_000_bf178b45e66f404094d05cd4e1d524a2avneteu_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">we do have an out-of-tree fetcher that I would like =
to make use of with devtool, for instance for upgrade checking.<br>
Within our recipes the fetcher is registered by this workaround<br>
<br>
python () {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; import foo<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; bb.fetch2.methods.append(foo.FooF=
etcher())<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Which isn&#8217;t the nicest possible solution still=
 does the trick.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But that doesn&#8217;t work for devtool, as it seems=
 to not take any but oe-core lib-paths into consideration.<br>
<br>
For devtool check-upgrade-status &lt;recipe with above code snippet&gt;<br>
<br>
I get something like &#8220;no handler for foo://&#8230; found&#8221;.<br>
<br>
Is there any way to register this out-of-tree fetcher module so tinfoil/dev=
tool can &#8220;see&#8221; them?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers<br>
Konrad<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_bf178b45e66f404094d05cd4e1d524a2avneteu_--

