Return-Path: <mdlcameras@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4E12E00C58; Fri, 12 Feb 2016 01:50:52 -0800 (PST)
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
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0049EE00C4D
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 01:50:49 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id c200so12508555wme.0
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 01:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:reply-to:user-agent
	:mime-version:content-type;
	bh=aDDDDlBJswYWxjiCHW4RX2mZ0SGQklkqHULI9as2nBI=;
	b=kwbnX/xF/zIwJB+bY5D8c3rBZ14+Rl46a2kV/gOf+WMBdH72koQnVgdEdplj60Y8TC
	FjXYv6ncJfGzeeQ9aPHgMIZFoVMfYmtc0SNzMk7Z3yoqUXxAEVvi2zGQkKZwaUmKyDo7
	qScRmJc/DsALdQka4sqDN6abwWGLwlpR0gxiuIB4bYALk7JOn7bQuF7gNOh/nJgngUxF
	A5uMYQ10Us1dUTJ46TRwFzmYRcWwCI18u6dnjkUDaxAfp/Z08zEySq5Gg9uzDFQAHTLn
	Q3mq+fjHMbyZ2zVZb0VXb4QY5GkQvmC3UJcTalJjTW9Ri32j+/9QXo/S/KV8IvvVs8Rb
	Ijww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:reply-to:user-agent:mime-version:content-type;
	bh=aDDDDlBJswYWxjiCHW4RX2mZ0SGQklkqHULI9as2nBI=;
	b=QVLserCnDdjhQZtGMKJNIg/rdJs4yIAx1aX1ZkAYYdojRA3M+Q2WOcmBzb+KZCEZG+
	QJWoH1JT0VPisa3VrTYNqEmiev4xlVu2BF8qdepJpjtnq02PZyybSgze1N2whcCnLg06
	vOh9yRyNUAzFv3zZPL3JqLNSAjeA9QDEyPe/HAYIkyXjGKH6vt9bNfBKHzbCz2rR7JoM
	UKsTq+Mtunijd6/Zt2A+p2vlBSgprDkCHSc/nupzjjiLAXpUKHTGdwfVPx+Xu6JO4xEx
	QduGUMDv6fV52nPLUsXUnS3qNHs7OtrcSU7tV9PALUFNk2u1UYTTfouQ66xx/kuwI2mx
	1OBQ==
X-Gm-Message-State: AG10YOQQ4XfLKKEW3KRKwBtz9pQnShsmgzJjgBZy95YVNEEPkKnVGl8JqeVS9Mv703Kfrg==
X-Received: by 10.28.224.87 with SMTP id x84mr2048073wmg.32.1455270648154;
	Fri, 12 Feb 2016 01:50:48 -0800 (PST)
Received: from [127.0.0.1] ([80.95.0.196]) by smtp.gmail.com with ESMTPSA id
	x186sm1564470wmg.19.2016.02.12.01.50.45
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 12 Feb 2016 01:50:47 -0800 (PST)
From: Marius <mdlcameras@gmail.com>
To: "Teodor Madan" <teodor.madan@nxp.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 12 Feb 2016 09:50:41 +0000
Message-Id: <em4a9b71f8-5e8a-4d32-9de9-27bfa854c101@marius-pc>
In-Reply-To: <DB5PR04MB1653621E75AC2BAA1E7F89899DA90@DB5PR04MB1653.eurprd04.prod.outlook.com>
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
X-List-Received-Date: Fri, 12 Feb 2016 09:50:52 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB153520A4-A6A4-4195-8115-E7F530CC81F0"

--------=_MB153520A4-A6A4-4195-8115-E7F530CC81F0
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Teo, I will give it a go.


>You should follow steps from=20
>http://www.yoctoproject.org/docs/2.0/dev-manual/dev-manual.html#zip-file-m=
ethod
>
>
>
>When following steps use =E2=80=9Cmars/yocto-2.0=E2=80=9D branch instead=
 of=20
>=E2=80=9Cluna/yocto-2.0=E2=80=9D.
>
>You should apply patch with =E2=80=9Cgit am=E2=80=9D after doing git check=
out at step=20
>3. i.e. patch should be committed in local repository before starting=20
>the build.
>
>Important: you should add =E2=80=9C-l=E2=80=9D argument to build.sh at =
step 7.
>
>
>
>Teo
>
>
>
>From: Marius [mailto:mdlcameras@gmail.com]
>Sent: Thursday, February 11, 2016 14:11
>To: Teodor Madan <teodor.madan@nxp.com>; yocto@yoctoproject.org
>Subject: Re[2]: [yocto] Eclipse IDE plugin failure
>
>
>
>Ah thanks Teo. Do you know of an instruction somewhere to get the patch=
=20
>affected. I dont really know how to do that as I am installing directly=
=20
>from repositories on the net.
>
>
>
>------ Original Message ------
>
>From: "Teodor Madan" <teodor.madan@nxp.com>
>
>To: "Marius" <mdlcameras@gmail.com>; "yocto@yoctoproject.org"=20
><yocto@yoctoproject.org>
>
>Sent: 2016-02-11 13:13:39
>
>Subject: RE: [yocto] Eclipse IDE plugin failure
>
>
>
>>A patch has been proposed at=20
>>https://lists.yoctoproject.org/pipermail/yocto/2016-January/027951.html
>>
>>I just have verified the patch and it worked for me.
>>
>>
>>
>>Teo
>>
>>
>>
>>
>>
>>From:yocto-bounces@yoctoproject.org=20
>>[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Marius
>>Sent: Wednesday, February 10, 2016 20:22
>>To:yocto@yoctoproject.org
>>Subject: [yocto] Eclipse IDE plugin failure
>>
>>
>>
>>I installed the latest Eclipse (Mars) and attempted to install the=20
>>plugin. The installation failed and the reported error was that it=20
>>could not locate the TM Terminal version 3.xxx. The TM terminal is=20
>>installed but it is version 4.00xxx
>>
>>
>>
>>Should I rather install older versions of the software or is there a=20
>>workaround for this problem? If so what is suggested to be good and=20
>>working?
>>
>>
>>
>>
>>
>>-----------------------------
>>
>>Regards / Groete
>>
>>
>>
>>Marius D. Liebenberg
>>
>>+27 82 698 3251
>>
>>+27 12 743 6064
>>
>>
>>

--------=_MB153520A4-A6A4-4195-8115-E7F530CC81F0
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

<STYLE>#x8b3d23b55ca64c5e8bf080bb44e213dc DIV.MsoNormal, #x8b3d23b55ca64c5e=
8bf080bb44e213dc LI.MsoNormal, #x8b3d23b55ca64c5e8bf080bb44e213dc P.MsoNorm=
al
{FONT-SIZE: 12pt; FONT-FAMILY: "Times New Roman",serif; MARGIN: 0cm 0cm =
0pt}
#x8b3d23b55ca64c5e8bf080bb44e213dc PRE
{FONT-SIZE: 10pt; FONT-FAMILY: "Courier New"; MARGIN: 0cm 0cm 0pt; mso-styl=
e-priority: 99; mso-style-link: "HTML Preformatted Char"}
#x8b3d23b55ca64c5e8bf080bb44e213dc TT
{FONT-FAMILY: "Courier New"; mso-style-priority: 99}
#x8b3d23b55ca64c5e8bf080bb44e213dc SPAN.HTMLPreformattedChar
{FONT-FAMILY: Consolas; mso-style-priority: 99; mso-style-link: "HTML Prefo=
rmatted"; mso-style-name: "HTML Preformatted Char"}
#x8b3d23b55ca64c5e8bf080bb44e213dc DIV.msonormal0, #x8b3d23b55ca64c5e8bf080=
bb44e213dc LI.msonormal0, #x8b3d23b55ca64c5e8bf080bb44e213dc P.msonormal0
{FONT-SIZE: 12pt; FONT-FAMILY: "Times New Roman",serif; MARGIN-LEFT: 0cm;=
 MARGIN-RIGHT: 0cm; mso-style-name: msonormal; mso-margin-top-alt: auto;=
 mso-margin-bottom-alt: auto}
#x8b3d23b55ca64c5e8bf080bb44e213dc DIV.msonormal00, #x8b3d23b55ca64c5e8bf08=
0bb44e213dc LI.msonormal00, #x8b3d23b55ca64c5e8bf080bb44e213dc P.msonormal0=
0
{FONT-SIZE: 12pt; FONT-FAMILY: "Times New Roman",serif; MARGIN-LEFT: 0cm;=
 MARGIN-RIGHT: 0cm; mso-style-name: msonormal0; mso-margin-top-alt: auto;=
 mso-margin-bottom-alt: auto}
#x8b3d23b55ca64c5e8bf080bb44e213dc DIV.msochpdefault, #x8b3d23b55ca64c5e8bf=
080bb44e213dc LI.msochpdefault, #x8b3d23b55ca64c5e8bf080bb44e213dc P.msochp=
default
{FONT-SIZE: 12pt; FONT-FAMILY: "Times New Roman",serif; MARGIN-LEFT: 0cm;=
 MARGIN-RIGHT: 0cm; mso-style-name: msochpdefault; mso-margin-top-alt: auto=
; mso-margin-bottom-alt: auto}
#x8b3d23b55ca64c5e8bf080bb44e213dc SPAN.htmlpreformattedchar0
{mso-style-name: htmlpreformattedchar}
#x8b3d23b55ca64c5e8bf080bb44e213dc SPAN.emailstyle21
{mso-style-name: emailstyle21}
#x8b3d23b55ca64c5e8bf080bb44e213dc SPAN.EmailStyle25
{FONT-FAMILY: "Calibri",sans-serif; COLOR: #1f497d; mso-style-type: persona=
l}
#x8b3d23b55ca64c5e8bf080bb44e213dc SPAN.EmailStyle26
{FONT-FAMILY: "Calibri",sans-serif; COLOR: #1f497d; mso-style-type: persona=
l-reply}
#x8b3d23b55ca64c5e8bf080bb44e213dc .msochpdefault
{FONT-SIZE: 10pt; mso-style-type: export-only}
#x8b3d23b55ca64c5e8bf080bb44e213dc DIV.WordSection1
{page: WordSection1}
</STYLE>
</HEAD>
<BODY lang=3DEN-US scroll=3Dauto link=3D#000000 vLink=3D#000000 class>
<DIV>Thanks Teo, I will give it a go.</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV id=3Dx8b3d23b55ca64c5e8bf080bb44e213dc>
<BLOCKQUOTE class=3Dcite2 cite=3DDB5PR04MB1653621E75AC2BAA1E7F89899DA90@DB5=
PR04MB1653.eurprd04.prod.outlook.com type=3D"cite">
<DIV class=3DWordSection1>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'>You should follow steps from <A href=3D"http:/=
/www.yoctoproject.org/docs/2.0/dev-manual/dev-manual.html#zip-file-method">=
<SPAN style=3D"COLOR: windowtext">http://www.yoctoproject.org/docs/2.0/dev-=
manual/dev-manual.html#zip-file-method</SPAN></A><o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'><o:p>&nbsp;</o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'>When following steps use =E2=80=9Cmars/yocto-2=
.0=E2=80=9D branch instead of =E2=80=9Cluna/yocto-2.0=E2=80=9D.<o:p></o:p><=
/SPAN></P>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'>You should apply patch with =E2=80=9Cgit am=
=E2=80=9D after doing git checkout at step 3. i.e. patch should be committe=
d in local repository before starting the build.<o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'>Important: you should add =E2=80=9C-l=E2=80=
=9D argument to build.sh at step 7. <o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'><o:p>&nbsp;</o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'>Teo<o:p></o:p></SPAN></P>
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
: "Calibri",sans-serif'> Marius [mailto:<A href=3D"mailto:mdlcameras@gmail.=
com">mdlcameras@gmail.com</A>] <BR><B>Sent:</B> Thursday, February 11, 2016=
 14:11<BR><B>To:</B> Teodor Madan &lt;<A href=3D"mailto:teodor.madan@nxp.co=
m">teodor.madan@nxp.com</A>&gt;; <A href=3D"mailto:yocto@yoctoproject.org">=
yocto@yoctoproject.org</A><BR><B>Subject:</B> Re[2]: [yocto] Eclipse IDE=
 plugin failure<o:p></o:p></SPAN></P></DIV></DIV>
<P class=3DMsoNormal><o:p>&nbsp;</o:p></P>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>Ah thanks Teo. Do you know of an instruction somewhere to get=
 the patch affected. I dont really know how to do that as I am installing=
 directly from repositories on the net.<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>&nbsp;<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>------ Original Message ------<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>From: "Teodor Madan" &lt;<A href=3D"mailto:teodor.madan@nxp.com=
"><U><SPAN style=3D"COLOR: #0563c1">teodor.madan@nxp.com</SPAN></U></A>&gt;=
<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>To: "Marius" &lt;<A href=3D"mailto:mdlcameras@gmail.com"><U><SP=
AN style=3D"COLOR: #0563c1">mdlcameras@gmail.com</SPAN></U></A>&gt;; "<A=
 href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</A>" &lt;<A=
 href=3D"mailto:yocto@yoctoproject.org"><U><SPAN style=3D"COLOR: #0563c1">y=
octo@yoctoproject.org</SPAN></U></A>&gt;<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>Sent: 2016-02-11 13:13:39<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>Subject: RE: [yocto] Eclipse IDE plugin failure<o:p></o:p></SPA=
N></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 10pt; FONT-FAMILY: "Tahoma",=
sans-serif'>&nbsp;<o:p></o:p></SPAN></P></DIV>
<DIV id=3Dx0b0d0eec442942cb966739628e4c6327>
<BLOCKQUOTE style=3D"BORDER-TOP: medium none; BORDER-RIGHT: medium none;=
 BORDER-BOTTOM: medium none; PADDING-BOTTOM: 0cm; PADDING-TOP: 0cm; PADDING=
-LEFT: 8pt; MARGIN: 2.25pt 0cm 5pt 3.75pt; BORDER-LEFT: #cccccc 1pt solid;=
 PADDING-RIGHT: 0cm">
<P class=3DMsoNormal><SPAN style=3D'FONT-SIZE: 11pt; FONT-FAMILY: "Calibri"=
,sans-serif; COLOR: #1f497d'>A patch has been proposed at <A href=3D"https:=
//lists.yoctoproject.org/pipermail/yocto/2016-January/027951.html"><U><SPAN=
 style=3D"COLOR: #0563c1">https://lists.yoctoproject.org/pipermail/yocto/20=
16-January/027951.html</SPAN></U></A><o:p></o:p></SPAN></P>
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
<U><SPAN style=3D"COLOR: #0563c1">yocto-bounces@yoctoproject.org</SPAN></U>=
</A> [mailto:<A href=3D"mailto:yocto-bounces@yoctoproject.org"><U><SPAN =
style=3D"COLOR: #0563c1">yocto-bounces@yoctoproject.org</SPAN></U></A>] =
<B>On Behalf Of </B>Marius<BR><B>Sent:</B> Wednesday, February 10, 2016 =
20:22<BR><B>To:</B> <A href=3D"mailto:yocto@yoctoproject.org"><U><SPAN styl=
e=3D"COLOR: #0563c1">yocto@yoctoproject.org</SPAN></U></A><BR><B>Subject:</=
B> [yocto] Eclipse IDE plugin failure<o:p></o:p></SPAN></P></DIV></DIV>
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
sans-serif'>&nbsp;<o:p></o:p></SPAN></P></DIV></DIV></DIV></BLOCKQUOTE></DI=
V></DIV></DIV></BLOCKQUOTE></DIV></BODY></HTML>

--------=_MB153520A4-A6A4-4195-8115-E7F530CC81F0--
