Return-Path: <brad@evidence.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75307E0164A
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 15:00:18 -0700 (PDT)
X-ASG-Debug-ID: 1380232817-0499bf1062fa290001-yzSStA
Received: from LOKI.atmoss (loki.atmoss [10.10.20.113]) by email.taser.com
	with ESMTP id CupkaO4PI7SMILFz for <yocto@yoctoproject.org>;
	Thu, 26 Sep 2013 15:00:17 -0700 (MST)
X-Barracuda-Envelope-From: brad@evidence.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.113) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Thu, 26 Sep 2013 15:00:17 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Thu, 26 Sep 2013 15:00:16 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
From: Brad Litterell <brad@evidence.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Question about automatic debug package generation
X-ASG-Orig-Subj: Question about automatic debug package generation
Thread-Index: Ac67A3OFfBSdv+wqSjCVNAI9XJXyqQ==
Date: Thu, 26 Sep 2013 22:00:15 +0000
Message-ID: <E51394554A503C4E852F9BEE46B03E8DF039C2@TI-ODIN.tasernet.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: loki.atmoss[10.10.20.113]
X-Barracuda-Start-Time: 1380232817
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.140955
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: Question about automatic debug package generation
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
X-List-Received-Date: Thu, 26 Sep 2013 22:00:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E51394554A503C4E852F9BEE46B03E8DF039C2TIODINtasernetcom_"

--_000_E51394554A503C4E852F9BEE46B03E8DF039C2TIODINtasernetcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

My recipe builds and ships an executable in /foo/bin/fooapp

FILES_${PN} +=3D "/foo/bin/*"

WARNING: QA Issue: foo: Files/directories were installed but not shipped
  /foo/bin/.debug
  /foo/bin/.debug/fooapp

This file doesn't appear in the image, but is in the package folder:
./package/foo/bin/.debug/fooapp

It appears something is automatically creating these .debug files during th=
e packaging steps, but the corresponding file isn't under packages-split.

Can someone point me to a place to learn more about how these are created a=
nd packaged?

Thanks,
Brad


--_000_E51394554A503C4E852F9BEE46B03E8DF039C2TIODINtasernetcom_
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
10pt;">
<div>My recipe builds and ships an executable in /foo/bin/fooapp</div>
<div>
<div><br>
</div>
<div>FILES_${PN} &#43;=3D &quot;/foo/bin/*&quot;</div>
</div>
<div><br>
</div>
<div>WARNING: QA Issue: foo: Files/directories were installed but not shipp=
ed</div>
<div>&nbsp; /foo/bin/.debug</div>
<div>&nbsp; /foo/bin/.debug/fooapp</div>
<div><br>
</div>
<div>This file doesn't appear in the image, but is in the package folder:</=
div>
<div>
<div>./package/foo/bin/.debug/fooapp</div>
</div>
<div><br>
</div>
<div>It appears something is automatically creating these .debug files duri=
ng the packaging steps, but the corresponding file isn't under packages-spl=
it. &nbsp;</div>
<div><br>
</div>
<div>Can someone point me to a place to learn more about how these are crea=
ted and packaged?</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Brad</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_E51394554A503C4E852F9BEE46B03E8DF039C2TIODINtasernetcom_--
