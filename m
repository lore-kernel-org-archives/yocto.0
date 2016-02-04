Return-Path: <sridhar.pitchai@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A516BE00C66; Wed,  3 Feb 2016 17:37:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sridhar.pitchai[at]outlook.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.116.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BLU004-OMC1S34.hotmail.com (blu004-omc1s34.hotmail.com
	[65.55.116.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8011E00C64
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 17:37:22 -0800 (PST)
Received: from BLU168-W93 ([65.55.116.9]) by BLU004-OMC1S34.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Wed, 3 Feb 2016 17:37:22 -0800
X-TMN: [LjQmsW1XWgYUwQFGp02frDxoToKwuCpM]
X-Originating-Email: [sridhar.pitchai@outlook.com]
Message-ID: <BLU168-W933818F9DA64A2BA0C3282EBD10@phx.gbl>
From: Sridhar Pitchai <sridhar.pitchai@outlook.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Feb 2016 17:37:21 -0800
Importance: Normal
In-Reply-To: <F454D711-5EBF-45CA-9E9C-8344C6A6E558@gmail.com>
References: <BLU168-W10417EEA6212C31D453447BEBD10@phx.gbl>,
	<F454D711-5EBF-45CA-9E9C-8344C6A6E558@gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 04 Feb 2016 01:37:22.0070 (UTC)
	FILETIME=[97B0E360:01D15EEC]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: error: code model kernel does not support PIC mode
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
X-List-Received-Date: Thu, 04 Feb 2016 01:37:23 -0000
Content-Type: multipart/alternative;
	boundary="_02bc4a3e-6ff6-433a-90d2-11720795e926_"

--_02bc4a3e-6ff6-433a-90d2-11720795e926_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Sure=2C i will get rid of it.  But i get the same error without it as well.=
  I added it to see if this can help get the compile through. but it didn't=
.=20
What am i missing here. the MACHINE is "qemux84-64"

Subject: Re: [yocto] error: code model kernel does not support PIC mode
From: raj.khem@gmail.com
Date: Wed=2C 3 Feb 2016 17:30:38 -0800
CC: yocto@yoctoproject.org
To: sridhar.pitchai@outlook.com


On Feb 3=2C 2016=2C at 5:24 PM=2C Sridhar Pitchai <sridhar.pitchai@outlook.=
com> wrote:Hi=2CI trying to write a simple recipe which will be building so=
me static libraries. the makefile has the "-fPIC" enabled. when i try to co=
mpile it using simple yocto recipe=2C i am getting this error.
"| /home/sridhar/workspace/exp/yoc/build/tmp/work/corei7-64-poky-linux/sdk/=
1.0-r0/sdk-all-6.4.8/systems/linux/kernel/modules/shared/uk-rtrans.c:1:0: e=
rror: code model kernel does not support PIC mode|  /**********************=
*************************************************|  ^

"
recipe:
"SUMMARY =3D "TEST"
LICENSE =3D "CLOSED"PR =3D "r0"PROVIDES =3D "pi-swos-bcm-sdk"
# BCM SDK inconsistant with parallel makePARALLEL_MAKE =3D ""
FILESEXTRAPATHS_prepend =3D "${THISDIR}:"SRC_URI =3D "file://6.4.8/sdk.tar.=
gz \    "
MAKEFLAGS_append =3D " -fPIC =93
why do you need this ? get rid of it. Atleast for kernel module part.
do_compile() {    oe_runmake -C ${WORKDIR}/sdk-all-6.4.8/systems/linux/user=
/x86-generic_64-3_19}"
Can someone help me on this.
thanks=2CSridhar Pitchai-- _______________________________________________y=
octo mailing listyocto@yoctoproject.orghttps://lists.yoctoproject.org/listi=
nfo/yocto
 		 	   		  =

--_02bc4a3e-6ff6-433a-90d2-11720795e926_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Sure=2C i will get rid of it. &n=
bsp=3BBut i get the same error without it as well. &nbsp=3BI added it to se=
e if this can help get the compile through. but it didn't.&nbsp=3B<div><br>=
</div><div>What am i missing here. the MACHINE is "qemux84-64"<br><br><div>=
<hr id=3D"stopSpelling">Subject: Re: [yocto] error: code model kernel does =
not support PIC mode<br>From: raj.khem@gmail.com<br>Date: Wed=2C 3 Feb 2016=
 17:30:38 -0800<br>CC: yocto@yoctoproject.org<br>To: sridhar.pitchai@outloo=
k.com<br><br><br><div><blockquote><div>On Feb 3=2C 2016=2C at 5:24 PM=2C Sr=
idhar Pitchai &lt=3B<a href=3D"mailto:sridhar.pitchai@outlook.com">sridhar.=
pitchai@outlook.com</a>&gt=3B wrote:</div><br class=3D"ecxApple-interchange=
-newline"><div><div dir=3D"ltr" style=3D"font-family:Calibri=3Bfont-size:16=
px=3Bfont-style:normal=3Bfont-variant:normal=3Bfont-weight:normal=3Bletter-=
spacing:normal=3Btext-align:start=3Btext-indent:0px=3Btext-transform:none=
=3Bwhite-space:normal=3Bword-spacing:0px=3B">Hi=2C<div>I trying to write a =
simple recipe which will be building some static libraries. the makefile ha=
s the "-fPIC" enabled. when i try to compile it using simple yocto recipe=
=2C i am getting this error.</div><div><br></div><div>"</div><div><div>| /h=
ome/sridhar/workspace/exp/yoc/build/tmp/work/corei7-64-poky-linux/sdk/1.0-r=
0/sdk-all-6.4.8/systems/linux/kernel/modules/shared/uk-rtrans.c:1:0: error:=
 code model kernel does not support PIC mode</div><div>| &nbsp=3B/*********=
**************************************************************</div><div>| =
&nbsp=3B^</div></div></div></div></blockquote><div><br></div><blockquote><d=
iv><div dir=3D"ltr" style=3D"font-family:Calibri=3Bfont-size:16px=3Bfont-st=
yle:normal=3Bfont-variant:normal=3Bfont-weight:normal=3Bletter-spacing:norm=
al=3Btext-align:start=3Btext-indent:0px=3Btext-transform:none=3Bwhite-space=
:normal=3Bword-spacing:0px=3B"><div><br></div><div><span style=3D"font-size=
:12pt=3B">"</span></div><div><br></div><div>recipe:</div><div><br></div><di=
v>"</div><div><div>SUMMARY =3D "TEST"</div><div><br></div><div>LICENSE =3D =
"CLOSED"</div><div>PR =3D "r0"</div><div>PROVIDES =3D "pi-swos-bcm-sdk"</di=
v><div><br></div><div># BCM SDK inconsistant with parallel make</div><div>P=
ARALLEL_MAKE =3D ""</div><div><br></div><div>FILESEXTRAPATHS_prepend =3D "$=
{THISDIR}:"</div><div>SRC_URI =3D "<a target=3D"_blank">file://6.4.8/sdk.ta=
r.gz</a><span class=3D"ecxApple-converted-space">&nbsp=3B</span>\</div><div=
>&nbsp=3B &nbsp=3B "</div><div><br></div><div>MAKEFLAGS_append =3D " -fPIC =
=93</div></div></div></div></blockquote><div><br></div><div>why do you need=
 this ? get rid of it. Atleast for kernel module part.</div><br><blockquote=
><div><div dir=3D"ltr" style=3D"font-family:Calibri=3Bfont-size:16px=3Bfont=
-style:normal=3Bfont-variant:normal=3Bfont-weight:normal=3Bletter-spacing:n=
ormal=3Btext-align:start=3Btext-indent:0px=3Btext-transform:none=3Bwhite-sp=
ace:normal=3Bword-spacing:0px=3B"><div><div>do_compile() {</div><div>&nbsp=
=3B &nbsp=3B oe_runmake -C ${WORKDIR}/sdk-all-6.4.8/systems/linux/user/x86-=
generic_64-3_19</div><div>}</div></div><div>"</div><div><br></div><div>Can =
someone help me on this.</div><div><br></div><div>thanks=2C</div><div>Sridh=
ar Pitchai</div></div><span style=3D"font-family:Calibri=3Bfont-size:16px=
=3Bfont-style:normal=3Bfont-variant:normal=3Bfont-weight:normal=3Bletter-sp=
acing:normal=3Btext-align:start=3Btext-indent:0px=3Btext-transform:none=3Bw=
hite-space:normal=3Bword-spacing:0px=3Bdisplay:inline !important=3B">--<spa=
n class=3D"ecxApple-converted-space">&nbsp=3B</span></span><br style=3D"fon=
t-family:Calibri=3Bfont-size:16px=3Bfont-style:normal=3Bfont-variant:normal=
=3Bfont-weight:normal=3Bletter-spacing:normal=3Btext-align:start=3Btext-ind=
ent:0px=3Btext-transform:none=3Bwhite-space:normal=3Bword-spacing:0px=3B"><=
span style=3D"font-family:Calibri=3Bfont-size:16px=3Bfont-style:normal=3Bfo=
nt-variant:normal=3Bfont-weight:normal=3Bletter-spacing:normal=3Btext-align=
:start=3Btext-indent:0px=3Btext-transform:none=3Bwhite-space:normal=3Bword-=
spacing:0px=3Bdisplay:inline !important=3B">_______________________________=
________________</span><br style=3D"font-family:Calibri=3Bfont-size:16px=3B=
font-style:normal=3Bfont-variant:normal=3Bfont-weight:normal=3Bletter-spaci=
ng:normal=3Btext-align:start=3Btext-indent:0px=3Btext-transform:none=3Bwhit=
e-space:normal=3Bword-spacing:0px=3B"><span style=3D"font-family:Calibri=3B=
font-size:16px=3Bfont-style:normal=3Bfont-variant:normal=3Bfont-weight:norm=
al=3Bletter-spacing:normal=3Btext-align:start=3Btext-indent:0px=3Btext-tran=
sform:none=3Bwhite-space:normal=3Bword-spacing:0px=3Bdisplay:inline !import=
ant=3B">yocto mailing list</span><br style=3D"font-family:Calibri=3Bfont-si=
ze:16px=3Bfont-style:normal=3Bfont-variant:normal=3Bfont-weight:normal=3Ble=
tter-spacing:normal=3Btext-align:start=3Btext-indent:0px=3Btext-transform:n=
one=3Bwhite-space:normal=3Bword-spacing:0px=3B"><a href=3D"mailto:yocto@yoc=
toproject.org" style=3D"font-family:Calibri=3Bfont-size:16px=3Bfont-style:n=
ormal=3Bfont-variant:normal=3Bfont-weight:normal=3Bletter-spacing:normal=3B=
text-align:start=3Btext-indent:0px=3Btext-transform:none=3Bwhite-space:norm=
al=3Bword-spacing:0px=3B">yocto@yoctoproject.org</a><br style=3D"font-famil=
y:Calibri=3Bfont-size:16px=3Bfont-style:normal=3Bfont-variant:normal=3Bfont=
-weight:normal=3Bletter-spacing:normal=3Btext-align:start=3Btext-indent:0px=
=3Btext-transform:none=3Bwhite-space:normal=3Bword-spacing:0px=3B"><a href=
=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"font-family:Cal=
ibri=3Bfont-size:16px=3Bfont-style:normal=3Bfont-variant:normal=3Bfont-weig=
ht:normal=3Bletter-spacing:normal=3Btext-align:start=3Btext-indent:0px=3Bte=
xt-transform:none=3Bwhite-space:normal=3Bword-spacing:0px=3B" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockquote></=
div><br></div></div> 		 	   		  </div></body>
</html>=

--_02bc4a3e-6ff6-433a-90d2-11720795e926_--
