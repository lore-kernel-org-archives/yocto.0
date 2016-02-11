Return-Path: <mdlcameras@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61AA9E00BE9; Thu, 11 Feb 2016 04:11:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mdlcameras[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D49CE00BE6
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 04:10:46 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id c200so70104842wme.0
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 04:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:reply-to:user-agent
	:mime-version:content-type;
	bh=aKYJSfnDimqHFRc+grOzDA9m7w543wdUesobsjNGQrM=;
	b=DCWIssiZylDbFZBojle4wUkdQo0+LJIA+/EjohKaC0X6WmPNinIwK75VWqX1LoBL/e
	Ohrx5AJl/wM1nqISrSx72sLCESur9/Cm62HjjaVVGG9eREN9msfOHBqZJE0e3mMfHkHV
	cYDB4UEz9vWfIehq50kqWQZO8UfybR41fGBy7WIkJIMGUnuPgScu+Zxg98xqYB1rD/A2
	+js6JiLh6JQhySAgxTZqSS3WsXiD3f2C93g6uhhbmhUvOvXF8T2SpFcfJJriuSweM6D/
	EGKxQt8SD8UccyEpE267hJ1dGlQUUthecQ1L+3SfuMepThwYG12ZG9edATSbgMTnnZsn
	cnXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:reply-to:user-agent:mime-version:content-type;
	bh=aKYJSfnDimqHFRc+grOzDA9m7w543wdUesobsjNGQrM=;
	b=hTW7KLQNCvXEnLi9OUYBLzCNFohMR5d8MtJzKF3ajSUXrfEoqlsWqD7fX8WKhwmapn
	3Ki8f7si39VP6dsn3iISWCDrbeYBJbhJqCLHAHDfAdHo6xW8s2JOYKjZ8EWmJ4fgRTNX
	oonGNNVB7yPpctRWSGRUSAev3eNBwRA5cqTVOJkYS8AvXXmpH0ebIMBNL4sK17rRGy9u
	6bR7dytDaqKMxZJEYmlcWqjAq/mRKj00VMmm9+tpvhQ859F8hGNsWEAxeFIBzSTrppju
	dOBATkaf1+Ia7UyAu6UYyC/poowA7+wrvDekyw/kZnDmN1CXb22kWS1yN1GzRuvmz6bf
	aH+A==
X-Gm-Message-State: AG10YORgPzyRUqs2YDlK85BQX+Ts8mcSNmSp+DcUm5AyRED9x0Vm/6wsKJogngboDqLPNQ==
X-Received: by 10.28.63.85 with SMTP id m82mr18364715wma.55.1455192645238;
	Thu, 11 Feb 2016 04:10:45 -0800 (PST)
Received: from [127.0.0.1] ([80.95.0.196]) by smtp.gmail.com with ESMTPSA id
	r10sm7269543wjz.24.2016.02.11.04.10.42
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 11 Feb 2016 04:10:44 -0800 (PST)
From: Marius <mdlcameras@gmail.com>
To: "Teodor Madan" <teodor.madan@nxp.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 11 Feb 2016 12:10:38 +0000
Message-Id: <em035621f1-5a9a-4472-b20b-95e762a0bb3b@marius-pc>
In-Reply-To: <DB5PR04MB16535E6ABE82F1701380CEA89DA80@DB5PR04MB1653.eurprd04.prod.outlook.com>
User-Agent: eM_Client/6.0.24316.0
Mime-Version: 1.0
Subject: Re: Eclipse IDE plugin failure
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Marius <mdlcameras@gmail.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 11 Feb 2016 12:11:05 -0000
Content-Type: multipart/alternative;
	boundary="------=_MBE695999A-DF51-4863-A133-537BE1E30D98"

--------=_MBE695999A-DF51-4863-A133-537BE1E30D98
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Ah thanks Teo. Do you know of an instruction somewhere to get the patch=20
affected. I dont really know how to do that as I am installing directly=20
from repositories on the net.

------ Original Message ------
From: "Teodor Madan" <teodor.madan@nxp.com>
To: "Marius" <mdlcameras@gmail.com>; "yocto@yoctoproject.org"=20
<yocto@yoctoproject.org>
Sent: 2016-02-11 13:13:39
Subject: RE: [yocto] Eclipse IDE plugin failure

>A patch has been proposed at=20
>https://lists.yoctoproject.org/pipermail/yocto/2016-January/027951.html
>
>I just have verified the patch and it worked for me.
>
>
>
>Teo
>
>
>
>
>
>From:yocto-bounces@yoctoproject.org=20
>[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Marius
>Sent: Wednesday, February 10, 2016 20:22
>To:yocto@yoctoproject.org
>Subject: [yocto] Eclipse IDE plugin failure
>
>
>
>I installed the latest Eclipse (Mars) and attempted to install the=20
>plugin. The installation failed and the reported error was that it=20
>could not locate the TM Terminal version 3.xxx. The TM terminal is=20
>installed but it is version 4.00xxx
>
>
>
>Should I rather install older versions of the software or is there a=20
>workaround for this problem? If so what is suggested to be good and=20
>working?
>
>
>
>
>
>-----------------------------
>
>Regards / Groete
>
>
>
>Marius D. Liebenberg
>
>+27 82 698 3251
>
>+27 12 743 6064
>
>
>

--------=_MBE695999A-DF51-4863-A133-537BE1E30D98
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<HTML xmlns=3D"http://www.w3.org/TR/REC-html40" xmlns:v =3D "urn:schemas-mi=
crosoft-com:vml" xmlns:o =3D "urn:schemas-microsoft-com:office:office" xmln=
s:w =3D "urn:schemas-microsoft-com:office:word" xmlns:m =3D "http://schemas=
.microsoft.com/office/2004/12/omml"><HEAD>
<STYLE id=3DeMClientCss>blockquote.cite { margin-left: 5px; margin-right:=
 0px; padding-left: 10px; padding-right:0px; border-left: 1px solid #cccccc=
 }
blockquote.cite2 {margin-left: 5px; margin-right: 0px; padding-left: 10px;=
 padding-right:0px; border-left: 1px solid #cccccc; margin-top: 3px; paddin=
g-top: 0px; }
.plain pre, .plain tt { font-family: monospace; font-size: 100%; font-weigh=
t: normal; font-style: normal;}
a img { border: 0px; }body {font-family: Tahoma;font-size: 10pt;}
.plain pre, .plain tt {font-family: Tahoma;font-size: 10pt;}
</STYLE>

<STYLE>#x0b0d0eec442942cb966739628e4c6327 DIV.MsoNormal, #x0b0d0eec442942cb=
966739628e4c6327 LI.MsoNormal, #x0b0d0eec442942cb966739628e4c6327 P.MsoNorm=
al
{FONT-SIZE: 12pt; FONT-FAMILY: "Times New Roman",serif; MARGIN: 0cm 0cm =
0pt}
#x0b0d0eec442942cb966739628e4c6327 A:link, #x0b0d0eec442942cb966739628e4c63=
27 SPAN.MsoHyperlink
{TEXT-DECORATION: underline; COLOR: #0563c1; mso-style-priority: 99}
#x0b0d0eec442942cb966739628e4c6327 A:visited, #x0b0d0eec442942cb966739628e4=
c6327 SPAN.MsoHyperlinkFollowed
{TEXT-DECORATION: underline; COLOR: #954f72; mso-style-priority: 99}
#x0b0d0eec442942cb966739628e4c6327 PRE
{FONT-SIZE: 10pt; FONT-FAMILY: "Courier New"; MARGIN: 0cm 0cm 0pt; mso-styl=
e-priority: 99; mso-style-link: "HTML Preformatted Char"}
#x0b0d0eec442942cb966739628e4c6327 TT
{FONT-FAMILY: "Courier New"; mso-style-priority: 99}
#x0b0d0eec442942cb966739628e4c6327 SPAN.HTMLPreformattedChar
{FONT-FAMILY: Consolas; mso-style-priority: 99; mso-style-link: "HTML Prefo=
rmatted"; mso-style-name: "HTML Preformatted Char"}
#x0b0d0eec442942cb966739628e4c6327 DIV.msonormal0, #x0b0d0eec442942cb966739=
628e4c6327 LI.msonormal0, #x0b0d0eec442942cb966739628e4c6327 P.msonormal0
{FONT-SIZE: 12pt; FONT-FAMILY: "Times New Roman",serif; MARGIN-LEFT: 0cm;=
 MARGIN-RIGHT: 0cm; mso-style-name: msonormal; mso-margin-top-alt: auto;=
 mso-margin-bottom-alt: auto}
#x0b0d0eec442942cb966739628e4c6327 SPAN.EmailStyle21
{FONT-FAMILY: "Calibri",sans-serif; COLOR: #1f497d; mso-style-type: persona=
l-reply}
#x0b0d0eec442942cb966739628e4c6327 .MsoChpDefault
{FONT-SIZE: 10pt; mso-style-type: export-only}
#x0b0d0eec442942cb966739628e4c6327 DIV.WordSection1
{page: WordSection1}
</STYLE>
</HEAD>
<BODY lang=3DEN-US scroll=3Dauto link=3D#0563c1 vLink=3D#954f72 class>
<DIV>Ah thanks Teo. Do you know of an instruction somewhere to get the patc=
h affected. I dont really know how to do that as I am installing directly=
 from repositories on the net.</DIV>
<DIV>&nbsp;</DIV>
<DIV>------ Original Message ------</DIV>
<DIV>From: "Teodor Madan" &lt;<A href=3D"mailto:teodor.madan@nxp.com">teodo=
r.madan@nxp.com</A>&gt;</DIV>
<DIV>To: "Marius" &lt;<A href=3D"mailto:mdlcameras@gmail.com">mdlcameras@gm=
ail.com</A>&gt;; "yocto@yoctoproject.org" &lt;<A href=3D"mailto:yocto@yocto=
project.org">yocto@yoctoproject.org</A>&gt;</DIV>
<DIV>Sent: 2016-02-11 13:13:39</DIV>
<DIV>Subject: RE: [yocto] Eclipse IDE plugin failure</DIV>
<DIV>&nbsp;</DIV>
<DIV id=3Dx0b0d0eec442942cb966739628e4c6327>
<BLOCKQUOTE class=3Dcite2 cite=3DDB5PR04MB16535E6ABE82F1701380CEA89DA80@DB5=
PR04MB1653.eurprd04.prod.outlook.com type=3D"cite">
<DIV class=3DWordSection1>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'>A patch has been proposed at <A href=3D"https:=
//lists.yoctoproject.org/pipermail/yocto/2016-January/027951.html">https://=
lists.yoctoproject.org/pipermail/yocto/2016-January/027951.html</A><o:p></o=
:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'>I just have verified the patch and it worked=
 for me.<o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'><o:p>&nbsp;</o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'>Teo<o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'><o:p>&nbsp;</o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'><o:p>&nbsp;</o:p></SPAN></P>
<DIV style=3D"BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BO=
TTOM: medium none; PADDING-BOTTOM: 0cm; PADDING-TOP: 0cm; PADDING-LEFT: =
4pt; BORDER-LEFT: blue 1.5pt solid; PADDING-RIGHT: 0cm">
<DIV>
<DIV style=3D"BORDER-TOP: #e1e1e1 1pt solid; BORDER-RIGHT: medium none; =
BORDER-BOTTOM: medium none; PADDING-BOTTOM: 0cm; PADDING-TOP: 3pt; PADDING-=
LEFT: 0cm; BORDER-LEFT: medium none; PADDING-RIGHT: 0cm">
<P class=3DMsoNormal><B><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calib=
ri",sans-serif'>From:</SPAN></B><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY=
: "Calibri",sans-serif'> <A href=3D"mailto:yocto-bounces@yoctoproject.org">=
yocto-bounces@yoctoproject.org</A> [mailto:<A href=3D"mailto:yocto-bounces@=
yoctoproject.org">yocto-bounces@yoctoproject.org</A>] <B>On Behalf Of </B>M=
arius<BR><B>Sent:</B> Wednesday, February 10, 2016 20:22<BR><B>To:</B> <A=
 href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</A><BR><B>Su=
bject:</B> [yocto] Eclipse IDE plugin failure<o:p></o:p></SPAN></P></DIV></=
DIV>
<P class=3DMsoNormal><o:p>&nbsp;</o:p></P>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>I installed the latest Eclipse (Mars) and attempted to install=
 the plugin. The installation failed and the reported error was that it =
could not locate the TM Terminal version 3.xxx. The TM terminal is installe=
d but it is version 4.00xxx<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>&nbsp;<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>Should I rather install older versions of the software or is=
 there a workaround for this problem? If so what is suggested to be good=
 and working?<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>&nbsp;<o:p></o:p></SPAN></P></DIV>
<DIV>
<DIV id=3Dsignature_old>
<DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>&nbsp;<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>-----------------------------<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>Regards / Groete<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>&nbsp;<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>Marius D. Liebenberg<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>+27 82 698 3251<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>+27 12 743 6064<o:p></o:p></SPAN></P></DIV></DIV></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>&nbsp;<o:p></o:p></SPAN></P></DIV></DIV></DIV></DIV></BLOCKQUOT=
E></DIV></BODY></HTML>

--------=_MBE695999A-DF51-4863-A133-537BE1E30D98--
