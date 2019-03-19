Return-Path: <ms.priyanshu.sharma@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F63FE00D07; Tue, 19 Mar 2019 00:53:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ms.priyanshu.sharma[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
	[209.85.167.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B537E00C4D
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 00:53:26 -0700 (PDT)
Received: by mail-oi1-f170.google.com with SMTP id t206so15236272oib.3
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 00:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5g30ZMF+r4npuT5K/bSBwNkI2kiTSmdUCRySSMVWvS8=;
	b=Asqzf0C1aj6Cp3vSFwFLNzzNou44Gxhti5o7cKo9gWBJzfc84XN5M2UvRClA5BFqzz
	cjTH33rsksbbwRuPJGCDe6ZtTF313q2G5EuT5A5LoUpAWzaGAEwSkzInbLptgz1OWukV
	lqIIPhDYfrYjYqyysipCf//vW2Vpyl3Qow1mtywN3tdeF1XkAR77hBy2t2gfXjaYHKM6
	8rfqXiTOp+gDBH8Thys/xlfvK1BIQYwBANXt/DrNa0N6EccBwfx5PMgNFZIv+wiW5QP5
	Rq/DjQf4UP2ajKgLIcgc/i5i4JMwA3Yb3k3aNN2+OYSYK+bdKLO2Oep7J9s2rctKbWbw
	FpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5g30ZMF+r4npuT5K/bSBwNkI2kiTSmdUCRySSMVWvS8=;
	b=BTVLnO7yipjJGTDK9M14wBslsBjRwCuDdqrx2YlpA4KtvWmlwPSEoSxPTmVl5qgSq1
	5z++0T8uHuiiHQXYGgLSWhdlxu9bVJV05GMxPO8Q1VBQ98GkC56gYerSFZDOkdGtVX/E
	DXOC4O4vmArN9zQxP7a+fD6jxy8N1zgPq4U9Z/lhDSyEYsk8AwogTKIhyTWePIAY4h4G
	RoaPt/4KjdJuWKVWXqp3plQkMgks578v8YcM0yHVxIO65WhfM8Gk7G+ELPkzoUJq5D9B
	edaqhMoAp37sLFIM+7N28+CR6kLn8/oPpNPIbXjXQkU2wqMmwZoJGCU/w5CvD7M9fTOi
	sjMw==
X-Gm-Message-State: APjAAAUT+A4iA2IEljf0r55QpiS0jjqyDeWvlhrlIdu/JW0giGeldUDg
	D6sanCwQOrBTfp5BtnzHcteETP/bjJXUIaKL8VSAbNiR
X-Google-Smtp-Source: APXvYqwi9W8nV1ZKyLdp0QyKZxi0HhlRVslpfr2tYdmyBZujSR/6j+8HtMEbc1FZ8NOnrqYf9KgC9OQtTDfAx981Lfg=
X-Received: by 2002:aca:ad82:: with SMTP id w124mr609029oie.33.1552982006206; 
	Tue, 19 Mar 2019 00:53:26 -0700 (PDT)
MIME-Version: 1.0
From: Priyanshu Sharma <ms.priyanshu.sharma@gmail.com>
Date: Tue, 19 Mar 2019 13:23:15 +0530
Message-ID: <CAA_f9ePWPaPacQkJYsne0F6T-nY5j5epbgjaz+iFrxCAV+476g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-qt5][qtwayland]Qtwayland recipe fails with Yocto 2.5
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
X-List-Received-Date: Tue, 19 Mar 2019 07:53:27 -0000
Content-Type: multipart/alternative; boundary="000000000000d2977405846dcc90"

--000000000000d2977405846dcc90
Content-Type: text/plain; charset="UTF-8"

Hi All,

I'm consistently getting a build failure after upgrading Poky to 2.5 from
2.2 on qtwayland
Yocto recipe from meta-qt5.

The error looks like :

| Running configuration tests...
| Checking for Wayland client library... yes
| Checking for Wayland cursor library... yes
| Checking for wayland-scanner... yes
| Checking for Wayland EGL library... yes
| Checking for wayland-server... yes
| Done running configuration tests.
|
| Configure summary:
|
| Qt Wayland Drivers:
|   EGL .................................... no
|   Raspberry Pi ........................... no
|   XComposite EGL ......................... no
|   XComposite GLX ......................... no
|   DRM EGL ................................ no
|   libhybris EGL .......................... no
| Qt Wayland Client ........................ yes
| Qt Wayland Compositor .................... yes
|
| ERROR: Feature 'wayland-egl' was enabled, but the pre-condition
'features.wayland-client && features.opengl && features.egl &&
libs.wayland-egl' failed.
|
| ERROR: Feature 'wayland-egl' was enabled, but the pre-condition
'features.wayland-server && features.opengl && features.egl &&
libs.wayland-egl' failed.
|
| Check config.log for details.
| WARNING: exit code 1 from a shell command.
I've checked that only pre-condition "features.egl" is failing.
I've my own custom recipe which is providing virtual/egl and is set as
PREFERRED_PROVIDER also.
What is the missing dependency here when virtual/egl is provided?
What exactly is features.egl looking for? ( virtual/egl provides egl.pc )
I've not changed anything in meta-qt5 layer. And the version is 5.9.2
QT5. However, is fails with 5.12 also.


Warm Regards,

Priyanshu Sharma

--000000000000d2977405846dcc90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-gs" style=3D"margin:0px;padding:0px 0p=
x 20px;width:1299.11px"><div class=3D"gmail-" style=3D""><div id=3D"gmail-:=
mp" class=3D"gmail-ii gmail-gt" style=3D"direction:ltr;margin:8px 0px 0px;p=
adding:0px"><div id=3D"gmail-:mq" class=3D"gmail-a3s gmail-aXjCH" style=3D"=
overflow:hidden;font-variant-numeric:normal;font-variant-east-asian:normal;=
font-stretch:normal;line-height:1.5"><div dir=3D"ltr" style=3D""><div style=
=3D"font-family:Arial,Helvetica,sans-serif;font-size:small">Hi All,</div><d=
iv style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small"><br cla=
ss=3D"gmail-Apple-interchange-newline">I&#39;m consistently getting a build=
 failure after upgrading Poky to 2.5 from 2.2 on qtwayland=C2=A0</div><div =
style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small">Yocto reci=
pe from meta-qt5.</div><div style=3D"font-family:Arial,Helvetica,sans-serif=
;font-size:small"><br></div><div style=3D"">The error looks like :<br><br><=
pre style=3D""><font color=3D"#000000" style=3D""><font face=3D"garamond, s=
erif" style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;white=
-space:pre-wrap">| Running configuration tests...
| Checking for Wayland client library... yes
| Checking for Wayland cursor library... yes
| Checking for wayland-scanner... yes
| Checking for Wayland EGL library... yes
| Checking for wayland-server... yes
| Done running configuration tests.
|=20
| Configure summary:
|=20
| Qt Wayland Drivers:
|   EGL .................................... no
|   Raspberry Pi ........................... no
|   XComposite EGL ......................... no
|   XComposite GLX ......................... no
|   DRM EGL ................................ no
|   libhybris EGL .......................... no
| Qt Wayland Client ........................ yes
| Qt Wayland Compositor .................... yes
|=20
| ERROR: Feature &#39;wayland-egl&#39; was enabled, but the pre-condition &=
#39;features.wayland-client &amp;&amp; features.opengl &amp;&amp; features.=
egl &amp;&amp; libs.wayland-egl&#39; failed.
|=20
| ERROR: Feature &#39;wayland-egl&#39; was enabled, but the pre-condition &=
#39;features.wayland-server &amp;&amp; features.opengl &amp;&amp; features.=
egl &amp;&amp; libs.wayland-egl&#39; failed.
|=20
| Check config.log for details.
| WARNING: exit code 1 from a shell command.

</font><font face=3D"arial, helvetica, sans-serif" style=3D""><font face=3D=
"Arial, Helvetica, sans-serif"><span style=3D"white-space:pre-wrap">I&#39;v=
e checked that only pre-condition &quot;features.egl&quot; is failing.
I&#39;ve my own custom recipe which is providing virtual/egl and is set as =
PREFERRED_PROVIDER also.
What is the missing </span></font><span style=3D"white-space:pre-wrap">depe=
ndency</span><font face=3D"Arial, Helvetica, sans-serif"><span style=3D"whi=
te-space:pre-wrap"> here when virtual/egl is provided?
What exactly is features.egl looking for? ( virtual/egl provides egl.pc )
I&#39;ve not changed anything in meta-qt5 layer. And the version is 5.9.2 Q=
T5. However, is fails with </span></font></font></font>5.12 also.</pre><pre=
 style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;white-spac=
e:pre-wrap"><font color=3D"#000000"><font face=3D"arial, helvetica, sans-se=
rif"><br></font></font></pre><pre style=3D"font-family:Arial,Helvetica,sans=
-serif;font-size:small;white-space:pre-wrap"><font color=3D"#000000"><font =
face=3D"arial, helvetica, sans-serif">Warm Regards,</font></font></pre><pre=
 style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;white-spac=
e:pre-wrap"><font color=3D"#000000"><font face=3D"arial, helvetica, sans-se=
rif">Priyanshu Sharma</font></font></pre></div></div><div class=3D"gmail-yj=
6qo" style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small"></div=
><div class=3D"gmail-adL" style=3D"font-family:Arial,Helvetica,sans-serif;f=
ont-size:small"></div></div></div><div class=3D"gmail-hi" style=3D"font-fam=
ily:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:medium;border-b=
ottom-left-radius:1px;border-bottom-right-radius:1px;padding:0px;width:auto=
;background:rgb(242,242,242);margin:0px"></div></div></div><br class=3D"gma=
il-Apple-interchange-newline"></div>

--000000000000d2977405846dcc90--
