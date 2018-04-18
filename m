Return-Path: <Vignesh.Rajendran@in.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80F86E00AAF; Tue, 17 Apr 2018 21:21:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 401 seconds by postgrey-1.32 at yocto-www;
	Tue, 17 Apr 2018 21:21:42 PDT
Received: from de-deferred2.bosch-org.com (de-deferred2.bosch-org.com
	[139.15.180.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5496E00994
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 21:21:42 -0700 (PDT)
Received: from de-out1.bosch-org.com (unknown [139.15.180.215])
	by fe0vms0193.rbdmz01.com (Postfix) with ESMTPS id 40Qpg8158Mz2Gm
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 06:15:00 +0200 (CEST)
Received: from fe0vm1650.rbesz01.com (unknown [139.15.230.188])
	by si0vms0216.rbdmz01.com (Postfix) with ESMTPS id 40Qpg64qnsz1XLFlj
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 06:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=in.bosch.com;
	s=2015-01-21; t=1524024898;
	bh=5uJgT0h7SFT62Toek0dkDT1jJ0XukNXlkh/x8Zf6aLs=; l=10;
	h=From:From:Reply-To:Sender;
	b=gAuVLYatXLlRiNYq4QEcYs/DWn2wJDp82R+rMkJt0HIoucbqlaDh1PEkgQf3Cil+f
	APGKP9cE6ovqUsL3tbEeGM6+cPDHKAwKVbDFXN5s7dSlKX/VhWzm1vLIe0No+7W7xY
	sWdxEOyxmJUpLIFbUDy+J9IvLFCWfLfPc7Qv9pMk=
Received: from si0vm2083.rbesz01.com (unknown [10.58.172.176])
	by fe0vm1650.rbesz01.com (Postfix) with ESMTPS id 40Qpg64fc3z1C7
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 06:14:58 +0200 (CEST)
X-AuditID: 0a3aad17-513ff70000000e32-7e-5ad6c6432f9f
Received: from si0vm1950.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by si0vm2083.rbesz01.com (SMG Outbound) with SMTP id
	D7.BF.03634.346C6DA5; Wed, 18 Apr 2018 06:14:59 +0200 (CEST)
Received: from FE-MBX2032.de.bosch.com (fe-mbx2032.de.bosch.com [10.3.231.42])
	by si0vm1950.rbesz01.com (Postfix) with ESMTPS id 40Qpg62z0YzCpNw
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 06:14:58 +0200 (CEST)
Received: from SGPMBX2018.APAC.bosch.com (10.187.83.36) by
	FE-MBX2032.de.bosch.com (10.3.231.42) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1466.3; Wed, 18 Apr 2018 06:14:57 +0200
Received: from SGPMBX2020.APAC.bosch.com (10.187.83.43) by
	SGPMBX2018.APAC.bosch.com (10.187.83.36) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1415.2; Wed, 18 Apr 2018 12:14:55 +0800
Received: from SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96]) by
	SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96%6]) with mapi id
	15.01.1415.002; Wed, 18 Apr 2018 12:14:55 +0800
From: "Vignesh Rajendran (RBEI/ECF3)" <Vignesh.Rajendran@in.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PULL] provide debug sources in externalsrc -dbg packages
Thread-Index: AdPWy8mlZpFfZeL7QaW9x163db5Uug==
Date: Wed, 18 Apr 2018 04:14:55 +0000
Message-ID: <44c5427e55d84f0a8a9f0eb9aadfcd9f@in.bosch.com>
Accept-Language: en-US, en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.187.56.213]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA21Tf0wbZRjma4/2aDg9DiqvnWB2SjJUsBSIy0Bjhm5qyJibMVojWOxJm9Ef
	uStkJUSZZBuDOglrN6QOtrnNwTYbnNFumaI3NooYZrryY3UGETRQcUzpMGYOvdvB2j/858tz
	z/M+z/t+75fD5dQxXIObrQ6GtRqqaYUKU607nZFTcmlUr718oHht2+wpxdPoud2BvYrNSK8q
	NjLV5lqGffypN1SmscCAwn5tzfYLvm0N6OOHm1ESDmQBNH+/B2tGKpwi22XQNOFXiAJFXkVw
	8BojCTcQnPf3LlctIIiGj8mlj34E+xeXlKJFQW6Ak+53ZSJOIwth5lJUiMJxOfkMhG+vEelU
	cj14/r2FpJKN8PXJ40oJ50JjV+udzhiZBWcirYkiJsgimHD13cGIzIAjV9swEcvJdAhPd8mk
	K5Bw9PxluYTVMDu1lCjh1TDZPiqTRqiEMd+DUmQKDH4wjbUidUdcUkesqiOuSirJhXGPWyHh
	R+H44d/kEs6B9iUei+cPIWUPUnNmba1Fp12bn8tWMlydNi/3TZvlUyQ9VrofRXsNPCJxRCcT
	63yjeirRUMs5LTwqxGW0mninXKDuqbQZnSYDZ6pga6oZjtYQKCEhgUq9S3M1lRYzx5ltVh4B
	LqfTiLNTIT1FGA3OOoa1STYercIxOp1wGev1FFllcDDbGMbOsCtqEY7TQORcFBqmsEwVs/0t
	c7VjRaYzpJ73xSvxbWV4Eo/y8WShd60YQXB2g4UzVy3b75fs1Aobs36LyvC5XS6XHOfn3cI5
	LJ4UZrVZGU06Ud4vZJGiy1RjvTuN5gEiu3FET6njhFhiBI0jYZ+pRLc4SLLwf8TmAMKf+uGr
	VMoyGTPpjgoechKDpp9Z6PTfRPDJrmAiBM91KCEweFYJn4e+o2DQPZcG4alv1LAw36OB8KGW
	TOjz/LUaPtsx9BDMDV3Jhp03ux8Dv/uKFjw7R/JgZryrAM5cv1gIf/8xUAxN/HslsPTPRyVw
	ZEfkefhh+JcXwHfwp1JwdXvL4MTkTBn0tZzYCkPBga3A/+p7CUIXel8G//4DeuicaWYiwo5l
	wo5H88X35RwGx//seJmNXU7TgPZWzD75yvzCE959Dbq5xvrZ3xcti6U1I6t62AljyJnka8v/
	wt6fmVURLVjvLfV6bm3c523Jeo0rsmyJZte9+Lq9cHfmqXMjNwJ76vsU06c3/DjWiwe/vL1Y
	FFX8+ayff3u4PXO6oJwJNAbHnPr3t2zqjGhloeubqAldWRb9lV93L41xJkPeI3KWM/wH0GDG
	2LgEAAA=
X-Mailman-Approved-At: Wed, 18 Apr 2018 13:04:11 -0700
Subject: [PULL] provide debug sources in externalsrc -dbg packages
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
X-List-Received-Date: Wed, 18 Apr 2018 04:21:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_44c5427e55d84f0a8a9f0eb9aadfcd9finboschcom_"

--_000_44c5427e55d84f0a8a9f0eb9aadfcd9finboschcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Yocto,

I have made some changes to fix missing debug sources in -dbg packages whil=
e using externalsrc.
Please have look and let me know for any changes needed.

Thanks. :-)

the changes are available in the git repository at:

https://git.yoctoproject.org/git/poky-contrib  vrajendran/externalsrc-debug=
src
http://git.yoctoproject.org/cgit.cgi//log/?h=3Dvrajendran/externalsrc-debug=
src<http://git.yoctoproject.org/cgit.cgi/log/?h=3Dvrajendran/externalsrc-de=
bugsrc>

Vignesh Rajendran (1):
  package.bbclass: provide debug sources in externalsrc -dbg packages

meta/classes/externalsrc.bbclass |  3 +++
meta/classes/package.bbclass     | 14 +++++++++++---
2 files changed, 14 insertions(+), 3 deletions(-)

--
2.7.4

Mit freundlichen Gr=FC=DFen / Best regards

Rajendran Vignesh
RBEI/ECF33

Tel. +91 422 67-65103


--_000_44c5427e55d84f0a8a9f0eb9aadfcd9finboschcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
	font-family:"Calibri",sans-serif;
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
<p class=3D"MsoNormal">Hi Yocto,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have made some changes to fix missing debug source=
s in -dbg packages while using externalsrc.<o:p></o:p></p>
<p class=3D"MsoNormal">Please have look and let me know for any changes nee=
ded.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks. :-)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">the changes are available in the git repository at:<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://git.yoctoproject.org/git/poky-con=
trib"><span style=3D"color:#0563C1">https://git.yoctoproject.org/git/poky-c=
ontrib</span></a> &nbsp;vrajendran/externalsrc-debugsrc
<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://git.yoctoproject.org/cgit.cgi/log/=
?h=3Dvrajendran/externalsrc-debugsrc"><span style=3D"color:#0563C1">http://=
git.yoctoproject.org/cgit.cgi//log/?h=3Dvrajendran/externalsrc-debugsrc</sp=
an></a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Vignesh Rajendran (1):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; package.bbclass: provide debug sources in ext=
ernalsrc -dbg packages<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">meta/classes/externalsrc.bbclass |&nbsp; 3 &#43;&#43=
;&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">meta/classes/package.bbclass&nbsp;&nbsp;&nbsp;&nbsp;=
 | 14 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;---<o:p></o:p>=
</p>
<p class=3D"MsoNormal">2 files changed, 14 insertions(&#43;), 3 deletions(-=
)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<p class=3D"MsoNormal">2.7.4<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Mit freundlichen Gr=FC=DFen / Best regard=
s
<br>
<br>
<b>Rajendran Vignesh<br>
RBEI/ECF33<br>
</b><br>
Tel. &#43;91 422 67-65103 </span><span style=3D"font-size:8.0pt;font-family=
:&quot;Arial&quot;,sans-serif;color:black"><br>
<br>
</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_44c5427e55d84f0a8a9f0eb9aadfcd9finboschcom_--
