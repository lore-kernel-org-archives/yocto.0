Return-Path: <Vignesh.Rajendran@in.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C4DBE00D30; Tue, 25 Jun 2019 03:14:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [139.15.180.216 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 445 seconds by postgrey-1.32 at yocto-www;
	Tue, 25 Jun 2019 03:14:14 PDT
Received: from de-deferred1.bosch-org.com (de-deferred1.bosch-org.com
	[139.15.180.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6420FE00CD5
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 03:14:14 -0700 (PDT)
Received: from de-out1.bosch-org.com (unknown [139.15.180.215])
	by si0vms0224.rbdmz01.com (Postfix) with ESMTPS id 45Y1zD1mKBz8cM
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 12:06:48 +0200 (CEST)
Received: from fe0vm1649.rbesz01.com (unknown [139.15.230.188])
	by fe0vms0186.rbdmz01.com (Postfix) with ESMTPS id 45Y1zB1852z1XLFjj
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 12:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=in.bosch.com;
	s=2015-01-21; t=1561457206;
	bh=gHXblFm0LYvbpwGXE024pjrx7l2kpvKrAh0GJI/dKX8=; l=10;
	h=From:Subject:From:Reply-To:Sender;
	b=dPfI+MRNfdOPm7ZDgkzFYijmTGRhR58RN2sCjWVliu+1/YfDAxb7JhghmVh+lHjfb
	LO1iG80WnUf8qLgQWN2PGGiQkmOk/s40h2FJunkipMPA7051EJnOQKK4FcHwHhVUPJ
	JkpTAgf8GS5E7nv78dSu669WZH/GnGcY3983IKzc=
Received: from si0vm4642.rbesz01.com (unknown [10.58.172.176])
	by fe0vm1649.rbesz01.com (Postfix) with ESMTPS id 45Y1zB0q0jz1Jn
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 12:06:46 +0200 (CEST)
X-AuditID: 0a3aad12-be3ff70000006e39-05-5d11f235050a
Received: from si0vm1950.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by si0vm4642.rbesz01.com (SMG Outbound) with SMTP id
	9B.F3.28217.532F11D5; Tue, 25 Jun 2019 12:06:46 +0200 (CEST)
Received: from FE-MBX2008.de.bosch.com (fe-mbx2008.de.bosch.com [10.3.231.14])
	by si0vm1950.rbesz01.com (Postfix) with ESMTPS id 45Y1z96GH7z5fk
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 12:06:45 +0200 (CEST)
Received: from SGPMBX2020.APAC.bosch.com (10.187.83.43) by
	FE-MBX2008.de.bosch.com (10.3.231.14) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1713.5; Tue, 25 Jun 2019 12:06:45 +0200
Received: from SGPMBX2020.APAC.bosch.com (10.187.83.43) by
	SGPMBX2020.APAC.bosch.com (10.187.83.43) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1713.5; Tue, 25 Jun 2019 18:06:43 +0800
Received: from SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96]) by
	SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96%6]) with mapi id
	15.01.1713.007; Tue, 25 Jun 2019 18:06:43 +0800
From: "Vignesh Rajendran (RBEI/ECF3)" <Vignesh.Rajendran@in.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] build on CVE is failing
Thread-Index: AdUrPDrE6qabECPnQOS4uz2QpTQK/w==
Date: Tue, 25 Jun 2019 10:06:43 +0000
Message-ID: <22839e9497e34df9b93272590fcc483d@in.bosch.com>
Accept-Language: en-US, en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.187.56.209]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA21TfUwTdxjm1zvK0fTY9WjltQibTTTiAPmq2WBZXOLMoossSxYjo7pDTlrt
	B+sVJsY/gIXZ4ZRO90UNWFGIdYpDTGBTJ3aCDBc+TDTy6QaFWAWxAoNtCdtdD2z/2D+/PPc8
	7/O87++9/AiMvkSoCYPZxlrNjFEjleGyzItxSRufK3Qpw9rXjvsuSDehdw53HpO+h3Jkb+Sz
	RkMxa93w5kcy/aC7ASu8knigsbkPK0WV6ypRJAFUBvxt/wETME19J4Ga8XcrkYzHDxA01y1I
	xY9nCGa7uyVi1QyCGxWcKNxC0HViOEIQpNQW+P6r8kCRktLCo47ZgBujHAhG7pQGhGhqHQxM
	1UrFoiRYmLwRIeJk+L3UHeBxag3c9NsDM5FUFsz+8yUSMKLioK7/OC5gjIqBAe8piXgHCs5e
	68FErALf2GK4iFdD0+0jmFifB96FlnAxUwG/VntxB1I5Q6KcIWXOkDKRTwTX1edSEb8KDaef
	YMv4t7YxSSjvQhHnkYozpBSbMjZmpCVb81juYEpq8h6L6TIS/xfdipru7/UgikAaOXntiUJH
	hzPFXInJg7SERKMi0+w8FZVnyS/RM5x+t7XIyHIaNbmqd2suHf2C5oryTAaOM1jMHgQEplGS
	9Qylo8l8puQga7WINg+KJXBNDFlAZOfSVAFjY/ezbCFrXVazCEIDpPIZ31BhZQvYA3sNRtuy
	rIkjUVhYGL0iVAltKyEiPSidkPO9E4UIkitkTJyhYMm+UrTTy2zQ2oU+IBy+mjqMuNley5/+
	82f5c144adxsMbPqGHJ+mk+kBK++yPxiJvUq8s6Ol3S0KkQI5j5G/YjfajTpE8aR8w8lOA2Q
	scICFUtk0JRWz3uoPhxO+Fsl0PjZ3XDorC6TQmvrQzmcbOqO4oXPlTD3TY8Szl3vU8HDak8s
	DLiOxMO5Kn881Npdr8BPFx8kQMWcOxGcRxeT4HK/UwvjX7i10Py0XQtDi1OvC/GZ4P7amQU/
	Ti9ugsHu8a3wtKtuG1w4U7UdhnrvZ/MPYmQnlM815sDoVHsOzE3W6KDW+YdOUHc/5lct4Vfd
	7IgSVm1jbP+z6iU2eDt1KYofSRjyJ+xaWxaWuz6FHjqU27T2XuzkaLoi/dKe6rcOn56Y+XS0
	6xN72kzPttSWHcaEKttEfc29jzsObf42c/iv4Qbz5qmJnY9+OTZ95u22lalj+7zzJfiWNav/
	9PZm59Af7n/531sdxpbrLlmk66rjaNTt9yt8KwbHTtk655F8X9vPZeUanNMzqesxK8f8B5RY
	yI7CBAAA
Cc: "Ramadevi Sennakesavan \(RBEI/ECF3\)" <Ramadevi.Sennakesavan@in.bosch.com>
Subject: build on CVE is failing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Jun 2019 10:14:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_22839e9497e34df9b93272590fcc483dinboschcom_"

--_000_22839e9497e34df9b93272590fcc483dinboschcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I was trying to check the CVE feature on Yocto.

I couldn't succeed the build with CVE.
https://pastebin.com/m7hNcNcm

There seems like proxy environment doesn't recognized inside do_populate_cv=
e_db.

ERROR: cve-update-db-1.0-r0 do_populate_cve_db: HTTPSConnectionPool(host=3D=
'nvd.nist.gov', port=3D443):
Max retries exceeded with url: /feeds/json/cve/1.0/nvdcve-1.0-2002.meta (Ca=
used by NewConnectionError('<urllib3.connection.VerifiedHTTPSConnection obj=
ect at 0x7f787f1a8908>: Failed to establish a new connection: [Errno -2] Na=
me or service not known',))

I am using HEAD of poky master branch.

Best regards,

Rajendran Vignesh
RBEI/ECF3

Tel. +91 422 676-5103 | Threema Work<threemawork://add/?id=3D+914226765103>=
: +914226765103


--_000_22839e9497e34df9b93272590fcc483dinboschcom_
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I was trying to check the CVE feature on Yocto.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I couldn&#8217;t succeed the build with CVE.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><a href=3D"https://pastebin.com/m7hNcNcm">https://pas=
tebin.com/m7hNcNcm</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">There seems like proxy environment doesn&#8217;t reco=
gnized inside do_populate_cve_db.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">ERROR: cve-update-db-1.0-r0 do_populate_cve_db: HTTP=
SConnectionPool(host=3D'nvd.nist.gov', port=3D443):
<o:p></o:p></p>
<p class=3D"MsoNormal">Max retries exceeded with url: /feeds/json/cve/1.0/n=
vdcve-1.0-2002.meta (Caused by NewConnectionError('&lt;urllib3.connection.V=
erifiedHTTPSConnection object at 0x7f787f1a8908&gt;: Failed to establish a =
new connection: [Errno -2] Name or service
 not known',))<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;=
,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I am using HEAD of poky master branch.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Best regards,
<br>
<br>
<b>Rajendran Vignesh<br>
RBEI/ECF3<br>
</b><br>
Tel. &#43;91 422 676-5103 | <a href=3D"threemawork://add/?id=3D&#43;9142267=
65103"><span style=3D"color:blue">Threema Work</span></a>: &#43;91422676510=
3
</span><span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-se=
rif;color:black"><br>
<br>
</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_22839e9497e34df9b93272590fcc483dinboschcom_--
