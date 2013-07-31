Return-Path: <bradl@taser.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E2C6E002E2
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 10:52:07 -0700 (PDT)
X-ASG-Debug-ID: 1375293125-0499bf56594d9600001-yzSStA
Received: from LOKI.atmoss (loki.atmoss [10.10.20.113]) by email.taser.com
	with ESMTP id iVGvmae8ho4JZsFX for <yocto@yoctoproject.org>;
	Wed, 31 Jul 2013 10:52:05 -0700 (MST)
X-Barracuda-Envelope-From: bradl@taser.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.113) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Wed, 31 Jul 2013 10:52:04 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Wed, 31 Jul 2013 10:52:04 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
From: Brad Litterell <bradl@taser.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Trying to add new recipe - getting QA error I don't understand
X-ASG-Orig-Subj: Trying to add new recipe - getting QA error I don't understand
Thread-Index: AQHOjhaqK43GESdm30u/u0JCpsTpVw==
Date: Wed, 31 Jul 2013 17:52:03 +0000
Message-ID: <E94D6C02-CADD-4109-97AE-6979171970FA@taser.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: loki.atmoss[10.10.20.113]
X-Barracuda-Start-Time: 1375293125
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.137459
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: Trying to add new recipe - getting QA error I don't understand
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
X-List-Received-Date: Wed, 31 Jul 2013 17:52:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E94D6C02CADD410997AE6979171970FAtasercom_"

--_000_E94D6C02CADD410997AE6979171970FAtasercom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm new to Yocto, so please let me know if this is the wrong list for quest=
ions like this.

I'm trying to add a recipe for a new cmake project (for UCI).  The do_packa=
ge_qa task reports this problem:

ERROR: QA Issue: uci rdepends on uci-dev
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa

uci-dev appears to be automatically generated package - there is no recipe =
for it, and I can't find any reference to it in the actual source code for =
the package.  In other words, it appears as if Yocto itself is generating t=
his dependency somehow.

Does this sound right?  Can anyone point me in the right direction?

My recipe is pretty simple and looks like this:

=3D=3D=3D

DESCRIPTION =3D "UCI Configuration Library"

SECTION =3D "openwrtlib"


LICENSE =3D "GPLv2+"

LIC_FILES_CHKSUM =3D "file://uci.h;beginline=3D1;endline=3D13;md5=3D799502a=
8112fe590aa1664829bfc7c60<file:///uci.h;beginline=3D1;endline=3D13;md5=3D79=
9502a8112fe590aa1664829bfc7c60>"


PV =3D "2011-07-18.3"

#see https://forum.openwrt.org/viewtopic.php?id=3D15243 for git

SRC_URI =3D "file://uci-${PV}.tar.gz<file:///uci-${PV}.tar.gz>"



EXTRA_OECMAKE=3D"-DBUILD_LUA=3DOFF"


inherit cmake

=3D=3D=3D


Thanks for any help,

Brad


--_000_E94D6C02CADD410997AE6979171970FAtasercom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <B5526F67E0AEB84AB8BD5A14C8968EA9@taser.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space; ">
<div>Hi,</div>
<div><br>
</div>
<div>I'm new to Yocto, so please let me know if this is the wrong list for =
questions like this.</div>
<div><br>
</div>
<div>I'm trying to add a recipe for a new cmake project (for UCI). &nbsp;Th=
e do_package_qa task reports this problem:</div>
<div><br>
</div>
<div>ERROR: QA Issue: uci rdepends on uci-dev</div>
<div>ERROR: QA run found fatal errors. Please consider fixing them.</div>
<div>ERROR: Function failed: do_package_qa</div>
<div><br>
</div>
<div>uci-dev appears to be automatically generated package - there is no re=
cipe for it, and I can't find any reference to it in the actual source code=
 for the package. &nbsp;In other words, it appears as if Yocto itself is ge=
nerating this dependency somehow.</div>
<div><br>
</div>
<div>Does this sound right? &nbsp;Can anyone point me in the right directio=
n?</div>
<div><br>
</div>
<div>My recipe is pretty simple and looks like this:</div>
<div><br>
</div>
<div>=3D=3D=3D</div>
<div>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><!--StartFragment-->DE=
SCRIPTION<span style=3D" color:#c0c0c0;"> </span>=3D<span style=3D" color:#=
c0c0c0;"> </span>&quot;UCI<span style=3D" color:#c0c0c0;"> </span>Configura=
tion<span style=3D" color:#c0c0c0;"> </span>Library&quot;</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">SECTION<span style=3D"=
 color:#c0c0c0;"> </span>=3D<span style=3D" color:#c0c0c0;"> </span>&quot;o=
penwrtlib&quot;</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><br></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">LICENSE<span style=3D"=
 color:#c0c0c0;"> </span>=3D<span style=3D" color:#c0c0c0;"> </span>&quot;G=
PLv2&#43;&quot;</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">LIC_FILES_CHKSUM<span =
style=3D" color:#c0c0c0;"> </span>=3D<span style=3D" color:#c0c0c0;"> </spa=
n>&quot;<a href=3D"file:///uci.h;beginline=3D1;endline=3D13;md5=3D799502a81=
12fe590aa1664829bfc7c60">file://uci.h;beginline=3D1;endline=3D13;md5=3D7995=
02a8112fe590aa1664829bfc7c60</a>&quot;</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><br></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">PV<span style=3D" colo=
r:#c0c0c0;"> </span>=3D<span style=3D" color:#c0c0c0;"> </span>&quot;2011-0=
7-18.3&quot;</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><span style=3D" color:=
#008000;">#see</span><span style=3D" color:#c0c0c0;"> </span><span style=3D=
" color:#008000;"><a href=3D"https://forum.openwrt.org/viewtopic.php?id=3D1=
5243">https://forum.openwrt.org/viewtopic.php?id=3D15243</a></span><span st=
yle=3D" color:#c0c0c0;"> </span><span style=3D" color:#008000;">for</span><=
span style=3D" color:#c0c0c0;"> </span><span style=3D" color:#008000;">git<=
/span></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">SRC_URI<span style=3D"=
 color:#c0c0c0;"> </span>=3D<span style=3D" color:#c0c0c0;"> </span>&quot;<=
a href=3D"file:///uci-${PV}.tar.gz">file://uci-${PV}.tar.gz</a>&quot;</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><br></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><br></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">EXTRA_OECMAKE=3D&quot;=
-DBUILD_LUA=3DOFF&quot;</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><br></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">inherit<span style=3D"=
 color:#c0c0c0;"> </span>cmake</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">=3D=3D=3D</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><br></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">Thanks for any help,</=
pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">Brad</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><br></pre>
</div>
</body>
</html>

--_000_E94D6C02CADD410997AE6979171970FAtasercom_--
