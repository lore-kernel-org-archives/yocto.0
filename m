Return-Path: <brad@evidence.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6537E015A9
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 16:49:30 -0700 (PDT)
X-ASG-Debug-ID: 1379375367-0499bf605a1601d0001-yzSStA
Received: from MAGNI.atmoss (magni.atmoss [10.10.20.112]) by email.taser.com
	with ESMTP id 7G3hZpk37MAufZpc for <yocto@yoctoproject.org>;
	Mon, 16 Sep 2013 16:49:27 -0700 (MST)
X-Barracuda-Envelope-From: brad@evidence.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.112) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Mon, 16 Sep 2013 16:49:27 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Mon, 16 Sep 2013 16:49:26 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
From: Brad Litterell <brad@evidence.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Identify Target for a given binary
X-ASG-Orig-Subj: Identify Target for a given binary
Thread-Index: Ac6zNunR4hWS3a2kQgOulDlrOGz0EA==
Date: Mon, 16 Sep 2013 23:49:25 +0000
Message-ID: <E51394554A503C4E852F9BEE46B03E8DEFE44D@TI-ODIN.tasernet.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: magni.atmoss[10.10.20.112]
X-Barracuda-Start-Time: 1379375367
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.140674
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: Identify Target for a given binary
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
X-List-Received-Date: Mon, 16 Sep 2013 23:49:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E51394554A503C4E852F9BEE46B03E8DEFE44DTIODINtasernetcom_"

--_000_E51394554A503C4E852F9BEE46B03E8DEFE44DTIODINtasernetcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to rebuild uImage into my deploy folder (minimally) and so I tri=
ed:

bitbake linux-am335x-psp -c clean
bitbake linux-am335x-psp

This works great for most of my recipes, but for the kernel something odd i=
s happening.  I keep getting a uImage with an old date in my deploy folder =
so it appears that the file is being cached somewhere.

If I perform a -c cleanall it works, but then the entire project is redownl=
oaded over git which is rather slow.

So, what I want to do is figure out which -c <command> targets I need to gi=
ve to rebuild the kernel and not get these cached versions.  (I notice that=
 there are also several sysroot commands and such.)

Is there an easy way to figure out from the logs which step is creating a p=
articular binary on disk?  With that I could trace back by finding the cach=
ed version in the work tree, and then rerun that step, etc...





--_000_E51394554A503C4E852F9BEE46B03E8DEFE44DTIODINtasernetcom_
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
10pt;">I'm trying to rebuild uImage into my deploy folder (minimally) and s=
o I tried:
<div><br>
</div>
<div>bitbake linux-am335x-psp -c clean</div>
<div>bitbake linux-am335x-psp&nbsp;</div>
<div><br>
</div>
<div><span style=3D"font-size: 10pt;">This works great for most of my recip=
es, but for the kernel something odd is happening. &nbsp;I keep getting a u=
Image with an old date in my deploy folder so it appears that the file is b=
eing cached somewhere.</span></div>
<div><br>
</div>
<div><span style=3D"font-size: 10pt;">If I perform a -c cleanall it works, =
but then the entire project is redownloaded over git which is rather slow.<=
/span></div>
<div><br>
</div>
<div>So, what I want to do is figure out which -c &lt;command&gt; targets I=
 need to give to rebuild the kernel and not get these cached versions. &nbs=
p;(I notice that there are also several sysroot commands and such.)</div>
<div><br>
</div>
<div>Is there an easy way to figure out from the logs which step is creatin=
g a particular binary on disk? &nbsp;With that I could trace back by findin=
g the cached version in the work tree, and then rerun that step, etc...</di=
v>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_E51394554A503C4E852F9BEE46B03E8DEFE44DTIODINtasernetcom_--
