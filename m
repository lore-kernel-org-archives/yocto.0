Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B843E00D26; Fri, 24 Jun 2016 03:49:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_40,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.7 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2195]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 408 seconds by postgrey-1.32 at yocto-www;
	Fri, 24 Jun 2016 03:48:43 PDT
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.7])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CD1FE00D09
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 03:48:43 -0700 (PDT)
Received: from [216.82.250.51] by server-7.bemta-12.messagelabs.com id
	B1/A4-23619-27E0D675; Fri, 24 Jun 2016 10:41:54 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuphleJIrShJLcpLzFFi42LxThM+plvElxt
	u8PMsm8Wkl2vYHBg92k/0sQUwRrFm5iXlVySwZrx5sZu5oFW54vDlyYwNjMfluxi5OIQEtjBK
	zH15gBHOmXDpBBuEc5BRYuW5X0xdjJwcbAKGEld67jKC2CICphIvjn1hA7GFBWQkdrxbyQQRV
	5SY9qITqkZPomFXN1icRUBV4uauv2A2r4C7xOyuLrAaRgFZiS+Nq5lBbGYBcYlbT+aD1UgICE
	gs2XOeGcIWlXj5+B8rhG0gsXXpPhYIW0FiZXcDG0RvjsTEZRcZIeYLSpyc+QSsRgho75aFv1k
	mMArPQrJiFpKWWUhaIOI6Egt2f2KDsLUlli18zQxjnznwmAlZfAEj+ypGjeLUorLUIl1DM72k
	osz0jJLcxMwcXUNDI73c1OLixPTUnMSkYr3k/NxNjMBYqmdgYNzB2Djd6xCjJAeTkijvtEU54
	UJ8SfkplRmJxRnxRaU5qcWHGGU4OJQkeDV4c8OFBItS01Mr0jJzgFENk5bg4FES4Z0CkuYtLk
	jMLc5Mh0idYlSUEueNBEkIgCQySvPg2mCJ5BKjrJQwLyMDA4MQT0FqUW5mCar8K0ZxDkYlYd5
	UkCk8mXklcNNfAS1mAlp8tz8bZHFJIkJKqoFxTanA2zsf1rTwCqe6Xk/PTKi8/6pg9hGj2tUv
	o50CJf+bVhv3pPK9OKO6+c7nt77zbyd5BPbcnFRv7Hdt5a9Nq1h1Ih+eCv/8fm9w4izjh00V0
	YYVX15wGZh57liw7MdMZ78vrPbPxOP0ju3du/3lzovf/9+OrNrJ7tO9zuxhlseB3dw6/EFJSi
	zFGYmGWsxFxYkAdI7WRx8DAAA=
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-12.tower-108.messagelabs.com!1466764913!52595962!1
X-Originating-IP: [75.102.19.198]
X-StarScan-Received: 
X-StarScan-Version: 8.46; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 18148 invoked from network); 24 Jun 2016 10:41:54 -0000
Received: from unknown.ord.scnet.net (HELO HICGWSEXHC02.ad.harman.com)
	(75.102.19.198)
	by server-12.tower-108.messagelabs.com with AES128-SHA encrypted SMTP;
	24 Jun 2016 10:41:54 -0000
Received: from HIBDWSMB03.ad.harman.com (10.99.236.93) by
	HICGWSEXHC02.ad.harman.com (10.10.23.73) with Microsoft SMTP Server
	(TLS) id 14.3.235.1; Fri, 24 Jun 2016 05:41:53 -0500
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB03.ad.harman.com (10.99.236.93) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Fri, 24 Jun 2016 16:11:50 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::444c:b81a:f35e:c464]) by
	HIBDWSMB02.ad.harman.com ([fe80::444c:b81a:f35e:c464%16]) with mapi id
	15.00.1130.005; Fri, 24 Jun 2016 16:11:49 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: setcap using recipe
Thread-Index: AdHOBQLlITj3tknLQROeJDdrbt+Enw==
Date: Fri, 24 Jun 2016 10:41:49 +0000
Message-ID: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
MIME-Version: 1.0
Subject: setcap using recipe
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
X-List-Received-Date: Fri, 24 Jun 2016 10:49:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_d023141f03804bacb323bdfb95daee19HIBDWSMB02adharmancom_"

--_000_d023141f03804bacb323bdfb95daee19HIBDWSMB02adharmancom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,



Is there a way to  add a capability to a binary (cap_net_raw+ep),into a rec=
ipe?


Example :

do_install() {

           install -d ${D}${bindir}

           install -m 0755 helloworld ${D}${bindir}

           install -d ${D}/lib/systemd/system

           install -m 0755 hello.service ${D}/lib/systemd/system/

           setcap cap_net_raw+ep  ${D}${bindir}/helloworld

}



If yes is this correct approach to achieve the same from  package recipe it=
self ?





Thanks and Regards

Shrawan


--_000_d023141f03804bacb323bdfb95daee19HIBDWSMB02adharmancom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<p class=3D"MsoPlainText">Hello All,<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Is there a way to &nbsp;add a capability to a bin=
ary (cap_net_raw&#43;ep),into a recipe?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Example :<o:p></o:p></p>
<p class=3D"MsoPlainText">do_install() {<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp; install -d ${D}${bindir}<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp; install -m 0755 helloworld ${D}${bindir}<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp; install -d ${D}/lib/systemd/system<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp; install -m 0755 hello.service ${D}/lib/systemd/system/<o:p></o:p></p=
>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; &nbsp;setcap cap_net_raw&#43;ep&nbsp; ${D}${bindir}/helloworld&nbsp;&=
nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></p>
<p class=3D"MsoPlainText">}<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">If yes is this correct approach to achieve the sa=
me from&nbsp; package recipe itself ?<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Thanks and Regards<o:p></o:p></p>
<p class=3D"MsoPlainText">Shrawan<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_d023141f03804bacb323bdfb95daee19HIBDWSMB02adharmancom_--
