Return-Path: <iurascu_teo@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65FDEC10F04
	for <webhook@archiver.kernel.org>; Thu,  7 Dec 2023 12:28:16 +0000 (UTC)
Subject: Static library created by recipe arch is not correct  #sdk #yocto
To: yocto@lists.yoctoproject.org
From: "Iurascu Teodor" <iurascu_teo@hotmail.com>
X-Originating-Location: Iasi, RO (81.180.209.110)
X-Originating-Platform: Linux Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 07 Dec 2023 04:28:14 -0800
Message-ID: <mZaN.1701952094193943491.UbkB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="B44gvMfX4M86aardVwHq"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 12:28:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61828

--B44gvMfX4M86aardVwHq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have created a recipe to include the IOBB library in the SDK. Trying to c=
ompile a .c file in the SDK environment gives me this error:

$ ${CC} pb-test-inputs.c -liobb
/opt/poky/4.2.2/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/12.3.0/ld: /opt/poky/4.2.2/sysroots/cortex=
a8hf-neon-poky-linux-gnueabi/usr/local/lib/libiobb.a: error adding symbols:=
 file format not recognized

Recipe file:

do_compile () {
# You will almost certainly need to add additional arguments here
oe_runmake cc=3D${CC}
}

do_install () {
# This is a guess; additional arguments may be required
oe_runmake install locatie=3D${D}
#rm ${D}/usr/local/lib/libiobb.a
}

Makefile:

libiobb.a : ${ LIB_PATH } BBBiolib.c ${ LIB_PATH } BBBiolib.h BBBiolib_PWMS=
S.o BBBiolib_McSPI.o BBBiolib_ADCTSC.o i2cfunc.o
${ cc } -c ${ LIB_PATH } BBBiolib.c -o ${ LIB_PATH } BBBiolib.o
ar -rs ${ LIB_PATH } libiobb.a ${ LIB_PATH } BBBiolib.o ${ LIB_PATH } BBBio=
lib_PWMSS.o ${ LIB_PATH } BBBiolib_McSPI.o ${ LIB_PATH } BBBiolib_ADCTSC.o =
${ LIB_PATH } i2cfunc.o

Thank you!

--B44gvMfX4M86aardVwHq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I have created a recipe to include the IOBB library in th=
e SDK. Trying to compile a .c file in the SDK environment gives me this err=
or:<br /><br /><span style=3D"font-family: monospace;"><span style=3D"color=
: #000000; background-color: #ffffff; --darkreader-inline-color: #e8e6e3; -=
-darkreader-inline-bgcolor: #181a1b;" data-darkreader-inline-color=3D"" dat=
a-darkreader-inline-bgcolor=3D"">$ ${CC} pb-test-inputs.c -liobb </span><br=
 />/opt/poky/4.2.2/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux=
-gnueabi/gcc/arm-poky-linux-gnueabi/12.3.0/ld: /opt/poky/4.2.2/sysroots/cor=
texa8hf-neon-poky-linux-gnueabi/usr/local/lib/libiobb.a: error adding symbo=
ls: file format not recognized<br /><br />Recipe file:<br /><br />do_compil=
e () {<br />&nbsp;&nbsp; &nbsp;# You will almost certainly need to add addi=
tional arguments here<br />&nbsp;&nbsp; &nbsp;oe_runmake cc=3D${CC}<br />}<=
br /><br />do_install () {<br />&nbsp;&nbsp; &nbsp;# This is a guess; addit=
ional arguments may be required<br />&nbsp;&nbsp; &nbsp;oe_runmake install =
locatie=3D${D}<br />&nbsp;&nbsp; &nbsp;#rm ${D}/usr/local/lib/libiobb.a<br =
/>}<br /><br /><br />Makefile:<br /><br /></span>
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px;=
 line-height: 19px; white-space: pre; --darkreader-inline-color: #c8c3bc; -=
-darkreader-inline-bgcolor: #17191a;" data-darkreader-inline-color=3D"" dat=
a-darkreader-inline-bgcolor=3D"">
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">libiobb.a</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
 : </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b=
;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe=
; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LI=
B_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf9=
47b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
BBBiolib.c </span><span style=3D"color: #ce9178; --darkreader-inline-color:=
 #cf947b;" data-darkreader-inline-color=3D"">${</span><span style=3D"color:=
 #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=
=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-col=
or: #cf947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"colo=
r: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-col=
or=3D"">BBBiolib.h BBBiolib_PWMSS.o BBBiolib_McSPI.o BBBiolib_ADCTSC.o i2cf=
unc.o</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -c </span><span style=3D"color: #ce9178; --darkrea=
der-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span><spa=
n style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkre=
ader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --dark=
reader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><s=
pan style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-dark=
reader-inline-color=3D"">BBBiolib.c -o </span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${=
</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" =
data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9=
178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D""=
>}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;=
" data-darkreader-inline-color=3D"">BBBiolib.o</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> ar -rs </span><span style=3D"color: #ce917=
8; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">$=
{</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;"=
 data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce=
9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"=
">}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc=
;" data-darkreader-inline-color=3D"">libiobb.a </span><span style=3D"color:=
 #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=
=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #8=
7d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"col=
or: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-co=
lor=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inline-color: =
#c8c3bc;" data-darkreader-inline-color=3D"">BBBiolib.o </span><span style=
=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-in=
line-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inline=
-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span st=
yle=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader=
-inline-color=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inli=
ne-color: #c8c3bc;" data-darkreader-inline-color=3D"">BBBiolib_PWMSS.o </sp=
an><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data=
-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --dar=
kreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH<=
/span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" d=
ata-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; --d=
arkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">BBBioli=
b_McSPI.o </span><span style=3D"color: #ce9178; --darkreader-inline-color: =
#cf947b;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: =
#9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=
=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-col=
or: #cf947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"colo=
r: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-col=
or=3D"">BBBiolib_ADCTSC.o </span><span style=3D"color: #ce9178; --darkreade=
r-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span><span =
style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkread=
er-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkre=
ader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><spa=
n style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkre=
ader-inline-color=3D"">i2cfunc.o</span></div>
</div>
<span style=3D"font-family: monospace;"><br />Thank you!<br /><br /><br /><=
/span>

--B44gvMfX4M86aardVwHq--

