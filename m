Return-Path: <brad@evidence.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91E46E0164C
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 23:11:38 -0700 (PDT)
X-ASG-Debug-ID: 1380262297-0499bf10621022f0001-yzSStA
Received: from LOKI.atmoss (loki.atmoss [10.10.20.113]) by email.taser.com
	with ESMTP id ua5hnUL8wHrWxVBw; Thu, 26 Sep 2013 23:11:37 -0700 (MST)
X-Barracuda-Envelope-From: brad@evidence.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.113) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Thu, 26 Sep 2013 23:11:37 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Thu, 26 Sep 2013 23:11:36 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
From: Brad Litterell <brad@evidence.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Thread-Topic: [yocto] Question about automatic debug package generation
X-ASG-Orig-Subj: RE: [yocto] Question about automatic debug package generation
Thread-Index: Ac67A3OFfBSdv+wqSjCVNAI9XJXyqQAPwe2AAAF8BCI=
Date: Fri, 27 Sep 2013 06:11:35 +0000
Message-ID: <E51394554A503C4E852F9BEE46B03E8DF03B46@TI-ODIN.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8DF039C2@TI-ODIN.tasernet.com>,
	<CAP71Wjx4KQtfiEG4a4kin6XAtu9fMwZON6cNDgHDwJksef_H4w@mail.gmail.com>
In-Reply-To: <CAP71Wjx4KQtfiEG4a4kin6XAtu9fMwZON6cNDgHDwJksef_H4w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
X-Barracuda-Connect: loki.atmoss[10.10.20.113]
X-Barracuda-Start-Time: 1380262297
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.140968
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question about automatic debug package generation
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
X-List-Received-Date: Fri, 27 Sep 2013 06:11:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E51394554A503C4E852F9BEE46B03E8DF03B46TIODINtasernetcom_"

--_000_E51394554A503C4E852F9BEE46B03E8DF03B46TIODINtasernetcom_
Content-Type: text/plain; charset="windows-1256"
Content-Transfer-Encoding: quoted-printable

Thanks Nicolas!

Sent from my Windows Phone
________________________________
From: Nicolas Dechesne<mailto:nicolas.dechesne@linaro.org>
Sent: =FD9/=FD26/=FD2013 15:29
To: Brad Litterell<mailto:brad@evidence.com>
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] Question about automatic debug package generation


On Fri, Sep 27, 2013 at 12:00 AM, Brad Litterell <brad@evidence.com<mailto:=
brad@evidence.com>> wrote:
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

this is done in meta/classes/package.bbclass. at the beginning of that file=
, you will find an overall description of what the 'packaging' steps are, a=
nd you can see, among many things:

# d) split_and_strip_files - split the files into runtime and debug and str=
ip them.
#    Debug files include debug info split, and associated sources that end =
up in -dbg packages
you can then check the source code for the function split_and_strip_files.

Now, about 'packaging' the files, you need to look at meta/conf/bitbake.con=
f and search for FILES_{PN}-dbg. this is the default variable that specifie=
s which files go into the -dbg package. Your issue above is because the 'de=
fault' path for binary is /usr/bin, hence the 'default' path for debug vari=
ants is /usr/bin/.debug. But if you need '/foo' , you can change these defa=
ult in your recipe, by modifying FILES_{PN}xxx in your .bb file.





--_000_E51394554A503C4E852F9BEE46B03E8DF03B46TIODINtasernetcom_
Content-Type: text/html; charset="windows-1256"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dwindows-1=
256">
</head>
<body>
<div>
<div style=3D"font-size:11pt; font-family:Calibri,sans-serif">Thanks Nicola=
s! <br>
<br>
Sent from my Windows Phone</div>
</div>
<div dir=3D"ltr">
<hr>
<span style=3D"font-size:11pt; font-family:Calibri,sans-serif; font-weight:=
bold">From:
</span><span style=3D"font-size:11pt; font-family:Calibri,sans-serif"><a hr=
ef=3D"mailto:nicolas.dechesne@linaro.org">Nicolas Dechesne</a></span><br>
<span style=3D"font-size:11pt; font-family:Calibri,sans-serif; font-weight:=
bold">Sent:
</span><span style=3D"font-size:11pt; font-family:Calibri,sans-serif">=FD9/=
=FD26/=FD2013 15:29</span><br>
<span style=3D"font-size:11pt; font-family:Calibri,sans-serif; font-weight:=
bold">To:
</span><span style=3D"font-size:11pt; font-family:Calibri,sans-serif"><a hr=
ef=3D"mailto:brad@evidence.com">Brad Litterell</a></span><br>
<span style=3D"font-size:11pt; font-family:Calibri,sans-serif; font-weight:=
bold">Cc:
</span><span style=3D"font-size:11pt; font-family:Calibri,sans-serif"><a hr=
ef=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a></span><br>
<span style=3D"font-size:11pt; font-family:Calibri,sans-serif; font-weight:=
bold">Subject:
</span><span style=3D"font-size:11pt; font-family:Calibri,sans-serif">Re: [=
yocto] Question about automatic debug package generation</span><br>
<br>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Fri, Sep 27, 2013 at 12:00 AM, Brad Litterell=
 <span dir=3D"ltr">
&lt;<a href=3D"mailto:brad@evidence.com" target=3D"_blank">brad@evidence.co=
m</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left-width:1px; border-left-color:rgb(204,204,204); border-left-style:soli=
d; padding-left:1ex">
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
<div></div>
</blockquote>
</div>
<br>
this is done in meta/classes/package.bbclass. at the beginning of that file=
, you will find an overall description of what the 'packaging' steps are, a=
nd you can see, among many things:</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">
<div class=3D"gmail_extra"># d) split_and_strip_files - split the files int=
o runtime and debug and strip them. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div class=3D"gmail_extra"># &nbsp; &nbsp;Debug files include debug info sp=
lit, and associated sources that end up in -dbg packages &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div class=3D"gmail_extra">you can then check the source code for the funct=
ion split_and_strip_files.</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">Now, about 'packaging' the files, you need to lo=
ok at meta/conf/bitbake.conf and search for FILES_{PN}-dbg. this is the def=
ault variable that specifies which files go into the -dbg package. Your iss=
ue above is because the 'default'
 path for binary is /usr/bin, hence the 'default' path for debug variants i=
s /usr/bin/.debug. But if you need '/foo' , you can change these default in=
 your recipe, by modifying FILES_{PN}xxx in your .bb file.</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra"><br>
</div>
<div><br>
</div>
</div>
<div class=3D"gmail_extra"><br>
</div>
</div>
</div>
</body>
</html>

--_000_E51394554A503C4E852F9BEE46B03E8DF03B46TIODINtasernetcom_--
