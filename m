Return-Path: <Sebastian.Waldvogel@vector.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDB9EE008D0; Thu,  9 Mar 2017 05:01:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [217.89.139.142 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0260]
X-Greylist: delayed 331 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 Mar 2017 05:00:56 PST
Received: from smtp2.vector.com (smtp2.vector.com [217.89.139.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E297E004D2
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 05:00:56 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.vector.com (Postfix) with ESMTP id E9EAB852B4
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 13:55:20 +0100 (CET)
X-Virus-Scanned: amavisd-new at vector.com
Received: from smtp2.vector.com ([127.0.0.1])
	by localhost (smtp2.vector.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BOc2pi67WUcz for <yocto@yoctoproject.org>;
	Thu,  9 Mar 2017 13:55:19 +0100 (CET)
Received: from vistrex5.vi.vector.int (unknown [10.49.3.65])
	by smtp2.vector.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 13:55:19 +0100 (CET)
Received: from VISTREX4.vi.vector.int ([169.254.2.57]) by
	vistrex5.vi.vector.int ([10.49.3.65]) with mapi id 14.03.0339.000;
	Thu, 9 Mar 2017 13:55:20 +0100
From: "Waldvogel, Sebastian" <Sebastian.Waldvogel@vector.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Source Code provision without full git repository history
Thread-Index: AdKYz+lX59UT34AcRbm3INw63zgiRg==
Date: Thu, 9 Mar 2017 12:55:19 +0000
Message-ID: <3A90C4317711354D832A265F7C4DF966021BF28939@vistrex4.vi.vector.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.81.175]
x-g-data-mailsecurity-for-exchange-spamlevel: 0
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 32
x-g-data-mailsecurity-for-exchange-server: 8959ae4b-c457-4990-be14-918c767bdf10
x-g-data-mailsecurity-for-exchange-guid: EDFDB6F3-A4A0-468A-B3FC-9C56F5C5A3CD
MIME-Version: 1.0
Subject: Source Code provision without full git repository history
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
X-List-Received-Date: Thu, 09 Mar 2017 13:01:02 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_3A90C4317711354D832A265F7C4DF966021BF28939vistrex4vivec_"

--_000_3A90C4317711354D832A265F7C4DF966021BF28939vistrex4vivec_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am searching for a way in Yocto/BitBake to extract the source codes of th=
e software applications developed by my company for delivery to our custome=
rs.
The source codes shall be delivered as archive containing only the source f=
iles without the whole git repository history.

Setup is that we have own Yocto layers/recipes referencing the company inte=
rnal git repository (SRC_URI=3D"git://git.company.url") and the concrete SR=
CREV to be used. Basic idea was to use the option BB_GENERATE_MIRROR_TARBAL=
LS =3D "1" which generates an archive file with the application source code=
. Unfortunately the generated tarball contains the full bare cloned git rep=
ository with full history and not only the source files of the concrete SRC=
REV.

As alternative I tried to use the archiver class<http://www.yoctoproject.or=
g/docs/2.0.1/dev-manual/dev-manual.html#providing-the-source-code>. The gen=
erated tarballs contains the concrete source files but in addition the full=
 git repository with history is contained too.

Does anyone has an idea how to extract the concrete source files without gi=
t repository and history?

Thank you very much for your help
Sebastian Waldvogel



--_000_3A90C4317711354D832A265F7C4DF966021BF28939vistrex4vivec_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am searching for a way in Yocto/BitBake to extract=
 the source codes of the software applications developed by my company for =
delivery to our customers.<o:p></o:p></p>
<p class=3D"MsoNormal">The source codes shall be delivered as archive conta=
ining only the source files without the whole git repository history.<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Setup is that we have own Yocto layers/recipes refer=
encing the company internal git repository (SRC_URI=3D&#8221;git://git.comp=
any.url&#8221;) and the concrete SRCREV to be used. Basic idea was to use t=
he option BB_GENERATE_MIRROR_TARBALLS =3D &quot;1&quot; which
 generates an archive file with the application source code. Unfortunately =
the generated tarball contains the full bare cloned git repository with ful=
l history and not only the source files of the concrete SRCREV.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As alternative I tried to use the <a href=3D"http://=
www.yoctoproject.org/docs/2.0.1/dev-manual/dev-manual.html#providing-the-so=
urce-code">
archiver class</a>. The generated tarballs contains the concrete source fil=
es but in addition the full git repository with history is contained too.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does anyone has an idea how to extract the concrete =
source files without git repository and history?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you very much for your help<o:p></o:p></p>
<p class=3D"MsoNormal">Sebastian Waldvogel<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_3A90C4317711354D832A265F7C4DF966021BF28939vistrex4vivec_--
