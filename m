Return-Path: <brad@evidence.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16078E0122C
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 13:30:50 -0700 (PDT)
X-ASG-Debug-ID: 1378931449-0499bf605bfa640001-yzSStA
Received: from LOKI.atmoss (loki.atmoss [10.10.20.113]) by email.taser.com
	with ESMTP id H6OyDLKkspI0Eupt for <yocto@yoctoproject.org>;
	Wed, 11 Sep 2013 13:30:49 -0700 (MST)
X-Barracuda-Envelope-From: brad@evidence.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.113) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Wed, 11 Sep 2013 13:30:48 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Wed, 11 Sep 2013 13:30:48 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
From: Brad Litterell <brad@evidence.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to customize a file coming from another recipe?
X-ASG-Orig-Subj: How to customize a file coming from another recipe?
Thread-Index: Ac6vLcwzsqkNHYFZQyu99GHvJ+aRiQ==
Date: Wed, 11 Sep 2013 20:30:47 +0000
Message-ID: <E51394554A503C4E852F9BEE46B03E8DEFCD7F@TI-ODIN.tasernet.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: loki.atmoss[10.10.20.113]
X-Barracuda-Start-Time: 1378931449
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.140531
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: How to customize a file coming from another recipe?
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
X-List-Received-Date: Wed, 11 Sep 2013 20:30:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E51394554A503C4E852F9BEE46B03E8DEFCD7FTIODINtasernetcom_"

--_000_E51394554A503C4E852F9BEE46B03E8DEFCD7FTIODINtasernetcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm building w/the Arago distribution which contains lighttpd for a web ser=
ver.  I include this in my image as follows:

IMAGE_INSTALL =3D "packagegroup-core-boot \
...
lighttpd lighttpd-module-cgi lighttpd-module-compress lighttpd-module-expir=
e \
...
"

This installs a default configuration file for the service which I now want=
 to customize.  What is the recommended way to overwrite or customize files=
 in another package?

Is the best course to create a recipe bbappend for the lighttpd_1.4.31.bb f=
ile that is being used?  And can I just include a new file with the same na=
me in my append and will it overwrite the old one, or do I need to create a=
n actual patch file?

Or is it better to create a new separate  recipe that just ships my version=
 of the configuration file? How are conflicts handled when two recipes atte=
mpt to install the same file?

Thanks,
Brad

--_000_E51394554A503C4E852F9BEE46B03E8DEFCD7FTIODINtasernetcom_
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
10pt;">I'm building w/the Arago distribution which contains lighttpd for a =
web server. &nbsp;I include this in my image as follows:
<div><br>
</div>
<div>
<div>IMAGE_INSTALL =3D &quot;packagegroup-core-boot \</div>
<div>...</div>
<div>lighttpd lighttpd-module-cgi lighttpd-module-compress lighttpd-module-=
expire \</div>
<div>...</div>
<div>&quot;</div>
</div>
<div><br>
</div>
<div>This installs a default configuration file for the service which I now=
 want to customize. &nbsp;What is the recommended way to overwrite or custo=
mize files in another package?</div>
<div><br>
</div>
<div>Is the best course to create a recipe bbappend for the lighttpd_1.4.31=
.bb file that is being used? &nbsp;And can I just include a new file with t=
he same name in my append and will it overwrite the old one, or do I need t=
o create an actual patch&nbsp;file?</div>
<div><br>
</div>
<div>Or is it better to create a&nbsp;new&nbsp;separate &nbsp;recipe that j=
ust ships my version of the configuration file? How are conflicts handled w=
hen two recipes attempt to install the same file?</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Brad</div>
</div>
</body>
</html>

--_000_E51394554A503C4E852F9BEE46B03E8DEFCD7FTIODINtasernetcom_--
