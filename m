Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AD88E00D0C; Tue, 18 Oct 2016 05:04:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 18 Oct 2016 05:04:45 PDT
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4C49E00D01
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 05:04:45 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2H/AwBcDgZY/yYyC4dcHgYMgwchFAEBA?=
	=?us-ascii?q?QEBHVeBAwG2W4IPggiFFoEMAoF9OBQBAgEBAQEBAQEDWxwLhGUDEhteARUVViY?=
	=?us-ascii?q?BBBsaiDABpgeFF5c+DAElhj6JHYJKC1mCLwWaBgGaA4V1kHseNhuDNB2BU4hIA?=
	=?us-ascii?q?X8BAQE?=
X-IPAS-Result: =?us-ascii?q?A2H/AwBcDgZY/yYyC4dcHgYMgwchFAEBAQEBHVeBAwG2W4I?=
	=?us-ascii?q?PggiFFoEMAoF9OBQBAgEBAQEBAQEDWxwLhGUDEhteARUVViYBBBsaiDABpgeFF?=
	=?us-ascii?q?5c+DAElhj6JHYJKC1mCLwWaBgGaA4V1kHseNhuDNB2BU4hIAX8BAQE?=
X-IronPort-AV: E=Sophos;i="5.31,361,1473134400"; 
	d="scan'208,217";a="199150901"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	18 Oct 2016 08:03:34 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC03.global.avaya.com) ([135.64.58.13])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	18 Oct 2016 08:03:33 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC03.global.avaya.com ([135.64.58.13]) with mapi id
	14.03.0319.002; Tue, 18 Oct 2016 08:03:32 -0400
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Set ${WORKDIR}/build to ${S}
Thread-Index: AdIpN5xhYeFkrV+fQsuYmpcmcYcSdQ==
Date: Tue, 18 Oct 2016 12:03:31 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3E7D843C@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.47]
MIME-Version: 1.0
Subject: Set ${WORKDIR}/build to ${S}
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
X-List-Received-Date: Tue, 18 Oct 2016 12:04:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3E7D843CAZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3E7D843CAZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to write a recipe for one of the library. It uses a somewhat mo=
dified autotools for building the complete code base. The issue I am facing=
 here is that when do_configure run it put the generated files in build dir=
ectory. Below is the layout

S =3D "${WORKDIR}/xerces-c-src_2_8_0/src/xercesc"
do_configure() {

     export TRANSCODER=3D"NATIVE"
     export MESSAGELOADER=3D"INMEM"
     export NETACCESSOR=3D"Socket"
     export THREADS=3D"pthread"
     export LIBTYPE=3D"shared"
     export BITSTOBUILD=3D"32"
     export CXXFLAGS=3D" -O2 -pipe -feliminate-unused-debug-types -w -O2 -D=
NDEBUG -DPROJ_XMLPARSER -DPROJ_XMLUTIL -DPROJ_PARSERS -DPROJ_SAX4C -DPROJ_S=
AX2 -DPROJ_DOM -     DPROJ_DEPRECATED_DOM -DPROJ_VALIDATORS -DXML_USE_NATIV=
E_TRANSCODER -DXML_USE_INMEM_MESSAGELOADER -DXML_USE_PTHREADS -DXML_USE_NET=
ACCESSOR_SOCKET "
     export CFLAGS=3D" -O2 -pipe -feliminate-unused-debug-types -w -O2 -DND=
EBUG -DPROJ_XMLPARSER -DPROJ_XMLUTIL -DPROJ_PARSERS -DPROJ_SAX4C -DPROJ_SAX=
2 -DPROJ_DOM -       DPROJ_DEPRECATED_DOM -DPROJ_VALIDATORS -DXML_USE_NATIV=
E_TRANSCODER -DXML_USE_INMEM_MESSAGELOADER -DXML_USE_PTHREADS -DXML_USE_NET=
ACCESSOR_SOCKET "
     export LDFLAGS=3D"-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed "
     export LIBS=3D" -lpthread "
     sh ${S}/configure --prefix=3D${D}${prefix} --build=3D${BUILD_SYS} --ho=
st=3D${HOST_SYS} --target=3D${TARGET_SYS}
}

Now as the do_configure will put data in ${WORKDIR}/build. But I want that =
the generated data should be in ${S}.

Is there a way to tell do_configure to use ${S} and not ${WORKDIR}/build.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3E7D843CAZFFEXMB01globa_
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to write a recipe for one of the library=
. It uses a somewhat modified autotools for building the complete code base=
. The issue I am facing here is that when do_configure run it put the gener=
ated files in build directory. Below
 is the layout<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">S =3D &quot;${WORKDIR}/xerces-c-src_2_8_0/src/xerces=
c&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">do_configure() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;export TRANSCODER=3D&q=
uot;NATIVE&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; export MESSAGELOADER=3D&quo=
t;INMEM&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; export NETACCESSOR=3D&quot;=
Socket&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; export THREADS=3D&quot;pthr=
ead&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; export LIBTYPE=3D&quot;shar=
ed&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; export BITSTOBUILD=3D&quot;=
32&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; export CXXFLAGS=3D&quot; -O=
2 -pipe -feliminate-unused-debug-types -w -O2 -DNDEBUG -DPROJ_XMLPARSER -DP=
ROJ_XMLUTIL -DPROJ_PARSERS -DPROJ_SAX4C -DPROJ_SAX2 -DPROJ_DOM -&nbsp;&nbsp=
;&nbsp;&nbsp; DPROJ_DEPRECATED_DOM -DPROJ_VALIDATORS -DXML_USE_NATIVE_TRANS=
CODER
 -DXML_USE_INMEM_MESSAGELOADER -DXML_USE_PTHREADS -DXML_USE_NETACCESSOR_SOC=
KET &quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; export CFLAGS=3D&quot; -O2 =
-pipe -feliminate-unused-debug-types -w -O2 -DNDEBUG -DPROJ_XMLPARSER -DPRO=
J_XMLUTIL -DPROJ_PARSERS -DPROJ_SAX4C -DPROJ_SAX2 -DPROJ_DOM -&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; DPROJ_DEPRECATED_DOM -DPROJ_VALIDATORS -DXML_USE_NA=
TIVE_TRANSCODER
 -DXML_USE_INMEM_MESSAGELOADER -DXML_USE_PTHREADS -DXML_USE_NETACCESSOR_SOC=
KET &quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; export LDFLAGS=3D&quot;-Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed &quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; export LIBS=3D&quot; -lpthr=
ead &quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; sh ${S}/configure --prefix=
=3D${D}${prefix} --build=3D${BUILD_SYS} --host=3D${HOST_SYS} --target=3D${T=
ARGET_SYS}<o:p></o:p></p>
<p class=3D"MsoNormal">} <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now as the do_configure will put data in ${WORKDIR}/=
build. But I want that the generated data should be in ${S}.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a way to tell do_configure to use ${S} and =
not ${WORKDIR}/build.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3E7D843CAZFFEXMB01globa_--
