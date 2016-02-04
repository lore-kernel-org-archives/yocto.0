Return-Path: <sridhar.pitchai@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83D83E00C6A; Wed,  3 Feb 2016 17:45:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sridhar.pitchai[at]outlook.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.116.18 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BLU004-OMC1S7.hotmail.com (blu004-omc1s7.hotmail.com
	[65.55.116.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C20DE00C66
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 17:45:38 -0800 (PST)
Received: from BLU168-W22 ([65.55.116.8]) by BLU004-OMC1S7.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Wed, 3 Feb 2016 17:45:37 -0800
X-TMN: [zxA0Uk/WiTfF1g+Zx5fHhzCKGNxmDBFN]
X-Originating-Email: [sridhar.pitchai@outlook.com]
Message-ID: <BLU168-W22A12B38E8A385104D458AEBD10@phx.gbl>
From: Sridhar Pitchai <sridhar.pitchai@outlook.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Feb 2016 17:45:37 -0800
Importance: Normal
In-Reply-To: <99E27708-5404-4FBF-9B73-4994698A3C7C@gmail.com>
References: <BLU168-W10417EEA6212C31D453447BEBD10@phx.gbl>
	<F454D711-5EBF-45CA-9E9C-8344C6A6E558@gmail.com>
	<BLU168-W933818F9DA64A2BA0C3282EBD10@phx.gbl>,
	<99E27708-5404-4FBF-9B73-4994698A3C7C@gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 04 Feb 2016 01:45:37.0768 (UTC)
	FILETIME=[BF266680:01D15EED]
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
X-List-Received-Date: Thu, 04 Feb 2016 01:45:53 -0000
Content-Type: multipart/alternative;
	boundary="_0697d204-0262-4598-a477-b4aba4aa6b7f_"

--_0697d204-0262-4598-a477-b4aba4aa6b7f_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

SDK looks fine. i was able to compile with it with direct make on my local =
system.
make -C /path/to/sdk/systems/linux/user/x86-generic_64-3_19
this works just fine.  I am trying to make my image through yocto recipe an=
d i am facing this issue.
infact doing a make @=20
build/tmp/work/............./system/linux/user/x86-generic_64-3_19=20
works as well.
but if i do bitbake -v sdk i am facing this failure.=20
What am i missing ?

Subject: Re: [yocto] error: code model kernel does not support PIC mode
From: raj.khem@gmail.com
Date: Wed=2C 3 Feb 2016 17:38:16 -0800
CC: yocto@yoctoproject.org
To: sridhar.pitchai@outlook.com

talk to folks whoever is providing you that SDK
On Feb 3=2C 2016=2C at 5:37 PM=2C Sridhar Pitchai <sridhar.pitchai@outlook.=
com> wrote:Sure=2C i will get rid of it.  But i get the same error without =
it as well.  I added it to see if this can help get the compile through. bu=
t it didn't.=20
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

--_0697d204-0262-4598-a477-b4aba4aa6b7f_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>SDK looks fine. i was able to co=
mpile with it with direct make on my local system.<div><br></div><div><span=
 style=3D"font-family: Calibri=3B">make -C /path/to/sdk/systems/linux/user/=
x86-generic_64-3_19</span></div><div><font face=3D"Calibri"><br></font></di=
v><div><font face=3D"Calibri">this works just fine. &nbsp=3BI am trying to =
make my image through yocto recipe and i am facing this issue.</font></div>=
<div><font face=3D"Calibri"><br></font></div><div><font face=3D"Calibri">in=
fact doing a make @&nbsp=3B</font></div><div><font face=3D"Calibri"><br></f=
ont></div><div><font face=3D"Calibri">build/tmp/work/............./system/l=
inux/user/x86-generic_64-3_19&nbsp=3B</font></div><div><font face=3D"Calibr=
i"><br></font></div><div><font face=3D"Calibri">works as well.</font></div>=
<div><font face=3D"Calibri"><br></font></div><div><font face=3D"Calibri">bu=
t if i do bitbake -v sdk i am facing this failure.&nbsp=3B</font></div><div=
><font face=3D"Calibri"><br></font></div><div><font face=3D"Calibri">What a=
m i missing ?<br></font><br><div><hr id=3D"stopSpelling">Subject: Re: [yoct=
o] error: code model kernel does not support PIC mode<br>From: raj.khem@gma=
il.com<br>Date: Wed=2C 3 Feb 2016 17:38:16 -0800<br>CC: yocto@yoctoproject.=
org<br>To: sridhar.pitchai@outlook.com<br><br>talk to folks whoever is prov=
iding you that SDK<div><br><div><blockquote><div>On Feb 3=2C 2016=2C at 5:3=
7 PM=2C Sridhar Pitchai &lt=3B<a href=3D"mailto:sridhar.pitchai@outlook.com=
">sridhar.pitchai@outlook.com</a>&gt=3B wrote:</div><br class=3D"ecxApple-i=
nterchange-newline"><div><div dir=3D"ltr" style=3D"font-family:Calibri=3Bfo=
nt-size:16px=3Bfont-style:normal=3Bfont-variant:normal=3Bfont-weight:normal=
=3Bletter-spacing:normal=3Btext-align:start=3Btext-indent:0px=3Btext-transf=
orm:none=3Bwhite-space:normal=3Bword-spacing:0px=3B">Sure=2C i will get rid=
 of it. &nbsp=3BBut i get the same error without it as well. &nbsp=3BI adde=
d it to see if this can help get the compile through. but it didn't.&nbsp=
=3B<div><br></div><div>What am i missing here. the MACHINE is "qemux84-64"<=
br><br><div><hr id=3D"ecxstopSpelling">Subject: Re: [yocto] error: code mod=
el kernel does not support PIC mode<br>From:<span class=3D"ecxApple-convert=
ed-space">&nbsp=3B</span><a href=3D"mailto:raj.khem@gmail.com">raj.khem@gma=
il.com</a><br>Date: Wed=2C 3 Feb 2016 17:30:38 -0800<br>CC:<span class=3D"e=
cxApple-converted-space">&nbsp=3B</span><a href=3D"mailto:yocto@yoctoprojec=
t.org">yocto@yoctoproject.org</a><br>To:<span class=3D"ecxApple-converted-s=
pace">&nbsp=3B</span><a href=3D"mailto:sridhar.pitchai@outlook.com">sridhar=
.pitchai@outlook.com</a><br><br><br><div><blockquote><div>On Feb 3=2C 2016=
=2C at 5:24 PM=2C Sridhar Pitchai &lt=3B<a href=3D"mailto:sridhar.pitchai@o=
utlook.com">sridhar.pitchai@outlook.com</a>&gt=3B wrote:</div><br class=3D"=
ecxApple-interchange-newline"><div><div dir=3D"ltr" style=3D"font-family:Ca=
libri=3Bfont-size:16px=3Bfont-style:normal=3Bfont-variant:normal=3Bfont-wei=
ght:normal=3Bletter-spacing:normal=3Btext-align:start=3Btext-indent:0px=3Bt=
ext-transform:none=3Bwhite-space:normal=3Bword-spacing:0px=3B">Hi=2C<div>I =
trying to write a simple recipe which will be building some static librarie=
s. the makefile has the "-fPIC" enabled. when i try to compile it using sim=
ple yocto recipe=2C i am getting this error.</div><div><br></div><div>"</di=
v><div><div>| /home/sridhar/workspace/exp/yoc/build/tmp/work/corei7-64-poky=
-linux/sdk/1.0-r0/sdk-all-6.4.8/systems/linux/kernel/modules/shared/uk-rtra=
ns.c:1:0: error: code model kernel does not support PIC mode</div><div>| &n=
bsp=3B/********************************************************************=
***</div><div>| &nbsp=3B^</div></div></div></div></blockquote><div><br></di=
v><blockquote><div><div dir=3D"ltr" style=3D"font-family:Calibri=3Bfont-siz=
e:16px=3Bfont-style:normal=3Bfont-variant:normal=3Bfont-weight:normal=3Blet=
ter-spacing:normal=3Btext-align:start=3Btext-indent:0px=3Btext-transform:no=
ne=3Bwhite-space:normal=3Bword-spacing:0px=3B"><div><br></div><div><span st=
yle=3D"font-size:12pt=3B">"</span></div><div><br></div><div>recipe:</div><d=
iv><br></div><div>"</div><div><div>SUMMARY =3D "TEST"</div><div><br></div><=
div>LICENSE =3D "CLOSED"</div><div>PR =3D "r0"</div><div>PROVIDES =3D "pi-s=
wos-bcm-sdk"</div><div><br></div><div># BCM SDK inconsistant with parallel =
make</div><div>PARALLEL_MAKE =3D ""</div><div><br></div><div>FILESEXTRAPATH=
S_prepend =3D "${THISDIR}:"</div><div>SRC_URI =3D "<a target=3D"_blank"></a=
><a target=3D"_blank">file://6.4.8/sdk.tar.gz</a><span class=3D"ecxApple-co=
nverted-space">&nbsp=3B</span>\</div><div>&nbsp=3B &nbsp=3B "</div><div><br=
></div><div>MAKEFLAGS_append =3D " -fPIC =93</div></div></div></div></block=
quote><div><br></div><div>why do you need this ? get rid of it. Atleast for=
 kernel module part.</div><br><blockquote><div><div dir=3D"ltr" style=3D"fo=
nt-family:Calibri=3Bfont-size:16px=3Bfont-style:normal=3Bfont-variant:norma=
l=3Bfont-weight:normal=3Bletter-spacing:normal=3Btext-align:start=3Btext-in=
dent:0px=3Btext-transform:none=3Bwhite-space:normal=3Bword-spacing:0px=3B">=
<div><div>do_compile() {</div><div>&nbsp=3B &nbsp=3B oe_runmake -C ${WORKDI=
R}/sdk-all-6.4.8/systems/linux/user/x86-generic_64-3_19</div><div>}</div></=
div><div>"</div><div><br></div><div>Can someone help me on this.</div><div>=
<br></div><div>thanks=2C</div><div>Sridhar Pitchai</div></div><span style=
=3D"font-family:Calibri=3Bfont-size:16px=3Bfont-style:normal=3Bfont-variant=
:normal=3Bfont-weight:normal=3Bletter-spacing:normal=3Btext-align:start=3Bt=
ext-indent:0px=3Btext-transform:none=3Bwhite-space:normal=3Bword-spacing:0p=
x=3Bdisplay:inline !important=3B">--<span class=3D"ecxApple-converted-space=
">&nbsp=3B</span></span><br style=3D"font-family:Calibri=3Bfont-size:16px=
=3Bfont-style:normal=3Bfont-variant:normal=3Bfont-weight:normal=3Bletter-sp=
acing:normal=3Btext-align:start=3Btext-indent:0px=3Btext-transform:none=3Bw=
hite-space:normal=3Bword-spacing:0px=3B"><span style=3D"font-family:Calibri=
=3Bfont-size:16px=3Bfont-style:normal=3Bfont-variant:normal=3Bfont-weight:n=
ormal=3Bletter-spacing:normal=3Btext-align:start=3Btext-indent:0px=3Btext-t=
ransform:none=3Bwhite-space:normal=3Bword-spacing:0px=3Bdisplay:inline !imp=
ortant=3B">_______________________________________________</span><br style=
=3D"font-family:Calibri=3Bfont-size:16px=3Bfont-style:normal=3Bfont-variant=
:normal=3Bfont-weight:normal=3Bletter-spacing:normal=3Btext-align:start=3Bt=
ext-indent:0px=3Btext-transform:none=3Bwhite-space:normal=3Bword-spacing:0p=
x=3B"><span style=3D"font-family:Calibri=3Bfont-size:16px=3Bfont-style:norm=
al=3Bfont-variant:normal=3Bfont-weight:normal=3Bletter-spacing:normal=3Btex=
t-align:start=3Btext-indent:0px=3Btext-transform:none=3Bwhite-space:normal=
=3Bword-spacing:0px=3Bdisplay:inline !important=3B">yocto mailing list</spa=
n><br style=3D"font-family:Calibri=3Bfont-size:16px=3Bfont-style:normal=3Bf=
ont-variant:normal=3Bfont-weight:normal=3Bletter-spacing:normal=3Btext-alig=
n:start=3Btext-indent:0px=3Btext-transform:none=3Bwhite-space:normal=3Bword=
-spacing:0px=3B"><a href=3D"mailto:yocto@yoctoproject.org" style=3D"font-fa=
mily:Calibri=3Bfont-size:16px=3Bfont-style:normal=3Bfont-variant:normal=3Bf=
ont-weight:normal=3Bletter-spacing:normal=3Btext-align:start=3Btext-indent:=
0px=3Btext-transform:none=3Bwhite-space:normal=3Bword-spacing:0px=3B">yocto=
@yoctoproject.org</a><br style=3D"font-family:Calibri=3Bfont-size:16px=3Bfo=
nt-style:normal=3Bfont-variant:normal=3Bfont-weight:normal=3Bletter-spacing=
:normal=3Btext-align:start=3Btext-indent:0px=3Btext-transform:none=3Bwhite-=
space:normal=3Bword-spacing:0px=3B"><a href=3D"https://lists.yoctoproject.o=
rg/listinfo/yocto" target=3D"_blank" style=3D"font-family:Calibri=3Bfont-si=
ze:16px=3Bfont-style:normal=3Bfont-variant:normal=3Bfont-weight:normal=3Ble=
tter-spacing:normal=3Btext-align:start=3Btext-indent:0px=3Btext-transform:n=
one=3Bwhite-space:normal=3Bword-spacing:0px=3B">https://lists.yoctoproject.=
org/listinfo/yocto</a></div></blockquote></div></div></div></div></div></bl=
ockquote></div><br></div></div></div> 		 	   		  </div></body>
</html>=

--_0697d204-0262-4598-a477-b4aba4aa6b7f_--
