Return-Path: <abayiz@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99095E00B28; Thu, 18 May 2017 06:38:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (abayiz[at]yahoo.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [66.163.187.230 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [66.163.187.230 listed in list.dnswl.org]
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic332-49.consmr.mail.ne1.yahoo.com
	(sonic332-49.consmr.mail.ne1.yahoo.com [66.163.187.230])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44077E00AE4
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 06:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1495114704; bh=pIAkskktERyeQG37ia3h/xey6hHk2wdTbf8kJ8A5ob0=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=t7N9CVa2Ld4jCa7ty8QwQzCP4TwInoQqIczSLWVGDQYC3+776Qe4x7lXk6xsYBKXlQgM7advSxGjulJ6tof+6Y5uewiff28NIbXgdnip98mzU3UqiGPfFn5i4R3SdMoDI/HuvD8QOGrLfB7MDSWe/dOTPa9Vf8/lUW8/pXCa/PopSHPp9KwZyUyHHu74vBLC2PyPI3HuPlB1AH7a1bKRyh1bCUIEEqtpUloHsQrFmrHatvzMklCZat17SyKm3Qp03dVPVA3AGLGZlLYUwEhzdcbxdEWHhmf3pt5c52mZUH15TcPJyU5Iz3IzFWigkFhktnY7rDiFtfN+R8xE1AZovg==
X-YMail-OSG: neJ_GkgVM1m2Ln6kJJ4j3yJwtp6.mgm4AaS59mBVNwrZEXeNIgf4GVtj5g5SG7h
	.cxFFUOIagLngSG_76ExIwRxl8r2_yRD5UiGCOfyHIB7NcjcPrce2bO5DPvUE0Bss6ZY7DcqCU5H
	LVOAoBI8Mlj0MsBA6m4.8rwo3ZGw_nurGw4.VLkBZr5pgCg83LRmziMQsMokwW6sb5IfT6Z51nwu
	OZ36TbkTi7jo4bKCpijo8xhnvoxJ8xOJ5f8RltLhTtgkSjnuZL_rOb2AS.d13b4zlA9fC0hvFp9W
	kp58Gknt4LxPT8QdYTO00N8rkodEWwnDL05oyOBXw0fdki6TE2E3hzGUqVDUVBM4zduehexRMjdS
	qTvxPBYVpHwfsdIcR6uZK6X3gaKejcMZpzL5dR1Z2voWsli4VX0jvxZ5hOpPN3jVI47ZIoSltXtL
	ygKLEm5ZKmOT6gAkzEOFU124FdO6vSZwr0uSMpswFxb99B.xHJJP2_YAmyPmEuLmEociyL2sLPyu
	BkfDOFL4L2IAuLgQv0EmXXh6fdg--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic332.consmr.mail.ne1.yahoo.com with HTTP;
	Thu, 18 May 2017 13:38:24 +0000
Date: Thu, 18 May 2017 13:34:22 +0000 (UTC)
From: Abayiz <abayiz@yahoo.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>, 
	"jussi.kukkonen@intel.com" <jussi.kukkonen@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1239408292.652958.1495114462881@mail.yahoo.com>
In-Reply-To: <1495113422.12055.56.camel@collabora.co.uk>
References: <853904707.1405328.1495010277595.ref@mail.yahoo.com>
	<853904707.1405328.1495010277595@mail.yahoo.com>
	<1495091834.12055.46.camel@collabora.co.uk>
	<1879655844.551173.1495108954174@mail.yahoo.com>
	<1495113422.12055.56.camel@collabora.co.uk>
MIME-Version: 1.0
X-Mailer: WebService/1.1.9679 YahooMailNeo Mozilla/5.0 (X11; Ubuntu;
	Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0
Subject: Re: Install Torch7
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Abayiz <abayiz@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 18 May 2017 13:38:26 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_652957_935783627.1495114462879"

------=_Part_652957_935783627.1495114462879
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Fabien and Jussi,=20

Thank you very much for your time and concern.=20
After your suggestion I tried to find out all those packages installed by "=
bash install-deps". However I found that these deps are required to build J=
IT version of Lua, as mentioned on the official Torch website.=20
So instead I used Lua 5.2 instead of JIT, which does not require to run "ba=
sh install-deps" first. And this time after I generated Torch recipe using =
devtool and tried to build it, the compilation proceeded to nearly 96%, the=
n thows an error saying:
Could NOT find Wget (missing:=C2=A0 WGET_EXECUTABLE)
| -- Could NOT find MD5 (missing:=C2=A0 MD5_EXECUTABLE)
| -- curl found instead of wget :/home/abayiz/trunk/poky/build-hello/tmp/wo=
rk/i586-poky-linux/torch/2.1devel+git999-r0/recipe-sysroot-native/usr/bin/c=
url
| CMake Error at exe/luajit-rocks/luarocks/CMakeLists.txt:77 (MESSAGE):
|=C2=A0=C2=A0 MD5 checker not found

However in the 'devtool' generated recipe file, I found this line:
# NOTE: unable to map the following CMake package dependencies: CUDA CUDNN =
BLAS ARM Torch SSE MD5 MAGMA LAPACK Readline
DEPENDS =3D "wget jpeg ncurses libpng"

Seems like wget is already set as built-time dependency but the system does=
n't see it, as well as MD5. Do you have any suggestion for that?Thank you a=
gain.=20
Best. =20

    On Thursday, May 18, 2017 4:17 PM, Fabien Lahoudere <fabien.lahoudere@c=
ollabora.co.uk> wrote:
=20

 On Thu, 2017-05-18 at 12:02 +0000, Abayiz wrote:
> Dear Fabien,=C2=A0
>=20
> Thank you very much for your reply.=C2=A0
> No, I didn't try 'devtool edit-recipe torch' to add dependencies. Actuall=
y I didn't know how to
> add them. Is there any way to directly call that .sh file there??
> Could you give me a minimal example to illustrate it?=C2=A0

Usually we add build dependencies with DEPENDS =3D "..." and runtime depend=
encies with RDEPENDS =3D
"..."

So you need to check dependencies installed by "bash install-deps".
Can you list them? Maybe recipes exists in which case you have to add them =
to the variable described
above.


>=20
> Thank you.=C2=A0
>=20
>=20
>=20
> On Thursday, May 18, 2017 10:17 AM, Fabien Lahoudere <fabien.lahoudere@co=
llabora.co.uk> wrote:
>=20
>=20
> On Wed, 2017-05-17 at 08:37 +0000, Abayiz wrote:
> > Dear all,=C2=A0
> >=C2=A0
> > I'm quite new to Yocto, I've successfully built qemu and ran helloworld=
 example on it. Now I'm
> > trying to install Torch 7 (https://github.com/torch/torch7) library. Wh=
at I did is:=C2=A0
> >=C2=A0
> > devtool add torch https://github.com/torch/torch7.git
> > devtool build torch
> >=C2=A0
> > But the build exits with error, in the attachment I share the log file =
with you.=C2=A0
> > My host machine runs Ubuntu 16.04 LTS, and Torch7 is successfully runni=
ng on it. The
> installation
> > of Torch first requires to run the 'bash install-deps' command on Ubunt=
u. My rough estimation is
> > that Yocto seems like cannot build those dependencies automatically.=C2=
=A0
> >=C2=A0
> > Could someone give any help on it? Installing Torch7 is very important =
to my project now, thank
> > you in advance.=C2=A0
> >=C2=A0
>=20
> Do you try "devtool edit-recipe torch" to add dependencies to the recipe =
and configure "cache
> variables" approprietly?
>=20
>=20
> > Best,=C2=A0
> > Abayiz
>=20
> >=C2=A0
> --=C2=A0
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20


  =20

------=_Part_652957_935783627.1495114462879
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:=E6=A8=99=E6=A5=B7=E9=AB=94, dfkai-sb;font-size:16px"><div id=3D=
"yui_3_16_0_ym19_1_1495108662590_32954">Dear Fabien and Jussi, <br></div><d=
iv id=3D"yui_3_16_0_ym19_1_1495108662590_32620"><br></div><div id=3D"yui_3_=
16_0_ym19_1_1495108662590_32618">Thank you very much for your time and conc=
ern. <br></div><div id=3D"yui_3_16_0_ym19_1_1495108662590_32619">After your=
 suggestion I tried to find out all those packages installed by "bash insta=
ll-deps". However I found that these deps are required to build JIT version=
 of Lua, as mentioned on the official Torch website. <br></div><div id=3D"y=
ui_3_16_0_ym19_1_1495108662590_32955">So instead I used Lua 5.2 instead of =
JIT, which does not require to run "bash install-deps" first. And this time=
 after I generated Torch recipe using devtool and tried to build it, the co=
mpilation proceeded to nearly 96%, then thows an error saying:</div><div id=
=3D"yui_3_16_0_ym19_1_1495108662590_32956"><br></div><div id=3D"yui_3_16_0_=
ym19_1_1495108662590_32959" dir=3D"ltr"><i>Could NOT find Wget (missing:&nb=
sp; WGET_EXECUTABLE)<br id=3D"yui_3_16_0_ym19_1_1495108662590_32968">| -- C=
ould NOT find MD5 (missing:&nbsp; MD5_EXECUTABLE)<br id=3D"yui_3_16_0_ym19_=
1_1495108662590_32969">| -- curl found instead of wget :/home/abayiz/trunk/=
poky/build-hello/tmp/work/i586-poky-linux/torch/2.1devel+git999-r0/recipe-s=
ysroot-native/usr/bin/curl<br id=3D"yui_3_16_0_ym19_1_1495108662590_32970">=
| CMake Error at exe/luajit-rocks/luarocks/CMakeLists.txt:77 (MESSAGE):<br =
id=3D"yui_3_16_0_ym19_1_1495108662590_32971">|&nbsp;&nbsp; MD5 checker not =
found</i><br></div><div id=3D"yui_3_16_0_ym19_1_1495108662590_32609"><span>=
<br></span></div><div id=3D"yui_3_16_0_ym19_1_1495108662590_33064"><span id=
=3D"yui_3_16_0_ym19_1_1495108662590_33075">However in the 'devtool' generat=
ed recipe file, I found this line:</span></div><div id=3D"yui_3_16_0_ym19_1=
_1495108662590_33506"><span id=3D"yui_3_16_0_ym19_1_1495108662590_33075"><b=
r></span></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1495108662590_33077=
"><span id=3D"yui_3_16_0_ym19_1_1495108662590_33076"><i id=3D"yui_3_16_0_ym=
19_1_1495108662590_33510"># NOTE: unable to map the following CMake package=
 dependencies: CUDA CUDNN BLAS ARM Torch SSE MD5 MAGMA LAPACK Readline<br i=
d=3D"yui_3_16_0_ym19_1_1495108662590_33070">DEPENDS =3D "wget jpeg ncurses =
libpng"</i><br></span></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_149510=
8662590_33086"><span id=3D"yui_3_16_0_ym19_1_1495108662590_33076"><br></spa=
n></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1495108662590_33107"><span=
 id=3D"yui_3_16_0_ym19_1_1495108662590_33076">Seems like wget is already se=
t as built-time dependency but the system doesn't see it, as well as MD5. D=
o you have any suggestion for that?</span></div><div dir=3D"ltr" id=3D"yui_=
3_16_0_ym19_1_1495108662590_33151"><span id=3D"yui_3_16_0_ym19_1_1495108662=
590_33076">Thank you again. <br></span></div><div dir=3D"ltr" id=3D"yui_3_1=
6_0_ym19_1_1495108662590_33152"><span id=3D"yui_3_16_0_ym19_1_1495108662590=
_33076">Best. </span></div> <div class=3D"qtdSeparateBR"><br><br></div><div=
 class=3D"yahoo_quoted" style=3D"display: block;"> <div style=3D"font-famil=
y: =E6=A8=99=E6=A5=B7=E9=AB=94, dfkai-sb; font-size: 16px;"> <div style=3D"=
font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande=
, sans-serif; font-size: 16px;"> <div dir=3D"ltr"><font size=3D"2" face=3D"=
Arial"> On Thursday, May 18, 2017 4:17 PM, Fabien Lahoudere &lt;fabien.laho=
udere@collabora.co.uk&gt; wrote:<br></font></div>  <br><br> <div class=3D"y=
_msg_container"><div dir=3D"ltr">On Thu, 2017-05-18 at 12:02 +0000, Abayiz =
wrote:<br clear=3D"none">&gt; Dear Fabien,&nbsp;<br clear=3D"none">&gt; <br=
 clear=3D"none">&gt; Thank you very much for your reply.&nbsp;<br clear=3D"=
none">&gt; No, I didn't try 'devtool edit-recipe torch' to add dependencies=
. Actually I didn't know how to<br clear=3D"none">&gt; add them. Is there a=
ny way to directly call that .sh file there??<br clear=3D"none">&gt; Could =
you give me a minimal example to illustrate it?&nbsp;<br clear=3D"none"><br=
 clear=3D"none">Usually we add build dependencies with DEPENDS =3D "..." an=
d runtime dependencies with RDEPENDS =3D<br clear=3D"none">"..."<br clear=
=3D"none"><br clear=3D"none">So you need to check dependencies installed by=
 "bash install-deps".<br clear=3D"none">Can you list them? Maybe recipes ex=
ists in which case you have to add them to the variable described<br clear=
=3D"none">above.<div class=3D"yqt6645268813" id=3D"yqtfd61146"><br clear=3D=
"none"><br clear=3D"none"><br clear=3D"none">&gt; <br clear=3D"none">&gt; T=
hank you.&nbsp;<br clear=3D"none">&gt; <br clear=3D"none">&gt; <br clear=3D=
"none">&gt; <br clear=3D"none">&gt; On Thursday, May 18, 2017 10:17 AM, Fab=
ien Lahoudere &lt;<a shape=3D"rect" ymailto=3D"mailto:fabien.lahoudere@coll=
abora.co.uk" href=3D"mailto:fabien.lahoudere@collabora.co.uk">fabien.lahoud=
ere@collabora.co.uk</a>&gt; wrote:<br clear=3D"none">&gt; <br clear=3D"none=
">&gt; <br clear=3D"none">&gt; On Wed, 2017-05-17 at 08:37 +0000, Abayiz wr=
ote:<br clear=3D"none">&gt; &gt; Dear all,&nbsp;<br clear=3D"none">&gt; &gt=
;&nbsp;<br clear=3D"none">&gt; &gt; I'm quite new to Yocto, I've successful=
ly built qemu and ran helloworld example on it. Now I'm<br clear=3D"none">&=
gt; &gt; trying to install Torch 7 (<a shape=3D"rect" href=3D"https://githu=
b.com/torch/torch7" target=3D"_blank">https://github.com/torch/torch7</a>) =
library. What I did is:&nbsp;<br clear=3D"none">&gt; &gt;&nbsp;<br clear=3D=
"none">&gt; &gt; devtool add torch <a shape=3D"rect" href=3D"https://github=
.com/torch/torch7.git" target=3D"_blank">https://github.com/torch/torch7.gi=
t</a><br clear=3D"none">&gt; &gt; devtool build torch<br clear=3D"none">&gt=
; &gt;&nbsp;<br clear=3D"none">&gt; &gt; But the build exits with error, in=
 the attachment I share the log file with you.&nbsp;<br clear=3D"none">&gt;=
 &gt; My host machine runs Ubuntu 16.04 LTS, and Torch7 is successfully run=
ning on it. The<br clear=3D"none">&gt; installation<br clear=3D"none">&gt; =
&gt; of Torch first requires to run the 'bash install-deps' command on Ubun=
tu. My rough estimation is<br clear=3D"none">&gt; &gt; that Yocto seems lik=
e cannot build those dependencies automatically.&nbsp;<br clear=3D"none">&g=
t; &gt;&nbsp;<br clear=3D"none">&gt; &gt; Could someone give any help on it=
? Installing Torch7 is very important to my project now, thank<br clear=3D"=
none">&gt; &gt; you in advance.&nbsp;<br clear=3D"none">&gt; &gt;&nbsp;<br =
clear=3D"none">&gt; <br clear=3D"none">&gt; Do you try "devtool edit-recipe=
 torch" to add dependencies to the recipe and configure "cache<br clear=3D"=
none">&gt; variables" approprietly?<br clear=3D"none">&gt; <br clear=3D"non=
e">&gt; <br clear=3D"none">&gt; &gt; Best,&nbsp;<br clear=3D"none">&gt; &gt=
; Abayiz<br clear=3D"none">&gt; <br clear=3D"none">&gt; &gt;&nbsp;<br clear=
=3D"none">&gt; --&nbsp;<br clear=3D"none">&gt; ____________________________=
___________________<br clear=3D"none">&gt; yocto mailing list<br clear=3D"n=
one">&gt; <a shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"n=
one">&gt; <a shape=3D"rect" href=3D"https://lists.yoctoproject.org/listinfo=
/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a>=
<br clear=3D"none">&gt; <br clear=3D"none">&gt; <br clear=3D"none">&gt; <br=
 clear=3D"none"></div></div><br><br></div>  </div> </div>  </div></div></bo=
dy></html>

------=_Part_652957_935783627.1495114462879--
