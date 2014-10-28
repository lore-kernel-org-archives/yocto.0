Return-Path: <peter.bergin@tritech.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67296E00848; Tue, 28 Oct 2014 08:24:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from tritech.se (tritech.se [46.59.120.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86C19E007BA
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 08:24:11 -0700 (PDT)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by tritech.se (8.14.3/8.14.3) with ESMTP id s9SFO4Yb009208;
	Tue, 28 Oct 2014 16:24:09 +0100
Received: from POST.tritech.se ([10.75.60.100]) by post ([10.75.60.100]) with
	mapi id 14.02.0387.000; Tue, 28 Oct 2014 16:24:04 +0100
From: Peter Bergin <peter.bergin@tritech.se>
To: Chiz Chikwendu <chiz.chikwendu@Haemonetics.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Qt5.3
Thread-Index: Ac/yEICSq7lGeQqPTpKlts42IeSk8A==
Date: Tue, 28 Oct 2014 15:24:03 +0000
Message-ID: <43F0718C449F6A46B393DA2BEC8E01280C645706@post>
References: <A0F68394C677A9428EE03709453BAAEC795A2443@BRS-Exch02.haemo.net>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [194.236.6.200]
MIME-Version: 1.0
Subject: Re: Qt5.3
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
X-List-Received-Date: Tue, 28 Oct 2014 15:24:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_43F0718C449F6A46B393DA2BEC8E01280C645706post_"

--_000_43F0718C449F6A46B393DA2BEC8E01280C645706post_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

On 10/28/2014 04:13 PM, Chiz Chikwendu wrote:
Has anyone built qt5.3 for an application an intel atom platform?
I have problems with unbuildable dependency with =93ruby-native=94.
Anyone know how to get around this?

Chiz

have you added the meta-ruby layer to your conf/bblayers.conf?

See the README file in the meta-qt5 layer for which layers it depends on.

Regards,
/Peter

--_000_43F0718C449F6A46B393DA2BEC8E01280C645706post_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body bgcolor=3D"#FFFFFF" text=3D"#000000">
<div class=3D"moz-cite-prefix">Hi,<br>
<br>
On 10/28/2014 04:13 PM, Chiz Chikwendu wrote:<br>
</div>
<blockquote cite=3D"mid:A0F68394C677A9428EE03709453BAAEC795A2443@BRS-Exch02=
.haemo.net" type=3D"cite">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered=0A=
        medium)">
<style><!--=0A=
/* Font Definitions */=0A=
@font-face=0A=
	{font-family:Calibri;=0A=
	panose-1:2 15 5 2 2 2 4 3 2 4;}=0A=
/* Style Definitions */=0A=
p.MsoNormal, li.MsoNormal, div.MsoNormal=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:11.0pt;=0A=
	font-family:"Calibri","sans-serif";}=0A=
a:link, span.MsoHyperlink=0A=
	{mso-style-priority:99;=0A=
	color:blue;=0A=
	text-decoration:underline;}=0A=
a:visited, span.MsoHyperlinkFollowed=0A=
	{mso-style-priority:99;=0A=
	color:purple;=0A=
	text-decoration:underline;}=0A=
span.EmailStyle17=0A=
	{mso-style-type:personal-compose;=0A=
	font-family:"Calibri","sans-serif";=0A=
	color:windowtext;}=0A=
.MsoChpDefault=0A=
	{mso-style-type:export-only;=0A=
	font-family:"Calibri","sans-serif";}=0A=
@page WordSection1=0A=
	{size:8.5in 11.0in;=0A=
	margin:1.0in 1.0in 1.0in 1.0in;}=0A=
div.WordSection1=0A=
	{page:WordSection1;}=0A=
--></style><!--[if gte mso 9]><xml>=0A=
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />=0A=
</xml><![endif]--><!--[if gte mso 9]><xml>=0A=
<o:shapelayout v:ext=3D"edit">=0A=
<o:idmap v:ext=3D"edit" data=3D"1" />=0A=
</o:shapelayout></xml><![endif]-->
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Has anyone built qt5.3 for an application an intel a=
tom platform?<o:p></o:p></p>
<p class=3D"MsoNormal">I have problems with unbuildable dependency with =93=
ruby-native=94.<o:p></o:p></p>
<p class=3D"MsoNormal">Anyone know how to get around this?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Chiz<o:p></o:p></p>
</div>
</blockquote>
<br>
have you added the meta-ruby layer to your conf/bblayers.conf?<br>
<br>
See the README file in the meta-qt5 layer for which layers it depends on.<b=
r>
<br>
Regards,<br>
/Peter<br>
</body>
</html>

--_000_43F0718C449F6A46B393DA2BEC8E01280C645706post_--
