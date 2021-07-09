Received: from mx-relay100-hz2.antispameurope.com (mx-relay100-hz2.antispameurope.com [94.100.136.201])
 by mx.groups.io with SMTP id smtpd.web12.9082.1625826124935623248
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jul 2021 03:22:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: claas.com, ip: 94.100.136.201, mailfrom: prvs=0817a215c4=christoph.seipel@claas.com)
Return-Path: <prvs=0817a215c4=christoph.seipel@claas.com>
Received: from unknown ([91.239.177.110]) by mx-relay100-hz2.antispameurope.com;
 Fri, 09 Jul 2021 12:22:01 +0200
Received: from dehwlwmsx01.claas.local (10.1.34.81) by dehwlwmsx05.claas.local
 (10.1.34.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.10; Fri, 9 Jul
 2021 12:21:56 +0200
Received: from dehwlwmsx01.claas.local ([fe80::a864:7e56:833:abf7]) by
 dehwlwmsx01.claas.local ([fe80::a864:7e56:833:abf7%3]) with mapi id
 15.01.2242.010; Fri, 9 Jul 2021 12:21:56 +0200
From: "Seipel, Christoph" <Christoph.Seipel@claas.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #archiver Archiver not archiving sources from Mirror
Thread-Topic: #archiver Archiver not archiving sources from Mirror
Thread-Index: Add0qGG+tFcCUGtJQxi76d3OxIi/AQ==
Date: Fri, 9 Jul 2021 10:21:56 +0000
Message-ID: <f524ba87310043cc82c6d7e39f2b9586@claas.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.23.1.127]
MIME-Version: 1.0
X-cloud-security-sender: christoph.seipel@claas.com
X-cloud-security-recipient: yocto@lists.yoctoproject.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay100-hz2.antispameurope.com with 93000160C7FA
X-cloud-security-connect: unknown[91.239.177.110], TLS=1, IP=91.239.177.110
X-cloud-security-Digest: c6a7cd206154e17bfeea05b5d005331f
X-cloud-security: scantime:2.203
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_f524ba87310043cc82c6d7e39f2b9586claascom_"

--_000_f524ba87310043cc82c6d7e39f2b9586claascom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a problem with the archiver. I want to use it to export the sources =
used in our image for license compliance (GPL etc.).
We have a BSP supplier that supplies the Yocto system and the sources to bu=
ild it in a mirror directory.

Now, when I use the archiver (mode: original) the exported sources don't co=
ntain the sources from the mirror, but only other files like patches.

To analyse this problem I put some extra logging into the archiver.bbclass =
to inspect the variable contents, and it seems the "local" variable where t=
he archiver is looking for the sources to export doesn't fit with the path =
of the actual sources. This leads to the archiver just skipping that URL an=
d proceeding.

For example for the systemd recipe it has the variable URL=3D"git://github.=
com/systemd/systemd.git;protocol=3Dgit" and therefore it decides to look at=
 local=3D"<builddir>/downloads/git2/github.com.systemd.systemd.git"
But that file doesn't exist.
I inspected the do_fetch and do_unpack logs to find that the fetcher resolv=
es "git://github.com/systemd/systemd.git;protocol=3Dgit" with returning the=
 corresponding file from the mirror file:///<mirrorpath>/gitshallow_github.=
com.systemd.systemd.git_46659f7-1_master.tar.gz<file:///%3cmirrorpath%3e/gi=
tshallow_github.com.systemd.systemd.git_46659f7-1_master.tar.gz>
The do_unpack task then unpacks tar -xzf <builddir>/downloads/gitshallow_gi=
thub.com.systemd.systemd.git_46659f7-1_master.tar.gz
Which is possible because there is a symlink, I guess that was created by t=
he fetcher
<builddir>/downloads/gitshallow_github.com.systemd.systemd.git_46659f7-1_ma=
ster.tar.gz -> <mirror>/gitshallow_github.com.systemd.systemd.git_46659f7-1=
_master.tar.gz

So the problem seems to be that the archiver expects the sources in downloa=
ds/git2 but the fetcher creates the symlink in downloads and with additiona=
l pre- and postfiexes on the filename.

Sadly we are still on sumo, but at least for the archiver class there isn't=
 any relevant change to hardknott. At least a dunfell upgrade is incoming i=
n the next weeks.

Best regards,

Christoph
_____________________________________________________
Christoph Seipel

CLAAS E-Systems GmbH
System & Software Displays, Operator Panels & Mobile Apps
Sommerk=E4mpen 11
49201 Dissen a.T.W.
Germany

Phone +49 5421 9311-8762
Mail christoph.seipel@claas.com


--_000_f524ba87310043cc82c6d7e39f2b9586claascom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">I have a problem with the archiver. I =
want to use it to export the sources used in our image for license complian=
ce (GPL etc.).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">We have a BSP supplier that supplies t=
he Yocto system and the sources to build it in a mirror directory.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Now, when I use the archiver (mode: or=
iginal) the exported sources don&#8217;t contain the sources from the mirro=
r, but only other files like patches.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">To analyse this problem I put some ext=
ra logging into the archiver.bbclass to inspect the variable contents, and =
it seems the &#8220;local&#8221; variable where the archiver
 is looking for the sources to export doesn&#8217;t fit with the path of th=
e actual sources. This leads to the archiver just skipping that URL and pro=
ceeding.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">For example for the systemd recipe it =
has the variable URL=3D&#8221;git://github.com/systemd/systemd.git;protocol=
=3Dgit&#8221; and therefore it decides to look at local=3D&#8221;&lt;buildd=
ir&gt;/downloads/git2/github.com.systemd.systemd.git&#8221;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">But that file doesn&#8217;t exist.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">I inspected the do_fetch and do_unpack=
 logs to find that the fetcher resolves &#8220;git://github.com/systemd/sys=
temd.git;protocol=3Dgit&#8221; with returning the corresponding
 file from the mirror <a href=3D"file:///%3cmirrorpath%3e/gitshallow_github=
.com.systemd.systemd.git_46659f7-1_master.tar.gz">
file:///&lt;mirrorpath&gt;/gitshallow_github.com.systemd.systemd.git_46659f=
7-1_master.tar.gz</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">The do_unpack task then unpacks tar -x=
zf &lt;builddir&gt;/downloads/gitshallow_github.com.systemd.systemd.git_466=
59f7-1_master.tar.gz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Which is possible because there is a s=
ymlink, I guess that was created by the fetcher<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&lt;builddir&gt;/downloads/gitshallow_=
github.com.systemd.systemd.git_46659f7-1_master.tar.gz -&gt; &lt;mirror&gt;=
/gitshallow_github.com.systemd.systemd.git_46659f7-1_master.tar.gz<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">So the problem seems to be that the ar=
chiver expects the sources in downloads/git2 but the fetcher creates the sy=
mlink in downloads and with additional pre- and
 postfiexes on the filename.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Sadly we are still on sumo, but at lea=
st for the archiver class there isn&#8217;t any relevant change to hardknot=
t. At least a dunfell upgrade is incoming in the next
 weeks.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Best regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Christoph<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-f=
amily:&quot;Arial&quot;,sans-serif;mso-fareast-language:DE">_______________=
______________________________________<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:8.0pt;mso-fa=
reast-language:DE">Christoph Seipel
<br>
&nbsp; <br>
CLAAS E-Systems GmbH</span><span lang=3D"EN-US" style=3D"font-size:8.0pt;ms=
o-fareast-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:8.0pt;mso-fa=
reast-language:DE">System &amp; Software Displays, Operator Panels &amp; Mo=
bile Apps<br>
Sommerk=E4mpen 11<br>
49201 Dissen a.T.W. <br>
Germany <br>
&nbsp; <br>
Phone &#43;49 5421 9311-8762<br>
Mail christoph.seipel@claas.com<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_f524ba87310043cc82c6d7e39f2b9586claascom_--
