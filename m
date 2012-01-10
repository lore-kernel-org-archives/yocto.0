Return-Path: <prvs=5356144a37=NAVANI.Srivastava@lnties.com>
Received: from mailout2.ltindia.com (mailout2.ltindia.com [125.18.18.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 375E6E006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 04:57:35 -0800 (PST)
X-AuditID: c0a8466b-b7bceae000000581-ab-4f0c35bc2599
Received: from POCITMSEXHUB01.LntUniverse.com ( [10.2.1.58])
	by mailout2.ltindia.com (Symantec Mail Security) with SMTP id
	66.2F.01409.CB53C0F4; Tue, 10 Jan 2012 18:27:32 +0530 (IST)
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB01.LntUniverse.com ([::1]) with mapi id 14.01.0355.002;
	Tue, 10 Jan 2012 18:27:30 +0530
From: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Unable to set system clock
Thread-Index: AczPl0CddSO4qWujRuO/CTvVYCF6oQ==
Date: Tue, 10 Jan 2012 12:57:31 +0000
Message-ID: <9BACABF0C6B14A4D8C33B42A795119BE096D9962@POCITMSEXMB03.LntUniverse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.37.159]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgleLIzCtJLcpLzFFi42LhYmK00t1jyuNv8P8Sn8Wkl2vYHBg92k/0
	sQUwRnHbJCWWlAVnpufp2yVwZ9yfdZSxYJpxxY3n89gaGKfpdjFyckgImEhsOXKTDcIWk7hw
	bz2QzcUhJLCDUWLesZ3MEM5WRonT75qYQKrYBGwkHp9fxwJiiwiYSrw49gWsW1hAWeLCvCXM
	EHENiY2r1jBB2HoSG78/B6tnEVCV+PP2CCOIzSsQInHhzTSwekagzd9PQdQzC4hL3Hoynwni
	IgGJJXvOM0PYohIvH/9j7WLkALKVJB6v5IQoz5eY2jkBaqSgxMmZT1gmMArNQjJpFpKyWUjK
	IOI6Egt2f2KDsLUlli18zQxjnznwmAlZfAEj+ypGkdzEzJz80hIjvZySzLyUzES95PzcTYzA
	mDiwwi17B+PHPSqHGAU4GJV4eBW1uf2FWBPLiitzDzFKcjApifIeNuDxF+JLyk+pzEgszogv
	Ks1JLT7EKMHBrCTC+0AXKMebklhZlVqUD5OS4eBQkuDlAcavkGBRanpqRVpmDjDyYdJMHJwg
	ggtkBg/QjM8mIDOKCxJzizPTIYpOMUpKifNyg0wQAElklObBDXjFKA50qTDvF5A2HmCygut6
	BTSQCWigqCg3yMCSRISUVAPjsZobTJtSP4iF3dvCLOx9ZR/jbdN/LbcvVz9dlv84f8/zwheT
	UlQ+fvj+YbeFzrVYprefmyvd7/88K3rm7KTT6QYXyh7IxfjdE5t5PVuU64zDpW0t/cWRtju/
	HaxQS4pSmJ8l/+gq088Nce5R834USWbFnPNn0O54Xy7SJXNGbPrfO2s4J39tUmIpzkg01GIu
	Kk4EAB6waJUTAwAA
Subject: Unable to set system clock
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Jan 2012 12:57:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9BACABF0C6B14A4D8C33B42A795119BE096D9962POCITMSEXMB03Ln_"

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D9962POCITMSEXMB03Ln_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am getting problem in changing system clock of my board.
On rebooting the board after changing time, I can see the new time in kerne=
l boot messages like
"pmic_rtc pmic_rtc.1: setting system clock to 2012-01-10 18:22:15 UTC (1326=
219735) "

but again it used to reconfigure system clock. Kindly see the boot messages=
 which comes after above mentioned message-
Configuring network interfaces... done.
Tue Jan 10 10:28:00 UTC 2012
INIT: Entering runlevel: 5
Starting syslogd/klogd: done

So now on giving "date" command at prompt I am getting the same time which =
was there before
root@mx35pdk:~# date
Tue Jan 10 10:29:17 UTC 2012

What I am unable to understand is why this problem is coming with time only=
. Date is getting changed successfully.

I am pretty sure from hardware point of view because Ltib rootfs is working=
 fine with this board.
Any replies would be appreciable.

Thanks & Regards,
Navani Kamal Srivastava



Larsen & Toubro Limited

www.larsentoubro.com

This Email may contain confidential or privileged information for the inten=
ded recipient (s) If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D9962POCITMSEXMB03Ln_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style>
<!--
@font-face
	{font-family:Calibri}
@font-face
	{font-family:Tahoma}
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif"}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline}
span.EmailStyle17
	{font-family:"Tahoma","sans-serif";
	color:windowtext}
.MsoChpDefault
	{font-family:"Calibri","sans-serif"}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.WordSection1
	{}
-->
</style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Hi,</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">I am getting problem in changing system =
clock of my board.
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">On rebooting the board after changing ti=
me, I can see the new time in kernel boot messages like
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&#8220;pmic_rtc pmic_rtc.1: setting syst=
em clock to 2012-01-10 18:22:15 UTC (1326219735) &#8220;
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">but again it used to reconfigure system =
clock. Kindly see the boot messages which comes after above mentioned messa=
ge-</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Configuring network interfaces... done.<=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Tue Jan 10 10:28:00 UTC 2012</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">INIT: Entering runlevel: 5</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Starting syslogd/klogd: done</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">So now on giving &#8220;date&#8221; comm=
and at prompt I am getting the same time which was there before</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">root@mx35pdk:~# date</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Tue Jan 10 10:29:17 UTC 2012</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">What I am unable to understand is why th=
is problem is coming with time only. Date is getting changed successfully.
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">I am pretty sure from hardware point of =
view because Ltib rootfs is working fine with this board.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Any replies would be appreciable.</span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal">Thanks &amp; Regards,</p>
<p class=3D"MsoNormal">Navani Kamal Srivastava</p>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
<br>
<br>
<b>Larsen &amp; Toubro Limited <br>
<br>
www.larsentoubro.com <br>
<br>
</b>This Email may contain confidential or privileged information for the i=
ntended recipient (s) If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.
</body>
</html>

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D9962POCITMSEXMB03Ln_--
