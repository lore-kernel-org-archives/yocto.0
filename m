Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 1F413E0049D
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 08:24:50 -0700 (PDT)
Received: from SESTOEX09.enea.se ([fe80::cc12:dcdc:d521:97f8]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%21]) with mapi id
	14.02.0318.001; Fri, 21 Sep 2012 17:24:49 +0200
From: =?iso-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"jonas.l.jonsson@ericsson.com" <jonas.l.jonsson@ericsson.com>
Thread-Topic: [yocto] Using other recipes output in Makefile-project
Thread-Index: AQHNmA08wz1ditNIZkupVSArAhaaNA==
Date: Fri, 21 Sep 2012 15:24:48 +0000
Message-ID: <88701C38B5D07249817D428430999C91259D2B94@sestoex09.enea.se>
References: <C1024C359E9D4C4EBC664A0111A52A3F7CFB24B9DA@ESESSCMS0355.eemea.ericsson.se>
In-Reply-To: <C1024C359E9D4C4EBC664A0111A52A3F7CFB24B9DA@ESESSCMS0355.eemea.ericsson.se>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: Using other recipes output in Makefile-project
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Sep 2012 15:24:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_88701C38B5D07249817D428430999C91259D2B94sestoex09enease_"

--_000_88701C38B5D07249817D428430999C91259D2B94sestoex09enease_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

All built libs and headers are installed in the sysroot, header files and l=
ibs should be installed in their standard locations. Dependent recipes shou=
ld reference them from this location.

If you have runtime dependencies you should probably add RDEPENDS as well.
Package configuration could be overridden in your distro.conf or local.conf=
, I.e.
EXTRA_OEMAKE_pn-<package name> =3D ""
EXTRA_OECONF_pn-<package name> =3D ""

Br,
David

Sent from my Android phone using TouchDown (www.nitrodesk.com)

-----Original Message-----
From: Jonas Jonsson L [jonas.l.jonsson@ericsson.com]
Received: Friday, 21 Sep 2012, 11:06
To: Yocto Mailinglist (yocto@yoctoproject.org) [yocto@yoctoproject.org]
Subject: [yocto] Using other recipes output in Makefile-project

Hi, I'm having trouble with understanding how to use built libraries (and t=
heir include-files).

I'm writing a bitbake-recipe for some piece of software that is Makefile-ba=
sed.  The SW has a compilation and runtime dependency on readline, Sqlite3 =
and libxml2.

In my bb-file, I've added 'DEPEND =3D "readline sqlite3 libxml2"' and the t=
hree packages are built and installed for my chosen architecture.

Now how do I use the build artifacts for my compilation??  I would like to =
add 'XML2_CFLAGS=3DFOO', 'XML2_LIBS=3DBAR' etc to my EXTRA_OEMAKE so that m=
y Makefile can pick up the location of the necessary include-files and libr=
aries?

Best regards,
Jonas Jonsson



--_000_88701C38B5D07249817D428430999C91259D2B94sestoex09enease_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style>
<!--
.EmailQuote
	{margin-left:1pt;
	padding-left:4pt;
	border-left:#800000 2px solid}
-->
</style>
</head>
<body>
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:11=
pt; color:black">All built libs and headers are installed in the sysroot, h=
eader files and libs should be installed in their standard locations. Depen=
dent recipes should reference them
 from this location.<br>
<br>
If you have runtime dependencies you should probably add RDEPENDS as well.<=
br>
Package configuration could be overridden in your distro.conf or local.conf=
, I.e.<br>
EXTRA_OEMAKE_pn-&lt;package name&gt; =3D &quot;&quot;<br>
EXTRA_OECONF_pn-&lt;package name&gt; =3D &quot;&quot;<br>
<br>
Br,<br>
David<br>
<br>
Sent from my Android phone using TouchDown (www.nitrodesk.com)<br>
<br>
<span style=3D"color:black">-----Original Message----- <br>
<b>From:</b> Jonas Jonsson L [jonas.l.jonsson@ericsson.com]<br>
<b>Received:</b> Friday, 21 Sep 2012, 11:06<br>
<b>To:</b> Yocto Mailinglist (yocto@yoctoproject.org) [yocto@yoctoproject.o=
rg]<br>
<b>Subject:</b> [yocto] Using other recipes output in Makefile-project<br>
<br>
</span></span>
<div><font face=3D"Arial, sans-serif" size=3D"2">
<div>Hi, I'm having trouble with understanding how to use built libraries (=
and their include-files).</div>
<div>&nbsp;</div>
<div>I'm writing a bitbake-recipe for some piece of software that is <i>Mak=
efile</i>-based.&nbsp; The SW has a compilation and runtime dependency on r=
eadline, Sqlite3 and libxml2.</div>
<div>&nbsp;</div>
<div>In my bb-file, I've added 'DEPEND =3D &quot;readline sqlite3 libxml2&q=
uot;' and the three packages are built and installed for my chosen architec=
ture.</div>
<div>&nbsp;</div>
<div>Now how do I use the build artifacts for my compilation??&nbsp; I woul=
d like to add 'XML2_CFLAGS=3DFOO', 'XML2_LIBS=3DBAR' etc to my EXTRA_OEMAKE=
 so that my Makefile can pick up the location of the necessary include-file=
s and libraries?</div>
<div>&nbsp;</div>
<div>Best regards,</div>
<div>Jonas Jonsson</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</font></div>
</body>
</html>

--_000_88701C38B5D07249817D428430999C91259D2B94sestoex09enease_--
