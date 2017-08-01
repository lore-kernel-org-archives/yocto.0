Return-Path: <Jeremy.Overesch@millerwelds.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F96AE00BF3; Tue,  1 Aug 2017 10:44:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50243E00944
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 10:44:44 -0700 (PDT)
X-ASG-Debug-ID: 1501609484-089795124b1988230001-yzSStA
Received: from webmail.itwwelds.com (exch13mb01.itwwelds.com [10.52.121.20])
	by mailcuda.itwwelds.com with ESMTP id IzZKvUv1oEH5bjza for
	<yocto@yoctoproject.org>; Tue, 01 Aug 2017 12:44:44 -0500 (CDT)
X-Barracuda-Envelope-From: Jeremy.Overesch@millerwelds.com
X-ASG-Whitelist: Client
Received: from EXCH13MB02.itwwelds.com (10.52.121.21) by
	EXCH13MB01.itwwelds.com (10.52.121.20) with Microsoft SMTP Server (TLS)
	id 15.0.1104.5; Tue, 1 Aug 2017 12:44:43 -0500
Received: from EXCH13MB02.itwwelds.com ([fe80::994c:a14b:1d78:3bd3]) by
	EXCH13MB02.itwwelds.com ([fe80::994c:a14b:1d78:3bd3%20]) with mapi id
	15.00.1104.000; Tue, 1 Aug 2017 12:44:43 -0500
From: Jeremy Overesch <Jeremy.Overesch@millerwelds.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Re: [yocto] Automount issues
X-ASG-Orig-Subj: Re: [yocto] Automount issues
Thread-Index: AdMK7SxKZoMVBvaOQ5u/Rp3LQ8nB6g==
Date: Tue, 1 Aug 2017 17:44:42 +0000
Message-ID: <e2ca440119ec455b93e1317cc0e90823@EXCH13MB02.itwwelds.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.13.100.151]
MIME-Version: 1.0
X-Barracuda-Connect: exch13mb01.itwwelds.com[10.52.121.20]
X-Barracuda-Start-Time: 1501609484
X-Barracuda-URL: https://10.52.121.26:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 11871
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
X-List-Received-Date: Tue, 01 Aug 2017 17:44:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_e2ca440119ec455b93e1317cc0e90823EXCH13MB02itwweldscom_"

--_000_e2ca440119ec455b93e1317cc0e90823EXCH13MB02itwweldscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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



--



Ayoub Zaki



ayoub.zaki at embexus.com<https://lists.yoctoproject.org/listinfo/yocto>

Mobile: +49(0)176-62901545

Skype: ayoub.zaki_2

https://embexus.com<https://embexus.com/>


________________________________

This message (including any attachments) is intended for the sole use of th=
e intended recipient/s and may contain material that is CONFIDENTIAL AND PR=
IVATE COMPANY INFORMATION. If you are not the intended recipient of this me=
ssage, you are hereby notified that you must delete the message without dis=
seminating, copying or taking any action in reliance upon it. If you have r=
eceived this message in error, please notify the sender via return e-mail. =
Thank you.

--_000_e2ca440119ec455b93e1317cc0e90823EXCH13MB02itwweldscom_
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<pre><span style=3D"color:black">Yes, I am using systemd.&nbsp; Is there a =
known issue with it that I should be aware of?<o:p></o:p></span></pre>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0in 0in 1.0pt 0in">
<pre style=3D"border:none;padding:0in"><span style=3D"color:black"><o:p>&nb=
sp;</o:p></span></pre>
</div>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">Hi,<o:p></o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">are you using systemd ?<o:p></o:p></span><=
/pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">On 01.08.2017 16:52, Jeremy Overesch wrote=
:<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> I've been trying to get automounti=
ng of USB devices working using the <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> udev-extraconf recipe available in=
 yocto.&nbsp; It appears to work in the <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> mount.sh script, as I can read the=
 contents of the drive.&nbsp; However, <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> when I try to do so in a command s=
hell, the folder is empty and the <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> drive doesn't show as mounted.&nbs=
p; Also, even though it isn't mounted, if <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> I remove the drive and connect it =
to a windows PC or any other <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> machine, it claims that the file s=
ystem is &quot;dirty&quot; and needs to be <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> scanned.<o:p></o:p></i></span></pr=
e>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> In short, it is the *exact* same i=
ssue that's happening in this <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> thread, but there isn't a resoluti=
on: <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> <a href=3D"https://lists.yoctoproj=
ect.org/pipermail/yocto/2015-September/026563.html">https://lists.yoctoproj=
ect.org/pipermail/yocto/2015-September/026563.html</a><o:p></o:p></i></span=
></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> I've attached the following files:=
<o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> automount.rules - udev automountin=
g rules<o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> journalctl_output.txt - what the j=
ournalctl shows after an insertion<o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> mount.sh - my modified mount.sh sc=
ript with the printfs<o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> mount.sh.log - output of the mount=
.sh script for an insertion and <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> removal event<o:p></o:p></i></span=
></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> udevadm.test.txt - output from the=
 test output of what would be run <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> for an insertion event<o:p></o:p><=
/i></span></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> udevadm_monitor.txt - live output =
of the monitor when inserting a usb <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> stick.<o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> Any help would be greatly apprecia=
ted!<o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> ----------------------------------=
--------------------------------------<o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> This message (including any attach=
ments) is intended for the sole use <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> of the intended recipient/s and ma=
y contain material that is <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> CONFIDENTIAL AND PRIVATE COMPANY I=
NFORMATION. If you are not the <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> intended recipient of this message=
, you are hereby notified that you <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> must delete the message without di=
sseminating, copying or taking any <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> action in reliance upon it. If you=
 have received this message in <o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i> error, please notify the sender vi=
a return e-mail. Thank you.<o:p></o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black">&gt;<i><o:p>&nbsp;</o:p></i></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">-- <o:p></o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">Ayoub Zaki<o:p></o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black"><a href=3D"https://lists.yoctoproject.org/=
listinfo/yocto">ayoub.zaki at embexus.com</a><o:p></o:p></span></pre>
<pre><span style=3D"color:black">Mobile: &#43;49(0)176-62901545<o:p></o:p><=
/span></pre>
<pre><span style=3D"color:black">Skype: ayoub.zaki_2<o:p></o:p></span></pre=
>
<pre><span style=3D"color:black"><a href=3D"https://embexus.com/">https://e=
mbexus.com</a><o:p></o:p></span></pre>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_e2ca440119ec455b93e1317cc0e90823EXCH13MB02itwweldscom_--
