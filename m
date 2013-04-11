Return-Path: <Michael.Fainstein@ecitele.com>
Received: from mail1.bemta3.messagelabs.com (mail1.bemta3.messagelabs.com
	[195.245.230.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34461E014AD
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 04:59:01 -0700 (PDT)
Received: from [85.158.137.99:63222] by server-1.bemta-3.messagelabs.com id
	ED/93-13706-385A6615; Thu, 11 Apr 2013 11:58:59 +0000
X-Env-Sender: Michael.Fainstein@ecitele.com
X-Msg-Ref: server-3.tower-217.messagelabs.com!1365681524!12347978!2
X-Originating-IP: [147.234.242.234]
X-StarScan-Received: 
X-StarScan-Version: 6.8.6.1; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22550 invoked from network); 11 Apr 2013 11:58:51 -0000
Received: from ilptbmg01-out.ecitele.com (HELO ilptbmg01-out.ecitele.com)
	(147.234.242.234)
	by server-3.tower-217.messagelabs.com with DHE-RSA-AES256-SHA encrypted
	SMTP; 11 Apr 2013 11:58:51 -0000
X-AuditID: 93eaf2e7-b7f396d000005d9d-e0-5166a57b3a70
Received: from ilptexch01.ecitele.com ( [172.31.244.40])
	by ilptbmg01-out.ecitele.com (Symantec Messaging Gateway) with SMTP id
	98.83.23965.B75A6615; Thu, 11 Apr 2013 14:58:51 +0300 (IDT)
Received: from ILPTWPVEXCA02.ecitele.com (172.31.244.232) by
	ilptexch01.ecitele.com (172.31.244.40) with Microsoft SMTP Server (TLS)
	id 8.3.264.0; Thu, 11 Apr 2013 14:58:51 +0300
Received: from ILPTWPVEXMB02.ecitele.com ([fe80::5979:ca8d:419f:56df]) by
	ILPTWPVEXCA02.ecitele.com ([fe80::c473:490d:3a7e:e34a%12]) with mapi id
	14.02.0328.009; Thu, 11 Apr 2013 14:58:50 +0300
From: Michael Fainstein <Michael.Fainstein@ecitele.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: how to use native executable from one recipe during install in
	another recipe
Thread-Index: Ac42q+uNDpDhPUR3TKSbxe3uxp3DWw==
Date: Thu, 11 Apr 2013 11:58:50 +0000
Message-ID: <62673661A504604B856269DAADA8BC281DE35E00@ILPTWPVEXMB02.ecitele.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.4.58.22]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA42Ta0gUURTHvTvrOm5OjJu216XHML3AXNvNLCNX+lIUYWoFRqE17l53p3Zm
	tp3R3KJaKciEskyIjHDNMgtRypKiB7pklkiGVPSQWFIxDTJCsiK0GSdN6Ev30++e87/n/Lmc
	g2OG4ggTzvIS8vKMm9bptWeHvo6YD17Jz7LcHohJKR+s160FG44/OaXLBDv8IJXheUFiJEQ5
	kGi30ZletpCx+2iKddhoK0153IwdcYiXbDTj8SDeQafpqX9OqixjeQrxdsHB8k4bvXFrhjkl
	JXm12UqnLV5gTVqj3+ZiRQqZOYZ1UxwSRcaJKDmy+xbmGq14ofGE5hZ96S/R+EHAVAoicUiu
	gOXFTUDl2fD5+0ZdKdDjBvIBgIGLb7TqpRnAnkdNmKIykG0AjrdvVlhHroJd1cMRCseQyfDj
	4xGdwrPI7bCx5yemxnPgh7Mv/mgS4bGH3eEKa8lFsLfi5ISGIDPh99b+CQayi9GOeo3CGGmE
	b/uqNKo7El6+34WpHAsHe8fCVZ4HyzpPAFUvwL72U0CtGQ2fnu/Tqp7j4eeR2j/6ONha91p7
	GsRWTmtROe155bTnajwBBu591am8FNZWf8ImubOlVzM9HgAR10Es6/ZIeZzTYk1EdlZCbpRo
	F7ibQB2TgTvgZ9XCICBxQEcRLT6UZQhnCkUfFwRxuIaOJcov5WcZZuYJDp+LEV27vAVuJAYB
	xDE6hgAX5BzhYHwHkFeYTG2Rf/MMZpphF+SB5KVdSRbLf15oI3HVn51hIJ3ybO5FyIO8k0Xn
	4DgNiZOX5X7RXuRERfmsW/qb1uCRiqco2VOCoiFED8OJrFPNdwAzXtc0+AkYtLzAI5ORkBQR
	qYhcBfxUncnNGQJG+TdmEX5FFSXv1VSlIbmJRm5iLXMoTeQdmkqZ/CD5bdLxUM678LXt8+sS
	s4/UvltdUrz+cBR149XooN6denMfviftVxifG7p7fW7Y/h59B+cMzD/aXXKghqu+9mXnnPR1
	3H1zw7K29Irob1dBaUHYs9o84dz4vuFmy6Z5ZSPBsSVtZFdN6GjkoWpD6nI9veLNcltHZ+6N
	LT8a0uODK1/SWtHFWOMxr8j8Bl5lsB0UBAAA
Subject: how to use native executable from one recipe during install in another recipe
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
X-List-Received-Date: Thu, 11 Apr 2013 11:59:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_62673661A504604B856269DAADA8BC281DE35E00ILPTWPVEXMB02ec_"

--_000_62673661A504604B856269DAADA8BC281DE35E00ILPTWPVEXMB02ec_
Content-Type: text/plain; charset="us-ascii"
content-transfer-encoding: quoted-printable

I have one recipe that inherits "native", builds native executable and insta=
lls it in tmp/work/x86_64-linux/foo-native-1.00-r0/image/sbin/foo
Another recipe depends on first one and needs to execute foo in its do_insta=
ll in order to install files in tmp/work/ppce500v2-fsl-linux-gnuspe/foo-1.00=
-r0/image/etc/

I can't find a way to do it. Any suggestions? How can I install foo in first=
 recipe to some common location that 2nd recipe can use? Is there such stand=
ard location?

I am using Freescale's SDK 1.3 based on Yocto 1.2.1

Thanks,
Michael



This e-mail message is intended for the recipient only and contains informat=
ion which is CONFIDENTIAL and which may be proprietary to ECI Telecom. If yo=
u have received this transmission in error, please inform us by e-mail, phon=
e or fax, and then delete the original and all copies thereof.


--_000_62673661A504604B856269DAADA8BC281DE35E00ILPTWPVEXMB02ec_
Content-Type: text/html; charset="us-ascii"
content-transfer-encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micro=
soft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" xm=
lns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://w=
ww.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I have one recipe that inherits &quot;native&quot;, b=
uilds native executable and installs it in tmp/work/x86_64-linux/foo-native-=
1.00-r0/image/sbin/foo<o:p></o:p></p>
<p class=3D"MsoNormal">Another recipe depends on first one and needs to exec=
ute foo in its do_install in order to install files in tmp/work/ppce500v2-fs=
l-linux-gnuspe/foo-1.00-r0/image/etc/<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I can't find a way to do it. Any suggestions? How can=
 I install foo in first recipe to some common location that 2<sup>nd</sup> r=
ecipe can use? Is there such standard location?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using Freescale's SDK 1.3 based on Yocto 1.2.1<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black">Michael<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p>
This e-mail message is intended for the recipient only and contains informat=
ion which is CONFIDENTIAL and which may be proprietary to ECI Telecom. If yo=
u have received this transmission in error, please inform us by e-mail, phon=
e or fax, and then delete the original and all copies thereof.
</p>
</body>
</html>

--_000_62673661A504604B856269DAADA8BC281DE35E00ILPTWPVEXMB02ec_--
