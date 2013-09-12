Return-Path: <brad@evidence.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FC10E014F7
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 16:53:07 -0700 (PDT)
X-ASG-Debug-ID: 1379029985-0499bf605c11a360001-yzSStA
Received: from MAGNI.atmoss (magni.atmoss [10.10.20.112]) by email.taser.com
	with ESMTP id huKfO8N2YbrCkMrN for <yocto@yoctoproject.org>;
	Thu, 12 Sep 2013 16:53:05 -0700 (MST)
X-Barracuda-Envelope-From: brad@evidence.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.112) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Thu, 12 Sep 2013 16:53:05 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Thu, 12 Sep 2013 16:53:04 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
From: Brad Litterell <brad@evidence.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Bitbake on live (uncommitted) code
X-ASG-Orig-Subj: Bitbake on live (uncommitted) code
Thread-Index: AQHOsBM42+OV1hSNyk6eEv5km5a1Jw==
Date: Thu, 12 Sep 2013 23:53:04 +0000
Message-ID: <E51394554A503C4E852F9BEE46B03E8DEFDB66@TI-ODIN.tasernet.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: magni.atmoss[10.10.20.112]
X-Barracuda-Start-Time: 1379029985
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.140560
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: Bitbake on live (uncommitted) code
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
X-List-Received-Date: Thu, 12 Sep 2013 23:53:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E51394554A503C4E852F9BEE46B03E8DEFDB66TIODINtasernetcom_"

--_000_E51394554A503C4E852F9BEE46B03E8DEFDB66TIODINtasernetcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I've grown to really appreciate bitbake for compiling code from a myriad of=
 sources, however, what is the recommended course for source I am currently=
 doing live development on?  My code base lives in a couple of git repos th=
at do NOT map one-to-one with recipes and I don't really want to store the =
source mixed in with the recipe meta data anyway, nor do I want to be force=
d to commit it to git just to do a build.

Currently I run a pre-bitbake script that creates a tarball out of the sour=
ce, but that is easy to forget and makes building a new image a two step pr=
oces.  Since it is a build step I'd like it to be done by bitbake.

Is there a recommended way to go about this?

Thanks,
Brad


--_000_E51394554A503C4E852F9BEE46B03E8DEFDB66TIODINtasernetcom_
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
10pt;">Hi,
<div><br>
</div>
<div>I've grown to really appreciate bitbake for compiling code from a myri=
ad of sources, however, what is the recommended course for source I am curr=
ently doing live development on? &nbsp;My code base lives in a couple of gi=
t repos that do NOT map one-to-one with
 recipes and I&nbsp;<span style=3D"font-size: 10pt;">don't really want to s=
tore the source mixed in with the recipe meta data anyway, nor do I want to=
 be forced to commit it to git just to do a build.</span></div>
<div><br>
</div>
<div>Currently I run a pre-bitbake script that creates a tarball out of the=
 source, but that is easy to forget and makes building a new image a two st=
ep proces. &nbsp;Since it is a build step I'd like it to be done by bitbake=
. &nbsp;</div>
<div><br>
</div>
<div>Is there a recommended way to go about this?</div>
<div><br>
</div>
<div>Thanks,<br>
Brad</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_E51394554A503C4E852F9BEE46B03E8DEFDB66TIODINtasernetcom_--
