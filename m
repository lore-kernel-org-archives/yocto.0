Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AA7CE00CD5; Wed,  6 Mar 2019 06:17:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [91.90.150.80 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 190 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Mar 2019 06:17:35 PST
Received: from s2080.ppsmtp.net (s2080.ppsmtp.net [91.90.150.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78D26E00BC8
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 06:17:35 -0800 (PST)
Received: from pps.filterd (s2080.ppsmtp.net [127.0.0.1])
	by s2080.ppsmtp.net (8.16.0.27/8.16.0.27) with SMTP id x26EDDHw023082
	for <yocto@yoctoproject.org>; Wed, 6 Mar 2019 15:14:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type; s=pps;
	bh=WYAq3PJ3/BiMy7xsJmb5v57RaSzh633+EMVC7GH0gHQ=;
	b=BlEzPbuDkxzqqRPgP4YCYS2MubAEYv7Rz4k9g64IOPh9tCpEb7cOlRlcDHFVPPTw4dcG
	MMhaGJK04eubBhxrKEfqdBwa7vNmCepy0KIhge2mFPaC4TCI8kWdTU0AzI3epL3ve8Fa
	C2nZ6WsvF1a8M/eR93YF4UI5FG2avCrezE1tdmuodwcXDnd0ir7Cfv03tjDyS2Vvo/ij
	AKcr/YlzJgrjYrdhBFneuIV5CDYepFGxof/+H5hyabHLWf6yS3hKmwlUYDs3oSXSgA0J
	OHO1RlBWAo3PQGLBVptFTH8PjpuFK4uK0b/jp4UEwR4fPvqKPtTamaIATXyRpJHjCtsi
	zw== 
Received: from deesdmz227.dmz.es.de.ifm (mail27.ifm.com [194.156.152.227])
	by s2080.ppsmtp.net with ESMTP id 2qygsg0t99-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 15:14:24 +0100
Received: from deesdmz227.dmz.es.de.ifm (localhost [127.0.0.1])
	by deesdmz227.dmz.es.de.ifm (Postfix) with ESMTP id 998D5884445
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 15:14:23 +0100 (CET)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: using git am to apply git patch in the workdir of any package+
Thread-Index: AdTUJTGcRXEIScfNRjasPtm4SWQG1w==
Date: Wed, 6 Mar 2019 14:14:09 +0000
Message-ID: <5f8b2ea081cd4eb6afa6d8cc69cb4569@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.151]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24474.000
X-TM-AS-Result: No-17.234500-5.000000-10
X-TMASE-MatchedRID: yslygUP8YId5yhP+9izTu2zBijri5+RVc3ewuwbSaG5OCtCDJNptxjku
	TGiiLo1Y7l/5JtDtWGCkyF6OpX0pBK+E45fdyyZXuIwLnB3Aqp18s8pjIsOUBxdidqgv9+A760y
	mGL9M3Rg+xr8bqQPoO0VSEs4piz21AoU2MUt2UTkwiJTf3kjwfZhwKdlCfPk8dDwP5ItpCOxLVO
	P6Sq/6G1ehZ8JDMoGXa+5MR1psyWimCqNKsj8JNIoLoibgjVEXVo4lwLFUdiv2Jzqp3fkNE3uer
	PMb7lIQbvKbDDavj3YQZrAwkDFSON3jF2fVcPdzDB+ErBr0bANar2Wff4KSIaUXswX/xrIS1BoO
	0FXL0sjuDNx+Tk7mCyBPSE2DyE9ZXLwuIT0vGF4iPTMUjkOgki1RIwMdx4yupOwTxn+Ouv7SnfY
	nnxZmsru3uJW0t2Hbn0mxkGL/hd/37mDw9KvUHly6ccWnLzE/Qap/k5Sc19BCI7pNLiSjfeRqQA
	xbWD9+rdZLelE6wFvr4Ukqz3sOObfAwLakUNypI/NGWt0UYPDExS+N1Stku56UIKCVpfjh4XQbh
	Ew6Ebl/qTTPDr7rtAfSsimtN8Um
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--17.234500-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24474.000
X-TM-SNTS-SMTP: BCDA8CDB0CA36A8BBA862817FC7D25A9CA66FCFA3EC66EAF44BE655957EF89F22002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19367.x86_64 COMPUMAIL Date:
	20190306141423Z
X-Proofpoint-ID: SID=2qygsg0t99 QID=2qygsg0t99-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-03-06_10:, , signatures=0
Subject: using git am to apply git patch in the workdir of any package+
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
X-List-Received-Date: Wed, 06 Mar 2019 14:17:37 -0000
X-Groupsio-MsgNum: 44325
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_5f8b2ea081cd4eb6afa6d8cc69cb4569ifmcom_";
	type="multipart/alternative"

--_004_5f8b2ea081cd4eb6afa6d8cc69cb4569ifmcom_
Content-Type: multipart/alternative;
	boundary="_000_5f8b2ea081cd4eb6afa6d8cc69cb4569ifmcom_"

--_000_5f8b2ea081cd4eb6afa6d8cc69cb4569ifmcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
I am trying to modify the src code of a package named say x,
For this I type the command $bitbake x -c devshell.
This leads me to the git repo of the x package(if it is a git repo).
Now I do my changes, commit the changes, and create a patch out of it using=
 git format-patch.
Now I want this git patch to be applied via git am  whenever I run bitbake =
x.
In some packages the patch is applied via git am for example linux-yocto-%.=
bb, but in some cases the patch is not being applied via git am for example=
 u-boot%.bb
Is there any setting in bitbake to apply git patches via git am so that it =
is easy to modify the older patches via rebase commands, or we have to crea=
te new patch every time for a small change and the later patches will have =
dependency on older patches.


Best Regards
Kamal Pandey
Junior Software Engineer
[ifm_logo_sqrs]ifm engineering pvt. ltd.
Survey No. 1/10/16, 3rd floor, Above SBI, Bavdhan Branch, N.D.A. Road, Bavd=
han, Pune, India - 411021 | Web: www.ifm.com<http://www.ifm.com/> | Phone: =
+91-20-22951910 Extn:215 | CIN: U29213PN2010FTC13676


--_000_5f8b2ea081cd4eb6afa6d8cc69cb4569ifmcom_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">I am trying to modify the src code of a package name=
d say x,
<o:p></o:p></p>
<p class=3D"MsoNormal">For this I type the command $bitbake x &#8211;c devs=
hell.<o:p></o:p></p>
<p class=3D"MsoNormal">This leads me to the git repo of the x package(if it=
 is a git repo).<o:p></o:p></p>
<p class=3D"MsoNormal">Now I do my changes, commit the changes, and create =
a patch out of it using git format-patch.<o:p></o:p></p>
<p class=3D"MsoNormal">Now I want this git patch to be applied via git am&n=
bsp; whenever I run bitbake x.<o:p></o:p></p>
<p class=3D"MsoNormal">In some packages the patch is applied via git am for=
 example linux-yocto-%.bb, but in some cases the patch is not being applied=
 via git am for example u-boot%.bb<o:p></o:p></p>
<p class=3D"MsoNormal">Is there any setting in bitbake to apply git patches=
 via git am so that it is easy to modify the older patches via rebase comma=
nds, or we have to create new patch every time for a small change and the l=
ater patches will have dependency
 on older patches.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt;text-autospace:none"><sp=
an lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&=
quot;,sans-serif;color:black;mso-fareast-language:EN-IN">Best Regards
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt;text-autospace:none"><sp=
an lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&=
quot;,sans-serif;color:black;mso-fareast-language:EN-IN">Kamal Pandey<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt;text-autospace:none"><sp=
an lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&=
quot;,sans-serif;color:black;mso-fareast-language:EN-IN">Junior Software En=
gineer</span><span lang=3D"EN-US" style=3D"color:black;mso-fareast-language=
:EN-IN"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt;text-autospace:none"><sp=
an style=3D"color:black;mso-fareast-language:EN-IN"><img width=3D"32" heigh=
t=3D"32" style=3D"width:.3333in;height:.3333in" id=3D"Picture_x0020_1" src=
=3D"cid:image001.png@01D4D453.A2794E60" alt=3D"ifm_logo_sqrs"></span><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quo=
t;,sans-serif;color:black;mso-fareast-language:EN-IN">ifm
 engineering pvt. ltd.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-f=
amily:&quot;Trebuchet MS&quot;,sans-serif;color:black;mso-fareast-language:=
EN-IN">Survey No. 1/10/16, 3rd floor, Above SBI, Bavdhan Branch, N.D.A. Roa=
d, Bavdhan, Pune, India - 411021 | Web:
</span><span lang=3D"EN-US" style=3D"mso-fareast-language:EN-IN"><a href=3D=
"http://www.ifm.com/"><span style=3D"font-size:8.0pt;font-family:&quot;Treb=
uchet MS&quot;,sans-serif;color:black">www.ifm.com</span></a></span><span l=
ang=3D"EN-US" style=3D"font-size:8.0pt;font-family:&quot;Trebuchet MS&quot;=
,sans-serif;color:black;mso-fareast-language:EN-IN">
 | Phone: &#43;91-20-22951910 Extn:215 | CIN: U29213PN2010FTC13676</span><s=
pan style=3D"mso-fareast-language:EN-IN"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_5f8b2ea081cd4eb6afa6d8cc69cb4569ifmcom_--

--_004_5f8b2ea081cd4eb6afa6d8cc69cb4569ifmcom_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=1601;
	creation-date="Wed, 06 Mar 2019 14:14:08 GMT";
	modification-date="Wed, 06 Mar 2019 14:14:08 GMT"
Content-ID: <image001.png@01D4D453.A2794E60>
Content-Transfer-Encoding: base64

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
RK5CYII=

--_004_5f8b2ea081cd4eb6afa6d8cc69cb4569ifmcom_--
