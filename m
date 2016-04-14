Return-Path: <sidprice@softtools.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CD4EE00E64; Thu, 14 Apr 2016 10:38:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_40,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.184.2.64 listed in list.dnswl.org]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2857]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 430 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Apr 2016 10:38:36 PDT
Received: from mx1a.swcp.com (mx1a.swcp.com [216.184.2.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3DB4E00D7D
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 10:38:36 -0700 (PDT)
Received: from ame7.swcp.com (ame7.swcp.com [216.184.2.70])
	by mx1a.swcp.com (8.14.4/8.14.4/Debian-4) with ESMTP id u3EHWqlu025918
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 11:32:52 -0600
Received-SPF: pass (ame7.swcp.com: authenticated connection)
	receiver=ame7.swcp.com; client-ip=67.42.135.123;
	helo=SJDevelopment; envelope-from=sidprice@softtools.com;
	x-software=spfmilter 2.001 http://www.acme.com/software/spfmilter/ with
	libspf2-1.2.10; 
Received: from SJDevelopment ([67.42.135.123]) (authenticated bits=0)
	by ame7.swcp.com (8.15.2/8.15.2) with ESMTPSA id u3EHVLHE080258
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 11:31:23 -0600 (MDT)
	(envelope-from sidprice@softtools.com)
X-Authentication-Warning: ame7.swcp.com: Host [67.42.135.123] claimed to be
	SJDevelopment
From: "Sid Price" <sidprice@softtools.com>
To: <yocto@yoctoproject.org>
Date: Thu, 14 Apr 2016 11:31:11 -0600
Message-ID: <009201d19673$710b33a0$53219ae0$@softtools.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdGWc1zZVZnCSGkNQ263gxsbwkKu4g==
X-Scanned-By: MIMEDefang 2.75
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.4.3
	(ame7.swcp.com [216.184.2.128]);
	Thu, 14 Apr 2016 11:31:23 -0600 (MDT)
X-Virus-Scanned: clamav-milter 0.98.7 at ame7
X-Virus-Status: Clean
Subject: environment setup script
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
X-List-Received-Date: Thu, 14 Apr 2016 17:38:40 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0093_01D19641.2670EAB0"
Content-Language: en-us

------=_NextPart_000_0093_01D19641.2670EAB0
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hello, I am new to Yocto and relatively new to Linux. I am working my way
through the "Getting Started" guide and I have met a problem. I am trying to
run the "environment-setup ." script for the arm platform. First I notice
that when I list the folder /opt/poky/2.0.1 I see the scripts but they are
not shown as executable. Is this correct? When I try the following command I
am told "Permission denied":

 

/opt/poky/2.0.1/environment-setup-armv5e-poky-linux-gnueabi

 

If I use sudo I see "command not found"

 

Any pointers would be very much appreciated,

Sid

 

Sid Price

Desktop Application and Embedded System Design

 


------=_NextPart_000_0093_01D19641.2670EAB0
Content-Type: text/html;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	color:windowtext;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hello, I am new to Yocto and relatively new to Linux. =
I am working my way through the &#8220;Getting Started&#8221; guide and =
I have met a problem. I am trying to run the &#8220;environment-setup =
&#8230;&#8221; script for the arm platform. First I notice that when I =
list the folder /opt/poky/2.0.1 I see the scripts but they are not shown =
as executable. Is this correct? When I try the following command I am =
told &#8220;Permission denied&#8221;:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>/opt/poky/2.0.1/environment-setup-armv5e-poky-linux-gnu=
eabi<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>If I use sudo I see &#8220;command not =
found&#8221;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Any pointers would be very much =
appreciated,<o:p></o:p></p><p class=3DMsoNormal>Sid<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><i>Sid =
Price<o:p></o:p></i></p><p class=3DMsoNormal><i>Desktop Application and =
Embedded System Design<o:p></o:p></i></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0093_01D19641.2670EAB0--
