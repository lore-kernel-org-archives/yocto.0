Return-Path: <Jeremy.Overesch@millerwelds.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79D72E00C19; Tue,  1 Aug 2017 08:05:21 -0700 (PDT)
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
X-Greylist: delayed 782 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Aug 2017 08:05:18 PDT
Received: from mailcuda.itwwelds.com (mailcuda.itwwelds.com [206.197.156.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75917E00BE9
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 08:05:18 -0700 (PDT)
X-ASG-Debug-ID: 1501599136-0897951249196b220001-yzSStA
Received: from webmail.itwwelds.com (exch13mb01.itwwelds.com [10.52.121.20])
	by mailcuda.itwwelds.com with ESMTP id Z0GB0kUy3knaeu5a for
	<yocto@yoctoproject.org>; Tue, 01 Aug 2017 09:52:16 -0500 (CDT)
X-Barracuda-Envelope-From: Jeremy.Overesch@millerwelds.com
X-ASG-Whitelist: Client
Received: from EXCH13MB02.itwwelds.com (10.52.121.21) by
	EXCH13MB01.itwwelds.com (10.52.121.20) with Microsoft SMTP Server (TLS)
	id 15.0.1104.5; Tue, 1 Aug 2017 09:52:15 -0500
Received: from EXCH13MB02.itwwelds.com ([fe80::994c:a14b:1d78:3bd3]) by
	EXCH13MB02.itwwelds.com ([fe80::994c:a14b:1d78:3bd3%20]) with mapi id
	15.00.1104.000; Tue, 1 Aug 2017 09:52:15 -0500
From: Jeremy Overesch <Jeremy.Overesch@millerwelds.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Automount issues
X-ASG-Orig-Subj: Automount issues
Thread-Index: AdMK1G+f+hJ6F0sgRTia6TKEGawYWwAAUYYQ
Date: Tue, 1 Aug 2017 14:52:14 +0000
Message-ID: <34b07a510a8247efa8788bd8b5749977@EXCH13MB02.itwwelds.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.13.100.151]
MIME-Version: 1.0
X-Barracuda-Connect: exch13mb01.itwwelds.com[10.52.121.20]
X-Barracuda-Start-Time: 1501599136
X-Barracuda-URL: https://10.52.121.26:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 5896
X-Virus-Scanned: by bsmtpd at itwwelds.com
X-Barracuda-BRTS-Status: 1
Subject: Automount issues
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
X-List-Received-Date: Tue, 01 Aug 2017 15:05:21 -0000
X-Groupsio-MsgNum: 37251
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_009_34b07a510a8247efa8788bd8b5749977EXCH13MB02itwweldscom_"

--_009_34b07a510a8247efa8788bd8b5749977EXCH13MB02itwweldscom_
Content-Type: multipart/alternative;
	boundary="_000_34b07a510a8247efa8788bd8b5749977EXCH13MB02itwweldscom_"

--_000_34b07a510a8247efa8788bd8b5749977EXCH13MB02itwweldscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I've been trying to get automounting of USB devices working using the udev-=
extraconf recipe available in yocto.  It appears to work in the mount.sh sc=
ript, as I can read the contents of the drive.  However, when I try to do s=
o in a command shell, the folder is empty and the drive doesn't show as mou=
nted.  Also, even though it isn't mounted, if I remove the drive and connec=
t it to a windows PC or any other machine, it claims that the file system i=
s "dirty" and needs to be scanned.

In short, it is the *exact* same issue that's happening in this thread, but=
 there isn't a resolution: https://lists.yoctoproject.org/pipermail/yocto/2=
015-September/026563.html

I've attached the following files:
automount.rules - udev automounting rules
journalctl_output.txt - what the journalctl shows after an insertion
mount.sh - my modified mount.sh script with the printfs
mount.sh.log - output of the mount.sh script for an insertion and removal e=
vent
udevadm.test.txt - output from the test output of what would be run for an =
insertion event
udevadm_monitor.txt - live output of the monitor when inserting a usb stick=
.

Any help would be greatly appreciated!

________________________________

This message (including any attachments) is intended for the sole use of th=
e intended recipient/s and may contain material that is CONFIDENTIAL AND PR=
IVATE COMPANY INFORMATION. If you are not the intended recipient of this me=
ssage, you are hereby notified that you must delete the message without dis=
seminating, copying or taking any action in reliance upon it. If you have r=
eceived this message in error, please notify the sender via return e-mail. =
Thank you.

--_000_34b07a510a8247efa8788bd8b5749977EXCH13MB02itwweldscom_
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I've been trying to get automounting of USB devices =
working using the udev-extraconf recipe available in yocto.&nbsp; It appear=
s to work in the mount.sh script, as I can read the contents of the drive.&=
nbsp; However, when I try to do so in a command
 shell, the folder is empty and the drive doesn't show as mounted.&nbsp; Al=
so, even though it isn't mounted, if I remove the drive and connect it to a=
 windows PC or any other machine, it claims that the file system is &quot;d=
irty&quot; and needs to be scanned.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In short, it is the *exact* same issue that's happen=
ing in this thread, but there isn't a resolution:
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2015-September/02=
6563.html">
https://lists.yoctoproject.org/pipermail/yocto/2015-September/026563.html</=
a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I've attached the following files:<o:p></o:p></p>
<p class=3D"MsoNormal">automount.rules - udev automounting rules<o:p></o:p>=
</p>
<p class=3D"MsoNormal">journalctl_output.txt - what the journalctl shows af=
ter an insertion<o:p></o:p></p>
<p class=3D"MsoNormal">mount.sh - my modified mount.sh script with the prin=
tfs<o:p></o:p></p>
<p class=3D"MsoNormal">mount.sh.log - output of the mount.sh script for an =
insertion and removal event<o:p></o:p></p>
<p class=3D"MsoNormal">udevadm.test.txt - output from the test output of wh=
at would be run for an insertion event<o:p></o:p></p>
<p class=3D"MsoNormal">udevadm_monitor.txt - live output of the monitor whe=
n inserting a usb stick.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help would be greatly appreciated!<o:p></o:p></p=
>
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

--_000_34b07a510a8247efa8788bd8b5749977EXCH13MB02itwweldscom_--

--_009_34b07a510a8247efa8788bd8b5749977EXCH13MB02itwweldscom_
Content-Type: application/octet-stream; name="mount.sh"
Content-Description: mount.sh
Content-Disposition: attachment; filename="mount.sh"; size=3062;
	creation-date="Tue, 01 Aug 2017 14:21:11 GMT";
	modification-date="Tue, 01 Aug 2017 19:14:54 GMT"
Content-Transfer-Encoding: base64

IyEvYmluL3NoCiMKIyBDYWxsZWQgZnJvbSB1ZGV2CiMKIyBBdHRlbXB0IHRvIG1vdW50IGFueSBh
ZGRlZCBibG9jayBkZXZpY2VzIGFuZCB1bW91bnQgYW55IHJlbW92ZWQgZGV2aWNlcwoKZXhlYyA+
PiAvaG9tZS9yb290L21vdW50LnNoLmxvZyAyPiYxCgpwcmludGYgIlNvbWV0aGluZyBjYWxsZWQg
bWVcbiIKCk1PVU5UPSIvYmluL21vdW50IgpQTU9VTlQ9Ii91c3IvYmluL3Btb3VudCIKVU1PVU5U
PSIvYmluL3Vtb3VudCIKZm9yIGxpbmUgaW4gYGdyZXAgLWggLXYgXiMgL2V0Yy91ZGV2L21vdW50
LmJsYWNrbGlzdCAvZXRjL3VkZXYvbW91bnQuYmxhY2tsaXN0LmQvKmAKZG8KCWlmIFsgYCBleHBy
IG1hdGNoICIkREVWTkFNRSIgIiRsaW5lIiBgIC1ndCAwIF07Cgl0aGVuCgkJbG9nZ2VyICJ1ZGV2
L21vdW50LnNoIiAiWyRERVZOQU1FXSBpcyBibGFja2xpc3RlZCwgaWdub3JpbmciCgkJZXhpdCAw
CglmaQpkb25lCgphdXRvbW91bnQoKSB7CQoJcHJpbnRmICItLS0gQXV0b21vdW50aW5nXG4iCglu
YW1lPSJgYmFzZW5hbWUgIiRERVZOQU1FImAiCgoJISB0ZXN0IC1kICIvcnVuL21lZGlhLyRuYW1l
IiAmJiBta2RpciAtcCAiL3J1bi9tZWRpYS8kbmFtZSIKCSMgU2lsZW50IHV0aWwtbGludXgncyB2
ZXJzaW9uIG9mIG1vdW50aW5nIGF1dG8KCWlmIFsgInhgcmVhZGxpbmsgJE1PVU5UYCIgPSAieC9i
aW4vbW91bnQudXRpbC1saW51eCIgXSA7Cgl0aGVuCgkJTU9VTlQ9IiRNT1VOVCIKIyAtbyBzaWxl
bnQiCglmaQoJCgkjIElmIGZpbGVzeXN0ZW0gdHlwZSBpcyB2ZmF0LCBjaGFuZ2UgdGhlIG93bmVy
c2hpcCBncm91cCB0byAnZGlzaycsIGFuZAoJIyBncmFudCBpdCB3aXRoICB3L3IveCBwZXJtaXNz
aW9ucy4KCWNhc2UgJElEX0ZTX1RZUEUgaW4KCXZmYXR8ZmF0KQoJCU1PVU5UPSIkTU9VTlQgLXYg
IgojLW8gdW1hc2s9MDA3LGdpZD1gYXdrIC1GJzonICcvXmRpc2sve3ByaW50ICQzfScgL2V0Yy9n
cm91cGAiCgkJcHJpbnRmICItLS0gTW91bnRkYXRhOiAkTU9VTlRcbiIKCQk7OwoJIyBUT0RPCgkq
KQoJCTs7Cgllc2FjCgoJaWYgISAkTU9VTlQgLXQgYXV0byAkREVWTkFNRSAiL3J1bi9tZWRpYS8k
bmFtZSIgCgl0aGVuCgkJcHJpbnRmICItLS0gbW91bnQuc2gvYXV0b21vdW50ICRNT1VOVCAtdCBh
dXRvICRERVZOQU1FIFwiL3J1bi9tZWRpYS8kbmFtZVwiIGZhaWxlZCFcbiIKCQlwcmludGYgIi0t
LSBtb3VudGluZyBmYWlsZWRcbiIKCQkjbG9nZ2VyICJtb3VudC5zaC9hdXRvbW91bnQiICIkTU9V
TlQgLXQgYXV0byAkREVWTkFNRSBcIi9ydW4vbWVkaWEvJG5hbWVcIiBmYWlsZWQhIgoJCXJtX2Rp
ciAiL3J1bi9tZWRpYS8kbmFtZSIKCWVsc2UKCQlwcmludGYgIi0tLSBtb3VudGluZyBzaG91bGQg
aGF2ZSBzdWNjZWVkZWRcbiIKCQlsb2dnZXIgIm1vdW50LnNoL2F1dG9tb3VudCIgIkF1dG8tbW91
bnQgb2YgWy9ydW4vbWVkaWEvJG5hbWVdIHN1Y2Nlc3NmdWwiCgkJdG91Y2ggIi90bXAvLmF1dG9t
b3VudC0kbmFtZSIKCQlscyAvcnVuL21lZGlhLyRuYW1lCglmaQp9CgkKcm1fZGlyKCkgewoJIyBX
ZSBkbyBub3Qgd2FudCB0byBybSAtciBwb3B1bGF0ZWQgZGlyZWN0b3JpZXMKCWlmIHRlc3QgImBm
aW5kICIkMSIgfCB3YyAtbCB8IHRyIC1kICIgImAiIC1sdCAyIC1hIC1kICIkMSIKCXRoZW4KCQkh
IHRlc3QgLXogIiQxIiAmJiBybSAtciAiJDEiCgllbHNlCgkJbG9nZ2VyICJtb3VudC5zaC9hdXRv
bW91bnQiICJOb3QgcmVtb3Zpbmcgbm9uLWVtcHR5IGRpcmVjdG9yeSBbJDFdIgoJZmkKfQoKcHJp
bnRmICItLS0gRGV2bmFtZTogJERFVk5BTUVcbiIKCiMgTm8gSURfRlNfVFlQRSBmb3IgY2Ryb20g
ZGV2aWNlLCB5ZXQgaXQgc2hvdWxkIGJlIG1vdW50ZWQKbmFtZT0iYGJhc2VuYW1lICIkREVWTkFN
RSJgIgpbIC1lIC9zeXMvYmxvY2svJG5hbWUvZGV2aWNlL21lZGlhIF0gJiYgbWVkaWFfdHlwZT1g
Y2F0IC9zeXMvYmxvY2svJG5hbWUvZGV2aWNlL21lZGlhYAoKcHJpbnRmICItLS0gQmFzZW5hbWU6
ICRuYW1lXG4iCnByaW50ZiAiLS0tIE1lZGlhdHlwZTogJG1lZGlhX3R5cGVcbiIKCgppZiBbICIk
QUNUSU9OIiA9ICJhZGQiIF0gJiYgWyAtbiAiJERFVk5BTUUiIF0gJiYgWyAtbiAiJElEX0ZTX1RZ
UEUiIC1vICIkbWVkaWFfdHlwZSIgPSAiY2Ryb20iIF07IHRoZW4KCWlmIFsgLXggIiRQTU9VTlQi
IF07IHRoZW4KCQkkUE1PVU5UICRERVZOQU1FIDI+IC9kZXYvbnVsbAoJZWxpZiBbIC14ICRNT1VO
VCBdOyB0aGVuCiAgICAJCSRNT1VOVCAkREVWTkFNRSAyPiAvZGV2L251bGwKCWZpCgpwcmludGYg
Ii0tLSB0cnlpbmcgbW91bnRpbmciCgkKCSMgSWYgdGhlIGRldmljZSBpc24ndCBtb3VudGVkIGF0
IHRoaXMgcG9pbnQsIGl0IGlzbid0CgkjIGNvbmZpZ3VyZWQgaW4gZnN0YWIgKG5vdGUgdGhlIHJv
b3QgZmlsZXN5c3RlbSBjYW4gc2hvdyB1cCBhcwoJIyAvZGV2L3Jvb3QgaW4gL3Byb2MvbW91bnRz
LCBzbyBjaGVjayB0aGUgZGV2aWNlIG51bWJlciB0b28pCglpZiBleHByICRNQUpPUiAiKiIgMjU2
ICsgJE1JTk9SICE9IGBzdGF0IC1jICVkIC9gOyB0aGVuCgkJZ3JlcCAtcSAiXiRERVZOQU1FICIg
L3Byb2MvbW91bnRzIHx8IGF1dG9tb3VudAoJZmkKZmkKCnByaW50ZiAiLS0tIEdvdCB0byBiZWdp
bm5pbmcgb2YgJ3JlbW92ZSdcbiIKCmlmIFsgIiRBQ1RJT04iID0gInJlbW92ZSIgXSB8fCBbICIk
QUNUSU9OIiA9ICJjaGFuZ2UiIF0gJiYgWyAteCAiJFVNT1VOVCIgXSAmJiBbIC1uICIkREVWTkFN
RSIgXTsgdGhlbgoJcHJpbnRmICItLS0gdW5tb3VudGluZ1xuIgoJZm9yIG1udCBpbiBgY2F0IC9w
cm9jL21vdW50cyB8IGdyZXAgIiRERVZOQU1FIiB8IGN1dCAtZiAyIC1kICIgIiBgCglkbwoJCSRV
TU9VTlQgJG1udAoJZG9uZQoJCgkjIFJlbW92ZSBlbXB0eSBkaXJlY3RvcmllcyBmcm9tIGF1dG8t
bW91bnRlcgoJbmFtZT0iYGJhc2VuYW1lICIkREVWTkFNRSJgIgoJdGVzdCAtZSAiL3RtcC8uYXV0
b21vdW50LSRuYW1lIiAmJiBybV9kaXIgIi9ydW4vbWVkaWEvJG5hbWUiCmZpCgpwcmludGYgIi0t
LURpcmVjdG9yeSBMaXN0aW5nXG4iCmxzIC9ydW4vbWVkaWEvc2RhMQo=

--_009_34b07a510a8247efa8788bd8b5749977EXCH13MB02itwweldscom_
Content-Type: application/octet-stream; name="mount.sh.log"
Content-Description: mount.sh.log
Content-Disposition: attachment; filename="mount.sh.log"; size=1463;
	creation-date="Tue, 01 Aug 2017 14:21:11 GMT";
	modification-date="Tue, 01 Aug 2017 14:29:54 GMT"
Content-Transfer-Encoding: base64

KioqKioqKioqKiBXaGVuIG1hbnVhbGx5IGluc2VydGVkOiBCZWdpbm5pbmcgb2YgQWRkIHNjcmlw
dCBvdXRwdXQgKioqKioqKioqKioqKioKU29tZXRoaW5nIGNhbGxlZCBtZQotLS0gRGV2bmFtZTog
L2Rldi9zZGEKLS0tIEJhc2VuYW1lOiBzZGEKLS0tIE1lZGlhdHlwZTogCi0tLSBHb3QgdG8gYmVn
aW5uaW5nIG9mICdyZW1vdmUnCi0tLURpcmVjdG9yeSBMaXN0aW5nCmxzOiAvcnVuL21lZGlhL3Nk
YTE6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKClNvbWV0aGluZyBjYWxsZWQgbWUKLS0tIERl
dm5hbWU6IC9kZXYvc2RhMQotLS0gQmFzZW5hbWU6IHNkYTEKLS0tIE1lZGlhdHlwZTogCi0tLSB0
cnlpbmcgbW91bnRpbmcxCi0tLSBBdXRvbW91bnRpbmcKLS0tIE1vdW50ZGF0YTogL2Jpbi9tb3Vu
dCAtdiAKbW91bnQ6IC9kZXYvc2RhMSBtb3VudGVkIG9uIC9ydW4vbWVkaWEvc2RhMS4KLS0tIG1v
dW50aW5nIHNob3VsZCBoYXZlIHN1Y2NlZWRlZApFRkkKRl8xLkRBVApSRUFETUUuZGlza2RlZmlu
ZXMKU3lzdGVtIFZvbHVtZSBJbmZvcm1hdGlvbgpVbmktVVNCLUluc3RhbGxlci1Db3B5aW5nLnR4
dApVbmktVVNCLUluc3RhbGxlci1SZWFkbWUudHh0CmF1dG9ydW4uaW5mCmJvb3QKY2FzcGVyCmNh
c3Blci1ydwpkaXN0cwppbnN0YWxsCmlzb2xpbnV4CmxpY2Vuc2UudHh0Cm1kNXN1bS50eHQKcGlj
cwpwb29sCnByZXNlZWQKdXVpCnd1YmkuZXhlCi0tLSBHb3QgdG8gYmVnaW5uaW5nIG9mICdyZW1v
dmUnCi0tLURpcmVjdG9yeSBMaXN0aW5nCkVGSQpGXzEuREFUClJFQURNRS5kaXNrZGVmaW5lcwpT
eXN0ZW0gVm9sdW1lIEluZm9ybWF0aW9uClVuaS1VU0ItSW5zdGFsbGVyLUNvcHlpbmcudHh0ClVu
aS1VU0ItSW5zdGFsbGVyLVJlYWRtZS50eHQKYXV0b3J1bi5pbmYKYm9vdApjYXNwZXIKY2FzcGVy
LXJ3CmRpc3RzCmluc3RhbGwKaXNvbGludXgKbGljZW5zZS50eHQKbWQ1c3VtLnR4dApwaWNzCnBv
b2wKcHJlc2VlZAp1dWkKd3ViaS5leGUKCioqKioqKioqKiBXaGVuIG1hbnVhbGx5IHJlbW92ZWQ6
IEJlZ2lubmluZyBvZiByZW1vdmUgc2NyaXB0IG91dHB1dCAqKioqKioqKioqKioqKgpTb21ldGhp
bmcgY2FsbGVkIG1lCi0tLSBEZXZuYW1lOiAvZGV2L3NkYTEKLS0tIEJhc2VuYW1lOiBzZGExCi0t
LSBNZWRpYXR5cGU6IAotLS0gR290IHRvIGJlZ2lubmluZyBvZiAncmVtb3ZlJwotLS0gdW5tb3Vu
dGluZwotLS1EaXJlY3RvcnkgTGlzdGluZwpsczogL3J1bi9tZWRpYS9zZGExOiBObyBzdWNoIGZp
bGUgb3IgZGlyZWN0b3J5CgpTb21ldGhpbmcgY2FsbGVkIG1lCi0tLSBEZXZuYW1lOiAvZGV2L3Nk
YQotLS0gQmFzZW5hbWU6IHNkYQotLS0gTWVkaWF0eXBlOiAKLS0tIEdvdCB0byBiZWdpbm5pbmcg
b2YgJ3JlbW92ZScKLS0tIHVubW91bnRpbmcKLS0tRGlyZWN0b3J5IExpc3RpbmcKbHM6IC9ydW4v
bWVkaWEvc2RhMTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo=

--_009_34b07a510a8247efa8788bd8b5749977EXCH13MB02itwweldscom_
Content-Type: text/plain; name="udevadm.test.txt"
Content-Description: udevadm.test.txt
Content-Disposition: attachment; filename="udevadm.test.txt"; size=5884;
	creation-date="Tue, 01 Aug 2017 14:21:11 GMT";
	modification-date="Tue, 01 Aug 2017 14:31:25 GMT"
Content-Transfer-Encoding: base64

cm9vdCMgdWRldmFkbSB0ZXN0IC9zeXMvYmxvY2svc2RhL3NkYTEKY2FsbGluZzogdGVzdAp2ZXJz
aW9uIDIyOQpod2RiLmJpbiBkb2VzIG5vdCBleGlzdCwgcGxlYXNlIHJ1biB1ZGV2YWRtIGh3ZGIg
LS11cGRhdGUKTG9hZCBtb2R1bGUgaW5kZXgKdGltZXN0YW1wIG9mICcvZXRjL3N5c3RlbWQvbmV0
d29yaycgY2hhbmdlZAp0aW1lc3RhbXAgb2YgJy9saWIvc3lzdGVtZC9uZXR3b3JrJyBjaGFuZ2Vk
ClBhcnNlZCBjb25maWd1cmF0aW9uIGZpbGUgL2xpYi9zeXN0ZW1kL25ldHdvcmsvOTktZGVmYXVs
dC5saW5rCkNyZWF0ZWQgbGluayBjb25maWd1cmF0aW9uIGNvbnRleHQuCnRpbWVzdGFtcCBvZiAn
L2V0Yy91ZGV2L3J1bGVzLmQnIGNoYW5nZWQKUmVhZGluZyBydWxlcyBmaWxlOiAvbGliL3VkZXYv
cnVsZXMuZC81MC1maXJtd2FyZS5ydWxlcwpSZWFkaW5nIHJ1bGVzIGZpbGU6IC9saWIvdWRldi9y
dWxlcy5kLzUwLXVkZXYtZGVmYXVsdC5ydWxlcwpSZWFkaW5nIHJ1bGVzIGZpbGU6IC9saWIvdWRl
di9ydWxlcy5kLzYwLWJsb2NrLnJ1bGVzClJlYWRpbmcgcnVsZXMgZmlsZTogL2xpYi91ZGV2L3J1
bGVzLmQvNjAtY2Ryb21faWQucnVsZXMKUmVhZGluZyBydWxlcyBmaWxlOiAvbGliL3VkZXYvcnVs
ZXMuZC82MC1kcm0ucnVsZXMKUmVhZGluZyBydWxlcyBmaWxlOiAvbGliL3VkZXYvcnVsZXMuZC82
MC1ldmRldi5ydWxlcwpSZWFkaW5nIHJ1bGVzIGZpbGU6IC9saWIvdWRldi9ydWxlcy5kLzYwLXBl
cnNpc3RlbnQtYWxzYS5ydWxlcwpSZWFkaW5nIHJ1bGVzIGZpbGU6IC9saWIvdWRldi9ydWxlcy5k
LzYwLXBlcnNpc3RlbnQtaW5wdXQucnVsZXMKUmVhZGluZyBydWxlcyBmaWxlOiAvbGliL3VkZXYv
cnVsZXMuZC82MC1wZXJzaXN0ZW50LXN0b3JhZ2UtdGFwZS5ydWxlcwpSZWFkaW5nIHJ1bGVzIGZp
bGU6IC9saWIvdWRldi9ydWxlcy5kLzYwLXBlcnNpc3RlbnQtc3RvcmFnZS5ydWxlcwpSZWFkaW5n
IHJ1bGVzIGZpbGU6IC9saWIvdWRldi9ydWxlcy5kLzYwLXBlcnNpc3RlbnQtdjRsLnJ1bGVzClJl
YWRpbmcgcnVsZXMgZmlsZTogL2xpYi91ZGV2L3J1bGVzLmQvNjAtc2VyaWFsLnJ1bGVzClJlYWRp
bmcgcnVsZXMgZmlsZTogL2xpYi91ZGV2L3J1bGVzLmQvNjQtYnRyZnMucnVsZXMKUmVhZGluZyBy
dWxlcyBmaWxlOiAvbGliL3VkZXYvcnVsZXMuZC83MC1tb3VzZS5ydWxlcwpSZWFkaW5nIHJ1bGVz
IGZpbGU6IC9saWIvdWRldi9ydWxlcy5kLzcwLXBvd2VyLXN3aXRjaC5ydWxlcwpSZWFkaW5nIHJ1
bGVzIGZpbGU6IC9saWIvdWRldi9ydWxlcy5kLzcwLXVhY2Nlc3MucnVsZXMKUmVhZGluZyBydWxl
cyBmaWxlOiAvbGliL3VkZXYvcnVsZXMuZC83MS1zZWF0LnJ1bGVzClJlYWRpbmcgcnVsZXMgZmls
ZTogL2xpYi91ZGV2L3J1bGVzLmQvNzMtc2VhdC1sYXRlLnJ1bGVzClJVTntidWlsdGlufTogJ3Vh
Y2Nlc3MnIHVua25vd24gL2xpYi91ZGV2L3J1bGVzLmQvNzMtc2VhdC1sYXRlLnJ1bGVzOjE1ClJl
YWRpbmcgcnVsZXMgZmlsZTogL2xpYi91ZGV2L3J1bGVzLmQvNzUtbmV0LWRlc2NyaXB0aW9uLnJ1
bGVzClJlYWRpbmcgcnVsZXMgZmlsZTogL2xpYi91ZGV2L3J1bGVzLmQvNzUtcHJvYmVfbXRkLnJ1
bGVzClJlYWRpbmcgcnVsZXMgZmlsZTogL2xpYi91ZGV2L3J1bGVzLmQvNzgtc291bmQtY2FyZC5y
dWxlcwpSZWFkaW5nIHJ1bGVzIGZpbGU6IC9saWIvdWRldi9ydWxlcy5kLzgwLWRyaXZlcnMucnVs
ZXMKUmVhZGluZyBydWxlcyBmaWxlOiAvbGliL3VkZXYvcnVsZXMuZC84MC1uZXQtc2V0dXAtbGlu
ay5ydWxlcwpSZWFkaW5nIHJ1bGVzIGZpbGU6IC9saWIvdWRldi9ydWxlcy5kLzkwLXZjb25zb2xl
LnJ1bGVzClJlYWRpbmcgcnVsZXMgZmlsZTogL2xpYi91ZGV2L3J1bGVzLmQvOTktc3lzdGVtZC5y
dWxlcwpSZWFkaW5nIHJ1bGVzIGZpbGU6IC9ldGMvdWRldi9ydWxlcy5kL2F1dG9tb3VudC5ydWxl
cwpSZWFkaW5nIHJ1bGVzIGZpbGU6IC9ldGMvdWRldi9ydWxlcy5kL2F1dG9uZXQucnVsZXMKUmVh
ZGluZyBydWxlcyBmaWxlOiAvZXRjL3VkZXYvcnVsZXMuZC9sb2NhbGV4dHJhLnJ1bGVzClJlYWRp
bmcgcnVsZXMgZmlsZTogL2xpYi91ZGV2L3J1bGVzLmQvcmVzLXRvdWNoc2NyZWVuLnJ1bGVzClJl
YWRpbmcgcnVsZXMgZmlsZTogL2V0Yy91ZGV2L3J1bGVzLmQvdG91Y2hzY3JlZW4ucnVsZXMKcnVs
ZXMgY29udGFpbiAyNDU3NiBieXRlcyB0b2tlbnMgKDIwNDggKiAxMiBieXRlcyksIDEwMjI0IGJ5
dGVzIHN0cmluZ3MKMTMwMSBzdHJpbmdzICgxNTc0NCBieXRlcyksIDc1OCBkZS1kdXBsaWNhdGVk
ICg2MDY0IGJ5dGVzKSwgNTQ0IHRyaWUgbm9kZXMgdXNlZApHUk9VUCA2IC9saWIvdWRldi9ydWxl
cy5kLzUwLXVkZXYtZGVmYXVsdC5ydWxlczo1NQpMSU5LICdkaXNrL2J5LWlkL3VzYi1IUF92MTAw
d19VVGEyMTE0MjAwMDQ2NS0wOjAtcGFydDEnIC9saWIvdWRldi9ydWxlcy5kLzYwLXBlcnNpc3Rl
bnQtc3RvcmFnZS5ydWxlczozNwpMSU5LICdkaXNrL2J5LXBhdGgvcGxhdGZvcm0tbXVzYi1oZHJj
LjAuYXV0by11c2ItMDoxOjEuMC1zY3NpLTA6MDowOjAtcGFydDEnIC9saWIvdWRldi9ydWxlcy5k
LzYwLXBlcnNpc3RlbnQtc3RvcmFnZS5ydWxlczo1NgpJTVBPUlQgYnVpbHRpbiAnYmxraWQnIC9s
aWIvdWRldi9ydWxlcy5kLzYwLXBlcnNpc3RlbnQtc3RvcmFnZS5ydWxlczo2Ngpwcm9iZSAvZGV2
L3NkYTEgcmFpZCBvZmZzZXQ9MApMSU5LICdkaXNrL2J5LXV1aWQvMEYxQy0zODQyJyAvbGliL3Vk
ZXYvcnVsZXMuZC82MC1wZXJzaXN0ZW50LXN0b3JhZ2UucnVsZXM6NjkKTElOSyAnZGlzay9ieS1s
YWJlbC9VVUknIC9saWIvdWRldi9ydWxlcy5kLzYwLXBlcnNpc3RlbnQtc3RvcmFnZS5ydWxlczo3
MApSVU4gJy9ldGMvdWRldi9zY3JpcHRzL21vdW50LnNoJyAvZXRjL3VkZXYvcnVsZXMuZC9hdXRv
bW91bnQucnVsZXM6MTcKaGFuZGxpbmcgZGV2aWNlIG5vZGUgJy9kZXYvc2RhMScsIGRldm51bT1i
ODoxLCBtb2RlPTA2NjAsIHVpZD0wLCBnaWQ9NgpwcmVzZXJ2ZSBwZXJtaXNzaW9ucyAvZGV2L3Nk
YTEsIDA2MDY2MCwgdWlkPTAsIGdpZD02CnByZXNlcnZlIGFscmVhZHkgZXhpc3Rpbmcgc3ltbGlu
ayAnL2Rldi9ibG9jay84OjEnIHRvICcuLi9zZGExJwpmb3VuZCAnYjg6MScgY2xhaW1pbmcgJy9y
dW4vdWRldi9saW5rcy9ceDJmZGlza1x4MmZieS1pZFx4MmZ1c2ItSFBfdjEwMHdfVVRhMjExNDIw
MDA0NjUtMDowLXBhcnQxJwpjcmVhdGluZyBsaW5rICcvZGV2L2Rpc2svYnktaWQvdXNiLUhQX3Yx
MDB3X1VUYTIxMTQyMDAwNDY1LTA6MC1wYXJ0MScgdG8gJy9kZXYvc2RhMScKcHJlc2VydmUgYWxy
ZWFkeSBleGlzdGluZyBzeW1saW5rICcvZGV2L2Rpc2svYnktaWQvdXNiLUhQX3YxMDB3X1VUYTIx
MTQyMDAwNDY1LTA6MC1wYXJ0MScgdG8gJy4uLy4uL3NkYTEnCmZvdW5kICdiODoxJyBjbGFpbWlu
ZyAnL3J1bi91ZGV2L2xpbmtzL1x4MmZkaXNrXHgyZmJ5LWxhYmVsXHgyZlVVSScKY3JlYXRpbmcg
bGluayAnL2Rldi9kaXNrL2J5LWxhYmVsL1VVSScgdG8gJy9kZXYvc2RhMScKcHJlc2VydmUgYWxy
ZWFkeSBleGlzdGluZyBzeW1saW5rICcvZGV2L2Rpc2svYnktbGFiZWwvVVVJJyB0byAnLi4vLi4v
c2RhMScKZm91bmQgJ2I4OjEnIGNsYWltaW5nICcvcnVuL3VkZXYvbGlua3MvXHgyZmRpc2tceDJm
YnktcGF0aFx4MmZwbGF0Zm9ybS1tdXNiLWhkcmMuMC5hdXRvLXVzYi0wOjE6MS4wLXNjc2ktMDow
OjA6MC1wYXJ0MScKY3JlYXRpbmcgbGluayAnL2Rldi9kaXNrL2J5LXBhdGgvcGxhdGZvcm0tbXVz
Yi1oZHJjLjAuYXV0by11c2ItMDoxOjEuMC1zY3NpLTA6MDowOjAtcGFydDEnIHRvICcvZGV2L3Nk
YTEnCnByZXNlcnZlIGFscmVhZHkgZXhpc3Rpbmcgc3ltbGluayAnL2Rldi9kaXNrL2J5LXBhdGgv
cGxhdGZvcm0tbXVzYi1oZHJjLjAuYXV0by11c2ItMDoxOjEuMC1zY3NpLTA6MDowOjAtcGFydDEn
IHRvICcuLi8uLi9zZGExJwpmb3VuZCAnYjg6MScgY2xhaW1pbmcgJy9ydW4vdWRldi9saW5rcy9c
eDJmZGlza1x4MmZieS11dWlkXHgyZjBGMUMtMzg0MicKY3JlYXRpbmcgbGluayAnL2Rldi9kaXNr
L2J5LXV1aWQvMEYxQy0zODQyJyB0byAnL2Rldi9zZGExJwpwcmVzZXJ2ZSBhbHJlYWR5IGV4aXN0
aW5nIHN5bWxpbmsgJy9kZXYvZGlzay9ieS11dWlkLzBGMUMtMzg0MicgdG8gJy4uLy4uL3NkYTEn
CmNyZWF0ZWQgZGIgZmlsZSAnL3J1bi91ZGV2L2RhdGEvYjg6MScgZm9yICcvZGV2aWNlcy9wbGF0
Zm9ybS9vY3AvNDc0MDAwMDAudXNiLzQ3NDAxNDAwLnVzYi9tdXNiLWhkcmMuMC5hdXRvL3VzYjEv
MS0xLzEtMToxLjAvaG9zdDEvdGFyZ2V0MTowOjAvMTowOjA6MC9ibG9jay9zZGEvc2RhMScKVW5s
b2FkIG1vZHVsZSBpbmRleApVbmxvYWRlZCBsaW5rIGNvbmZpZ3VyYXRpb24gY29udGV4dC4KVGhp
cyBwcm9ncmFtIGlzIGZvciBkZWJ1Z2dpbmcgb25seSwgaXQgZG9lcyBub3QgcnVuIGFueSBwcm9n
cmFtCnNwZWNpZmllZCBieSBhIFJVTiBrZXkuIEl0IG1heSBzaG93IGluY29ycmVjdCByZXN1bHRz
LCBiZWNhdXNlCnNvbWUgdmFsdWVzIG1heSBiZSBkaWZmZXJlbnQsIG9yIG5vdCBhdmFpbGFibGUg
YXQgYSBzaW11bGF0aW9uIHJ1bi4KCkFDVElPTj1hZGQKREVWTElOS1M9L2Rldi9kaXNrL2J5LXBh
dGgvcGxhdGZvcm0tbXVzYi1oZHJjLjAuYXV0by11c2ItMDoxOjEuMC1zY3NpLTA6MDowOjAtcGFy
dDEgL2Rldi9kaXNrL2J5LXV1aWQvMEYxQy0zODQyIC9kZXYvZGlzay9ieS1pZC91c2ItSFBfdjEw
MHdfVVRhMjExNDIwMDA0NjUtMDowLXBhcnQxIC9kZXYvZGlzay9ieS1sYWJlbC9VVUkKREVWTkFN
RT0vZGV2L3NkYTEKREVWUEFUSD0vZGV2aWNlcy9wbGF0Zm9ybS9vY3AvNDc0MDAwMDAudXNiLzQ3
NDAxNDAwLnVzYi9tdXNiLWhkcmMuMC5hdXRvL3VzYjEvMS0xLzEtMToxLjAvaG9zdDEvdGFyZ2V0
MTowOjAvMTowOjA6MC9ibG9jay9zZGEvc2RhMQpERVZUWVBFPXBhcnRpdGlvbgpJRF9CVVM9dXNi
CklEX0ZTX0xBQkVMPVVVSQpJRF9GU19MQUJFTF9FTkM9VVVJCklEX0ZTX1RZUEU9dmZhdApJRF9G
U19VU0FHRT1maWxlc3lzdGVtCklEX0ZTX1VVSUQ9MEYxQy0zODQyCklEX0ZTX1VVSURfRU5DPTBG
MUMtMzg0MgpJRF9GU19WRVJTSU9OPUZBVDMyCklEX0lOU1RBTkNFPTA6MApJRF9NT0RFTD12MTAw
dwpJRF9NT0RFTF9FTkM9djEwMHdceDIwXHgyMFx4MjBceDIwXHgyMFx4MjBceDIwXHgyMFx4MjBc
eDIwXHgyMApJRF9NT0RFTF9JRD0zMjA3CklEX1BBUlRfRU5UUllfRElTSz04OjAKSURfUEFSVF9F
TlRSWV9GTEFHUz0weDgwCklEX1BBUlRfRU5UUllfTlVNQkVSPTEKSURfUEFSVF9FTlRSWV9PRkZT
RVQ9MTI4CklEX1BBUlRfRU5UUllfU0NIRU1FPWRvcwpJRF9QQVJUX0VOVFJZX1NJWkU9Nzg5MTg0
MApJRF9QQVJUX0VOVFJZX1RZUEU9MHhjCklEX1BBUlRfVEFCTEVfVFlQRT1kb3MKSURfUEFUSD1w
bGF0Zm9ybS1tdXNiLWhkcmMuMC5hdXRvLXVzYi0wOjE6MS4wLXNjc2ktMDowOjA6MApJRF9QQVRI
X1RBRz1wbGF0Zm9ybS1tdXNiLWhkcmNfMF9hdXRvLXVzYi0wXzFfMV8wLXNjc2ktMF8wXzBfMApJ
RF9SRVZJU0lPTj0wLjAwCklEX1NFUklBTD1IUF92MTAwd19VVGEyMTE0MjAwMDQ2NS0wOjAKSURf
U0VSSUFMX1NIT1JUPVVUYTIxMTQyMDAwNDY1CklEX1RZUEU9ZGlzawpJRF9VU0JfRFJJVkVSPXVz
Yi1zdG9yYWdlCklEX1VTQl9JTlRFUkZBQ0VTPTowODA2NTA6CklEX1VTQl9JTlRFUkZBQ0VfTlVN
PTAwCklEX1ZFTkRPUj1IUApJRF9WRU5ET1JfRU5DPUhQXHgyMFx4MjBceDIwXHgyMFx4MjBceDIw
CklEX1ZFTkRPUl9JRD0wM2YwCk1BSk9SPTgKTUlOT1I9MQpTVUJTWVNURU09YmxvY2sKVEFHUz06
c3lzdGVtZDoKVVNFQ19JTklUSUFMSVpFRD01NTU4MzExNjEKcnVuOiAnL2V0Yy91ZGV2L3Njcmlw
dHMvbW91bnQuc2gnCg==

--_009_34b07a510a8247efa8788bd8b5749977EXCH13MB02itwweldscom_
Content-Type: text/plain; name="udevadm_monitor.txt"
Content-Description: udevadm_monitor.txt
Content-Disposition: attachment; filename="udevadm_monitor.txt"; size=4113;
	creation-date="Tue, 01 Aug 2017 14:36:06 GMT";
	modification-date="Tue, 01 Aug 2017 14:45:16 GMT"
Content-Transfer-Encoding: base64

cm9vdEB0ZXN0Ym94On4jIHVkZXZhZG0gbW9uaXRvcg0KbW9uaXRvciB3aWxsIHByaW50IHRoZSBy
ZWNlaXZlZCBldmVudHMgZm9yOg0KVURFViAtIHRoZSBldmVudCB3aGljaCB1ZGV2IHNlbmRzIG91
dCBhZnRlciBydWxlIHByb2Nlc3NpbmcNCktFUk5FTCAtIHRoZSBrZXJuZWwgdWV2ZW50DQoNClsg
Mjk5MC44NTk3NTZdIHVzYiAyLTE6IG5ldyBoaWdoLXNwZWVkIFVTQiBkZXZpY2UgbnVtYmVyIDMg
dXNpbmcgbXVzYi1oZHJjDQpbIDI5OTEuMDAwOTc3XSB1c2IgMi0xOiBOZXcgVVNCIGRldmljZSBm
b3VuZCwgaWRWZW5kb3I9MDNmMCwgaWRQcm9kdWN0PTMyMDcNClsgMjk5MS4wMDgxMzJdIHVzYiAy
LTE6IE5ldyBVU0IgZGV2aWNlIHN0cmluZ3M6IE1mcj0xLCBQcm9kdWN0PTIsIFNlcmlhbE51bWJl
cj0zDQpbIDI5OTEuMDE1NzU0XSB1c2IgMi0xOiBQcm9kdWN0OiB2MTAwdw0KWyAyOTkxLjAxOTQ0
OF0gdXNiIDItMTogTWFudWZhY3R1cmVyOiBIUA0KWyAyOTkxLjAyMzM3MF0gdXNiIDItMTogU2Vy
aWFsTnVtYmVyOiBVVGEyMTE0MjAwMDQ2NQ0KS0VSTkVMWzI5OTAuOTY0OTA4XSBhZGQgICAgICAv
ZGV2aWNlcy9wbGF0Zm9ybS9vY3AvNDc0MDAwMDAudXNiLzQ3NDAxYzAwLnVzYi9tdXNiLWhkcmMu
MS5hdXRvL3VzYjIvMi0xICh1c2IpDQpLRVJORUxbMjk5MC45NzIyWyAyOTkxLjA0MjU2OV0gdXNi
LXN0b3JhZ2UgMi0xOjEuMDogVVNCIE1hc3MgU3RvcmFnZSBkZXZpY2UgZGV0ZWN0ZWQNCjI4XSBh
ZGQgICAgICAvZGV2aWNlcy9wbGF0Zm9ybS9vY3AvNDc0MDAwMDAudXNiLzQ3NDAxYzAwLnVzYi9t
dXNiLWhkcmMuMS5hdXRvL3VzYjIvMi0xLzItMToxLjAgKHVzYikNClsgMjk5MS4wNzcwMTBdIHNj
c2kgaG9zdDI6IHVzYi1zdG9yYWdlIDItMToxLjANCktFUk5FTFsyOTkxLjAxMjc3Ml0gYWRkICAg
ICAgL2RldmljZXMvcGxhdGZvcm0vb2NwLzQ3NDAwMDAwLnVzYi80NzQwMWMwMC51c2IvbXVzYi1o
ZHJjLjEuYXV0by91c2IyLzItMS8yLTE6MS4wL2hvc3QyIChzY3NpKQ0KS0VSTkVMWzI5OTEuMDE1
MDk0XSBhZGQgICAgICAvZGV2aWNlcy9wbGF0Zm9ybS9vY3AvNDc0MDAwMDAudXNiLzQ3NDAxYzAw
LnVzYi9tdXNiLWhkcmMuMS5hdXRvL3VzYjIvMi0xLzItMToxLjAvaG9zdDIvc2NzaV9ob3N0L2hv
c3QyIChzY3NpX2hvc3QpDQpVREVWICBbMjk5MS4wMzM3MTldIGFkZCAgICAgIC9kZXZpY2VzL3Bs
YXRmb3JtL29jcC80NzQwMDAwMC51c2IvNDc0MDFjMDAudXNiL211c2ItaGRyYy4xLmF1dG8vdXNi
Mi8yLTEgKHVzYikNClVERVYgIFsyOTkxLjA0MjcyMl0gYWRkICAgICAgL2RldmljZXMvcGxhdGZv
cm0vb2NwLzQ3NDAwMDAwLnVzYi80NzQwMWMwMC51c2IvbXVzYi1oZHJjLjEuYXV0by91c2IyLzIt
MS8yLTE6MS4wICh1c2IpDQpVREVWICBbMjk5MS4wNDg0MzFdIGFkZCAgICAgIC9kZXZpY2VzL3Bs
YXRmb3JtL29jcC80NzQwMDAwMC51c2IvNDc0MDFjMDAudXNiL211c2ItaGRyYy4xLmF1dG8vdXNi
Mi8yLTEvMi0xOjEuMC9ob3N0MiAoc2NzaSkNClVERVYgIFsyOTkxLjA1MzI0M10gYWRkICAgICAg
L2RldmljZXMvcGxhdGZvcm0vb2NwLzQ3NDAwMDAwLnVzYi80NzQwMWMwMC51c2IvbXVzYi1oZHJj
LjEuYXV0by91c2IyLzItMS8yLTE6MS4wL2hvc3QyL3Njc2lfaG9zdC9ob3N0MiAoc2NzaV9ob3N0
KQ0KWyAyOTkyLjA4MTUxNl0gc2NzaSAyOjA6MDowOiBEaXJlY3QtQWNjZXNzICAgICBIUCAgICAg
ICB2MTAwdyAgICAgICAgICAgIDAuMDAgUFE6IDAgQU5TSTogMg0KS0VSTkVMWzI5OTIuMDIyMjU4
XSBhZGQgICAgICAvZGV2aWNlcy9wbGF0Zm9ybS9vY3AvNDc0MDAwMDAudXNiLzQ3NDAxYzAwLnVz
Yi9tdXNiLWhkcmMuMS5hdXRvL3VzYjIvMi0xLzItMToxLjAvaG9zdDIvdGFyZ2V0MjowOjAgKHNj
c2kpDQpLRVJORUxbMjk5Mi4wMjcxNjldIGFkZCAgICAgIC9kZXZpY2VzL3BsYXRmb3JtL29jcC80
NzQwWyAyOTkyLjEwNTI2Nl0gc2QgMjowOjA6MDogW3NkYV0gNzg5MjA0MCA1MTItYnl0ZSBsb2dp
Y2FsIGJsb2NrczogKDQuMDQgR0IvMy43NiBHaUIpDQowMDAwLnVzYi80NzQwMWMwMC51c2IvbXVz
Yi1oZHJjLjEuYXV0by91c2IyLzItMS8yLTE6MS4wL2hvc3QyL3RhcmdldDI6MDowLzI6MDowOjAg
KHNjc2kpDQpLRVJORUxbMjk5Mi4wMjk5NTBdIGFkZCAgICAgIC9kZXZpY2VzL3BsYXRmb3JtL29j
cC80NzQwMDAwMC51c2IvNDc0MDFjMDAudXNiL211c2ItaGRyYy4xLmF1dG8vdXNiMi8yLTEvMi0x
OjEuMC9ob3N0Mi90YXJnZXQyOjA6MC8yOjA6MDowL3Njc2lfZGlzay8yOjA6MDowIChzY3NpX2Rp
c2spWyAyOTkyLjEzNTU3Ml0gc2QgMjowOjA6MDogW3NkYV0gV3JpdGUgUHJvdGVjdCBpcyBvZmYN
Cg0KS0VSTkVMWzI5OTIuMDQ3ODQxXSBhZGQgICAgICAvZGV2aWNlcy9wbGF0Zm9ybS9vY3AvNDc0
MDAwMDAudXNiLzQ3NDAxYzAwLnVzYi9tdXNiLWhkcmMuMS5hdXRvL3VzYjIvMi0xLzItMToxLjAv
aG9zdDIvdGFyZ2V0MjowOjAvMjowOjA6MC9zY3NpX2RldmljZS8yOjA6MDowIChzY3NpX2Rldmlj
ZSkNClVERVYgIFsyOTkyLjA2MzExMF0gYWRkICAgICAgL2RldmljZXMvcGxhdGZvcm0vb2NwLzQ3
NDAwMDAwLnVzYi80NzQwMWMwMC51c2IvbXVzYi1oZHJjLjEuYXV0by91c2IyLzItMS8yLTE6MS4w
L2hvc1sgMjk5Mi4xNjU1MTFdIHNkIDI6MDowOjA6IFtzZGFdIEFza2luZyBmb3IgY2FjaGUgZGF0
YSBmYWlsZWQNCnQyL3RhcmdldDI6MDowIChzY3NpKQ0KVURFViAgWzI5OTIuMDc5ODg3XSBhZGQg
IFsgMjk5Mi4xNzUyNDhdIHNkIDI6MDowOjA6IFtzZGFdIEFzc3VtaW5nIGRyaXZlIGNhY2hlOiB3
cml0ZSB0aHJvdWdoDQogICAgL2RldmljZXMvcGxhdGZvcm0vb2NwLzQ3NDAwMDAwLnVzYi80NzQw
MWMwMC51c2IvbXVzYi1oZHJjLjEuYXV0by91c2IyLzItMS8yLTE6MS4wL2hvc3QyL3RhcmdldDI6
MDowLzI6MDowOjAgKHNjc2kpDQpVREVWICBbMjk5Mi4wOTQ3MDldIGFkZCAgICAgIC9kZXZpY2Vz
L3BsYXRmb3JtL29jcC80NzQwMDAwMC51c2IvNDc0MDFjMDAudXNiL211c2ItaGRyYy4xLmF1dG8v
dXNiMi8yLTEvMi0xOjEuMC9ob3N0Mi90YXJnZXQyOjA6MC8yOjA6MDowL3Njc2lfZGlzay8yOjA6
MDowIChzY3NpX2Rpc2spDQpVREVWICBbMjk5Mi4xMjI5NjNdIGFkZCAgICAgIC9kZXZpY2VzL3Bs
YXRmb3JtL29jcC80NzQwMDAwMC51c2IvNDc0MDFjMDAudXNiL211c2ItaGRyYy4xLmF1dG8vdXNi
Mi8yLTEvMi0xOjEuMC9ob3N0Mi90YXJnZXQyOjA6MC8yOjA6MDowL3Njc2lfZGV2aWNlLzI6MDow
OjAgKHNjc2lfZGV2aWNlKQ0KS0VSTkVMWzI5OTIuMTI4MDE0XSBhZGQgICAgICAvZGV2aWNlcy92
aXJ0dWFsL2JkaS84OjAgKGJkaSkNClVERVYgIFsyOTkyLjEzNjgzN10gYWRkICAgICAgL2Rldmlj
ZXMvdmlydHVhbC9iZGkvODowIChiZGkpDQpbIDI5OTIuMzQzODc4XSAgc2RhOiBzZGExDQpLRVJO
RUxbMjk5Mi4yNzc5MjhdIGFkZCAgICAgIC9kZXZpY2VzL3BsYXRmb3JtL29jcC80NzQwMDAwMC51
c2IvNDc0MDFjMDAudXNiL211c2ItaGRyYy4xLmF1dG8vdXNiMi8yLTEvMi0xOjEuMC9ob3N0Mi90
YXJnZXQyOjA6MFsgMjk5Mi4zNTUzMzBdIHNkIDI6MDowOjA6IFtzZGFdIEF0dGFjaGVkIFNDU0kg
cmVtb3ZhYmxlIGRpc2sNCi8yOjA6MDowL2Jsb2NrL3NkYSAoYmxvY2spDQpLRVJORUxbMjk5Mi4y
ODE1NjJdIGFkZCAgICAgIC9kZXZpY2VzL3BsYXRmb3JtL29jcC80NzQwMDAwMC51c2IvNDc0MDFj
MDAudXNiL211c2ItaGRyYy4xLmF1dG8vdXNiMi8yLTEvMi0xOjEuMC9ob3N0Mi90YXJnZXQyOjA6
MC8yOjA6MDowL2Jsb2NrL3NkYS9zZGExIChibG9jaykNClVERVYgIFsyOTkzLjA0Mjg5NF0gYWRk
ICAgICAgL2RldmljZXMvcGxhdGZvcm0vb2NwLzQ3NDAwMDAwLnVzYi80NzQwMWMwMC51c2IvbXVz
Yi1oZHJjLjEuYXV0by91c2IyLzItMS8yLTE6MS4wL2hvc3QyL3RhcmdldDI6MDowLzI6MDowOjAv
YmxvY2svc2RhIChibG9jaykNClVERVYgIFsyOTkzLjQxODE0NV0gYWRkICAgICAgL2RldmljZXMv
cGxhdGZvcm0vb2NwLzQ3NDAwMDAwLnVzYi80NzQwMWMwMC51c2IvbXVzYi1oZHJjLjEuYXV0by91
c2IyLzItMS8yLTE6MS4wL2hvc3QyL3RhcmdldDI6MDowLzI6MDowOjAvYmxvY2svc2RhL3NkYTEg
KGJsb2NrKQ0K

--_009_34b07a510a8247efa8788bd8b5749977EXCH13MB02itwweldscom_
Content-Type: application/octet-stream; name="automount.rules"
Content-Description: automount.rules
Content-Disposition: attachment; filename="automount.rules"; size=848;
	creation-date="Tue, 01 Aug 2017 14:21:11 GMT";
	modification-date="Tue, 01 Aug 2017 19:15:22 GMT"
Content-Transfer-Encoding: base64

IyBUaGVyZSBhcmUgYSBudW1iZXIgb2YgbW9kaWZpZXJzIHRoYXQgYXJlIGFsbG93ZWQgdG8gYmUg
dXNlZCBpbiBzb21lCiMgb2YgdGhlIGRpZmZlcmVudCBmaWVsZHMuIFRoZXkgcHJvdmlkZSB0aGUg
Zm9sbG93aW5nIHN1YnNpdHV0aW9uczoKIwojICVuIHRoZSAia2VybmVsIG51bWJlciIgb2YgdGhl
IGRldmljZS4KIyAgICBGb3IgZXhhbXBsZSwgJ3NkYTMnIGhhcyBhICJrZXJuZWwgbnVtYmVyIiBv
ZiAnMycKIyAlZSB0aGUgc21hbGxlc3QgbnVtYmVyIGZvciB0aGF0IG5hbWUgd2hpY2ggZG9lcyBu
b3QgbWF0Y2hlcyBhbiBleGlzdGluZyBub2RlCiMgJWsgdGhlIGtlcm5lbCBuYW1lIGZvciB0aGUg
ZGV2aWNlCiMgJU0gdGhlIGtlcm5lbCBtYWpvciBudW1iZXIgZm9yIHRoZSBkZXZpY2UKIyAlbSB0
aGUga2VybmVsIG1pbm9yIG51bWJlciBmb3IgdGhlIGRldmljZQojICViIHRoZSBidXMgaWQgZm9y
IHRoZSBkZXZpY2UKIyAlYyB0aGUgc3RyaW5nIHJldHVybmVkIGJ5IHRoZSBQUk9HUkFNCiMgJXN7
ZmlsZW5hbWV9IHRoZSBjb250ZW50IG9mIGEgc3lzZnMgYXR0cmlidXRlCiMgJSUgdGhlICclJyBj
aGFyIGl0c2VsZgojCgojIE1lZGlhIGF1dG9tb3VudGluZwpTVUJTWVNURU09PSJibG9jayIsIEFD
VElPTj09ImFkZCIgICAgUlVOKz0iL2V0Yy91ZGV2L3NjcmlwdHMvbW91bnQuc2giClNVQlNZU1RF
TT09ImJsb2NrIiwgQUNUSU9OPT0icmVtb3ZlIiBSVU4rPSIvZXRjL3VkZXYvc2NyaXB0cy9tb3Vu
dC5zaCIKI1NVQlNZU1RFTT09ImJsb2NrIiwgQUNUSU9OPT0iY2hhbmdlIiwgRU5We0RJU0tfTUVE
SUFfQ0hBTkdFfT09IjEiIFJVTis9Ii9ldGMvdWRldi9zY3JpcHRzL21vdW50LnNoIgo=

--_009_34b07a510a8247efa8788bd8b5749977EXCH13MB02itwweldscom_
Content-Type: text/plain; name="journalctl_output.txt"
Content-Description: journalctl_output.txt
Content-Disposition: attachment; filename="journalctl_output.txt"; size=1671;
	creation-date="Tue, 01 Aug 2017 14:12:24 GMT";
	modification-date="Tue, 01 Aug 2017 14:45:15 GMT"
Content-Transfer-Encoding: base64

QXVnIDAxIDEzOjQ1OjUzIHRlc3Rib3gga2VybmVsOiB1c2IgMi0xOiBuZXcgaGlnaC1zcGVlZCBV
U0IgZGV2aWNlIG51bWJlciAyIHVzaW5nIG11c2ItaGRyYw0KQXVnIDAxIDEzOjQ1OjUzIHRlc3Ri
b3gga2VybmVsOiB1c2IgMi0xOiBOZXcgVVNCIGRldmljZSBmb3VuZCwgaWRWZW5kb3I9MDNmMCwg
aWRQcm9kdWN0PTMyMDcNCkF1ZyAwMSAxMzo0NTo1MyB0ZXN0Ym94IGtlcm5lbDogdXNiIDItMTog
TmV3IFVTQiBkZXZpY2Ugc3RyaW5nczogTWZyPTEsIFByb2R1Y3Q9MiwgU2VyaWFsTnVtYmVyPTMN
CkF1ZyAwMSAxMzo0NTo1MyB0ZXN0Ym94IGtlcm5lbDogdXNiIDItMTogUHJvZHVjdDogdjEwMHcN
CkF1ZyAwMSAxMzo0NTo1MyB0ZXN0Ym94IGtlcm5lbDogdXNiIDItMTogTWFudWZhY3R1cmVyOiBI
UA0KQXVnIDAxIDEzOjQ1OjUzIHRlc3Rib3gga2VybmVsOiB1c2IgMi0xOiBTZXJpYWxOdW1iZXI6
IFVUYTIxMTQyMDAwNDY1DQpBdWcgMDEgMTM6NDU6NTMgdGVzdGJveCBrZXJuZWw6IHVzYi1zdG9y
YWdlIDItMToxLjA6IFVTQiBNYXNzIFN0b3JhZ2UgZGV2aWNlIGRldGVjdGVkDQpBdWcgMDEgMTM6
NDU6NTMgdGVzdGJveCBrZXJuZWw6IHNjc2kgaG9zdDA6IHVzYi1zdG9yYWdlIDItMToxLjANCkF1
ZyAwMSAxMzo0NTo1NCB0ZXN0Ym94IGtlcm5lbDogW1swOzE7Mzltc2NzaSAwOjA6MDowOiBEaXJl
Y3QtQWNjZXNzICAgICBIUCAgICAgICB2MTAwdyAgICAgICAgICAgIDAuMDAgUFE6IDAgQU5TSTog
MltbMG0NCkF1ZyAwMSAxMzo0NTo1NCB0ZXN0Ym94IGtlcm5lbDogW1swOzE7Mzltc2QgMDowOjA6
MDogW3NkYV0gNzg5MjA0MCA1MTItYnl0ZSBsb2dpY2FsIGJsb2NrczogKDQuMDQgR0IvMy43NiBH
aUIpW1swbQ0KQXVnIDAxIDEzOjQ1OjU0IHRlc3Rib3gga2VybmVsOiBbWzA7MTszOW1zZCAwOjA6
MDowOiBbc2RhXSBXcml0ZSBQcm90ZWN0IGlzIG9mZltbMG0NCkF1ZyAwMSAxMzo0NTo1NCB0ZXN0
Ym94IGtlcm5lbDogc2QgMDowOjA6MDogW3NkYV0gTW9kZSBTZW5zZTogMDAgMDAgMDAgMDANCkF1
ZyAwMSAxMzo0NTo1NCB0ZXN0Ym94IGtlcm5lbDogW1swOzE7MzFtc2QgMDowOjA6MDogW3NkYV0g
QXNraW5nIGZvciBjYWNoZSBkYXRhIGZhaWxlZFtbMG0NCkF1ZyAwMSAxMzo0NTo1NCB0ZXN0Ym94
IGtlcm5lbDogW1swOzE7MzFtc2QgMDowOjA6MDogW3NkYV0gQXNzdW1pbmcgZHJpdmUgY2FjaGU6
IHdyaXRlIHRocm91Z2hbWzBtDQpBdWcgMDEgMTM6NDU6NTQgdGVzdGJveCBrZXJuZWw6ICBzZGE6
IHNkYTENCkF1ZyAwMSAxMzo0NTo1NCB0ZXN0Ym94IGtlcm5lbDogW1swOzE7Mzltc2QgMDowOjA6
MDogW3NkYV0gQXR0YWNoZWQgU0NTSSByZW1vdmFibGUgZGlza1tbMG0NCkF1ZyAwMSAxMzo0NTo1
NSB0ZXN0Ym94IGtlcm5lbDogW1swOzE7MzltcmFuZG9tOiBub25ibG9ja2luZyBwb29sIGlzIGlu
aXRpYWxpemVkW1swbQ0KQXVnIDAxIDEzOjQ1OjU1IHRlc3Rib3ggc3lzdGVtZC11ZGV2ZFs0Mjld
OiBbWzA7MTszOW1Qcm9jZXNzICcvZXRjL3VkZXYvc2NyaXB0cy9tb3VudC5zaCcgZmFpbGVkIHdp
dGggZXhpdCBjb2RlIDEuW1swbQ0KQXVnIDAxIDEzOjQ1OjU1IHRlc3Rib3ggcm9vdFs0NTVdOiBb
WzA7MTszOW1tb3VudC5zaC9hdXRvbW91bnQgQXV0by1tb3VudCBvZiBbL3J1bi9tZWRpYS9zZGEx
XSBzdWNjZXNzZnVsW1swbQ0K

--_009_34b07a510a8247efa8788bd8b5749977EXCH13MB02itwweldscom_--
