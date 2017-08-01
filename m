Return-Path: <Jeremy.Overesch@millerwelds.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72066E00BE9; Tue,  1 Aug 2017 11:12:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [206.197.156.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mailcuda.itwwelds.com (mailcuda.itwwelds.com [206.197.156.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55DA1E00944
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 11:12:17 -0700 (PDT)
X-ASG-Debug-ID: 1501611136-089795124c198c240001-yzSStA
Received: from webmail.itwwelds.com (exch13mb02.itwwelds.com [10.52.121.21])
	by mailcuda.itwwelds.com with ESMTP id qE4vOgv46XIhiCEH for
	<yocto@yoctoproject.org>; Tue, 01 Aug 2017 13:12:16 -0500 (CDT)
X-Barracuda-Envelope-From: Jeremy.Overesch@millerwelds.com
X-ASG-Whitelist: Client
Received: from EXCH13MB02.itwwelds.com (10.52.121.21) by
	EXCH13MB02.itwwelds.com (10.52.121.21) with Microsoft SMTP Server (TLS)
	id 15.0.1104.5; Tue, 1 Aug 2017 13:12:16 -0500
Received: from EXCH13MB02.itwwelds.com ([fe80::994c:a14b:1d78:3bd3]) by
	EXCH13MB02.itwwelds.com ([fe80::994c:a14b:1d78:3bd3%20]) with mapi id
	15.00.1104.000; Tue, 1 Aug 2017 13:12:16 -0500
From: Jeremy Overesch <Jeremy.Overesch@millerwelds.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Automount issues
X-ASG-Orig-Subj: RE: [yocto] Automount issues
Thread-Index: AQHTCvD5z7RMMwOmc0SCJHSPzDstrKJvzGHw
Date: Tue, 1 Aug 2017 18:12:16 +0000
Message-ID: <dbed27b3bf454c6f957b75922895d3bd@EXCH13MB02.itwwelds.com>
References: <e2ca440119ec455b93e1317cc0e90823@EXCH13MB02.itwwelds.com>
	<3e249149-3d1e-d159-678f-79f8e62a543b@embexus.com>
In-Reply-To: <3e249149-3d1e-d159-678f-79f8e62a543b@embexus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.13.100.151]
MIME-Version: 1.0
X-Barracuda-Connect: exch13mb02.itwwelds.com[10.52.121.21]
X-Barracuda-Start-Time: 1501611136
X-Barracuda-URL: https://10.52.121.26:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 15782
X-Virus-Scanned: by bsmtpd at itwwelds.com
X-Barracuda-BRTS-Status: 1
Subject: Re: Automount issues
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
X-List-Received-Date: Tue, 01 Aug 2017 18:12:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_dbed27b3bf454c6f957b75922895d3bdEXCH13MB02itwweldscom_"

--_000_dbed27b3bf454c6f957b75922895d3bdEXCH13MB02itwweldscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thank you!  Just by you mentioning system, I searched for systemd-udev conf=
licts and found yet another thread with this same issue:
https://lists.yoctoproject.org/pipermail/yocto/2014-December/022745.html

Sounds like this should be mentioned somewhere in the udev-extraconf script=
s, so people don't waste days trying to figure this out.

Thanks again!

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ayoub Zaki
Sent: Tuesday, August 01, 2017 12:58 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] Automount issues


Yes ! I had this problem a while ago, I fixed the problem by changing in sy=
stemd-udev service the mountFlags to shared instead of slave:
here is a link to the mailing list discussion :

https://lists.yoctoproject.org/pipermail/yocto/2015-March/023879.html



--



Ayoub Zaki



ayoub.zaki at embexus.com<https://lists.yoctoproject.org/listinfo/yocto>

Mobile: +49(0)176-62901545

Skype: ayoub.zaki_2

https://embexus.com<https://embexus.com/>


On 01.08.2017 19:44, Jeremy Overesch wrote:

Yes, I am using systemd.  Is there a known issue with it that I should be a=
ware of?





Hi,



are you using systemd ?





On 01.08.2017 16:52, Jeremy Overesch wrote:

>

> I've been trying to get automounting of USB devices working using the

> udev-extraconf recipe available in yocto.  It appears to work in the

> mount.sh script, as I can read the contents of the drive.  However,

> when I try to do so in a command shell, the folder is empty and the

> drive doesn't show as mounted.  Also, even though it isn't mounted, if

> I remove the drive and connect it to a windows PC or any other

> machine, it claims that the file system is "dirty" and needs to be

> scanned.

>

> In short, it is the *exact* same issue that's happening in this

> thread, but there isn't a resolution:

> https://lists.yoctoproject.org/pipermail/yocto/2015-September/026563.html

>

> I've attached the following files:

>

> automount.rules - udev automounting rules

>

> journalctl_output.txt - what the journalctl shows after an insertion

>

> mount.sh - my modified mount.sh script with the printfs

>

> mount.sh.log - output of the mount.sh script for an insertion and

> removal event

>

> udevadm.test.txt - output from the test output of what would be run

> for an insertion event

>

> udevadm_monitor.txt - live output of the monitor when inserting a usb

> stick.

>

> Any help would be greatly appreciated!

>

>

> ------------------------------------------------------------------------

>

> This message (including any attachments) is intended for the sole use

> of the intended recipient/s and may contain material that is

> CONFIDENTIAL AND PRIVATE COMPANY INFORMATION. If you are not the

> intended recipient of this message, you are hereby notified that you

> must delete the message without disseminating, copying or taking any

> action in reliance upon it. If you have received this message in

> error, please notify the sender via return e-mail. Thank you.

>

>


________________________________

This message (including any attachments) is intended for the sole use of th=
e intended recipient/s and may contain material that is CONFIDENTIAL AND PR=
IVATE COMPANY INFORMATION. If you are not the intended recipient of this me=
ssage, you are hereby notified that you must delete the message without dis=
seminating, copying or taking any action in reliance upon it. If you have r=
eceived this message in error, please notify the sender via return e-mail. =
Thank you.





--



Ayoub Zaki



ayoub.zaki@embexus.com<mailto:ayoub.zaki@embexus.com>

Mobile: +49(0)176-62901545

Skype: ayoub.zaki_2

https://embexus.com

________________________________

This message (including any attachments) is intended for the sole use of th=
e intended recipient/s and may contain material that is CONFIDENTIAL AND PR=
IVATE COMPANY INFORMATION. If you are not the intended recipient of this me=
ssage, you are hereby notified that you must delete the message without dis=
seminating, copying or taking any action in reliance upon it. If you have r=
eceived this message in error, please notify the sender via return e-mail. =
Thank you.

--_000_dbed27b3bf454c6f957b75922895d3bdEXCH13MB02itwweldscom_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
	font-family:"Calibri",sans-serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Thank you!&nbsp; Ju=
st by you mentioning system, I searched for systemd-udev conflicts and foun=
d yet another thread with this same issue:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><a href=3D"https://=
lists.yoctoproject.org/pipermail/yocto/2014-December/022745.html">https://l=
ists.yoctoproject.org/pipermail/yocto/2014-December/022745.html</a><o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Sounds like this sh=
ould be mentioned somewhere in the udev-extraconf scripts, so people don&#8=
217;t waste days trying to figure this out.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Thanks again!<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext">From:</span></b>=
<span style=3D"color:windowtext"> yocto-bounces@yoctoproject.org [mailto:yo=
cto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Ayoub Zaki<br>
<b>Sent:</b> Tuesday, August 01, 2017 12:58 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Automount issues<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>Yes ! I had this problem a while ago, I fixed the problem by changing in=
 systemd-udev service the mountFlags to shared instead of slave:<span style=
=3D"font-size:12.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">here is a link to the=
 mailing list discussion :<br>
<br>
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2015-March/023879=
.html">https://lists.yoctoproject.org/pipermail/yocto/2015-March/023879.htm=
l</a><o:p></o:p></p>
<pre>&nbsp;<o:p></o:p></pre>
<pre>-- <o:p></o:p></pre>
<pre>&nbsp;<o:p></o:p></pre>
<pre>Ayoub Zaki<o:p></o:p></pre>
<pre>&nbsp;<o:p></o:p></pre>
<pre><a href=3D"https://lists.yoctoproject.org/listinfo/yocto">ayoub.zaki a=
t embexus.com</a><o:p></o:p></pre>
<pre>Mobile: &#43;49(0)176-62901545<o:p></o:p></pre>
<pre>Skype: ayoub.zaki_2<o:p></o:p></pre>
<pre><a href=3D"https://embexus.com/">https://embexus.com</a><o:p></o:p></p=
re>
<pre><o:p>&nbsp;</o:p></pre>
<div>
<p class=3D"MsoNormal">On 01.08.2017 19:44, Jeremy Overesch wrote:<o:p></o:=
p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<pre>Yes, I am using systemd.&nbsp; Is there a known issue with it that I s=
hould be aware of?<o:p></o:p></pre>
<div style=3D"border:none;border-bottom:solid windowtext 1.0pt;padding:0in =
0in 1.0pt 0in">
<pre>&nbsp;<o:p></o:p></pre>
</div>
<pre>&nbsp;<o:p></o:p></pre>
<pre>Hi,<o:p></o:p></pre>
<pre>&nbsp;<o:p></o:p></pre>
<pre>are you using systemd ?<o:p></o:p></pre>
<pre>&nbsp;<o:p></o:p></pre>
<pre>&nbsp;<o:p></o:p></pre>
<pre>On 01.08.2017 16:52, Jeremy Overesch wrote:<o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i> I've been trying to get automounting of USB devices working us=
ing the </i><o:p></o:p></pre>
<pre>&gt;<i> udev-extraconf recipe available in yocto.&nbsp; It appears to =
work in the </i><o:p></o:p></pre>
<pre>&gt;<i> mount.sh script, as I can read the contents of the drive.&nbsp=
; However, </i><o:p></o:p></pre>
<pre>&gt;<i> when I try to do so in a command shell, the folder is empty an=
d the </i><o:p></o:p></pre>
<pre>&gt;<i> drive doesn't show as mounted.&nbsp; Also, even though it isn'=
t mounted, if </i><o:p></o:p></pre>
<pre>&gt;<i> I remove the drive and connect it to a windows PC or any other=
 </i><o:p></o:p></pre>
<pre>&gt;<i> machine, it claims that the file system is &quot;dirty&quot; a=
nd needs to be </i><o:p></o:p></pre>
<pre>&gt;<i> scanned.</i><o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i> In short, it is the *exact* same issue that's happening in thi=
s </i><o:p></o:p></pre>
<pre>&gt;<i> thread, but there isn't a resolution: </i><o:p></o:p></pre>
<pre>&gt;<i> <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2015=
-September/026563.html">https://lists.yoctoproject.org/pipermail/yocto/2015=
-September/026563.html</a></i><o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i> I've attached the following files:</i><o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i> automount.rules - udev automounting rules</i><o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i> journalctl_output.txt - what the journalctl shows after an ins=
ertion</i><o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i> mount.sh - my modified mount.sh script with the printfs</i><o:=
p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i> mount.sh.log - output of the mount.sh script for an insertion =
and </i><o:p></o:p></pre>
<pre>&gt;<i> removal event</i><o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i> udevadm.test.txt - output from the test output of what would b=
e run </i><o:p></o:p></pre>
<pre>&gt;<i> for an insertion event</i><o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i> udevadm_monitor.txt - live output of the monitor when insertin=
g a usb </i><o:p></o:p></pre>
<pre>&gt;<i> stick.</i><o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i> Any help would be greatly appreciated!</i><o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i> --------------------------------------------------------------=
----------</i><o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i> This message (including any attachments) is intended for the s=
ole use </i><o:p></o:p></pre>
<pre>&gt;<i> of the intended recipient/s and may contain material that is <=
/i><o:p></o:p></pre>
<pre>&gt;<i> CONFIDENTIAL AND PRIVATE COMPANY INFORMATION. If you are not t=
he </i><o:p></o:p></pre>
<pre>&gt;<i> intended recipient of this message, you are hereby notified th=
at you </i><o:p></o:p></pre>
<pre>&gt;<i> must delete the message without disseminating, copying or taki=
ng any </i><o:p></o:p></pre>
<pre>&gt;<i> action in reliance upon it. If you have received this message =
in </i><o:p></o:p></pre>
<pre>&gt;<i> error, please notify the sender via return e-mail. Thank you.<=
/i><o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<pre>&gt;<i>&nbsp;</i><o:p></o:p></pre>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:gray"><br>
This message (including any attachments) is intended for the sole use of th=
e intended recipient/s and may contain material that is CONFIDENTIAL AND PR=
IVATE COMPANY INFORMATION. If you are not the intended recipient of this me=
ssage, you are hereby notified that
 you must delete the message without disseminating, copying or taking any a=
ction in reliance upon it. If you have received this message in error, plea=
se notify the sender via return e-mail. Thank you.<br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&qu=
ot;,serif"><br>
<br>
<o:p></o:p></span></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif"><br>
<br>
<o:p></o:p></span></p>
<pre>-- <o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Ayoub Zaki<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre><a href=3D"mailto:ayoub.zaki@embexus.com">ayoub.zaki@embexus.com</a><o=
:p></o:p></pre>
<pre>Mobile: &#43;49(0)176-62901545<o:p></o:p></pre>
<pre>Skype: ayoub.zaki_2<o:p></o:p></pre>
<pre><a href=3D"https://embexus.com">https://embexus.com</a><o:p></o:p></pr=
e>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
This message (including any attachments) is intended for the sole use of th=
e intended recipient/s and may contain material that is CONFIDENTIAL AND PR=
IVATE COMPANY INFORMATION. If you are not the intended recipient of this me=
ssage, you are hereby notified that
 you must delete the message without disseminating, copying or taking any a=
ction in reliance upon it. If you have received this message in error, plea=
se notify the sender via return e-mail. Thank you.<br>
</font>
</body>
</html>

--_000_dbed27b3bf454c6f957b75922895d3bdEXCH13MB02itwweldscom_--
