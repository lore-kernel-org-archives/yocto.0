Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.119216.1597956812893130914
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Aug 2020 13:53:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: randy.macleod@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B9A4E0205D; Thu, 20 Aug 2020 13:53:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -1.4 NICE_REPLY_A Looks like a legit reply (A)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F37DE02059
	for <yocto@yoctoproject.org>; Thu, 20 Aug 2020 13:53:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 07KKqeH0008129
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Thu, 20 Aug 2020 13:53:01 -0700
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 20 Aug
 2020 13:52:36 -0700
Subject: Re: [yocto-builds] npmsw fetcher error : npm-shrinkwrap.json' has invalid parameters. Unsupported dependency: arr-flatten
To: "Cardenas Jose Antonio (JCARDENA)" <joseantonio.cardenas@niko.eu>,
        Yocto
 discussion list <yocto@yoctoproject.org>
References: <PR2PR08MB4651751C97231D143FE488478B5A0@PR2PR08MB4651.eurprd08.prod.outlook.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <4a62dd9e-2d87-1f32-05cd-292e89eb3e5b@windriver.com>
Date: Thu, 20 Aug 2020 16:52:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <PR2PR08MB4651751C97231D143FE488478B5A0@PR2PR08MB4651.eurprd08.prod.outlook.com>
X-Originating-IP: [172.25.44.3]
Content-Type: multipart/alternative;
	boundary="------------E93604E73750264140086857"
Content-Language: en-CA

--------------E93604E73750264140086857
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Jose,

On 2020-08-20 5:33 a.m., Cardenas Jose Antonio (JCARDENA) wrote:
>
> Hi all,
>
> I=92m trying to fech packages and dependencies from a=20
> nmp-shrinkwrap.json file but I get next error:
>
> *npm-shrinkwrap.json' has invalid parameters. Unsupported dependency:=20
> arr-flatten*
>
I don't know but you'll get more people on the main yocto list so I've=20
replied there.

People often mistakenly use yocto-builds so we're going to drop that=20
list at some point.

../Randy

*
*

> **
>
> **
>
> The fragment of shrinkwrap file is
>
> {
>
> =A0 "name": "Gateway_node_webserver",
>
> =A0 "version": "2.5.0",
>
> =A0 "lockfileVersion": 1,
>
> =A0 "requires": true,
>
> =A0 "dependencies": {
>
> =A0=A0=A0 "chokidar": {
>
> =A0=A0=A0=A0=A0 "version": "1.0.6",
>
> =A0=A0=A0=A0=A0 "requires": {
>
> =A0=A0=A0=A0=A0=A0=A0 "anymatch": "1.3.2",
>
> =A0=A0=A0=A0=A0=A0=A0 "arrify": "1.0.1",
>
> =A0=A0=A0=A0=A0=A0=A0 "async-each": "0.1.6",
>
> =A0=A0=A0=A0=A0=A0=A0 "glob-parent": "1.3.0",
>
> "is-binary-path": "1.0.1",
>
> =A0=A0=A0=A0=A0=A0=A0 "is-glob": "1.1.3",
>
> "path-is-absolute": "1.0.1",
>
> =A0=A0=A0=A0=A0=A0=A0 "readdirp": "1.4.0"
>
> =A0=A0=A0=A0=A0 },
>
> =A0=A0=A0=A0=A0 "dependencies": {
>
> =A0=A0=A0=A0 =A0=A0=A0"anymatch": {
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0 "version": "1.3.2",
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0 "requires": {
>
> "micromatch": "2.3.11",
>
> "normalize-path": "2.1.1"
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0 },
>
> "dependencies": {
>
> "micromatch": {
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "version": "2.3.11",
>
> =A0=A0=A0=A0=A0=A0=A0"requires": {
>
> "arr-diff": "2.0.0",
>
> "array-unique": "0.2.1",
>
> "braces": "1.8.5",
>
> "expand-brackets": "0.1.5",
>
> "extglob": "0.3.2",
>
> "filename-regex": "2.0.1",
>
> "is-extglob": "1.0.0",
>
> "is-glob": "2.0.1",
>
> "kind-of": "3.2.2",
>
> "normalize-path": "2.1.1",
>
> "object.omit": "2.0.1",
>
> "parse-glob": "3.0.4",
>
> "regex-cache": "0.4.4"
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 },
>
> "dependencies": {
>
> "arr-diff": {
>
> "version": "2.0.0",
>
> "requires": {
>
> "arr-flatten": "1.1.0"
>
> =A0=A0=A0=A0 =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0},
>
> "dependencies": {
>
> "arr-flatten": {
>
> "version": "1.1.0"
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 },
>
> "array-unique": {
>
> "version": "0.2.1"
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 },
>
> The recipe SRC_URI is :
>
> SRC_URI =3D " \
>
> npmsw://${THISDIR}/${PN}/npm-shrinkwrap.json \
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "
>
> Any idea why is failing the fetch?
>
> Regards.
>
>
>=20


--=20
# Randy MacLeod
# Wind River Linux


--------------E93604E73750264140086857
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">Hi Jose,</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 2020-08-20 5:33 a.m., Cardenas Jose
      Antonio (JCARDENA) wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PR2PR08MB4651751C97231D143FE488478B5A0@PR2PR08MB4651.eurprd08.=
prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I=92m trying to fech
            packages and dependencies from a nmp-shrinkwrap.json file
            but I get next error:
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 <b>npm-shrinkwrap.json'
              has invalid parameters. Unsupported dependency:
              arr-flatten</b></span></p>
      </div>
    </blockquote>
    I don't know but you'll get more people on the main yocto list so
    I've replied there.
    <p>People often mistakenly use yocto-builds so we're going to drop
      that list at some point.</p>
    <p>../Randy</p>
    <p><b><br>
      </b></p>
    <blockquote type=3D"cite"
cite=3D"mid:PR2PR08MB4651751C97231D143FE488478B5A0@PR2PR08MB4651.eurprd08.=
prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><b><o:p></o:p></b></sp=
an></p>
        <p class=3D"MsoNormal"><b><span lang=3D"EN-US"><o:p>=A0</o:p></spa=
n></b></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">The fragment of
            shrinkwrap file is <o:p></o:p></span></p>
        <div
          style=3D"mso-element:para-border-div;border:none;border-bottom:s=
olid
          windowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
          <p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><span
              lang=3D"EN-US"><o:p>=A0</o:p></span></p>
        </div>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">{<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0 "name":
            "Gateway_node_webserver",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0 "version": "2.5.0"=
,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0 "lockfileVersion":=
 1,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0 "requires": true,<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0 "dependencies": {<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0 "chokidar": =
{<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "versi=
on":
            "1.0.6",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "requi=
res": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"anymatch":
            "1.3.2",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"arrify":
            "1.0.1",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"async-each":
            "0.1.6",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"glob-parent":
            "1.3.0",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0
            "is-binary-path": "1.0.1",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"is-glob":
            "1.1.3",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0
            "path-is-absolute": "1.0.1",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"readdirp":
            "1.4.0"<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 },<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "depen=
dencies": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0 =A0=A0=A0=
"anymatch": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 "version":
            "1.3.2",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 "requires": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0
            "micromatch": "2.3.11",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0
            "normalize-path": "2.1.1"<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 },<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0
            "dependencies": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0
            "micromatch": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 "version":
            "2.3.11",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0
            =A0=A0=A0=A0=A0=A0=A0"requires": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "arr-diff": "2.0.0",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "array-unique": "0.2.1",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "braces": "1.8.5",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "expand-brackets": "0.1.5",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "extglob": "0.3.2",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "filename-regex": "2.0.1",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "is-extglob": "1.0.0",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "is-glob": "2.0.1",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "kind-of": "3.2.2",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "normalize-path": "2.1.1",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "object.omit": "2.0.1",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "parse-glob": "3.0.4",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "regex-cache": "0.4.4"<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 },<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0
            "dependencies": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "arr-diff": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
            "version": "2.0.0",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
            "requires": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
            "arr-flatten": "1.1.0"<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0 =A0=A0=A0=
=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0},<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
            "dependencies": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
            "arr-flatten": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
            "version": "1.1.0"<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 },<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0
            "array-unique": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
            "version": "0.2.1"<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 },<o:p></o:p></span></p>
        <div
          style=3D"mso-element:para-border-div;border:none;border-bottom:s=
olid
          windowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
          <p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><span
              lang=3D"EN-US"><o:p>=A0</o:p></span></p>
        </div>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">The recipe SRC_URI is =
:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">SRC_URI =3D " \<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0
            npmsw://${THISDIR}/${PN}/npm-shrinkwrap.json \<o:p></o:p></spa=
n></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 "<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Any idea why is failin=
g
            the fetch? <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Regards. <o:p></o:p></=
span></p>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------E93604E73750264140086857--
