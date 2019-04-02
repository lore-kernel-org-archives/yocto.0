Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39D5BE00BC8; Tue,  2 Apr 2019 08:50:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sjolley.yp.pm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D2BFE00994
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 08:50:12 -0700 (PDT)
Received: by mail-pl1-f172.google.com with SMTP id b3so3497626plr.7
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 08:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version:thread-index
	:content-language;
	bh=dK88gxKhi5KjE4Gv18M7qfsVU6UoOrK3GqhIL+z+euY=;
	b=LpUQjr0pug0C9rEKeEORmcMsEGRoCi73pYx5wVcfFCZFeSTtGiPPub/l3GJ/wpYJPM
	OyAto6kWHgfkAPV6Pv4XVE9ItKFNEjR02eBq824XeCOV85cTBK1LMRAzPYEKLKL03dKW
	uJyvqfb/u2uluKf7xeZ1RKUtG8FzDEmzGzAJRqA9rnA+6CYrYgvsTPGu2uGJw7Fbd2Jc
	jcGH6OnFVI3Ap//v/cCyA8daKeB9TgWRfdjqeM+nlm0a6E3m+zV+nIkP/jTkCYD5MRu0
	goyaIreUu/qh/TTX0uCCoBcbCr9iExmmisRo55DsLt8UNWzf9t2UldcgiwnfPEoaHdJ9
	whjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:thread-index:content-language;
	bh=dK88gxKhi5KjE4Gv18M7qfsVU6UoOrK3GqhIL+z+euY=;
	b=rcq14KkMpK2O1JgfhvKBddkyVeMykDAQ+kLTBLoqLtR+xCAvYqHhUfonTlZnYM51St
	VB+JkdAgYdlHQTWk7aL1wnOQeXP5i29QNkiYn58ouCCryYmb4lfxjwP76/VaSrLT7ZeT
	nnocywZcDvkux2W/Wm3AzfrAKZk9Bq580uNVDdcyV1PQeZvmCaoU9Jz8V+lI55ilEomg
	6fdtIgKyyTMn+zLUs+9+8xnZa4M2plQLl17YjH4nJA0d9Nor/skVVr8/l++6A3meW0yC
	/PAU3QrylMD1f6ZKq3pD+8x73WFIXNIx2FxqglWWCdNFhsCFu3q8JOx8pHRS0Rpu+iLw
	mnDA==
X-Gm-Message-State: APjAAAVwmqVg53eAyFEfGhs3IVPgfqLSRdud2y/jl4bVHwQ7LHtDwvXd
	rZsumlTQObfCbv0e8yQv8htj62Kp
X-Google-Smtp-Source: APXvYqwUnCWDJvZN5rUlUFg9k6sBKCs8UDRUdxyKYyq9i2OGQSztwEvwmAcbhSPgUcXHDyxYNvDnUg==
X-Received: by 2002:a17:902:2de4:: with SMTP id
	p91mr14005484plb.191.1554220211344; 
	Tue, 02 Apr 2019 08:50:11 -0700 (PDT)
Received: from sjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
	by smtp.gmail.com with ESMTPSA id
	o76sm39450677pfa.156.2019.04.02.08.50.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 02 Apr 2019 08:50:10 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Date: Tue, 2 Apr 2019 08:50:11 -0700
Message-ID: <036f01d4e96b$c1fa5d10$45ef1730$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQDm0sYcJjhYb9DHkIFSM9QklGlECw==
Subject: YPTM minutes
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
X-List-Received-Date: Tue, 02 Apr 2019 15:50:13 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0370_01D4E931.159C6F70"
Content-Language: en-us

------=_NextPart_000_0370_01D4E931.159C6F70
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Attendees: Stephen, Joshua, Alex, Jon, Randy, Richard, Michael, David,
Bruce, Shawn, Jaewon, Manjukum, Tracey, Chris, Tim, Chandana, Aitronics,
Paul, Tomas, Ross, 

 

YP 2.7 M3 rc1 is out of QA.  The YP 2.7 M3 rc1 report is summarized at
<https://lists.yoctoproject.org/pipermail/yocto/2019-April/044667.html>
https://lists.yoctoproject.org/pipermail/yocto/2019-April/044667.html and
the results are at
<https://autobuilder.yocto.io/pub/releases/yocto-2.7_M3.rc1/testresults/>
https://autobuilder.yocto.io/pub/releases/yocto-2.7_M3.rc1/testresults/.

YP 2.5.3 and YP 2.6.2 stable releases were built and submitted to QA last
week.

We discuss the YP 2.8 Ideas document at:
<https://docs.google.com/document/d/1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6smpZO2HbaJ
GXbU/>
https://docs.google.com/document/d/1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6smpZO2HbaJG
XbU/ - If you wish to edit the file, send a request. 

 

AR: Tim - Add to planning document details about installable images via WIC.


AR: Stephen - Cancel 4/16 engineering meeting and add 4/16 Planning meeting.

 

Thanks,

 

Stephen K. Jolley

Yocto Project Project Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_0370_01D4E931.159C6F70
Content-Type: text/html;
	boundary="----=_NextPart_000_0250_01D4D32E.FA296440";
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:p=3D"urn:schemas-microsoft-com:office:powerpoint" =
xmlns:a=3D"urn:schemas-microsoft-com:office:access" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" =
xmlns:s=3D"uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" =
xmlns:rs=3D"urn:schemas-microsoft-com:rowset" xmlns:z=3D"#RowsetSchema" =
xmlns:b=3D"urn:schemas-microsoft-com:office:publisher" =
xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadsheet" =
xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" =
xmlns:odc=3D"urn:schemas-microsoft-com:office:odc" =
xmlns:oa=3D"urn:schemas-microsoft-com:office:activation" =
xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" =
xmlns:rtc=3D"http://microsoft.com/officenet/conferencing" =
xmlns:D=3D"DAV:" xmlns:Repl=3D"http://schemas.microsoft.com/repl/" =
xmlns:mt=3D"http://schemas.microsoft.com/sharepoint/soap/meetings/" =
xmlns:x2=3D"http://schemas.microsoft.com/office/excel/2003/xml" =
xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" =
xmlns:ois=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" =
xmlns:dir=3D"http://schemas.microsoft.com/sharepoint/soap/directory/" =
xmlns:ds=3D"http://www.w3.org/2000/09/xmldsig#" =
xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint/dsp" =
xmlns:udc=3D"http://schemas.microsoft.com/data/udc" =
xmlns:xsd=3D"http://www.w3.org/2001/XMLSchema" =
xmlns:sub=3D"http://schemas.microsoft.com/sharepoint/soap/2002/1/alerts/"=
 xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#" =
xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" =
xmlns:sps=3D"http://schemas.microsoft.com/sharepoint/soap/" =
xmlns:xsi=3D"http://www.w3.org/2001/XMLSchema-instance" =
xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/soap" =
xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" =
xmlns:udcp2p=3D"http://schemas.microsoft.com/data/udc/parttopart" =
xmlns:wf=3D"http://schemas.microsoft.com/sharepoint/soap/workflow/" =
xmlns:dsss=3D"http://schemas.microsoft.com/office/2006/digsig-setup" =
xmlns:dssi=3D"http://schemas.microsoft.com/office/2006/digsig" =
xmlns:mdssi=3D"http://schemas.openxmlformats.org/package/2006/digital-sig=
nature" =
xmlns:mver=3D"http://schemas.openxmlformats.org/markup-compatibility/2006=
" xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns:mrels=3D"http://schemas.openxmlformats.org/package/2006/relationshi=
ps" xmlns:spwp=3D"http://microsoft.com/sharepoint/webpartpages" =
xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/2006/types"=
 =
xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/2006/messag=
es" =
xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/SlideLibrary/=
" =
xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortalServer/Pub=
lishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" =
xmlns:st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"MS Sans Serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Attendees: Stephen, =
Joshua, Alex, Jon, Randy, Richard, Michael, David, Bruce, Shawn, Jaewon, =
Manjukum, Tracey, Chris, Tim, Chandana, Aitronics, Paul, Tomas, Ross, =
</span><o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>YP 2.7 M3 rc1 is =
out of QA. &nbsp;The YP 2.7 M3 rc1 report is summarized at </span><a =
href=3D"https://lists.yoctoproject.org/pipermail/yocto/2019-April/044667.=
html"><span =
style=3D'font-family:"Arial",sans-serif;color:#1155CC'>https://lists.yoct=
oproject.org/pipermail/yocto/2019-April/044667.html</span></a><span =
style=3D'font-family:"Arial",sans-serif;color:black'> and the results =
are at </span><a =
href=3D"https://autobuilder.yocto.io/pub/releases/yocto-2.7_M3.rc1/testre=
sults/"><span =
style=3D'font-family:"Arial",sans-serif;color:#1155CC'>https://autobuilde=
r.yocto.io/pub/releases/yocto-2.7_M3.rc1/testresults/</span></a><span =
style=3D'font-family:"Arial",sans-serif;color:black'>.</span><o:p></o:p><=
/p><p style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>YP 2.5.3 and YP =
2.6.2 stable releases were built and submitted to QA last =
week.</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>We discuss the YP =
2.8 Ideas document at: </span><a =
href=3D"https://docs.google.com/document/d/1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6=
smpZO2HbaJGXbU/"><span =
style=3D'font-family:"Arial",sans-serif;color:#1155CC'>https://docs.googl=
e.com/document/d/1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6smpZO2HbaJGXbU/</span></a>=
<span style=3D'font-family:"Arial",sans-serif;color:black'> - If you =
wish to edit the file, send a request. </span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>AR: Tim - Add to =
planning document details about installable images via WIC. =
</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>AR: Stephen - =
Cancel 4/16 engineering meeting and add 4/16 Planning =
meeting.</span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'page-break-after:avoid;text-autospace:none'><b><i><span =
style=3D'font-size:16.0pt;font-family:"Times New =
Roman",serif;color:purple'>Stephen K. Jolley</span></i></b><b><i><span =
style=3D'font-size:16.0pt;font-family:"Tahoma",sans-serif;color:purple'><=
o:p></o:p></span></i></b></p><p class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;font-family:"Courier New";color:blue'>Yocto =
Project Project Manager<o:p></o:p></span></b></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings;color:black'>(</span><span=
 style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>&nbsp;&nbsp;&nbsp; </span><b><span =
style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Cell</span></b><span =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'font-size:9.0pt;font-family:"MS Sans Serif"'>(208) =
244-4460<span style=3D'color:black'><o:p></o:p></span></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>* </span><b><span =
lang=3DFR style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;<u><span style=3D'color:blue'><a =
href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a></span=
></u></span><span lang=3DFR =
style=3D'font-size:12.0pt;font-family:"Arial",sans-serif'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0370_01D4E931.159C6F70--
