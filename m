Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7FABE00CCC; Tue,  5 Mar 2019 08:39:44 -0800 (PST)
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
	*      [209.85.215.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E9ACE00CCC
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 08:39:43 -0800 (PST)
Received: by mail-pg1-f178.google.com with SMTP id m2so5991642pgl.5
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2019 08:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version:thread-index
	:content-language;
	bh=hP3ScI0d24ic1UvHZ3GRDX9tZ8+lEomhfeLnkjxbgQQ=;
	b=P026f/FvnBjVI0i+7AzeNTYgxXOIlmi4BSTZSFfMyYGxfbeHVoQEF2NrOPGs+vi+6q
	oPSyevY6D0zb+POTJ6j2Ck4iehey8gGglNw0+HkfBDgcBjT2KEEm1jl2YXKonmN6MAAo
	dNZ7KKnpxSsK9GVo1dcrQEbpxlNvwQ6t9H0lGT9j4GAvNtVMdUMCuzaCSD5TVgcMmluc
	e0Dzr1VMmb/UvSbHrL3C1874uVTti8SWFSPZooOZfI/nM6w7hQ82GaHTmrVRYl/cR0eP
	W+g/+br/6APzlQTLhhsNM1l1ccddA+c4dJz/BCWS6TKqTL57LVEQSq8V9/PoDk2RTCa7
	jsBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:thread-index:content-language;
	bh=hP3ScI0d24ic1UvHZ3GRDX9tZ8+lEomhfeLnkjxbgQQ=;
	b=Wy5hHM9mU9QE+tNxyZhKtN0bpc2bfUUlnNWvE8frH6hO5mjB+rGZjkZOxu5M6EKqQY
	E6AcRCJmMeuAvkpZ4v/47h6EO28RddACumWEhxIxksJKRNVJ0umo0w2kPgnI0tv47r8s
	sE6yzkkcUY8UK1pFoCFvWi0bD97K8H4yqj8LGtpZLIJDlPQEZYlM1CYTIaeFgkTWgAvu
	jYv7UDRoWmNZKSNWIHg8Yaey1zFJcEqOLkvtnCaLezxl693KM80R/S6pSeKFSt0PKg8h
	MGFhe0kI6Zqg5heblgkc3rkV5PHrlxk0omhLsIwu2CNmdQTAZniZ/mZk0LhH1IQ+LHi5
	Qkhg==
X-Gm-Message-State: APjAAAUCY7UL2ULPCeQDd36MIPr1zSJ3caF4G0kg6uKbbb1lyIdyu6Ks
	C7Q3Nd0t0ygdzYhrUdisPe0=
X-Google-Smtp-Source: APXvYqz6XiLveJV/bBvyQu1FYF39vtRlNo/8Zw5DT2nt11no6ChALiufakCFOM/+weUZFQ+TqhWL6A==
X-Received: by 2002:a65:63c2:: with SMTP id n2mr2113897pgv.439.1551803982646; 
	Tue, 05 Mar 2019 08:39:42 -0800 (PST)
Received: from sjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
	by smtp.gmail.com with ESMTPSA id
	y22sm12329943pfn.136.2019.03.05.08.39.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Mar 2019 08:39:42 -0800 (PST)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Date: Tue, 5 Mar 2019 08:39:41 -0800
Message-ID: <024f01d4d372$084c0800$18e41800$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQNAozcD8Fqr9tLE6dGHKqPIwo3TnQ==
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
X-List-Received-Date: Tue, 05 Mar 2019 16:39:44 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0250_01D4D32E.FA296440"
Content-Language: en-us

------=_NextPart_000_0250_01D4D32E.FA296440
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yocto Technical Team Minutes for Mar. 5, 2019.

 

Attendees: Armin, Joshua, Randy, Richard, Joshua, Tim, Stephen, Tracey,
Michael, Alex,

 

YP Status: YP 2.7 M2 rc2 is being released today Mar. 5, 2019.

YP 2.7 M3 has a 4 items still to be resolved before the build.

YP 2.5.3 needs one major item to be resolved before it is built.

Richard discussed the status of M3 and the remaining work to be done, see
the status report.

Richard discussed the status of QA automation, need to backport the changes
to 2.5 and 2.6

Richard discussed the current SWAT status, need more attention and members.

Stephen discussed that next month's Technical meeting we will begin the
planning for YP 2.8.  The link for YP 2.7 Plan is at:
<https://docs.google.com/document/d/15jB6nUJU2wrtnu6w07L9RZpNlj6AoxSTPEX5aEL
ts1g/edit>
https://docs.google.com/document/d/15jB6nUJU2wrtnu6w07L9RZpNlj6AoxSTPEX5aELt
s1g/edit

Richard discussed the updates from YP Advisory Board, both Comcast upgrading
to Platinum and the new agreed to Governance plan for YP.  This allows the
creation of the YP TSC. (Technical Steering Committee.)

Richard discussed that we can't run vgl without GPU HW in the cluster. Need
to decide if we need GPU cards in any/all servers.

Richard discussed the status of bug 8729.

Armin discussed the changes planned for QA transition.  Need to update
documentation to reflect the changes. 

 

Thanks,

 

Stephen K. Jolley

Yocto Project Project Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_0250_01D4D32E.FA296440
Content-Type: text/html;
	boundary="----=_NextPart_000_0523_01D4BD2D.E082BF30";
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
	{font-family:"MS Sans Serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
style=3D'margin:0in;margin-bottom:.0001pt'><b><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Yocto Technical =
Team Minutes for Mar. 5, 2019.</span></b><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Attendees: Armin, =
Joshua, Randy, Richard, Joshua, Tim, Stephen, Tracey, Michael, =
Alex,</span><o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>YP Status: YP 2.7 =
M2 rc2 is being released today Mar. 5, 2019.</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>YP 2.7 M3 has a 4 =
items still to be resolved before the build.</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>YP 2.5.3 needs one =
major item to be resolved before it is built.</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Richard discussed =
the status of M3 and the remaining work to be done, see the status =
report.</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Richard discussed =
the status of QA automation, need to backport the changes to 2.5 and =
2.6</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Richard discussed =
the current SWAT status, need more attention and =
members.</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Stephen discussed =
that next month&#8217;s Technical meeting we will begin the planning for =
YP 2.8. &nbsp;The link for YP 2.7 Plan is at: </span><a =
href=3D"https://docs.google.com/document/d/15jB6nUJU2wrtnu6w07L9RZpNlj6Ao=
xSTPEX5aELts1g/edit"><span =
style=3D'font-size:9.5pt;font-family:"Arial",sans-serif;color:#1155CC'>ht=
tps://docs.google.com/document/d/15jB6nUJU2wrtnu6w07L9RZpNlj6AoxSTPEX5aEL=
ts1g/edit</span></a><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Richard discussed =
the updates from YP Advisory Board, both Comcast upgrading to Platinum =
and the new agreed to Governance plan for YP. &nbsp;This allows the =
creation of the YP TSC. (Technical Steering =
Committee.)</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Richard discussed =
that we can&#8217;t run vgl without GPU HW in the cluster. Need to =
decide if we need GPU cards in any/all servers.</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Richard discussed =
the status of bug 8729.</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Armin discussed the =
changes planned for QA transition. &nbsp;Need to update documentation to =
reflect the changes. </span><o:p></o:p></p><p =
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

------=_NextPart_000_0250_01D4D32E.FA296440--
