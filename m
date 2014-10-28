Return-Path: <chiz.chikwendu@Haemonetics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C2AAE007C0; Tue, 28 Oct 2014 09:59:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.82.251.8 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61E5AE00744
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 09:59:30 -0700 (PDT)
Received: from [216.82.250.179] by server-8.bemta-12.messagelabs.com id
	0F/05-03124-17BCF445; Tue, 28 Oct 2014 16:59:29 +0000
X-Env-Sender: chiz.chikwendu@Haemonetics.com
X-Msg-Ref: server-8.tower-210.messagelabs.com!1414515567!17729891!1
X-Originating-IP: [12.94.3.150]
X-StarScan-Received: 
X-StarScan-Version: 6.12.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 18995 invoked from network); 28 Oct 2014 16:59:28 -0000
Received: from unknown (HELO mail.haemonetics.com) (12.94.3.150)
	by server-8.tower-210.messagelabs.com with AES128-SHA encrypted SMTP;
	28 Oct 2014 16:59:28 -0000
Received: from BRS-EXCH02.haemo.net ([169.254.2.195]) by BRS-Exch01.haemo.net
	([169.254.1.211]) with mapi id 14.03.0195.001;
	Tue, 28 Oct 2014 12:59:27 -0400
From: Chiz Chikwendu <chiz.chikwendu@Haemonetics.com>
To: Peter Bergin <peter.bergin@tritech.se>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Qt5.3
Thread-Index: Ac/yEICSq7lGeQqPTpKlts42IeSk8AAv5T6g
Date: Tue, 28 Oct 2014 16:59:26 +0000
Message-ID: <A0F68394C677A9428EE03709453BAAEC795A26C7@BRS-Exch02.haemo.net>
References: <A0F68394C677A9428EE03709453BAAEC795A2443@BRS-Exch02.haemo.net>
	<43F0718C449F6A46B393DA2BEC8E01280C645706@post>
In-Reply-To: <43F0718C449F6A46B393DA2BEC8E01280C645706@post>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.50.1.77]
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
X-List-Received-Date: Tue, 28 Oct 2014 16:59:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A0F68394C677A9428EE03709453BAAEC795A26C7BRSExch02haemon_"

--_000_A0F68394C677A9428EE03709453BAAEC795A26C7BRSExch02haemon_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Peter,

I added the layer meta/ruby..
I had a hard time building it as it kept looking for ruby-native.
My workstation runs Fedora 20, and I installed ruby to my workstation.
My workstation has ruby 2.0.0.

So I installed ruby 2.0.0 in Yocto, into a custom layer, and it built succe=
ssfully.
I'm still having problems with building qt5, because it wants the opengl li=
brary.

Any tips on how I can work out some of these issues?

Regards,
Chiz

From: Peter Bergin [mailto:peter.bergin@tritech.se]
Sent: Tuesday, October 28, 2014 11:24 AM
To: Chiz Chikwendu; yocto@yoctoproject.org
Subject: Re: [yocto] Qt5.3

Hi,

On 10/28/2014 04:13 PM, Chiz Chikwendu wrote:
Has anyone built qt5.3 for an application an intel atom platform?
I have problems with unbuildable dependency with "ruby-native".
Anyone know how to get around this?

Chiz

have you added the meta-ruby layer to your conf/bblayers.conf?

See the README file in the meta-qt5 layer for which layers it depends on.

Regards,
/Peter

--_000_A0F68394C677A9428EE03709453BAAEC795A26C7BRSExch02haemon_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Peter,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><br>
I added the layer meta/ruby..<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I had a hard time buil=
ding it as it kept looking for ruby-native.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">My workstation runs Fe=
dora 20, and I installed ruby to my workstation.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">My workstation has rub=
y 2.0.0.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">So I installed ruby 2.=
0.0 in Yocto, into a custom layer, and it built successfully.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I&#8217;m still having=
 problems with building qt5, because it wants the opengl library.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Any tips on how I can =
work out some of these issues?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><br>
Regards,<br>
Chiz <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> Peter Bergin [mailto:peter.bergin@tritech.se]
<br>
<b>Sent:</b> Tuesday, October 28, 2014 11:24 AM<br>
<b>To:</b> Chiz Chikwendu; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Qt5.3<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hi,<br>
<br>
On 10/28/2014 04:13 PM, Chiz Chikwendu wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Has anyone built qt5.3 for an application an intel a=
tom platform?<o:p></o:p></p>
<p class=3D"MsoNormal">I have problems with unbuildable dependency with &#8=
220;ruby-native&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal">Anyone know how to get around this?<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Chiz<o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;"><br>
have you added the meta-ruby layer to your conf/bblayers.conf?<br>
<br>
See the README file in the meta-qt5 layer for which layers it depends on.<b=
r>
<br>
Regards,<br>
/Peter<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_A0F68394C677A9428EE03709453BAAEC795A26C7BRSExch02haemon_--
