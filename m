Return-Path: <bradl@taser.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98647E003D3
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 17:15:34 -0700 (PDT)
X-ASG-Debug-ID: 1376439332-0499bf02591b7e0001-yzSStA
Received: from MAGNI.atmoss (magni.atmoss [10.10.20.112]) by email.taser.com
	with ESMTP id 4rrFM3UfAE1shljc for <yocto@yoctoproject.org>;
	Tue, 13 Aug 2013 17:15:32 -0700 (MST)
X-Barracuda-Envelope-From: bradl@taser.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.112) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Tue, 13 Aug 2013 17:15:32 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Tue, 13 Aug 2013 17:15:31 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
From: Brad Litterell <bradl@taser.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Is there a recipe class that simply installs files to the target?
X-ASG-Orig-Subj: Is there a recipe class that simply installs files to the
	target?
Thread-Index: AQHOmINjxeOBRuWIg06cpCpo8b7OCw==
Date: Wed, 14 Aug 2013 00:15:31 +0000
Message-ID: <A322536D-FFE3-4631-919E-32AFFC538287@taser.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: magni.atmoss[10.10.20.112]
X-Barracuda-Start-Time: 1376439332
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.138315
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: Is there a recipe class that simply installs files to the target?
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
X-List-Received-Date: Wed, 14 Aug 2013 00:15:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A322536DFFE34631919E32AFFC538287tasercom_"

--_000_A322536DFFE34631919E32AFFC538287tasercom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have some scripts I'd like to copy to the target to a simple folder, e.g.=
 /lib/foo

Ideally I'd like to just create a simple recipe something like this:


SRC_URI =3D "file://lib/foo/foo.sh<file:///lib/foo/foo.sh>"

inherit install_only


Is there a class like this?


It seems like most recipes of this form accomplish this by a custom do_inst=
all step, such as this:


do_install() {

   install -D -m 755 ${S}/lib/foo/foo.sh ${D}/lib/foo

}


and I was just hoping there might be a base class for examining the input f=
iles and generating the install steps?


Thanks,

Brad

--_000_A322536DFFE34631919E32AFFC538287tasercom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <356C24E39717F1448536C8375410A4D6@taser.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space; ">
<font face=3D"Arial Unicode MS">I have some scripts I'd like to copy to the=
 target to a simple folder, e.g. /lib/foo</font>
<div><font face=3D"Arial Unicode MS"><br>
</font></div>
<div><font face=3D"Arial Unicode MS">Ideally I'd like to just create a simp=
le recipe something like this:</font></div>
<div><font face=3D"Arial Unicode MS"><br>
</font></div>
<div>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><!--StartFragment--><f=
ont face=3D"Arial Unicode MS">SRC_URI<span style=3D" color:#c0c0c0;"> </spa=
n>=3D<span style=3D" color:#c0c0c0;"> </span>&quot;<a href=3D"file:///lib/f=
oo/foo.sh">file://lib/foo/foo.sh</a>&quot;</font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS">inherit install_only<!--EndFragment--></font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS"><br></font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS">Is there a class like this? &nbsp;</font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS"><br></font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS">It seems like most recipes of this form accomplish this by a cust=
om do_install step, such as this:</font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS"><br></font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS">do_install() {</font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS">   install -D -m 755 ${S}/lib/foo/foo.sh ${D}/lib/foo</font></pre=
>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS">}</font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS"><br></font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS">and I was just hoping there might be a base class for examining t=
he input files and generating the install steps?</font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS"><br></font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS">Thanks,</font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS">Brad</font></pre>
</div>
</body>
</html>

--_000_A322536DFFE34631919E32AFFC538287tasercom_--
