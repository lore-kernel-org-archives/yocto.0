Return-Path: <bradl@taser.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E5EEE003D3
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 17:41:08 -0700 (PDT)
X-ASG-Debug-ID: 1376440867-0499bf02591bbd0001-yzSStA
Received: from LOKI.atmoss (loki.atmoss [10.10.20.113]) by email.taser.com
	with ESMTP id QXUSDdarE3m7gqdO; Tue, 13 Aug 2013 17:41:07 -0700 (MST)
X-Barracuda-Envelope-From: bradl@taser.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.113) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Tue, 13 Aug 2013 17:41:07 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Tue, 13 Aug 2013 17:41:06 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
From: Brad Litterell <bradl@taser.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Is there a recipe class that simply installs files to
	the target?
X-ASG-Orig-Subj: Re: [yocto] Is there a recipe class that simply installs
	files to the target?
Thread-Index: AQHOmINjxeOBRuWIg06cpCpo8b7OC5mUUboAgAAAgQA=
Date: Wed, 14 Aug 2013 00:41:05 +0000
Message-ID: <201CF6DB-E16A-4D6A-8A44-ED9F91429CF0@taser.com>
References: <A322536D-FFE3-4631-919E-32AFFC538287@taser.com>
	<438582FE-EBCA-43C8-92AE-7D5978994B9D@gmail.com>
In-Reply-To: <438582FE-EBCA-43C8-92AE-7D5978994B9D@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: loki.atmoss[10.10.20.113]
X-Barracuda-Start-Time: 1376440867
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.138317
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is there a recipe class that simply installs files to the target?
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
X-List-Received-Date: Wed, 14 Aug 2013 00:41:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_201CF6DBE16A4D6A8A44ED9F91429CF0tasercom_"

--_000_201CF6DBE16A4D6A8A44ED9F91429CF0tasercom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ok, thanks - mainly wanted to make sure I was following a best practice of =
sorts.

On Aug 13, 2013, at 5:39 PM, Khem Raj <raj.khem@gmail.com<mailto:raj.khem@g=
mail.com>> wrote:


On Aug 13, 2013, at 5:15 PM, Brad Litterell <bradl@taser.com<mailto:bradl@t=
aser.com>> wrote:

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



there isn't one. Its not as common a case to abstract out into a class addi=
tionally when you have such recipes then
the install paths aren't standard either so adding do_install to recipe and=
 doing it there is OK




Thanks,

Brad

_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--_000_201CF6DBE16A4D6A8A44ED9F91429CF0tasercom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <2FFA8040EC3CE943B40451B6FDD3B3A3@taser.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space; ">
Ok, thanks - mainly wanted to make sure I was following a best practice of =
sorts.
<div><br>
<div>
<div>On Aug 13, 2013, at 5:39 PM, Khem Raj &lt;<a href=3D"mailto:raj.khem@g=
mail.com">raj.khem@gmail.com</a>&gt; wrote:</div>
<br class=3D"Apple-interchange-newline">
<blockquote type=3D"cite">
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line=
-break: after-white-space; ">
<br>
<div>
<div>On Aug 13, 2013, at 5:15 PM, Brad Litterell &lt;<a href=3D"mailto:brad=
l@taser.com">bradl@taser.com</a>&gt; wrote:</div>
<br class=3D"Apple-interchange-newline">
<blockquote type=3D"cite">
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line=
-break: after-white-space; ">
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
</div>
</div>
</blockquote>
<div><br>
</div>
<div><br>
</div>
<div>there isn't one. Its not as common a case to abstract out into a class=
 additionally when you have such recipes then</div>
<div>the install paths aren't standard either so adding do_install to recip=
e and doing it there is OK</div>
<div><br>
</div>
<div><br>
</div>
<br>
<blockquote type=3D"cite">
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line=
-break: after-white-space; ">
<div>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS">Thanks,</font></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><font face=3D"Arial Un=
icode MS">Brad</font></pre>
</div>
</div>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoc=
toproject.org/listinfo/yocto</a><br>
</blockquote>
</div>
<br>
</div>
</blockquote>
</div>
<br>
</div>
</body>
</html>

--_000_201CF6DBE16A4D6A8A44ED9F91429CF0tasercom_--
