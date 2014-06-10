Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98851E00BAE; Tue, 10 Jun 2014 12:38:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2C7DE00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 12:38:35 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id cc10so2425846wib.6
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 12:38:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
	:content-type;
	bh=fUNTR5W+bKo4q9qbkVsJFwCkRaCm3HeTIqjAWC6mCiw=;
	b=l49GaUOqILOVHKJXuH+pqh83iBxG5v2aVZ3zZRz0imt/9oMGv6PaaRDBBdEVGcg1LE
	NNnm41tbDe0HO9vqON9LUG7AYVIXRXvsbkIhMo3HuWoI/VQkKBvzxK8oq6j5cpMFQ3g4
	EeBZ+w3Lm0NV2iQ13Dkx08lNTLYcuPLsjY1mFg9Pryh9T2e7vrPthz24QAQubET7H5i/
	aTRtXrfMrgtVPGaQIdQHAODrO/9wjhg8slAfR0uF+5+wirCdLHv84a2iPgDhM2OLJLoB
	0VjtYBIQI8R96+bEtnDz9Bq5UVY6HbPuEE+NYYMsgZdyKtYUdYKcXEQ/WLkJNFZZv1ZI
	EDSA==
X-Gm-Message-State: ALoCoQmTOu/Ej6VYUNZ4Zb1JwDbQYWlWmstXYdaipNo7xIlQ6u+1PYUVfsA6Le2Rhu8/ZRMliOSd
X-Received: by 10.194.222.197 with SMTP id qo5mr18062639wjc.78.1402429114373; 
	Tue, 10 Jun 2014 12:38:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 10 Jun 2014 12:38:14 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Jun 2014 22:38:14 +0300
Message-ID: <CAK18fxHapxALS2JxN_DgPQEKgO8tne5Fk6rJOqT0_TrUEsdWbw@mail.gmail.com>
To: mr.isdn@googlemail.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] Re: Change in meta-raspberrypi[master]: Fix build error of bcm2835
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
X-List-Received-Date: Tue, 10 Jun 2014 19:38:44 -0000
Content-Type: multipart/alternative; boundary=001a11c3a99a2f6a8104fb807918

--001a11c3a99a2f6a8104fb807918
Content-Type: text/plain; charset=UTF-8

Hello Karsten,


On Sat, May 31, 2014 at 5:56 PM, Karsten Keil (Code Review) <
gerrit2@gherzan.ro> wrote:

> Karsten Keil has uploaded a new change for review.
>
>   https://review.gherzan.ro:8443/97
>
>
> Change subject: Fix build error of bcm2835
> ......................................................................
>
> Fix build error of bcm2835
>
> It did complain about:
> ld: cannot open output file /.../bcm2835-1.36/examples/blink: Is a
> directory
> collect2: error: ld returned 1 exit status
> Tested on openSUSE 13.1
>
>
I can't replicate this issue. You get this error at build time you said.
Would you please give us some more info? In the compile append we build
every example in B/examples. No sub-directories there.


> Change-Id: I3feff26031b7368527f4506a5b98f3840f430815
> Signed-off-by: Karsten Keil <keil@b1-systems.de>
> ---
> M recipes-bcm/bcm2835/bcm2835_1.36.bb
> 1 file changed, 5 insertions(+), 3 deletions(-)
>
>
>   git pull ssh://review.gherzan.ro:29418/meta-raspberrypi
> refs/changes/97/97/1
> --
> To view, visit https://review.gherzan.ro:8443/97
> To unsubscribe, visit https://review.gherzan.ro:8443/settings
>
> Gerrit-MessageType: newchange
> Gerrit-Change-Id: I3feff26031b7368527f4506a5b98f3840f430815
> Gerrit-PatchSet: 1
> Gerrit-Project: meta-raspberrypi
> Gerrit-Branch: master
> Gerrit-Owner: Karsten Keil <mr.isdn@googlemail.com>
>



-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--001a11c3a99a2f6a8104fb807918
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Karsten,<br><div class=3D"gmail_extra"><br><br><div =
class=3D"gmail_quote">On Sat, May 31, 2014 at 5:56 PM, Karsten Keil (Code R=
eview) <span dir=3D"ltr">&lt;<a href=3D"mailto:gerrit2@gherzan.ro" target=
=3D"_blank">gerrit2@gherzan.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Karsten Keil has uploaded a new change for r=
eview.<br>
<br>
=C2=A0 <a href=3D"https://review.gherzan.ro:8443/97" target=3D"_blank">http=
s://review.gherzan.ro:8443/97</a><br>
<br>
<br>
Change subject: Fix build error of bcm2835<br>
......................................................................<br>
<br>
Fix build error of bcm2835<br>
<br>
It did complain about:<br>
ld: cannot open output file /.../bcm2835-1.36/examples/blink: Is a director=
y<br>
collect2: error: ld returned 1 exit status<br>
Tested on openSUSE 13.1<br>
<br></blockquote><div><br></div><div>I can&#39;t replicate this issue. You =
get this error at build time you said. Would you please give us some more i=
nfo? In the compile append we build every example in B/examples. No sub-dir=
ectories there.=C2=A0</div>

<div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
Change-Id: I3feff26031b7368527f4506a5b98f3840f430815<br>
Signed-off-by: Karsten Keil &lt;<a href=3D"mailto:keil@b1-systems.de">keil@=
b1-systems.de</a>&gt;<br>
---<br>
M recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.36.bb" target=3D"_blank">=
bcm2835_1.36.bb</a><br>
1 file changed, 5 insertions(+), 3 deletions(-)<br>
<br>
<br>
=C2=A0 git pull ssh://<a href=3D"http://review.gherzan.ro:29418/meta-raspbe=
rrypi" target=3D"_blank">review.gherzan.ro:29418/meta-raspberrypi</a> refs/=
changes/97/97/1<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
To view, visit <a href=3D"https://review.gherzan.ro:8443/97" target=3D"_bla=
nk">https://review.gherzan.ro:8443/97</a><br>
To unsubscribe, visit <a href=3D"https://review.gherzan.ro:8443/settings" t=
arget=3D"_blank">https://review.gherzan.ro:8443/settings</a><br>
<br>
Gerrit-MessageType: newchange<br>
Gerrit-Change-Id: I3feff26031b7368527f4506a5b98f3840f430815<br>
Gerrit-PatchSet: 1<br>
Gerrit-Project: meta-raspberrypi<br>
Gerrit-Branch: master<br>
Gerrit-Owner: Karsten Keil &lt;<a href=3D"mailto:mr.isdn@googlemail.com">mr=
.isdn@googlemail.com</a>&gt;<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =C2=A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--001a11c3a99a2f6a8104fb807918--
