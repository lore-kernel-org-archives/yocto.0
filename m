Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.143081.1598043553997611214
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Aug 2020 13:59:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: randy.macleod@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4956AE0206B; Fri, 21 Aug 2020 13:59:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.1 NICE_REPLY_A Looks like a legit reply (A)
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEB5FE02069
	for <yocto@yoctoproject.org>; Fri, 21 Aug 2020 13:59:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 07LKwv6e006834
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Fri, 21 Aug 2020 13:58:58 -0700 (PDT)
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Fri, 21 Aug
 2020 13:58:57 -0700
Subject: Re: [yocto] npmsw fetching error: package from npm-shrinkwrap is not downloaded so "Could not install from.../SONStream" as it does not contain a package.json file.
To: "Cardenas Jose Antonio (JCARDENA)" <joseantonio.cardenas@niko.eu>,
        "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <PR2PR08MB4651EF5087731DDD3DAC52BC8B5B0@PR2PR08MB4651.eurprd08.prod.outlook.com>
CC: Jean-Marie LEMETAYER <jean-marie.lemetayer@savoirfairelinux.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <819b83b7-1a17-5562-e621-f7fbc6efab47@windriver.com>
Date: Fri, 21 Aug 2020 16:58:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <PR2PR08MB4651EF5087731DDD3DAC52BC8B5B0@PR2PR08MB4651.eurprd08.prod.outlook.com>
X-Originating-IP: [172.25.44.3]
Content-Type: multipart/alternative;
	boundary="------------35747C0B24EFDE8365221AA3"
Content-Language: en-CA

--------------35747C0B24EFDE8365221AA3
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2020-08-21 3:19 p.m., Cardenas Jose Antonio (JCARDENA) wrote:
>
> Hi all, following with my work with yocto npm I got a new error.
>
> I have declared in the recipe
>
> SRC_URI =3D " \
>
> git://github.com/SiliconLabs/gateway-management-ui.git;protocol=3Dgit \
>
> npmsw://${THISDIR}/${PN}/npm-shrinkwrap.json \
>
> "
>
> And npm-shrinkwrap.json starts with :
>
> {
>
> =A0 "name": "gateway_react_ui",
>
> =A0 "version": "2.5.0",
>
> =A0 "lockfileVersion": 1,
>
> =A0 "requires": true,
>
> =A0 "dependencies": {
>
> =A0=A0=A0 "JSONStream": {
>
> =A0=A0=A0=A0=A0 "version": "1.3.5",
>
> =A0=A0=A0=A0=A0 "resolved":=20
> "https://registry.npmjs.org/JSONStream/-/JSONStream-1.3.5.tgz",
>
> =A0=A0=A0=A0=A0 "integrity":=20
> "sha512-E+iruNOY8VV9s4JEbe1aNEm6MiszPRr/UfcHMz0TQh1BXSxHK+ASV1R6W4HpjBhS=
eS+54PIsAMCBmwD06LLsqQ=3D=3D",
>
> =A0=A0=A0=A0=A0 "dev": true,
>
> =A0=A0=A0=A0=A0 "requires": {
>
> =A0=A0=A0=A0=A0=A0=A0 "jsonparse": "^1.2.0",
>
> =A0=A0=A0=A0=A0=A0=A0 "through": ">=3D2.2.7 <3"
>
> =A0=A0=A0=A0=A0 }
>
> =A0=A0=A0 },
>
> =A0=A0=A0 "accepts": {
>
> =A0=A0=A0=A0=A0 "version": "1.3.7",
>
> =A0=A0=A0=A0=A0 "resolved":=20
> "https://registry.npmjs.org/accepts/-/accepts-1.3.7.tgz",
>
> =A0=A0=A0=A0=A0 "integrity":=20
> "sha512-Il80Qs2WjYlJIBNzNkK6KYqlVMTbZLXgHx2oT0pU/fjRHyEp+PEfEPY0R3WCwAGV=
Otauxh1hOxNgIf5bv7dQpA=3D=3D",
>
> =A0=A0=A0=A0=A0 "dev": true,
>
> =A0=A0=A0=A0=A0 "requires": {
>
> =A0=A0=A0=A0=A0=A0=A0 "mime-types": "~2.1.24",
>
> =A0=A0=A0=A0=A0=A0=A0 "negotiator": "0.6.2"
>
> =A0=A0=A0=A0=A0 }
>
> =A0=A0=A0 },
>
> =A0=A0=A0 "accord": {
>
> =A0=A0=A0=A0=A0 "version": "0.29.0",
>
> =A0=A0=A0=A0=A0 "resolved": "https://registry.npmjs.org/accord/-/accord-=
0.29.0.tgz",
>
> =A0=A0=A0=A0=A0 "integrity":=20
> "sha512-3OOR92FTc2p5/EcOzPcXp+Cbo+3C15nV9RXHlOUBCBpHhcB+0frbSNR9ehED/o7s=
TcyGVtqGJpguToEdlXhD0w=3D=3D",
>
> =A0=A0=A0=A0=A0 "dev": true,
>
> =A0=A0=A0=A0=A0 "requires": {
>
> "convert-source-map": "^1.5.0",
>
> =A0=A0=A0=A0=A0=A0=A0 "glob": "^7.0.5",
>
> =A0=A0=A0=A0=A0=A0=A0 "indx": "^0.2.3",
>
> =A0=A0=A0=A0=A0=A0=A0 "lodash.clone": "^4.3.2",
>
> "lodash.defaults": "^4.0.1",
>
> "lodash.flatten": "^4.2.0",
>
> =A0=A0=A0=A0=A0=A0=A0 "lodash.merge": "^4.4.0",
>
> "lodash.partialright": "^4.1.4",
>
> =A0=A0=A0=A0=A0=A0=A0 "lodash.pick": "^4.2.1",
>
> =A0=A0=A0=A0=A0=A0=A0 "lodash.uniq": "^4.3.0",
>
> =A0=A0=A0=A0=A0=A0=A0 "resolve": "^1.5.0",
>
> =A0=A0=A0=A0=A0=A0=A0 "semver": "^5.3.0",
>
> =A0=A0=A0=A0=A0=A0=A0 "uglify-js": "^2.8.22",
>
> =A0=A0=A0=A0=A0=A0=A0 "when": "^3.7.8"
>
> =A0=A0=A0=A0=A0 },
>
> It seems that JSONStream dependency downloading step is ignored=20
> silently in do_fetch task so I get this error in do_configure task=20
> because it doesn=92t find the files:
>
>
> npm ERR! code ENOLOCAL
>
> npm ERR! Could not install from=20
> "../../home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gn=
ueabi/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream"=20
> as it does not contain a package.json file.
>
> npm ERR! A complete log of this run can be found in:
>
> npm ERR!=20
> /home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/=
zigbee-ui-reactui/2.5.0-r0/npm-cache/_logs/2020-08-21T19_06_36_633Z-debug.l=
og
>
> ERROR: Logfile of failure stored in:=20
> /home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/=
zigbee-ui-reactui/2.5.0-r0/temp/log.do_configure.6983
>
> ERROR: Task=20
> (/home/bob/develop/yocto/meta-niko/recipes-miscellaneous/zigbee/zigbee-u=
i-reactui.bb:do_configure)=20
> failed with exit code '1'
>
> I attach the log:
>
> $ cat=20
> /home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/=
zigbee-ui-reactui/2.5.0-r0/npm-cache/_logs/2020-08-21T19_06_36_633Z-debug.l=
og
>
> 0 info it worked if it ends with ok
>
> 1 verbose cli [
>
> 1 verbose cli=20
> '/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi=
/zigbee-ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/node',
>
> 1 verbose cli=20
> '/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi=
/zigbee-ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/npm',
>
> 1 verbose cli=A0=A0 'pack',
>
> 1 verbose cli=20
> '/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi=
/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream'
>
> 1 verbose cli ]
>
> 2 info using npm@6.13.4
>
> 3 info using node@v12.14.1
>
> 4 verbose npm-session 8672504930c3cab4
>
> 5 silly fetchPackageMetaData error for=20
> /home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/=
zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream=20
> Could not install from=20
> "../../home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gn=
ueabi/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream"=20
> as it does not contain a package.json file.
>
> 6 verbose stack Error: ENOENT: no such file or directory, open=20
> '/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi=
/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream/package.jso=
n'
>
> 7 verbose cwd /tmp/tmptuei7c_m
>
> 8 verbose Linux 5.4.0-42-generic
>
> 9 verbose argv=20
> "/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi=
/zigbee-ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/node"=20
> "/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi=
/zigbee-ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/npm"=20
> "pack"=20
> "/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi=
/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream"
>
> 10 verbose node v12.14.1
>
> 11 verbose npm=A0 v6.13.4
>
> 12 error code ENOLOCAL
>
> 13 error Could not install from=20
> "../../home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gn=
ueabi/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream"=20
> as it does not contain a package.json file.
>
> 14 verbose exit [ 1, true ]
>
> Regards
>
> Jose
>

Hi Jose,

I think this might be a known bug:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13901

the work-around is to drop the npmsw:// prefix.
Does that help at all?

CCing Jean-Marie since I can only spell npmsw://
but I don't actually use that fetcher feature at all. ;-)

../Randy

>
>=20


--=20
# Randy MacLeod
# Wind River Linux


--------------35747C0B24EFDE8365221AA3
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2020-08-21 3:19 p.m., Cardenas Jose
      Antonio (JCARDENA) wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PR2PR08MB4651EF5087731DDD3DAC52BC8B5B0@PR2PR08MB4651.eurprd08.=
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
	font-family:"Calibri",sans-serif;
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
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all, following with
            my work with yocto npm I got a new error.
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I have declared in the
            recipe <br>
            <br>
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">SRC_URI =3D " \<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0
            git://github.com/SiliconLabs/gateway-management-ui.git;protoco=
l=3Dgit
            \<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0
            npmsw://${THISDIR}/${PN}/npm-shrinkwrap.json \<o:p></o:p></spa=
n></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">"<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">And npm-shrinkwrap.jso=
n
            starts with :<br>
            <br>
            {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0 "name":
            "gateway_react_ui",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0 "version": "2.5.0"=
,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0 "lockfileVersion":=
 1,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0 "requires": true,<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0 "dependencies": {<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0 "JSONStream"=
: {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "versi=
on":
            "1.3.5",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "resol=
ved":
            <a class=3D"moz-txt-link-rfc2396E" href=3D"https://registry.np=
mjs.org/JSONStream/-/JSONStream-1.3.5.tgz">"https://registry.npmjs.org/JSON=
Stream/-/JSONStream-1.3.5.tgz"</a>,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "integ=
rity":
"sha512-E+iruNOY8VV9s4JEbe1aNEm6MiszPRr/UfcHMz0TQh1BXSxHK+ASV1R6W4HpjBhSeS=
+54PIsAMCBmwD06LLsqQ=3D=3D",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "dev":=
 true,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "requi=
res": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"jsonparse":
            "^1.2.0",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"through":
            "&gt;=3D2.2.7 &lt;3"<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 }<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0 },<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0 "accepts": {=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "versi=
on":
            "1.3.7",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "resol=
ved":
            <a class=3D"moz-txt-link-rfc2396E" href=3D"https://registry.np=
mjs.org/accepts/-/accepts-1.3.7.tgz">"https://registry.npmjs.org/accepts/-/=
accepts-1.3.7.tgz"</a>,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "integ=
rity":
"sha512-Il80Qs2WjYlJIBNzNkK6KYqlVMTbZLXgHx2oT0pU/fjRHyEp+PEfEPY0R3WCwAGVOt=
auxh1hOxNgIf5bv7dQpA=3D=3D",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "dev":=
 true,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "requi=
res": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"mime-types":
            "~2.1.24",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"negotiator":
            "0.6.2"<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 }<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0 },<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0 "accord": {<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "versi=
on":
            "0.29.0",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "resol=
ved":
            <a class=3D"moz-txt-link-rfc2396E" href=3D"https://registry.np=
mjs.org/accord/-/accord-0.29.0.tgz">"https://registry.npmjs.org/accord/-/ac=
cord-0.29.0.tgz"</a>,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "integ=
rity":
"sha512-3OOR92FTc2p5/EcOzPcXp+Cbo+3C15nV9RXHlOUBCBpHhcB+0frbSNR9ehED/o7sTc=
yGVtqGJpguToEdlXhD0w=3D=3D",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "dev":=
 true,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 "requi=
res": {<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0
            "convert-source-map": "^1.5.0",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"glob":
            "^7.0.5",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"indx":
            "^0.2.3",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"lodash.clone":
            "^4.3.2",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0
            "lodash.defaults": "^4.0.1",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0
            "lodash.flatten": "^4.2.0",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"lodash.merge":
            "^4.4.0",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0
            "lodash.partialright": "^4.1.4",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"lodash.pick":
            "^4.2.1",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"lodash.uniq":
            "^4.3.0",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"resolve":
            "^1.5.0",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"semver":
            "^5.3.0",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"uglify-js":
            "^2.8.22",<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0 =
"when": "^3.7.8"<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0 },<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">It seems that JSONStre=
am
            dependency downloading step is ignored silently in do_fetch
            task so I get this error in do_configure task because it
            doesn=92t find the files:<br>
            <br>
            <br>
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">npm ERR! code ENOLOCAL=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">npm ERR! Could not
            install from
"../../home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnue=
abi/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream"
            as it does not contain a package.json file.<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">npm ERR! A complete lo=
g
            of this run can be found in:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">npm ERR!=A0=A0=A0=A0
/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/zi=
gbee-ui-reactui/2.5.0-r0/npm-cache/_logs/2020-08-21T19_06_36_633Z-debug.log=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: Logfile of
            failure stored in:
/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/zi=
gbee-ui-reactui/2.5.0-r0/temp/log.do_configure.6983<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: Task
(/home/bob/develop/yocto/meta-niko/recipes-miscellaneous/zigbee/zigbee-ui-=
reactui.bb:do_configure)
            failed with exit code '1'<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I attach the log:<br>
            <br>
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">$ cat
/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/zi=
gbee-ui-reactui/2.5.0-r0/npm-cache/_logs/2020-08-21T19_06_36_633Z-debug.log=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">0 info it worked if it
            ends with ok<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">1 verbose cli [<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">1 verbose cli=A0=A0
'/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/z=
igbee-ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/node',<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">1 verbose cli=A0=A0
'/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/z=
igbee-ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/npm',<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">1 verbose cli=A0=A0 'p=
ack',<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">1 verbose cli=A0=A0
'/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/z=
igbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream'<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">1 verbose cli ]<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">2 info using <a class=
=3D"moz-txt-link-abbreviated" href=3D"mailto:npm@6.13.4">npm@6.13.4</a><o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">3 info using
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:node@v12.=
14.1">node@v12.14.1</a><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">4 verbose npm-session
            8672504930c3cab4<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">5 silly
            fetchPackageMetaData error for
/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/zi=
gbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream
            Could not install from
"../../home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnue=
abi/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream"
            as it does not contain a package.json file.<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">6 verbose stack Error:
            ENOENT: no such file or directory, open
'/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/z=
igbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream/package.json'=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">7 verbose cwd
            /tmp/tmptuei7c_m<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">8 verbose Linux
            5.4.0-42-generic<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">9 verbose argv
"/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/z=
igbee-ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/node"
"/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/z=
igbee-ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/npm"
            "pack"
"/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/z=
igbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream"<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal">10 verbose node v12.14.1<o:p></o:p></p>
        <p class=3D"MsoNormal">11 verbose npm=A0 v6.13.4<o:p></o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">12 error code ENOLOCAL=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">13 error Could not
            install from
"../../home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnue=
abi/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream"
            as it does not contain a package.json file.<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">14 verbose exit [ 1,
            true ]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Regards<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Jose</span></p>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>Hi Jose,</p>
    <p>I think this might be a known bug:</p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D13901">https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D13901</a></p>
    <p>the work-around is to drop the npmsw:// prefix.<br>
      Does that help at all? <br>
    </p>
    <p>CCing Jean-Marie since I can only spell npmsw://<br>
      but I don't actually use that fetcher feature at all. ;-)<br>
    </p>
    <p>../Randy<br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:PR2PR08MB4651EF5087731DDD3DAC52BC8B5B0@PR2PR08MB4651.eurprd08.=
prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p></o:p></span></p>
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

--------------35747C0B24EFDE8365221AA3--
