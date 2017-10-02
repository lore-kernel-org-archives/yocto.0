Return-Path: <Robin.Mugridge@oxinst.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BCC1E00D00; Mon,  2 Oct 2017 07:58:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [85.115.52.190 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 3392 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Oct 2017 07:58:41 PDT
Received: from cluster-a.mailcontrol.com (cluster-a.mailcontrol.com
	[85.115.52.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E48EE00CAB
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 07:58:41 -0700 (PDT)
Received: from UKCENHUB02.oxinst.com ([213.121.247.106])
	by rly29a.srv.mailcontrol.com (MailControl) with ESMTPS id
	v92E285a025248
	(version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Mon, 2 Oct 2017 15:02:08 +0100
Received: from UKCENMBX04.oxinst.com ([169.254.4.241]) by
	UKCENHUB02.oxinst.com ([172.16.105.2]) with mapi id 14.03.0361.001;
	Mon, 2 Oct 2017 15:02:07 +0100
From: MUGRIDGE Robin <Robin.Mugridge@oxinst.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: mono 5.0.1.1 TypeLoadException
Thread-Index: AdM7hv+Nvfr2/lgQTkK1phDXt1YP7Q==
Date: Mon, 2 Oct 2017 14:02:06 +0000
Message-ID: <51BE6D71ED8CFC4BA05434EB06711F5DD295DF2E@UKCENMBX04.oxinst.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.105.100]
MIME-Version: 1.0
X-Scanned-By: MailControl 44278.1987 (www.mailcontrol.com) on 10.65.0.139
Subject: mono 5.0.1.1 TypeLoadException
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
X-List-Received-Date: Mon, 02 Oct 2017 14:58:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_51BE6D71ED8CFC4BA05434EB06711F5DD295DF2EUKCENMBX04oxins_"

--_000_51BE6D71ED8CFC4BA05434EB06711F5DD295DF2EUKCENMBX04oxins_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using mono with Krogoth.  The current version of mono we are building =
with is 4.2.2.30.

I am trying to move mono forward to 5.0.1.1 to avoid an issue in the HttpLi=
stener class, but now get a TypeLoadException which I assume is a missing a=
ssembly or a build configuration error, but I'm struggling to work out what=
's wrong...

System.TypeLoadException: Could not load type of field 'System.Net.HttpList=
ener:tlsSettings' (9) due to: Could not resolve type with token 01000034 (f=
rom typeref, class/assembly Mono.Security.Inteace.MonoTlsSettings, Mono.Sec=
urity, Version=3D4.0.0.0, Culture=3Dneutral, PublicKeyToken=3D0738eb9f132ed=
756) assembly:Mono.Security, Version=3D4.0.0.0, Culture=3Dneutral, PublicKe=
yToken=3D0738eb9f132ed756 typMono.Security.Interface.MonoTlsSettings member=
:<none>

Has anyone else come across this and know what the root cause is?

Thanks,

Robin





___________________________________________________________________________=
This e-mail is confidential and is for the addressee only.  Please refer to=
 www.oxinst.com/email-statement for regulatory information.

--_000_51BE6D71ED8CFC4BA05434EB06711F5DD295DF2EUKCENMBX04oxins_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using mono with Krogoth.&nbsp; The current vers=
ion of mono we are building with is 4.2.2.30.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to move mono forward to 5.0.1.1 to avoid=
 an issue in the HttpListener class, but now get a TypeLoadException which =
I assume is a missing assembly or a build configuration error, but I&#8217;=
m struggling to work out what&#8217;s wrong&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">System.TypeLoadException: Could not load type of field 'Sy=
stem.Net.HttpListener:tlsSettings' (9) due to: Could not resolve type with =
token 01000034 (from typeref, class/assembly Mono.Security.Inteace.MonoTlsS=
ettings,
 Mono.Security, Version=3D4.0.0.0, Culture=3Dneutral, PublicKeyToken=3D0738=
eb9f132ed756) assembly:Mono.Security, Version=3D4.0.0.0, Culture=3Dneutral,=
 PublicKeyToken=3D0738eb9f132ed756 typMono.Security.Interface.MonoTlsSettin=
gs member:&lt;none&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Has anyone else come across this and know what the r=
oot cause is?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Robin<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br><br>
___________________________________________________________________________=
<BR>This e-mail is confidential and is for the addressee only.&nbsp;&nbsp; =
Please refer to <BR><A href=3D"http://www.oxinst.com/email-statement">www.o=
xinst.com/email-statement</A> for regulatory information.=20
</body>
</html>

--_000_51BE6D71ED8CFC4BA05434EB06711F5DD295DF2EUKCENMBX04oxins_--
