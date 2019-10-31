Return-Path: <Georgi.Georgiev@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3845E00D77; Thu, 31 Oct 2019 05:19:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [204.27.169.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from Mail4.woodward.com (mail4.woodward.com [204.27.169.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EE44E00ADD
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2019 05:19:04 -0700 (PDT)
Received: from pps.filterd (COIL-PMSGA1.woodward.com [127.0.0.1])
	by COIL-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x9VCHBmD011833
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2019 07:19:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : subject
	: date : message-id : content-type : mime-version; s=20190114Woodward; 
	bh=nSmOaM8+dYwu+9VGumnL7utjws8cgZI9Xraq0epBKzU=;
	b=53762Aqv3jyU01/fQ2bvTd2sG+TdMSvU/EnK7v+LcNdSZUIw4vUfn+Ij/SEe0MkieCPN
	GXpxforItdR+zRQ+W8sWj+K0sc5h7cqb/wVewTMMLi6vMQV3yTKtdJE2J30M5fwqCZar
	2a5G2vk3hWLVcPHz92QtQ6IHITt84N7XZZpkKs348YnC1HpF9Z7ePGY5SGxfXZSWbRed
	L7Oua/kveT1V+W2nMDyjEpz1vOZkyzi0aL/OeW56SSPwIHPlbhNf3R5aPLakcONW8Er5
	+CDw9nI/pbXid6mDz/xMUJDlZ35QSdYIm6UJJ7jjQGiLI4mjxGv9BKkFi0vEJVTXi+wU
	ig== 
Received: from rkfdhc1.woodward.com ([10.1.100.158])
	by COIL-PMSGA1.woodward.com with ESMTP id 2vy7akkavs-1
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2019 07:19:03 -0500
Received: from Kemp-ExMb1.woodward.com (10.25.100.72) by RKFDHC1.woodward.com
	(10.1.100.158) with Microsoft SMTP Server (TLS) id 8.3.485.1;
	Thu, 31 Oct 2019 07:19:02 -0500
Received: from Kemp-ExMb1.woodward.com (10.25.100.72) by
	Kemp-ExMb1.woodward.com (10.25.100.72) with Microsoft SMTP Server (TLS)
	id 15.0.1395.4; Thu, 31 Oct 2019 13:19:02 +0100
Received: from Kemp-ExMb1.woodward.com ([10.25.100.72]) by
	Kemp-ExMb1.woodward.com ([10.25.100.72]) with mapi id 15.00.1395.000;
	Thu, 31 Oct 2019 13:19:02 +0100
From: Georgi Georgiev <Georgi.Georgiev@woodward.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto builds and svn offline
Thread-Index: AdWP2fCajpvngs6tQR+YqkDtIIxlAQACrYLA
Date: Thu, 31 Oct 2019 12:19:02 +0000
Message-ID: <12026db26b394155b0f149b9d4de5169@Kemp-ExMb1.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.1.100.23
dlp-reaction: no-action
dlp-product: dlpe-windows
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.138.108.100]
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=904 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1908290000 definitions=main-1910310127
Subject: Re: Yocto builds and svn offline
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
X-List-Received-Date: Thu, 31 Oct 2019 12:19:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_12026db26b394155b0f149b9d4de5169KempExMb1woodwardcom_"

--_000_12026db26b394155b0f149b9d4de5169KempExMb1woodwardcom_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Update:
I made a simple new recipe

SUMMARY =3D "Test of svn relationship with yocto"
LICENSE =3D "CLOSED"

PV =3D "119889"
SRC_URI =3D "svn://cocosubversion/svn/Embedded/Shared/;module=3Dyoctotest;p=
rotocol=3Dhttp;rev=3D${PV}"

FILES_${PN} =3D "${WW_PATH}/test.txt"
WW_PATH=3D"/opt/ww"
S =3D "${WORKDIR}/yoctotest/"
do_install () {

        # ${PN}-sys
        # =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
        install -d ${D}/${WW_PATH}/
        install -m 0644 ${S}/test.txt ${D}/${WW_PATH}/
}
It is build offline without problem. (But first time online of course) May =
we speak then about an issue with svn fetcher in yocto?

Cordially
Georgi

From: Georgi Georgiev
Sent: Thursday, October 31, 2019 12:59 PM
To: 'yocto@yoctoproject.org' <yocto@yoctoproject.org>
Subject: Yocto builds and svn offline

Hi,
The problem:
In our project we have some parts located in svn server far. This server du=
e to "unknown" reasons very often is not accessible. And I noticed that yoc=
to always tries to access the svn server. Not like the other components in =
download directory. Something worse, if it does not access the server, it e=
rases all the trunks, tags we had already in download/svn directory. I made=
 a simple test erasing sstate-cache and tmp, and disconnected the cable of =
my machine. Everything goes fine till svn recipes. Here is the shortest rec=
ipe:
SUMMARY =3D "Linux0 web pages"
DESCRIPTION =3D "Set of static web pages to be displayed during update."
LICENSE =3D "CLOSED"
PV =3D "117434"
SRC_URI =3D " \
    svn://cocosubversion/svn/Embedded/Valve\&Actuator/DVPII/trunk/Linux0Web=
;module=3Dtrunk;protocol=3Dhttp;rev=3D${PV} \
    file://ww-linux0-web-deploy.sh<file:///\\ww-linux0-web-deploy.sh> \
    "
S =3D "${WORKDIR}/trunk"
INSTALL_DIR =3D "/www/ww-linux0-web"
FILES_${PN} +=3D " \
    ${INSTALL_DIR}/index.html.ww_failed_to_boot \
    ${INSTALL_DIR}/index.html.ww_failed_to_program \
    ${INSTALL_DIR}/index.html.ww_update_in_progress \
    "
# Skip the unwanted steps
do_configure[noexec] =3D "1"
do_compile[noexec] =3D "1"

do_install () {
    install -d ${D}${INSTALL_DIR}
    install -m 644 ${S}/index.html.ww_failed_to_boot ${D}${INSTALL_DIR}
    install -m 644 ${S}/index.html.ww_failed_to_program ${D}${INSTALL_DIR}
    install -m 644 ${S}/index.html.ww_update_in_progress ${D}${INSTALL_DIR}

    install -d ${D}${bindir}
    install -m 755 ${WORKDIR}/ww-linux0-web-deploy.sh ${D}${bindir}
}

How can we solve that issue?

***
The information in this email is confidential and intended solely for the i=
ndividual or entity to whom it is addressed.=C2=A0=C2=A0If you have receive=
d this email in error please notify the sender by return e-mail, delete thi=
s email, and refrain from any disclosure or action based on the information.
***

--_000_12026db26b394155b0f149b9d4de5169KempExMb1woodwardcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
	{margin:0in;
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
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Update:<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I made a simple new re=
cipe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">SUMMARY =3D &quot;Test=
 of svn relationship with yocto&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">LICENSE =3D &quot;CLOS=
ED&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">PV =3D &quot;119889&qu=
ot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">SRC_URI =3D &quot;svn:=
//cocosubversion/svn/Embedded/Shared/;module=3Dyoctotest;protocol=3Dhttp;re=
v=3D${PV}&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">FILES_${PN} =3D &quot;=
${WW_PATH}/test.txt&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">WW_PATH=3D&quot;/opt/w=
w&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">S =3D &quot;${WORKDIR}=
/yoctotest/&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">do_install () {<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; # ${PN}-sys<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; # =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; install -d ${D}/${WW_PATH}/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; install -m 0644 ${S}/test.txt ${D}/${WW_PATH}/<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">It is build offline wi=
thout problem. (But first time online of course) May we speak then about an=
 issue with svn fetcher in yocto?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Cordially<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Georgi<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Georgi Georgiev <br>
<b>Sent:</b> Thursday, October 31, 2019 12:59 PM<br>
<b>To:</b> 'yocto@yoctoproject.org' &lt;yocto@yoctoproject.org&gt;<br>
<b>Subject:</b> Yocto builds and svn offline<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">The problem:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">In our project we hav=
e some parts located in svn server far. This server due to &#8220;unknown&#=
8221; reasons very often is not accessible. And I noticed that yocto always=
 tries to access the svn server. Not like the other
 components in download directory. Something worse, if it does not access t=
he server, it erases all the trunks, tags we had already in download/svn di=
rectory. I made a simple test erasing sstate-cache and tmp, and disconnecte=
d the cable of my machine. Everything
 goes fine till svn recipes. Here is the shortest recipe:<o:p></o:p></p>
<p class=3D"MsoNormal">SUMMARY =3D &quot;Linux0 web pages&quot;<o:p></o:p><=
/p>
<p class=3D"MsoNormal">DESCRIPTION =3D &quot;Set of static web pages to be =
displayed during update.&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">LICENSE =3D &quot;CLOSED&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">PV =3D &quot;117434&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI =3D &quot; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; svn://cocosubversion/svn/Embedded=
/Valve\&amp;Actuator/DVPII/trunk/Linux0Web;module=3Dtrunk;protocol=3Dhttp;r=
ev=3D${PV} \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; <a href=3D"file:///\\ww-linux0-we=
b-deploy.sh">file://ww-linux0-web-deploy.sh</a> \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></p>
<p class=3D"MsoNormal">S =3D &quot;${WORKDIR}/trunk&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">INSTALL_DIR =3D &quot;/www/ww-linux0-web&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">FILES_${PN} &#43;=3D &quot; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ${INSTALL_DIR}/index.html.ww_fail=
ed_to_boot \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ${INSTALL_DIR}/index.html.ww_fail=
ed_to_program \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ${INSTALL_DIR}/index.html.ww_upda=
te_in_progress \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></p>
<p class=3D"MsoNormal"># Skip the unwanted steps<o:p></o:p></p>
<p class=3D"MsoNormal">do_configure[noexec] =3D &quot;1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">do_compile[noexec] =3D &quot;1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_install () {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; install -d ${D}${INSTALL_DIR}<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; &nbsp;install -m 644 ${S}/index.html.ww=
_failed_to_boot ${D}${INSTALL_DIR}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; install -m 644 ${S}/index.html.ww=
_failed_to_program ${D}${INSTALL_DIR}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; install -m 644 ${S}/index.html.ww=
_update_in_progress ${D}${INSTALL_DIR}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; install -d ${D}${bindir}<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/ww-linu=
x0-web-deploy.sh ${D}${bindir}<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How can we solve that issue?<o:p></o:p></p>
</div>

<DIV>
***<BR>
The information in this email is confidential and intended solely for the i=
ndividual or entity to whom it is addressed.&nbsp;&nbsp;If you have receive=
d this email in error please notify the sender by return e-mail, delete thi=
s email, and refrain from any disclosure or action based on the information=
.<BR>
***<BR>
</DIV></body>
</html>

--_000_12026db26b394155b0f149b9d4de5169KempExMb1woodwardcom_--
