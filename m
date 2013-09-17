Return-Path: <brad@evidence.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69EC9E015C1
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 12:20:27 -0700 (PDT)
X-ASG-Debug-ID: 1379445624-0499bf605a176110001-yzSStA
Received: from LOKI.atmoss (loki.atmoss [10.10.20.113]) by email.taser.com
	with ESMTP id njt5fJby3ElKdqsz for <yocto@yoctoproject.org>;
	Tue, 17 Sep 2013 12:20:24 -0700 (MST)
X-Barracuda-Envelope-From: brad@evidence.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.113) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Tue, 17 Sep 2013 12:20:24 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Tue, 17 Sep 2013 12:20:23 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
From: Brad Litterell <brad@evidence.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QMake & externalsrc incompatible?
X-ASG-Orig-Subj: QMake & externalsrc incompatible?
Thread-Index: Ac6z2isJe048tSjTTCWcziXCe01/Ng==
Date: Tue, 17 Sep 2013 19:20:23 +0000
Message-ID: <E51394554A503C4E852F9BEE46B03E8DEFE76C@TI-ODIN.tasernet.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: loki.atmoss[10.10.20.113]
X-Barracuda-Start-Time: 1379445624
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.140702
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: QMake & externalsrc incompatible?
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
X-List-Received-Date: Tue, 17 Sep 2013 19:20:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E51394554A503C4E852F9BEE46B03E8DEFE76CTIODINtasernetcom_"

--_000_E51394554A503C4E852F9BEE46B03E8DEFE76CTIODINtasernetcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have a number of QT components that have qmake style .pro files.

In my recipe I inherit both externalsrc & qmake2.  I'm using qmake2 based o=
n the quicky sample recipe since I don't need X11 or the other GUI librarie=
s.

In the bitbake work folder, the generated run.do_configure script resembles=
 this:

cd /home/brad/ecom/build/toolchain/work/.../ecomapi-2.0-r0/ecomapi-2.0/
...
PROFILES=3D"`ls *.pro`"

This is the location where a tarball would normally be unpacked, but in thi=
s case I'm using externalsrc and the source files are not here.  Therefore =
the ls *.pro doesn't return anything for the automatic profile detection an=
d the build fails.

My recipe is very simple (removing the description & licensing):

PV =3D "2.0"
inherit externalsrc qmake2
S =3D "${OEBASE}/ecomapi"

OEBASE in this case is the /home/brad/ecom folder

I looked in the yocto bugzilla and didn't find a known issue for this.  Am =
I doing something wrong?

Thanks,
Brad



--_000_E51394554A503C4E852F9BEE46B03E8DEFE76CTIODINtasernetcom_
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
<div>I have a number of QT components that have qmake style .pro files.</di=
v>
<div><br>
</div>
<div>In my recipe I inherit both externalsrc &amp; qmake2. &nbsp;I'm using =
qmake2 based on the quicky sample recipe since I don't need X11 or the othe=
r GUI libraries.</div>
<div><br>
</div>
<div>In the bitbake work folder, the generated run.do_configure script rese=
mbles this:</div>
<div><br>
</div>
<div>cd /home/brad/ecom/build/toolchain/work/.../ecomapi-2.0-r0/ecomapi-2.0=
/</div>
<div>...</div>
<div>
<div><span style=3D"font-size: 10pt;">PROFILES=3D&quot;`ls *.pro`&quot;</sp=
an></div>
</div>
<div><br>
</div>
<div>This is the location where a tarball would normally be unpacked, but i=
n this case I'm using externalsrc and the source files are not here. &nbsp;=
Therefore the ls *.pro doesn't return anything for the automatic profile de=
tection and the build fails.</div>
<div><br>
</div>
<div>My recipe is very simple (removing the description &amp; licensing):</=
div>
<div><br>
</div>
<div>
<div><span style=3D"font-size: 10pt;">PV =3D &quot;2.0&quot;</span></div>
<div><span style=3D"font-size: 10pt;">inherit externalsrc qmake2</span></di=
v>
<div>S =3D &quot;${OEBASE}/ecomapi&quot;</div>
</div>
<div><br>
</div>
<div>OEBASE in this case is the /home/brad/ecom&nbsp;folder</div>
<div><br>
</div>
<div>I looked in the yocto bugzilla and didn't find a known issue for this.=
 &nbsp;Am I doing something wrong?</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Brad</div>
<div><br>
</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_E51394554A503C4E852F9BEE46B03E8DEFE76CTIODINtasernetcom_--
