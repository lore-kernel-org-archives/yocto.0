Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E192E009DF; Mon, 27 Jul 2015 16:03:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.138.91.213 listed in list.dnswl.org]
Received: from nm25-vm2.bullet.mail.ne1.yahoo.com
	(nm25-vm2.bullet.mail.ne1.yahoo.com [98.138.91.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE68CE009B8
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 16:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1438038189; bh=YN6weXwA8yjgZQ/UrLu5vtWbuyk5lcY6D297A662F/A=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=KdPTFnFAGY/xV8NfHjdKmuAxBE9n+DwotLhLXOJbzB0zrroiSDDafNLD8O3kQftCH3iYDYrtW+U4eboJ8Y3vu1FXV5L16Hkxn04WfD4+atsnPGbMtmwIHfrJAHanunQ4bu9DZV1ROK+FLSDZyTnbU591y+yzkVlmDpV6jDBIlgKGc13dBkf+Uhkz3R/IiReIWACKBtnURcs05xk/o1O0Q13fgNeAEoyOvaeZIpVyRKNAX4bE6FlbIWogJdAFpQAXieJOsM0bgrku3ZrZknHrcYWQmolmALj1GaBc0GYsUhX79+98MjEQTcsv3u1XMmP1Fl4DKQEOJ2/upJB+7/9ilw==
Received: from [98.138.100.103] by nm25.bullet.mail.ne1.yahoo.com with NNFMP;
	27 Jul 2015 23:03:09 -0000
Received: from [98.138.88.238] by tm102.bullet.mail.ne1.yahoo.com with NNFMP;
	27 Jul 2015 23:03:09 -0000
Received: from [127.0.0.1] by omp1038.mail.ne1.yahoo.com with NNFMP;
	27 Jul 2015 23:03:09 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 287470.94922.bm@omp1038.mail.ne1.yahoo.com
X-YMail-OSG: FMkXL9sVM1k1yanrpIN.5NZnPQSjN5CAa2r8yYZ_jazQs5rbFdjJ.d4O843SbL5
	RWD0c0PA9HNBwS8Pj4LfyssZzEsiA0zPaaANOaY4vrydsYqV_veBzplCpzBHbh20NUMdEInkHDFG
	YbnRCwcQ4PIxHxa1RVE3sZjG1WH0PWluL4L9ECqb22tujz4xahrR49ZdfUo748NI4fYNayO2D_zn
	eSFa5paurLsBPXEF4ljCTCX2rcbi7rikXnWhoc_lEXVEklfDKSh7aRQgjk5MmwaERwqp9_iGfj1R
	Xa4pGA0nFxsTZMsUmwNAqLPDV.iDpDmMcKRx2ilXRlKA1bLc_yBL2pOgy7YrNTpB4tpc9BfzQNm.
	Id8r4fCnDbEAa7AHNe1Nj48mIoNTeKh.PpLFfKQQywJ0JsjiW8RtI4f6H29VhiZ3CpPTQKZXNoJM
	jsdu58wJAHFrLkJ1bQDjgv755A17TKWr5LIqfj.C0cG1C1CtCK6YFKYTzxxWMgAleaO39_TOTLGi
	Y7LIVAHG9GKEF1yAl9vCB2FVrf4kRqOEd0Iw-
Received: by 98.138.101.172; Mon, 27 Jul 2015 23:03:08 +0000 
Date: Mon, 27 Jul 2015 23:03:08 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: Victor Rodriguez <vm.rod25@gmail.com>
Message-ID: <872437073.3382959.1438038188182.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <CAK5mtewWvCSGNs-Hx2qpVS-75Pkn+_6b9y31a0Vz8M=0F+3FYA@mail.gmail.com>
References: <CAK5mtewWvCSGNs-Hx2qpVS-75Pkn+_6b9y31a0Vz8M=0F+3FYA@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Richard Collins <richard.collins@axenterprize.com>
Subject: Re: fido LICENSE error opencv
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 27 Jul 2015 23:03:14 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_3382958_875921665.1438038188178"

------=_Part_3382958_875921665.1438038188178
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,I got openCV to detect 2 C920 cameras using a python api.I starte=
d a repository https://github.com/develone/raspberrypi2_yocto
I am currently using fido branch.The things that I have been able to create=
bitbake rpi-basic-image=20
bitbake core-image-sato with addition additional libs and applications see =
the file wkg_conf_files/core-image-sato.bbbitbake meta-toolchainIf you have=
 any questions=C2=A0 feel free to contract me.=C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613=20


     On Monday, July 27, 2015 9:53 AM, Victor Rodriguez <vm.rod25@gmail.com=
> wrote:
  =20

 On Mon, Jul 27, 2015 at 7:34 AM, Edward Vidal <develone@sbcglobal.net> wro=
te:
> Hello All,
> I was able to fix the license error in fido by adding commercial_x264 to
> LICENSE_FLAGS_WHITELIST variable.
>
> LICENSE_FLAGS_WHITELIST =3D "commercial_libmad commercial_mpeg2dec
> commercial_libav commercial_ffmpeg commercial_x264"
>
> Opencv was installed on the Raspberry core-image-sato with the following
> changes
>
> git diff meta/recipes-sato/images/core-image-sato.bb
> diff --git a/meta/recipes-sato/images/core-image-sato.bb
> b/meta/recipes-sato/ima
> index e3246d2..f4b2286 100644
> --- a/meta/recipes-sato/images/core-image-sato.bb
> +++ b/meta/recipes-sato/images/core-image-sato.bb
> @@ -8,4 +8,9 @@ LICENSE =3D "MIT"
>
>=C2=A0 inherit core-image
>
> -IMAGE_INSTALL +=3D "packagegroup-core-x11-sato-games"
> +IMAGE_INSTALL +=3D "packagegroup-core-x11-sato-games kernel-dev xterm gi=
t \
> + jasper gsl gsl-dev python-netserver python-pygtk python-pygtk-dev \
> + python-numpy liba52 liba52-dev libmad libmad-dev libmad-staticdev \
> + chkconfig v4l-utils python-imaging parted python-distribute \
> + python-pyrex python-pexpect gperf tree libav libav-dev \
> + x264 x264-dev libav libav-dev opencv opencv-samples cmake"
>
> What is the preferred method of creating an image with additional softwar=
e
> installed?
>
> Thanks for all the help.
>
> Edward Vidal Jr.
> e-mail develone@sbcglobal.net
> 915-595-1613
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Hi

I had the same problem with opencv in yocto . There is a trend about
this in mailign list:

https://www.mail-archive.com/yocto@yoctoproject.org/msg24746.html

I am pushing to do a change in opencv receipt

Hope it helps


  

------=_Part_3382958_875921665.1438038188178
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1438019301590_67309">Hello All,</div>=
<div id=3D"yui_3_16_0_1_1438019301590_65516">I got openCV to detect 2 C920 =
cameras using a python api.</div><div dir=3D"ltr" id=3D"yui_3_16_0_1_143801=
9301590_66783">I started a repository <a id=3D"yui_3_16_0_1_1438019301590_6=
6782" href=3D"https://github.com/develone/raspberrypi2_yocto">https://githu=
b.com/develone/raspberrypi2_yocto</a><br></div><div id=3D"yui_3_16_0_1_1438=
019301590_67057"><span>I am currently using fido branch.</span></div><div><=
span>The things that I have been able to create</span></div><div dir=3D"ltr=
"><span>bitbake rpi-basic-image <br></span></div><div id=3D"yui_3_16_0_1_14=
38019301590_68843" dir=3D"ltr"><span>bitbake core-image-sato with addition =
additional libs and applications see the file wkg_conf_files/core-image-sat=
o.bb</span></div><div dir=3D"ltr"><span>bitbake meta-toolchain</span></div>=
<div id=3D"yui_3_16_0_1_1438019301590_69358" dir=3D"ltr"><span>If you have =
any questions&nbsp; feel free to contract me.</span></div><div dir=3D"ltr">=
<span></span></div><div>&nbsp;</div><div><div>Edward Vidal Jr.<br>e-mail de=
velone@sbcglobal.net<br>915-595-1613</div></div>  <br><div class=3D"qtdSepa=
rateBR"><br><br></div><div style=3D"display: block;" class=3D"yahoo_quoted"=
> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Aria=
l, Lucida Grande, sans-serif; font-size: 16px;"> <div style=3D"font-family:=
 HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif=
; font-size: 16px;"> <div dir=3D"ltr"> <font size=3D"2" face=3D"Arial"> On =
Monday, July 27, 2015 9:53 AM, Victor Rodriguez &lt;vm.rod25@gmail.com&gt; =
wrote:<br> </font> </div>  <br><br> <div class=3D"y_msg_container">On Mon, =
Jul 27, 2015 at 7:34 AM, Edward Vidal &lt;<a shape=3D"rect" ymailto=3D"mail=
to:develone@sbcglobal.net" href=3D"mailto:develone@sbcglobal.net">develone@=
sbcglobal.net</a>&gt; wrote:<div class=3D"yqt1746825412" id=3D"yqtfd04185">=
<br clear=3D"none">&gt; Hello All,<br clear=3D"none">&gt; I was able to fix=
 the license error in fido by adding commercial_x264 to<br clear=3D"none">&=
gt; LICENSE_FLAGS_WHITELIST variable.<br clear=3D"none">&gt;<br clear=3D"no=
ne">&gt; LICENSE_FLAGS_WHITELIST =3D "commercial_libmad commercial_mpeg2dec=
<br clear=3D"none">&gt; commercial_libav commercial_ffmpeg commercial_x264"=
<br clear=3D"none">&gt;<br clear=3D"none">&gt; Opencv was installed on the =
Raspberry core-image-sato with the following<br clear=3D"none">&gt; changes=
<br clear=3D"none">&gt;<br clear=3D"none">&gt; git diff meta/recipes-sato/i=
mages/core-image-sato.bb<br clear=3D"none">&gt; diff --git a/meta/recipes-s=
ato/images/core-image-sato.bb<br clear=3D"none">&gt; b/meta/recipes-sato/im=
a<br clear=3D"none">&gt; index e3246d2..f4b2286 100644<br clear=3D"none">&g=
t; --- a/meta/recipes-sato/images/core-image-sato.bb<br clear=3D"none">&gt;=
 +++ b/meta/recipes-sato/images/core-image-sato.bb<br clear=3D"none">&gt; @=
@ -8,4 +8,9 @@ LICENSE =3D "MIT"<br clear=3D"none">&gt;<br clear=3D"none">&=
gt;&nbsp; inherit core-image<br clear=3D"none">&gt;<br clear=3D"none">&gt; =
-IMAGE_INSTALL +=3D "packagegroup-core-x11-sato-games"<br clear=3D"none">&g=
t; +IMAGE_INSTALL +=3D "packagegroup-core-x11-sato-games kernel-dev xterm g=
it \<br clear=3D"none">&gt; + jasper gsl gsl-dev python-netserver python-py=
gtk python-pygtk-dev \<br clear=3D"none">&gt; + python-numpy liba52 liba52-=
dev libmad libmad-dev libmad-staticdev \<br clear=3D"none">&gt; + chkconfig=
 v4l-utils python-imaging parted python-distribute \<br clear=3D"none">&gt;=
 + python-pyrex python-pexpect gperf tree libav libav-dev \<br clear=3D"non=
e">&gt; + x264 x264-dev libav libav-dev opencv opencv-samples cmake"<br cle=
ar=3D"none">&gt;<br clear=3D"none">&gt; What is the preferred method of cre=
ating an image with additional software<br clear=3D"none">&gt; installed?<b=
r clear=3D"none">&gt;<br clear=3D"none">&gt; Thanks for all the help.<br cl=
ear=3D"none">&gt;<br clear=3D"none">&gt; Edward Vidal Jr.<br clear=3D"none"=
>&gt; e-mail <a shape=3D"rect" ymailto=3D"mailto:develone@sbcglobal.net" hr=
ef=3D"mailto:develone@sbcglobal.net">develone@sbcglobal.net</a><br clear=3D=
"none">&gt; 915-595-1613</div><br clear=3D"none">&gt;<br clear=3D"none">&gt=
; --<br clear=3D"none">&gt; _______________________________________________=
<br clear=3D"none">&gt; yocto mailing list<br clear=3D"none">&gt; <a shape=
=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yo=
ctoproject.org">yocto@yoctoproject.org</a><br clear=3D"none">&gt; <a shape=
=3D"rect" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"=
_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br clear=3D"none"=
>&gt;<br clear=3D"none"><br clear=3D"none">Hi<br clear=3D"none"><br clear=
=3D"none">I had the same problem with opencv in yocto . There is a trend ab=
out<br clear=3D"none">this in mailign list:<br clear=3D"none"><br clear=3D"=
none"><a shape=3D"rect" href=3D"https://www.mail-archive.com/yocto@yoctopro=
ject.org/msg24746.html" target=3D"_blank">https://www.mail-archive.com/yoct=
o@yoctoproject.org/msg24746.html</a><br clear=3D"none"><br clear=3D"none">I=
 am pushing to do a change in opencv receipt<br clear=3D"none"><br clear=3D=
"none">Hope it helps<div class=3D"yqt1746825412" id=3D"yqtfd20161"><br clea=
r=3D"none"></div><br><br></div>  </div> </div>  </div></div></body></html>

------=_Part_3382958_875921665.1438038188178--
