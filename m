Return-Path: <c.andersen@kostal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26A18E00A39; Mon,  7 Aug 2017 02:51:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,TRACKER_ID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.22.205.227 listed in list.dnswl.org]
	*  1.3 TRACKER_ID BODY: Incorporates a tracking ID number
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from debemgw001.kostal.com (securemail.kostal.com [193.22.205.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C636E0078E
	for <yocto@yoctoproject.org>; Mon,  7 Aug 2017 02:51:49 -0700 (PDT)
Received: from DEBEMAIL001.kostal.int ([10.20.2.181]) by 
	debemgw001.kostal.com (8.14.7/8.14.7) with ESMTP id v779pX9X012700 
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL) for 
	<yocto@yoctoproject.org>; Mon, 7 Aug 2017 11:51:33 +0200
Received: from DEBEMAIL001.kostal.int (10.20.2.181) by DEBEMAIL001.kostal.int 
	(10.20.2.181) with Microsoft SMTP Server (TLS) id 15.0.1320.4;
	Mon, 7 Aug 2017 11:51:32 +0200
Received: from DEBEMAIL001.kostal.int ([fe80::709d:54a:e7ef:38eb]) by 
	DEBEMAIL001.kostal.int ([fe80::709d:54a:e7ef:38eb%12]) with mapi id 
	15.00.1320.000; Mon, 7 Aug 2017 11:51:32 +0200
From: "Andersen, Christian" <c.andersen@kostal.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: GPG signed package feeds and packages: opkg update fails with 
	"No public key"
Thread-Index: AdMPYr10hZrldovBTyKk9Y9Teaz6MQ==
Date: Mon, 7 Aug 2017 09:51:32 +0000
Message-ID: <ae4b039cfb244f0682956bcdbea5af0e@DEBEMAIL001.kostal.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
x-msw-jemd-newsletter: false
Subject: GPG signed package feeds and packages: opkg update fails with "No public key"
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
X-List-Received-Date: Mon, 07 Aug 2017 09:51:53 -0000
Content-Language: de-DE
Content-Type: multipart/alternative; 
	boundary="_000_ae4b039cfb244f0682956bcdbea5af0eDEBEMAIL001kostalint_"

--_000_ae4b039cfb244f0682956bcdbea5af0eDEBEMAIL001kostalint_
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to sign our ipk-packages and the package feed using GPG. As far=
 as I can tell the signatures are correctly generated using this in the loc=
al.conf:

INHERIT +=3D "sign_package_feed sign_ipk"
PACKAGE_FEED_GPG_NAME ?=3D "73CE8000"
PACKAGE_FEED_GPG_PASSPHRASE_FILE ?=3D "/var/lib/jenkins/.gnupg/passwd.txt"
IPK_GPG_NAME ?=3D "73CE8000"
IPK_GPG_PASSPHRASE_FILE ?=3D "/var/lib/jenkins/.gnupg/passwd.txt"
GPG_PATH ?=3D "/var/lib/jenkins/.gnupg"

The public key is installed using opkg-keyrings and this config:

OPKG_KEYRING_KEYS =3D "73CE8000"

On the target I am able to verify that the public key is available:

root@scb-anders05:~# opkg-key list
/etc/opkg/trusted.gpg
---------------------
pub   rsa2048 2017-08-04 [SC]
      B104E37136084E68203BB2CD5676B9F373CE8000
uid           [unknown] Company <mail@example.tld>
sub   rsa2048 2017-08-04 [E]

The opkg.conf contains:

option check_signature 1
#option check_pkg_signature 1
option signature_type gpg-asc

But when I try opkg update I get:

root@scb-anders05:~# opkg update
Downloading http://internalhost:8000/puck/pyro-develop/ipk/all/Packages.gz.
Downloading http://internalhost:8000/puck/pyro-develop/ipk/all/Packages.asc.
Downloading http://internalhost:8000/puck/pyro-develop/ipk/cortexa8hf-neon/=
Packages.gz.
Downloading http://internalhost:8000/puck/pyro-develop/ipk/cortexa8hf-neon/=
Packages.asc.
Downloading http://internalhost:8000/puck/pyro-develop/ipk/scb/Packages.gz.
Downloading http://internalhost:8000/puck/pyro-develop/ipk/scb/Packages.asc.
Collected errors:
* opkg_verify_gpg_signature: Signature status returned error: No public key
* pkg_src_verify: Signature verification failed for all.
* opkg_verify_gpg_signature: Signature status returned error: No public key
* pkg_src_verify: Signature verification failed for cortexa8hf-neon.
* opkg_verify_gpg_signature: Signature status returned error: No public key
* pkg_src_verify: Signature verification failed for scb.

When manually loading the Packages and Packages.asc and verify the signatur=
e on the target it seems to work:

root@scb-anders05:~# opkg-key adv --verify Packages.asc Packages
Executing: gpg --no-options --no-default-keyring --keyring /etc/opkg/truste=
d.gpg --secret-keyring /etc/opkg/secring.gpg --trustdb-name /etc/opkg/trust=
db.gpg --verify Packages.asc Packages
gpg: Signature made Fri Aug  4 17:00:52 2017 CEST
gpg:                using RSA key 5676B9F373CE8000
gpg: Good signature from "Company <mail@example.tld>" [unknown]
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owne=
r.
Primary key fingerprint: B104 E371 3608 4E68 203B  B2CD 5676 B9F3 73CE 8000

Even after changing the trust-level for the public key to 5 (ultimate), opk=
g update does not accept the signature.

Does anybody have an idea what's going on and how I can fix this?

Regards
Christian

KOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergericht Iserlo=
hn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
Postanschrift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2=
351 16-0 * Telefax: +49  2351 16-2400
Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-601 * Fax =
+49 2331 8040-602
Gesch=E4ftsf=FChrung: Dr.-Ing. Dipl.-Wirt.Ing. Manfred Gerhard, Dipl.-Ing. =
Marwin Kinzl, Dipl.-Oec. Andreas Kostal


--_000_ae4b039cfb244f0682956bcdbea5af0eDEBEMAIL001kostalint_
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<META http-equiv=3D"Content-Type" content=3D"text/html; charset=3DISO-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">I am trying to sign our ipk-packages a=
nd the package feed using GPG. As far as I can tell the signatures are corr=
ectly generated using this in the local.conf:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">INHERIT &#43;=3D &quot;sign_package_fe=
ed sign_ipk&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">PACKAGE_FEED_GPG_NAME ?=3D &quot;73CE8=
000&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">PACKAGE_FEED_GPG_PASSPHRASE_FILE ?=3D =
&quot;/var/lib/jenkins/.gnupg/passwd.txt&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">IPK_GPG_NAME ?=3D &quot;73CE8000&quot;=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">IPK_GPG_PASSPHRASE_FILE ?=3D &quot;/va=
r/lib/jenkins/.gnupg/passwd.txt&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">GPG_PATH ?=3D &quot;/var/lib/jenkins/.=
gnupg&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">The public key is installed using opkg=
-keyrings and this config:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">OPKG_KEYRING_KEYS =3D &quot;73CE8000&q=
uot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">On the target I am able to verify that=
 the public key is available:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">root@scb-anders05:~# opkg-key list<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">/etc/opkg/trusted.gpg<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">---------------------<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">pub&nbsp;&nbsp; rsa2048 2017-08-04 [SC=
]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif">B104E37136084E68203BB2CD5676B9F373CE8000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">uid&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; [unknown] Company &lt;mail@example.tld&gt;<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">sub&nbsp;&nbsp; rsa2048 2017-08-04 [E]=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">The opkg.conf contains:<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">option check_signature 1<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">#option check_pkg_signature 1<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">option signature_type gpg-asc<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">But when I try opkg update I get:<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">root@scb-anders05:~# opkg update<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Downloading http://internalhost:8000/p=
uck/pyro-develop/ipk/all/Packages.gz.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Downloading http://internalhost:8000/p=
uck/pyro-develop/ipk/all/Packages.asc.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Downloading http://internalhost:8000/p=
uck/pyro-develop/ipk/cortexa8hf-neon/Packages.gz.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Downloading http://internalhost:8000/p=
uck/pyro-develop/ipk/cortexa8hf-neon/Packages.asc.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Downloading http://internalhost:8000/p=
uck/pyro-develop/ipk/scb/Packages.gz.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Downloading http://internalhost:8000/p=
uck/pyro-develop/ipk/scb/Packages.asc.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Collected errors:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">* opkg_verify_gpg_signature: Signature=
 status returned error: No public key<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">* pkg_src_verify: Signature verificati=
on failed for all.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">* opkg_verify_gpg_signature: Signature=
 status returned error: No public key<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">* pkg_src_verify: Signature verificati=
on failed for cortexa8hf-neon.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">* opkg_verify_gpg_signature: Signature=
 status returned error: No public key<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">* pkg_src_verify: Signature verificati=
on failed for scb.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">When manually loading the Packages and=
 Packages.asc and verify the signature on the target it seems to work:<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">root@scb-anders05:~# opkg-key adv --ve=
rify Packages.asc Packages<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Executing: gpg --no-options --no-defau=
lt-keyring --keyring /etc/opkg/trusted.gpg --secret-keyring /etc/opkg/secri=
ng.gpg --trustdb-name /etc/opkg/trustdb.gpg --verify
 Packages.asc Packages<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">gpg: Signature made Fri Aug&nbsp; 4 17=
:00:52 2017 CEST<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">gpg:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; using RSA key 5676=
B9F373CE8000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">gpg: Good signature from &quot;Company=
 &lt;mail@example.tld&gt;&quot; [unknown]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">gpg: WARNING: This key is not certifie=
d with a trusted signature!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">gpg:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; There is no indication that the signature belongs to t=
he owner.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Primary key fingerprint: B104 E371 360=
8 4E68 203B&nbsp; B2CD 5676 B9F3 73CE 8000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Even after changing the trust-level fo=
r the public key to 5 (ultimate), opkg update does not accept the signature=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Does anybody have an idea what&#8217;s=
 going on and how I can fix this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Christian<o:p></o:p></span></p>
</div>
=0A<table>=0A<tbody><tr valign=3D"bottom">=0A<td valign=3D"bottom">=0A<img =
border=3D"0" src=3D"http://www.kostal-solar-electric.com/~/media/Industrie%=
20Elektrik/Header_Logos%20und%20Bilder/blue_Quadrat_Intelligent.ashx" />=0A=
</td>=0A<td width=3D"5"></td>=0A<td valign=3D"bottom" style=3D"font-size: 8=
pt;">=0AKOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergerich=
t Iserlohn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170=0A<br />=0APostansch=
rift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2351 16-0 =
* Telefax: +49  2351 16-2400=0A<br />=0AWerksanschrift: Lange Eck 11, D-580=
99 Hagen * Tel. +49 2331 8040-800 * Fax +49 2331 8040-602=0A<br />=0AGesch=
=E4ftsf=FChrung: Dr.-Ing. Dipl.-Wirt.Ing. Manfred Gerhard, Dipl.-Ing. Marwi=
n Kinzl, Dipl.-Oec. Andreas Kostal=0A</td>=0A</tr>=0A</tbody></table>=0A=0A=
=0A=0A=0A</body>
</html>

--_000_ae4b039cfb244f0682956bcdbea5af0eDEBEMAIL001kostalint_--
