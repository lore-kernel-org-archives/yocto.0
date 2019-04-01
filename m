Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7018E00CF4; Mon,  1 Apr 2019 15:21:28 -0700 (PDT)
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
	*      [209.85.214.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 963B1E0053F
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2019 15:21:12 -0700 (PDT)
Received: by mail-pl1-f169.google.com with SMTP id y6so5189650plt.1
	for <yocto@yoctoproject.org>; Mon, 01 Apr 2019 15:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version:content-language
	:thread-index; bh=xJktAC1lE+hJKik0hQIweQE6ROCnf+Rqk8k/9lhM504=;
	b=gkeSOfCpgsToNFKKlWQwgEvObQNBgPHcz9HCByYN5PztVzlGU4McckgHMbFxUWstSe
	Ab2dDayIJfP5cQne67PhlRCKzT7S815Y3BZ8DsRAGmpquYuJv0rH2aaKN0PLraoehy5c
	BTSW9Pb6SSwdGhBrkpM56lkQ2Nt9Cx6Lh78klu3F06Ql8WG/11nvSBCsnnCkMB4tIZQS
	aVgm0AjuH+HMGLGVSIkhquUDo8J8B2AJnZlxn8ysJTnnFTms4IIqfx61TLMrGQTmhE6R
	aGlsYlg/tym9+tMd0Azv/37iVts6yJxA8AHgWghTL3LtTrSWnEUQbe+0BHBk/RYWahqy
	Zqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-language:thread-index;
	bh=xJktAC1lE+hJKik0hQIweQE6ROCnf+Rqk8k/9lhM504=;
	b=S0KBTOFfAd9zTIrmRdnUd8yKRtYgYyMPuFLJLPf8YO7I+IViNRmTZonzdX77+4v26c
	X3dzRETMF8URe8Xs5HZmF9I5DN1ztMgwR75qJdU3xcKY9fMPUE/+aryiqWouTDaEqVzq
	waUvjzMWfIQUuIgXnSZ1sXc0JAOBQcvx9Ecmf6so8IzInGLTPiunvmo9GSjBKSR71Wr7
	vu25zrca6hF4p6a/f9pRIk5nq7VIBHhqHdn+k+rGxlXtO/FDbuuKr1qLHyrQEMtHmZMT
	/hrBOZyQ6IyCyIUO56ANkI/Oj3boCugFYohJYK3pvUWoYP/wVqFOMw3LlXqc/pIyLf9K
	Ljtw==
X-Gm-Message-State: APjAAAV3pIOS2RSw+WGHdInL/pC1WR5+zEzFcSYeLchfYqGP6hmn80VE
	cLvaat2uB1sRWEQBrblxGO5WaX1c
X-Google-Smtp-Source: APXvYqxYlOj6DYc5ZstrBkvjk+kT/sfH+/WRP78Tqngsz5AikfbHRlHdxy5ycpbhyBUN9wfeGPHL9Q==
X-Received: by 2002:a17:902:ba88:: with SMTP id
	k8mr64796780pls.268.1554157271935; 
	Mon, 01 Apr 2019 15:21:11 -0700 (PDT)
Received: from sjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
	by smtp.gmail.com with ESMTPSA id
	x28sm2805012pgl.38.2019.04.01.15.21.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 01 Apr 2019 15:21:11 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>,
	<openembedded-core@lists.openembedded.org>
Date: Mon, 1 Apr 2019 15:21:11 -0700
Message-ID: <00b501d4e8d9$369d9030$a3d8b090$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIc0vA3u/KBbf0ed8EIB0mTpGrVVQ==
Subject: Reminder: Yocto Project Technical Team Meeting @ Monthly from 8am to 8:30am on the first Tuesday (PST)
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
X-List-Received-Date: Mon, 01 Apr 2019 22:21:28 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00B6_01D4E89E.8A3FF0B0"
Content-Language: en-us

------=_NextPart_000_00B6_01D4E89E.8A3FF0B0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

 

Just a reminder we will hold the monthly Yocto Project Technical Meeting at
8am PST tomorrow. (April 2nd)  We will start planning for YP 2.8 

 

Yocto Project Technical Team Meeting: We encourage people attending the
meeting to logon and announce themselves on the Yocto Project IRC chancel
during the meeting (optional):

Yocto IRC: http://webchat.freenode.net/?channels=#yocto

 

Wiki: https://www.yoctoproject.org/public-virtual-meetings/

 

When            Monthly from 8am to 9am on the first Tuesday Pacific Time

Where           Zoom Meeting: https://zoom.us/j/990892712 

 

I will be tracking the minutes at:
https://docs.google.com/document/d/1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSAfw2tdU
9pg/edit?ts=5c06b22d  Please request access if you want to assist in editing
them.  The world should have view access. 

 

The planning document for YP 2.8 is at:
https://drive.google.com/open?id=1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6smpZO2HbaJGXb
U   If you want to add ideas or edit it, just request it and I will grant
you edit access.

 

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_00B6_01D4E89E.8A3FF0B0
Content-Type: text/html;
	boundary="----=_NextPart_000_0EA9_01D4D261.72C3C400";
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
class=3DMsoNormal><span style=3D'color:#1F497D'>All,</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Just a reminder we will hold the monthly Yocto =
Project Technical Meeting at 8am PST tomorrow. (April =
2<sup>nd</sup>)&nbsp; We will start planning for YP 2.8 =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Yocto Project Technical =
Team Meeting: We encourage people attending the meeting to logon and =
announce themselves on the Yocto Project IRC chancel during the meeting =
(optional):</span><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Yocto IRC: <a =
href=3D"http://webchat.freenode.net/?channels=3D#yocto">http://webchat.fr=
eenode.net/?channels=3D#yocto</a></span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Wiki: <a =
href=3D"https://www.yoctoproject.org/public-virtual-meetings/">https://ww=
w.yoctoproject.org/public-virtual-meetings/</a></span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>When&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; Monthly from 8am to 9am on the first Tuesday =
Pacific Time</span><span style=3D'font-size:12.0pt;font-family:"Times =
New Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Where&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; Zoom Meeting: <a =
href=3D"https://zoom.us/j/990892712">https://zoom.us/j/990892712</a> =
</span><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>I will be tracking the minutes at: <a =
href=3D"https://docs.google.com/document/d/1Y5IIuE-z0Ykdl-DwuzUJh52flOZuh=
N_TSAfw2tdU9pg/edit?ts=3D5c06b22d">https://docs.google.com/document/d/1Y5=
IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSAfw2tdU9pg/edit?ts=3D5c06b22d</a>&nbsp; =
Please request access if you want to assist in editing them.&nbsp; The =
world should have view access. <o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>The planning document =
for YP 2.8 is at: <a =
href=3D"https://drive.google.com/open?id=3D1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6=
smpZO2HbaJGXbU">https://drive.google.com/open?id=3D1CNEKA4d0eT6-e0hnS2pwi=
7xdZ5_t6smpZO2HbaJGXbU</a> &nbsp;&nbsp;If you want to add ideas or edit =
it, just request it and I will grant you edit access.</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Thanks,</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'page-break-after:avoid;text-autospace:none'><b><i><span =
style=3D'font-size:16.0pt;font-family:"Times New =
Roman",serif;color:purple'>Stephen K. Jolley</span></i></b><b><i><span =
style=3D'font-size:16.0pt;font-family:"Tahoma",sans-serif;color:purple'><=
o:p></o:p></span></i></b></p><p class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;font-family:"Courier New";color:blue'>Yocto =
Project Program Manager<o:p></o:p></span></b></p><p =
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

------=_NextPart_000_00B6_01D4E89E.8A3FF0B0--
