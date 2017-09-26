Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 660A7E00D13; Tue, 26 Sep 2017 03:36:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.202 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 420 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 Sep 2017 03:36:43 PDT
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22482E00C8F
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 03:36:43 -0700 (PDT)
Received: from [216.82.242.34] by server-10.bemta-8.messagelabs.com id
	FE/49-01785-71C2AC95; Tue, 26 Sep 2017 10:29:43 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFKsWRWlGSWpSXmKPExsVySpdNU1dc51S
	kwY1TrBaTXq5hc2D0aD/RxxbAGMWamZeUX5HAmrH6XCdbwT67is1vO1kaGJssuxi5OIQEtjJK
	9HyYyQbhbGGUaF5yixnCOcgoseXjHNYuRk4ONgFDiSs9dxlBbBEBU4kXx76wgdjCAuoS317OY
	IaIa0hcvnMRyjaS+PHsBROIzSKgKvHk1wWwObwC7hK/L88Dm8MoICvxpXE1WD2zgLjErSfzwe
	olBAQkluw5zwxhi0q8fPyPFcI2kNi6dB8LhK0gsbK7gQ3CtpbYP28pK8ScHIm2zptMELsEJU7
	OfAJWLwR0w5aFv1kmMIrMQrJuFpKWWUhaIOI6Egt2f2KDsLUlli18zQxjnznwmAlZfAEj+ypG
	jeLUorLUIl1DS72kosz0jJLcxMwcXUMDC73c1OLixPTUnMSkYr3k/NxNjMAYq2dgYNzBOG23+
	yFGSQ4mJVFeRblTkUJ8SfkplRmJxRnxRaU5qcWHGGU4OJQkeJ9qAeUEi1LTUyvSMnOA0Q6Tlu
	DgURLh1dIGSvMWFyTmFmemQ6ROMRpzbLh59w8Txz4QKcSSl5+XKiXOux5kkgBIaUZpHtwgWBK
	6xCgrJczLyMDAIMRTkFqUm1mCKv+KUZyDUUmY9yLIFJ7MvBK4fa+ATmECOqV36gmQU0oSEVJS
	DYyhTe6xm58L2Zd06cev+Xj0UMfR9/0X+NvLhQM3Xti+Qmud4BXbN7Z9Yj4O+ZXTGpjV9J3jx
	bInB766sZpl9YyAqrlKJ8QqH8jdF/gQqvnA8tyO75FNhleLZDySbTZ5TH724HL6qa9btzx81x
	DT39H9dfc/J8aCwmVi3GohLpknVQVC1U81CymxFGckGmoxFxUnAgC2YJzbPQMAAA==
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-15.tower-73.messagelabs.com!1506421779!101807162!2
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 7934 invoked from network); 26 Sep 2017 10:29:42 -0000
Received: from unknown (HELO HIBDWSMB09.ad.harman.com) (202.45.6.41)
	by server-15.tower-73.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 26 Sep 2017 10:29:42 -0000
Received: from HIBDWSMB06.ad.harman.com (10.99.236.96) by
	HIBDWSMB09.ad.harman.com (10.99.236.103) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Tue, 26 Sep 2017 15:59:39 +0530
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB06.ad.harman.com (10.99.236.96) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Tue, 26 Sep 2017 15:59:37 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::d8dd:3dec:76ff:8e7b]) by
	HIBDWSMB02.ad.harman.com ([fe80::d8dd:3dec:76ff:8e7b%16]) with mapi id
	15.00.1263.000; Tue, 26 Sep 2017 15:59:37 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: rootfs encryption support 
Thread-Index: AdM2h8s39sFuLV9eR3OG4m4is0AjFwAKXonQ
Date: Tue, 26 Sep 2017 10:29:36 +0000
Message-ID: <e1e5dcc7a72a4e02bf809951ab67f555@HIBDWSMB02.ad.harman.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
Subject: Re: rootfs encryption support
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
X-List-Received-Date: Tue, 26 Sep 2017 10:36:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_e1e5dcc7a72a4e02bf809951ab67f555HIBDWSMB02adharmancom_"

--_000_e1e5dcc7a72a4e02bf809951ab67f555HIBDWSMB02adharmancom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



To add further information to the query , I am executing  "cryptsetup"  fro=
m a recipe as below : (Yocto 2.0.2)


fakeroot do_install() {
               cryptsetup --type=3Dplain open hello.enc demomap < dm-crypt-=
key

}


Additional debug log :

+ do_install
| + cryptsetup --type=3Dplain open /path_to/tmp/work/cortexa9hf-vfp-neon-el=
ina-linux-gnueabi/DM-CryptSetup/1.0-r0/hello.enc demomap
| Cannot initialize device-mapper. Is dm_mod kernel module loaded?
|
| Cannot initialize device-mapper. Is dm_mod kernel module loaded?
| + bb_exit_handler


Ideally , I was under impression that "fakeroot" shall have allowed to me a=
chieve the goal.



Thanks & Regads
Shrawan

From: Kumar, Shrawan
Sent: Tuesday, September 26, 2017 10:56 AM
To: 'yocto@yoctoproject.org' <yocto@yoctoproject.org>
Subject: rootfs encryption support

Hello Team ,

Is it possible to get encrypted rootfs during image build  ?

Currently , I am running "cryptsetup" (as sudo) manually   after the final =
image(rootfs.ext4) is produced  . The idea is to get this done within yocto=
 environment without sudo problem .


Thanks and Regards
Shrawan

--_000_e1e5dcc7a72a4e02bf809951ab67f555HIBDWSMB02adharmancom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
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
<pre><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:#1F497=
D"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:#1F497=
D">To add further information to the query , I am executing &nbsp;&#8220;cr=
yptsetup&#8221; &nbsp;from a recipe as below : (</span><i>Yocto 2.0.2)</i><=
o:p></o:p></pre>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">fakeroot do_install() =
{<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cryptsetup -=
-type=3Dplain open hello.enc demomap &lt; dm-crypt-key<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">}<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Additional debug log :=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&#43; do_install<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| &#43; cryptsetup --t=
ype=3Dplain open /path_to/tmp/work/cortexa9hf-vfp-neon-elina-linux-gnueabi/=
DM-CryptSetup/1.0-r0/hello.enc demomap<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| </span><b><span styl=
e=3D"color:red">Cannot initialize device-mapper. Is dm_mod kernel module lo=
aded?</span></b><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">|<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| </span><span style=
=3D"color:red">Cannot initialize device-mapper. Is dm_mod kernel module loa=
ded?</span><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| &#43; bb_exit_handle=
r<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ideally , I was under =
impression that &#8220;fakeroot&#8221; shall have allowed to me achieve the=
 goal.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks &amp; Regads<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Shrawan<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Kumar, Shrawan <br>
<b>Sent:</b> Tuesday, September 26, 2017 10:56 AM<br>
<b>To:</b> 'yocto@yoctoproject.org' &lt;yocto@yoctoproject.org&gt;<br>
<b>Subject:</b> rootfs encryption support <o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello Team ,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it possible to get encrypted rootfs during image =
build &nbsp;?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Currently , I am running &#8220;<b>cryptsetup</b>&#8=
221; (as sudo) <b>manually</b> &nbsp;&nbsp;after the final image(rootfs.ext=
4) is produced &nbsp;. The idea is to get this done within yocto environmen=
t without sudo problem .<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks and Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Shrawan<o:p></o:p></p>
</div>
</body>
</html>

--_000_e1e5dcc7a72a4e02bf809951ab67f555HIBDWSMB02adharmancom_--
