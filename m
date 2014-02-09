Return-Path: <brad@evidence.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B175EE00524
	for <yocto@yoctoproject.org>; Sat,  8 Feb 2014 17:44:29 -0800 (PST)
X-ASG-Debug-ID: 1391910268-0499bf72de6c640001-yzSStA
Received: from LOKI.atmoss ([10.10.20.113]) by email.taser.com with ESMTP id
	v5yXIrRCjJXG6dw5 for <yocto@yoctoproject.org>;
	Sat, 08 Feb 2014 18:44:28 -0700 (MST)
X-Barracuda-Envelope-From: brad@evidence.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
Received: from TI-ODIN.tasernet.com (172.16.1.112) by email.taser.com
	(10.10.20.113) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Sat, 8 Feb 2014 18:44:28 -0700
Received: from TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789]) by
	TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8%20]) with mapi id
	14.02.0347.000; Sat, 8 Feb 2014 18:44:27 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
From: Brad Litterell <brad@evidence.com>
X-Barracuda-BWL-IP: fe80::7c49:ae21:6650:2789
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to exclude QT Debug libraries from image
X-ASG-Orig-Subj: How to exclude QT Debug libraries from image
Thread-Index: Ac8lOHc1vO44PVyFSDi5o5IIrZQSKA==
Date: Sun, 9 Feb 2014 01:44:26 +0000
Message-ID: <E51394554A503C4E852F9BEE46B03E8D019CE809@TI-THOR.tasernet.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[10.10.20.113]
X-Barracuda-Start-Time: 1391910268
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.144953
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: How to exclude QT Debug libraries from image
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
X-List-Received-Date: Sun, 09 Feb 2014 01:44:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E51394554A503C4E852F9BEE46B03E8D019CE809TITHORtasernetc_"

--_000_E51394554A503C4E852F9BEE46B03E8D019CE809TITHORtasernetc_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have a package "bar" that uses qt4-embedded (inherit qt4e).  When I inclu=
de the dbg package for my stuff (bar-dbg) in the image, I also get several =
hundred MB of QT related debug files that I'm not interested in.  All I wan=
t to do is run GDB on my code, I don't care to debug into the QT code.

That makes sense as Yocto figures out the dependency chain for all the pack=
ages in the image, but I'm wondering if there is a way to defeat it since i=
t will reduce the size of my image considerably (over 10x) and save me a lo=
t of time during the build.

In essence, I want something like DEPENDS -=3D "<list of packages I want to=
 exclude>".

Is there a way to do this?

Thanks,
Brad


--_000_E51394554A503C4E852F9BEE46B03E8D019CE809TITHORtasernetc_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle"></style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">I have a package &quot;bar&quot; that uses qt4-embedded (inherit qt4=
e). &nbsp;When I include the dbg package for my stuff (bar-dbg) in the imag=
e, I also get several hundred MB of QT related debug
 files that I'm not interested in. &nbsp;All I want to do is run GDB on my =
code, I don't care to debug into the QT code.
<div>
<div><br>
</div>
<div>That makes sense as Yocto figures out the dependency chain for all the=
 packages in the image, but I'm wondering if there is a way to defeat it si=
nce it will reduce the size of my image considerably (over 10x) and save me=
 a lot of time during the build.</div>
<div><br>
</div>
<div>In essence, I want something like DEPENDS -=3D &quot;&lt;list of packa=
ges I want to exclude&gt;&quot;.</div>
<div><br>
</div>
<div>Is there a way to do this?</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Brad</div>
<div><br>
</div>
</div>
</div>
</body>
</html>

--_000_E51394554A503C4E852F9BEE46B03E8D019CE809TITHORtasernetc_--
