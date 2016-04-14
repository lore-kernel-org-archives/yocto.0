Return-Path: <sidprice@softtools.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D9D8E00EA4; Thu, 14 Apr 2016 10:54:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.184.2.64 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx1a.swcp.com (mx1a.swcp.com [216.184.2.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F768E00D7D
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 10:54:36 -0700 (PDT)
Received: from ame8.swcp.com (ame8.swcp.com [216.184.2.163])
	by mx1a.swcp.com (8.14.4/8.14.4/Debian-4) with ESMTP id u3EHu1vj029985; 
	Thu, 14 Apr 2016 11:56:01 -0600
Received-SPF: pass (ame8.swcp.com: authenticated connection)
	receiver=ame8.swcp.com; client-ip=67.42.135.123;
	helo=SJDevelopment; envelope-from=sidprice@softtools.com;
	x-software=spfmilter 2.001 http://www.acme.com/software/spfmilter/ with
	libspf2-1.2.10; 
Received: from SJDevelopment ([67.42.135.123]) (authenticated bits=0)
	by ame8.swcp.com (8.15.2/8.15.2) with ESMTPSA id u3EHsUus039850
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Thu, 14 Apr 2016 11:54:31 -0600 (MDT)
	(envelope-from sidprice@softtools.com)
X-Authentication-Warning: ame8.swcp.com: Host [67.42.135.123] claimed to be
	SJDevelopment
From: "Sid Price" <sidprice@softtools.com>
To: "'Christopher Larson'" <clarson@kergoth.com>, <yocto@yoctoproject.org>
References: <009201d19673$710b33a0$53219ae0$@softtools.com>
	<CABcZANkVC3qdywVZedFTNzgADnUB24SEJBKSdNHV85SGRH2jjA@mail.gmail.com>
In-Reply-To: <CABcZANkVC3qdywVZedFTNzgADnUB24SEJBKSdNHV85SGRH2jjA@mail.gmail.com>
Date: Thu, 14 Apr 2016 11:54:20 -0600
Message-ID: <009b01d19676$acd9d780$068d8680$@softtools.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQE3+xxjjHLIeA2VRwRBoC0IFaZWXAJLDMkxoKqdqBA=
X-Scanned-By: MIMEDefang 2.75
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.4.3
	(ame8.swcp.com [216.184.2.128]);
	Thu, 14 Apr 2016 11:54:32 -0600 (MDT)
X-Virus-Scanned: clamav-milter 0.98.7 at ame8
X-Virus-Status: Clean
Subject: Re: environment setup script
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
X-List-Received-Date: Thu, 14 Apr 2016 17:54:40 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_009C_01D19644.623FB5A0"
Content-Language: en-us

------=_NextPart_000_009C_01D19644.623FB5A0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 14, 2016 at 10:39 AM Sid Price <sidprice@softtools.com =
<mailto:sidprice@softtools.com> > wrote:

Hello, I am new to Yocto and relatively new to Linux. I am working my =
way through the =E2=80=9CGetting Started=E2=80=9D guide and I have met a =
problem. I am trying to run the =E2=80=9Cenvironment-setup =
=E2=80=A6=E2=80=9D script for the arm platform. First I notice that when =
I list the folder /opt/poky/2.0.1 I see the scripts but they are not =
shown as executable. Is this correct? When I try the following command I =
am told =E2=80=9CPermission denied=E2=80=9D:

=20

/opt/poky/2.0.1/environment-setup-armv5e-poky-linux-gnueabi

=20

If I use sudo I see =E2=80=9Ccommand not found=E2=80=9D

=20

The setup script has to be *sourced* into your shell, not run. The =
instructions most likely included a leading '.' but you missed it. =
Either type '. =
/opt/poky/2.0.1/environment-setup-armv5e-poky-linux-gnueabi' or 'source =
/opt/poky/2.0.1/environment-setup-armv5e-poky-linux-gnueabi' in your =
shell.

=20

Using =E2=80=9Csource =
/opt/poky/2.0.1/environment-setup-armv5e-poky-linux-gnueabi=E2=80=9D =
appeared to work, no errors reported. Should I now expect to see new =
environment variables when I use =E2=80=9Cprintenv=E2=80=9D, because I =
don=E2=80=99t see any of those mentioned in the getting started guide.

Sid


------=_NextPart_000_009C_01D19644.623FB5A0
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><div><div><div><p =
class=3DMsoNormal>On Thu, Apr 14, 2016 at 10:39 AM Sid Price &lt;<a =
href=3D"mailto:sidprice@softtools.com">sidprice@softtools.com</a>&gt; =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in =
6.0pt;margin-left:4.8pt;margin-right:0in'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Hello, I am =
new to Yocto and relatively new to Linux. I am working my way through =
the =E2=80=9CGetting Started=E2=80=9D guide and I have met a problem. I =
am trying to run the =E2=80=9Cenvironment-setup =E2=80=A6=E2=80=9D =
script for the arm platform. First I notice that when I list the folder =
/opt/poky/2.0.1 I see the scripts but they are not shown as executable. =
Is this correct? When I try the following command I am told =
=E2=80=9CPermission denied=E2=80=9D:<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>/opt/poky/2.=
0.1/environment-setup-armv5e-poky-linux-gnueabi<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>If I use =
sudo I see =E2=80=9Ccommand not =
found=E2=80=9D<o:p></o:p></p></div></div></blockquote><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>The setup script has to be *sourced* into your shell, =
not run. The instructions most likely included a leading '.' but you =
missed it. Either type '. =
/opt/poky/2.0.1/environment-setup-armv5e-poky-linux-gnueabi' or =
'source&nbsp;/opt/poky/2.0.1/environment-setup-armv5e-poky-linux-gnueabi'=
 in your shell.<o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Using =E2=80=9Csource =
/opt/poky/2.0.1/environment-setup-armv5e-poky-linux-gnueabi=E2=80=9D =
appeared to work, no errors reported. Should I now expect to see new =
environment variables when I use =E2=80=9Cprintenv=E2=80=9D, because I =
don=E2=80=99t see any of those mentioned in the getting started =
guide.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Sid<o:p></o:p></span></p></div></div></div></div></body></html>

------=_NextPart_000_009C_01D19644.623FB5A0--
