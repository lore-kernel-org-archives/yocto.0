Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CB07E00D6B; Tue, 21 May 2019 22:11:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [91.90.150.80 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from s2080.ppsmtp.net (s2080.ppsmtp.net [91.90.150.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF7FDE00D5D
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 22:11:48 -0700 (PDT)
Received: from pps.filterd (s2080.ppsmtp.net [127.0.0.1])
	by s2080.ppsmtp.net (8.16.0.27/8.16.0.27) with SMTP id x4M5BCw4004987
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 07:11:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type; s=pps;
	bh=l+ksLlWG52ur3jOYoUFnAS1LDnpkUX25+L6IZV86REU=;
	b=k3Y/joxPSUL6zU93tO6aD234vDLlV0vgySW2NVPUSND3VV2AaviO9pDhzpB5HVr4PRkP
	ayjZMGFdwA/KOVSEwq6DhcF9Nl8MXOKw6Sas0ZgGCb6hzR7EcJHo2vQhxLvSxtOfaXKJ
	q8k3q4VZ1neURiF0yDplVLz6guDCFYT24ArW6Hv2BtDGedj9QpQd3HjMLZ8qdBM6cI+v
	GXxuoXsnfzMYpe/9YfXVSuvNHVZHN3Bcjgm7xi+yTY+Z2vOL7Z26qAYbeuOI1rbuJhj/
	+dgTVFMK2H8YC0qGthUMfXL0b+deG03QUumPluJkzkJ4LtPtNFr5y2oRH2snE5zXYRsV
	Kw== 
Received: from deesdmz226.dmz.es.de.ifm (mail26.ifm.com [194.156.152.226])
	by s2080.ppsmtp.net with ESMTP id 2smjfusa74-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 07:11:47 +0200
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id BB17B703838
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 07:11:46 +0200 (CEST)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] configuration for a layer apart from local.conf
Thread-Index: AdUQW/zpWQNLj+xgRMunSqQRQAoyFw==
Date: Wed, 22 May 2019 05:11:45 +0000
Message-ID: <3e81b5f5e0294337bf5409b23344e282@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.111]
x-tm-as-product-ver: SMEX-12.5.0.1684-8.5.1010-24624.002
x-tm-as-result: No-13.943100-5.000000-10
x-tmase-matchedrid: 49Em7KPP995HW+94FA8JF8K1Ib9JAALxrogFtKd/P7cLBZEuqIL9SpO9
	mQGx4jC3Sa7i4WMGYwF/2SsgU8jyNW7vEKjEI8LygNylVbI/EAyoCf7IdvPAJzrW2rRfTfGrevR
	Ae5P8R94/+RSNQ9LGXlDQ43dkW3a5LDC3FGTHI3eL6bUMM+bbIv98fIf4wIXlI0YrtQLsSUxxQt
	HzHkAOcFullIPhHVLL+jCEWxpgJgH5s5ZGHFKFGG/+RwWenb0Y1ViV5EWK7TubKItl61J/yc894
	3oc3p3s32mPO5tnasfhQCaf8WIp0Ne+KCPJg/Zhi5CcbFR7sWrh2rjqPbZZLkLKcuPjo0pV
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--13.943100-5.000000
x-tmase-version: SMEX-12.5.0.1684-8.5.1010-24624.002
x-tm-snts-smtp: 156DA88BDE69C33B1AB0A63C0B17B5D6552CD54476DB22A93B34CE77FC8317C32002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19367.x86_64 COMPUMAIL Date:
	20190522051146Z
X-Proofpoint-ID: SID=2smjfusa74 QID=2smjfusa74-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-05-22_02:, , signatures=0
Subject: configuration for a layer apart from local.conf
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
X-List-Received-Date: Wed, 22 May 2019 05:11:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3e81b5f5e0294337bf5409b23344e282ifmcom_"

--_000_3e81b5f5e0294337bf5409b23344e282ifmcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I want to know if there is any other place where we can set configuration f=
or a particular layer, apart from local.conf. For example if I want to set =
LICENSE_FLAGS_WHITELIST can I do that in layer.conf, or do I need to do tha=
t in local.conf only. Similarly for BBMASK too. So basically my question is=
, for setting the configurations of a particular layer, is there any place =
where I can set those variables inside that layer only?
Best Regards
Kamal Pandey


--_000_3e81b5f5e0294337bf5409b23344e282ifmcom_
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
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
<body lang=3D"EN-IN" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">I want to know if there is any other place where we =
can set configuration for a particular layer, apart from local.conf. For ex=
ample if I want to set LICENSE_FLAGS_WHITELIST can I do that in layer.conf,=
 or do I need to do that in local.conf
 only. Similarly for BBMASK too. So basically my question is, for setting t=
he configurations of a particular layer, is there any place where I can set=
 those variables inside that layer only?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black;mso-fareast-language:EN-IN">Best Regards
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black;mso-fareast-language:EN-IN">Kamal Pandey<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_3e81b5f5e0294337bf5409b23344e282ifmcom_--
