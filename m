Return-Path: <simon.chen@lmco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FCFEE0096A; Fri, 26 Jun 2015 12:26:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.35.35.12 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mailfo02.lmco.com (mailfo02.lmco.com [192.35.35.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18CB8E006C6
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 12:26:44 -0700 (PDT)
Received: from HVXHTPN10.us.lmco.com (hvxhtpn10.ems.lmco.com [158.186.149.28])
	by mailfo02.lmco.com (8.14.5/8.14.5) with ESMTP id t5QJQbdB032171
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 20:26:40 +0100
Received: from HVXDSP45.us.lmco.com ([fe80::e5e8:eada:5adc:d92a]) by
	HVXHTPN10.us.lmco.com ([fe80::ed1d:9a54:1e81:8133%15]) with mapi id
	14.03.0174.001; Fri, 26 Jun 2015 15:26:10 -0400
From: "Chen, Simon" <simon.chen@lmco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Copying an Xserver .conf file to the image rootfs
	usr/share/X11/xorg.conf.d
Thread-Index: AdCwRQi3KfZ0WJCwRLKuMzYCkywJVg==
Date: Fri, 26 Jun 2015 19:26:09 +0000
Message-ID: <D3EFC6D8DB6B2D48A91E6F02D0DB338FAAC7D8@HVXDSP45.us.lmco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [158.186.156.90]
MIME-Version: 1.0
X-LM-Outbound: External 158.186.149.28 cntry=us
	g=c71c3bc1694f0d1762121782deb08ddd q=t5QJQbdB032171 m=7
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.14.151, 1.0.33,
	0.0.0000
	definitions=2015-06-26_06:2015-06-26, 2015-06-26,
	1970-01-01 signatures=0
Subject: Copying an Xserver .conf file to the image rootfs usr/share/X11/xorg.conf.d
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
X-List-Received-Date: Fri, 26 Jun 2015 19:26:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FAAC7D8HVXDSP45uslmcocom_"

--_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FAAC7D8HVXDSP45uslmcocom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Software/Hardware Used:
Yocto poky-dizzy-12.0.1
AMD Radeon E8860 GFX Card

Hi all,

I am trying write up a recipe that is supposed to pull in a custom  radeon.=
conf file and install it into Yocto's rootfs at /usr/share/X11/xorg.conf.d.=
 This file is basically an Xorg configuration file that enables the use of =
an external Radeon GFX card. Radeon.conf, however, never gets successfully =
written into that directory after I run bitbake. My only hunch is perhaps  =
the other packages that write files in that directory are overwriting the r=
adeon.conf file. There are other driver recipes that populate this director=
y with files such as glamor.conf, 10-evdev.conf, 10-quirks.conf, and 50-syn=
aptics.conf.

...Otherwise, my implementation could also be flat out wrong. Radeon.conf l=
ives in a folder called xorg-radeon-config, and here is my xorg-radeon-conf=
ig.bb recipe file:

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MST;md5=3Daeb0a03c272f6b=
3063369c470299d8af"
SRC_URI =3D " \
                  file://radeon.conf \
"
FILES_${PN} =3D "usr/share/X11/xorg.conf.d/"

S =3D "${WORKDIR}"
do_install () {
                install -d ${D}/usr/share/X11/xorg.conf.d/
                install -m 0644 ${WORKDIR}/radeon.conf ${D}/usr/share/X11/x=
org.conf.d/
}

Thanks,
Simon

--_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FAAC7D8HVXDSP45uslmcocom_
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
	{margin:0in;
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Software/Hardware Used:<o:p></o:p></p>
<p class=3D"MsoNormal">Yocto poky-dizzy-12.0.1<o:p></o:p></p>
<p class=3D"MsoNormal">AMD Radeon E8860 GFX Card<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying write up a recipe that is supposed to pu=
ll in a custom &nbsp;radeon.conf file and install it into Yocto&#8217;s roo=
tfs at /usr/share/X11/xorg.conf.d. This file is basically an Xorg configura=
tion file that enables the use of an external
 Radeon GFX card. Radeon.conf, however, never gets successfully written int=
o that directory after I run bitbake. My only hunch is perhaps &nbsp;the ot=
her packages that write files in that directory are overwriting the radeon.=
conf file. There are other driver recipes
 that populate this directory with files such as glamor.conf, 10-evdev.conf=
, 10-quirks.conf, and 50-synaptics.conf.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&#8230;Otherwise, my implementation could also be fl=
at out wrong. Radeon.conf lives in a folder called xorg-radeon-config, and =
here is my xorg-radeon-config.bb recipe file:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:=
&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_D=
IR}/MST;md5=3Daeb0a03c272f6b3063369c470299d8af&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI =3D &quot; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;file://radeon.conf \<o:p=
></o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">FILES_${PN} =3D &quot;usr/share/X11/xorg.conf.d/&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">S =3D &quot;${WORKDIR}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">do_install () {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}/usr/share/X11/xorg.c=
onf.d/<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0644 ${WORKDIR}/radeon.co=
nf ${D}/usr/share/X11/xorg.conf.d/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Simon<o:p></o:p></p>
</div>
</body>
</html>

--_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FAAC7D8HVXDSP45uslmcocom_--
