Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FC64E008D9; Tue, 18 Nov 2014 07:54:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.238 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail2.adam.net.au (webmail2.adam.net.au [202.136.110.238])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32B41E008CA
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 07:54:27 -0800 (PST)
Received: from localhost (webmail2.adam.net.au [127.0.0.1])
	by webmail2.adam.net.au (8.13.8/8.13.8) with ESMTP id sAIFrusV020241;
	Wed, 19 Nov 2014 02:23:57 +1030
Message-Id: <926f1629125f386eb1f56342aa1ba2f580b6c200@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Bryan Evenson" <bevenson@melinkcorp.com>, peterengcomau001@adam.com.au,
	"Alexandru Vaduva" <vaduvajanalexandru@yahoo.com>,
	"Anders Darander" <anders@chargestorm.se>
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <45b628263f84460385d48263d89fd81b@BLUPR05MB037.namprd05.prod.outlook.com>
Date: Wed, 19 Nov 2014 02:23:56 +1030
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: recipe fails to load local files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 18 Nov 2014 15:54:31 -0000
Content-Type: multipart/alternative;
	boundary="=_99fe9a6e6a1ff1d3246f6716bf1e012c"

--=_99fe9a6e6a1ff1d3246f6716bf1e012c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks Bryan and Alexandru,=0AThis all works now.There were no files sta=
rting with zd1211 anywhere=0Ain the system and no package of that name.=
 As soon as I put the=0AIMAGE_INSTALL reference, it created the files an=
d the packages and=0Aeverything is worksing.=0AThanks for your helpLachl=
an=C2=A0=0A=0A----- Original Message -----=0AFrom: "Bryan Evenson" =0ATo=
:"peterengcomau001@adam.com.au" , "Alexandru Vaduva" , "Anders=0ADarande=
r" =0ACc:"yocto@yoctoproject.org" =0ASent:Mon, 17 Nov 2014 13:49:35 +000=
0=0ASubject:RE: [yocto] recipe fails to load local files=0A=0A Lachlan,=
=0A=0A > -----Original Message-----=0A > From: peterengcomau001@adam.com=
au=0A > [mailto:peterengcomau001@adam.com.au]=0A > Sent: Sunday, Novemb=
er 16, 2014 8:55 AM=0A > To: Alexandru Vaduva; peterengcomau001@adam.com=
au; Anders=0A > Darander; Bryan Evenson=0A > Cc: yocto@yoctoproject.org=
=0A > Subject: Re: [yocto] recipe fails to load local files=0A > =0A > T=
here is no package called zd1211 that I can identify. If I run=0A > $ bi=
tbake atmel-qt5-demo-image -g -u depexp=0A > It does not list a package=
 that has zd1211 in it. Having said=0Athat, if I run=0A > $ find -name z=
d1211*=0A > It shows that zd1211rw and zd1211rw.ko files are in the root=
fs in=0Athe=0A > tmp/work directory under kernel/drivers/net/wirless.=0A=
 > =0A > Is that what you are referring to?=0A > =0A > Lachlan=0A > =0A=
 > =0A > ----- Original Message -----=0A > =0A > From:=0A > "Alexandru V=
aduva" =0A > =0A > To:=0A > "peterengcomau001@adam.com.au"=0A > , "Ander=
s Darander"=0A > , "Bryan Evenson" =0A > =0A > Cc:=0A > "yocto@yoctoproj=
ect.org" =0A > =0A > Sent:=0A > Sat, 15 Nov 2014 19:53:14 +0000 (UTC)=0A=
 > =0A > Subject:=0A > Re: [yocto] recipe fails to load local files=0A >=
 =0A > =0A > =0A > Is "zd1211" available in packages and package-split/z=
d1211-=0A > firmware*?=0A=0A To expand on Alexandru's question, the firs=
t step is to verify that=0Athe library files are now being added to the=
 zd1211-firmware package.=0AAssuming you are using opkg for package mana=
gement search in=0Atmp/deploy/ipk/ for any files named "zd1211-firmware.=
*ipk". You=0Ashould find one named something like zd1211-firmware_1.5-r0=
_=0Asama5d3xek.ipk. Open the package up with file-roller and verify that=
=0Athe lib/firmware directory contains the libraries that you intended=
=0Ato add to the package. If so, then the package is being built=0Acorre=
ctly.=0A=0A Once the package is being built correctly, the package needs=
 to be=0Aadded to your image. Packages are only added to an image when t=
hey=0Aare specifically listed in the image recipe or if it is a required=
=0Adependency of a package that has been added to the image. If you=0Ado=
n't already have a .bbappend for the image, you need to create one=0Ain=
 your layer and add the zd1211-firmware package. The .bbappend=0Aneeds t=
o follow the same directory structure as the image recipe in=0Athe meta-=
atmel layer. So for your specific case:=0A=0A 1. Create the file=0A~/pok=
y/meta-atmel-lsp/recipes-qt/images/atmel-qt5-demo-image.bbappend,=0Aaddi=
ng directories as needed for the full path.=0A 2. Add the following cont=
ents to the atmel-qt5-demo-image.bbappend:=0A=0A IMAGE_INSTALL +=3D "=
 =0A zd1211-firmware =0A "=0A=0A The extra lines and the at the end of t=
he line is there to make sure=0Atwo package names don't get merged toget=
her when IMAGE_INSTALL gets=0Abuilt.=0A=0A 3. If you are not using the P=
R service=0A(http://www.yoctoproject.org/docs/1.7/mega-manual/mega-manua=
l.html#working-with-a-pr-service),=0Aalso add the following to your .bba=
ppend:=0A=0A PR =3D "r1"=0A=0A otherwise you may not see your change in=
 the final image.=0A=0A 4. Re-build atmel-qt5-demo-image. You should now=
 see your library=0Afiles in the final image.=0A=0A Regards,=0A Bryan=0A=
=0A After you make that change and rebuild =0A > =0A > =0A > On Saturday=
, November 15, 2014 9:09 PM,=0A > "peterengcomau001@adam.com.au" =0A > w=
rote:=0A > =0A > =0A > =0A > Thanks, I have done the changes and no long=
er get the error.=0A > However, the firmware files still do not get gene=
rated when I=0Abuild the=0A > image.=0A > The current recipe I am using=
 is:=0A > ______________________________________=0A > DESCRIPTION =3D "B=
elkin Wifi Firmware"=0A > LICENSE =3D "GPL"=0A > PR =3D "r0"=0A > =0A >=
 FILESPATH =3D "${THISDIR}/${PN}"=0A > FILES_${PN} +=3D "/lib/firmware/z=
d1211"=0A > =0A > SRC_URI =3D "=0A > file://zd1211_ub =0A > file://zd121=
1_uph =0A > file://zd1211_uphm =0A > file://zd1211_uphr =0A > file://zd1=
211_ur =0A > "=0A > =0A > S =3D "${WORKDIR}"=0A > =0A > do_install() {=
=0A > install -d ${D}/lib/firmware/zd1211=0A > install -m 0555 ${WORKDIR=
}/zd1211_* ${D}/lib/firmware/zd1211/=0A > }=0A > _______________________=
_________________=0A > =0A > No errors result when building the image. H=
owever, there is no=0A > directory or files in:=0A > ~/poky/build-atmel/=
tmp/work/sama5d3xek-poky-linux-=0A > gnueabi/atmel-qt5-demo-image/1.0-r0=
/rootfs/lib/firmware=0A > =0A > The recipes are in file:=0A > ~/poky/met=
a-atmel-lsp/recipes-lsp/zd1211-firmware=0A > There are other recipes in=
 ~/poky/meta-atmel-lsp/recipes-lsp that=0A > work, so bitbake can see th=
ese ok (but these are bbappend, not bb=0Afiles)=0A > =0A > In ideas why=
 the=0A > =0A > =0A > =0A > ----- Original Message -----=0A > =0A > From=
:=0A > "Anders Darander" =0A > =0A > To:=0A > "Bryan Evenson" =0A > =0A=
 > Cc:=0A > "peterengcomau001@adam.com.au"=0A > , "yocto@yoctoproject.or=
g"=0A > =0A > =0A > Sent:=0A > Fri, 14 Nov 2014 15:44:24 +0100=0A > =0A=
 > Subject:=0A > Re: [yocto] recipe fails to load local files=0A > =0A >=
 =0A > Just a few nitpick's..=0A > =0A > * Bryan Evenson  [141114=0A > 1=
5:21]:=0A > =0A > > > LICENSE =3D "CLOSED"=0A > > > FILES_${PN} +=3D "~/=
poky/meta-atmel-lsp/recipes-=0A > lsp/zd1211-=0A > > > firmware/zd1211-f=
irmware"=0A > =0A > > FILES doesn't specify where to find the files on t=
he build=0A > machine, it=0A > > specifies where the installed files exi=
st on the target=0A > filesystem.=0A > > This is what the error you are=
 seeing is telling you; the files=0A > were=0A > > installed in the do_i=
nstall step but they did not get placed in=0A > the=0A > > final package=
 In your case I believe:=0A > =0A > > FILES_${PN} +=3D "${libdir}/zd121=
1_*"=0A > =0A > FILES_${PN} +=3D "/lib/firmware/zd1211"=0A > =0A > > wou=
ld work.=0A > =0A > > > SRC_URI =3D "=0A > > > file://zd1211_ub =0A > >=
 > file://zd1211_uph =0A > > > file://zd1211_uphm =0A > > > file://zd121=
1_uphr =0A > > > file://zd1211_ur =0A > > > "=0A > =0A > > > do_install(=
) {=0A > > > install -d ${D}/lib/firmware/zd1211=0A > > > install -m 055=
5 ${WORKDIR}/zd1211_*=0A > ${D}/lib/firmware/zd1211/=0A > > > }=0A > =0A=
 > > As mentioned in the FILES variable description in the Yocto=0A > ma=
nual,=0A > > you should use the standard path variables whenever=0A > po=
ssible. The=0A > > list of available path variables are near the top of=
=0A > > meta/conf/bitbake.conf. That means in your case the=0A > followi=
ng would=0A > > be better:=0A > =0A > Well, in general that's true. Thou=
gh, in this specific case, it=0A > should=0A > actually be a hardcoded /=
lib/firmware. ${libdir} could be lib64=0A > or=0A > something else, espe=
cially in a multilib-build. However, the=0A > firmware=0A > files are al=
ways searched for in /lib/firmware.=0A > =0A > Cheers,=0A > Anders=0A >=
 =0A > > do_install() {=0A > > install -d ${D}/${libdir}/firmware/zd1211=
=0A > > install -m 0555 ${WORKDIR}/zd1211_*=0A > ${D}/${libdir}/firmware=
/zd1211/=0A > =0A > --=0A > Anders Darander=0A > ChargeStorm AB / eStorm=
 AB=0A > =0A > =0A > ---- Message sent via Adam Internet WebMail -=0A >=
 http://www.adam.com.au/=0A > =0A > --=0A > ____________________________=
___________________=0A > yocto mailing list=0A > yocto@yoctoproject.org=
 =0A > https://lists.yoctoprojectorg/listinfo/yocto=0A > =0A > =0A > =0A=
 > =0A=0A---- Message sent via Adam Internet WebMail - http://www.adam.c=
om.au/

--=_99fe9a6e6a1ff1d3246f6716bf1e012c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Thanks Bryan and Alexandru,<div><br /></div><div>This all wo=
rks now.</div><div>There were no files starting with zd1211 anywhere in=
 the system and no package of that name. As soon as I put the IMAGE_INST=
ALL reference, it created the files and the packages and everything is w=
orksing.</div><div><br /></div><div>Thanks for your help</div><div>Lachl=
an=C2=A0<br /><br /><blockquote><br />----- Original Message -----<br />=
<div style=3D"width:100%;background:rgb(228,228,228);"><div style=3D"fon=
t-weight:bold;">From:</div> "Bryan Evenson" &lt;bevenson@melinkcorp.com&=
gt;</div><br /><div style=3D"font-weight:bold;">To:</div>"peterengcomau0=
01@adam.com.au" &lt;peterengcomau001@adam.com.au&gt;, "Alexandru Vaduva"=
 &lt;vaduvajanalexandru@yahoo.com&gt;, "Anders Darander" &lt;anders@char=
gestorm.se&gt;<br /><div style=3D"font-weight:bold;">Cc:</div>"yocto@yoc=
toproject.org" &lt;yocto@yoctoproject.org&gt;<br /><div style=3D"font-we=
ight:bold;">Sent:</div>Mon, 17 Nov 2014 13:49:35 +0000<br /><div style=
=3D"font-weight:bold;">Subject:</div>RE: [yocto] recipe fails to load lo=
cal files<br /><br /><br />=0ALachlan,<br /><br />=0A&gt; -----Original=
 Message-----<br />=0A&gt; From: peterengcomau001@adam.com.au<br />=0A&g=
t; [mailto:peterengcomau001@adam.com.au]<br />=0A&gt; Sent: Sunday, Nove=
mber 16, 2014 8:55 AM<br />=0A&gt; To: Alexandru Vaduva; peterengcomau00=
1@adam.com.au; Anders<br />=0A&gt; Darander; Bryan Evenson<br />=0A&gt;=
 Cc: yocto@yoctoproject.org<br />=0A&gt; Subject: Re: [yocto] recipe fai=
ls to load local files<br />=0A&gt; <br />=0A&gt; There is no package ca=
lled zd1211 that I can identify. If I run<br />=0A&gt; $ bitbake atmel-q=
t5-demo-image -g -u depexp<br />=0A&gt; It does not list a package that=
 has zd1211 in it. Having said that, if I run<br />=0A&gt; $ find -name=
 zd1211*<br />=0A&gt; It shows that zd1211rw and zd1211rw.ko files are i=
n the rootfs in the<br />=0A&gt; tmp/work directory under kernel/drivers=
/net/wirless.<br />=0A&gt; <br />=0A&gt; Is that what you are referring=
 to?<br />=0A&gt; <br />=0A&gt; Lachlan<br />=0A&gt; <br />=0A&gt; <br /=
>=0A&gt; =09----- Original Message -----<br />=0A&gt; <br />=0A&gt; =09F=
rom:<br />=0A&gt; =09"Alexandru Vaduva" &lt;vaduvajanalexandru@yahoo.com=
&gt;<br />=0A&gt; <br />=0A&gt; =09To:<br />=0A&gt; =09"peterengcomau001=
@adam.com.au"<br />=0A&gt; &lt;peterengcomau001@adam.com.au&gt;, "Anders=
 Darander"<br />=0A&gt; &lt;anders@chargestorm.se&gt;, "Bryan Evenson" &=
lt;bevenson@melinkcorp.com&gt;<br />=0A&gt; <br />=0A&gt; =09Cc:<br />=
=0A&gt; =09"yocto@yoctoproject.org" &lt;yocto@yoctoproject.org&gt;<br />=
=0A&gt; <br />=0A&gt; =09Sent:<br />=0A&gt; =09Sat, 15 Nov 2014 19:53:14=
 +0000 (UTC)<br />=0A&gt; <br />=0A&gt; =09Subject:<br />=0A&gt; =09Re:=
 [yocto] recipe fails to load local files<br />=0A&gt; <br />=0A&gt; <br=
 />=0A&gt; <br />=0A&gt; =09Is "zd1211" available in packages and packag=
e-split/zd1211-<br />=0A&gt; firmware*?<br /><br />=0ATo expand on Alexa=
ndru's question, the first step is to verify that the library files are=
 now being added to the zd1211-firmware package.  Assuming you are using=
 opkg for package management search in tmp/deploy/ipk/ for any files nam=
ed "zd1211-firmware.*ipk".  You should find one named something like zd1=
211-firmware_1.5-r0_ sama5d3xek.ipk.  Open the package up with file-roll=
er and verify that the lib/firmware directory contains the libraries tha=
t you intended to add to the package.  If so, then the package is being=
 built correctly.<br /><br />=0AOnce the package is being built correctl=
y, the package needs to be added to your image.  Packages are only added=
 to an image when they are specifically listed in the image recipe or if=
 it is a required dependency of a package that has been added to the ima=
ge.  If you don't already have a .bbappend for the image, you need to cr=
eate one in your layer and add the zd1211-firmware package.  The .bbappe=
nd needs to follow the same directory structure as the image recipe in t=
he meta-atmel layer.  So for your specific case:<br /><br />=0A1. Create=
 the file ~/poky/meta-atmel-lsp/recipes-qt/images/atmel-qt5-demo-image.b=
bappend, adding directories as needed for the full path.<br />=0A2. Add=
 the following contents to the atmel-qt5-demo-image.bbappend:<br /><br /=
>=0AIMAGE_INSTALL +=3D " \<br />=0A=09zd1211-firmware \<br />=0A"<br /><=
br />=0AThe extra lines and the \ at the end of the line is there to mak=
e sure two package names don't get merged together when IMAGE_INSTALL ge=
ts built.<br /><br />=0A3. If you are not using the PR service (http://w=
ww.yoctoproject.org/docs/1.7/mega-manual/mega-manual.html#working-with-a=
-pr-service), also add the following to your .bbappend:<br /><br />=0APR=
 =3D "r1"<br /><br />=0Aotherwise you may not see your change in the fin=
al image.<br /><br />=0A4. Re-build atmel-qt5-demo-image.  You should no=
w see your library files in the final image.<br /><br />=0ARegards,<br /=
>=0ABryan<br /><br />=0AAfter you make that change and rebuild <br />=0A=
&gt; <br />=0A&gt; <br />=0A&gt; =09On Saturday, November 15, 2014 9:09=
 PM,<br />=0A&gt; "peterengcomau001@adam.com.au" &lt;peterengcomau001@ad=
am.com.au&gt;<br />=0A&gt; wrote:<br />=0A&gt; <br />=0A&gt; <br />=0A&g=
t; <br />=0A&gt; =09Thanks, I have done the changes and no longer get th=
e error.<br />=0A&gt; However, the firmware files still do not get gener=
ated when I build the<br />=0A&gt; image.<br />=0A&gt; =09The current re=
cipe I am using is:<br />=0A&gt; =09____________________________________=
__<br />=0A&gt; =09DESCRIPTION =3D "Belkin Wifi Firmware"<br />=0A&gt;=
 =09LICENSE =3D "GPL"<br />=0A&gt; =09PR =3D "r0"<br />=0A&gt; <br />=0A=
&gt; =09FILESPATH =3D "${THISDIR}/${PN}"<br />=0A&gt; =09FILES_${PN} +=
=3D "/lib/firmware/zd1211"<br />=0A&gt; <br />=0A&gt; =09SRC_URI =3D "\<=
br />=0A&gt; =09  file://zd1211_ub \<br />=0A&gt; =09  file://zd1211_uph=
 \<br />=0A&gt; =09  file://zd1211_uphm \<br />=0A&gt; =09  file://zd121=
1_uphr \<br />=0A&gt; =09  file://zd1211_ur \<br />=0A&gt; =09"<br />=0A=
&gt; <br />=0A&gt; =09S =3D "${WORKDIR}"<br />=0A&gt; <br />=0A&gt; =09d=
o_install() {<br />=0A&gt; =09        install -d ${D}/lib/firmware/zd121=
1<br />=0A&gt; =09    install -m 0555 ${WORKDIR}/zd1211_*    ${D}/lib/fi=
rmware/zd1211/<br />=0A&gt; =09}<br />=0A&gt; =09_______________________=
_________________<br />=0A&gt; <br />=0A&gt; =09No errors result when bu=
ilding the image. However, there is no<br />=0A&gt; directory or files i=
n:<br />=0A&gt; =09~/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-<br=
 />=0A&gt; gnueabi/atmel-qt5-demo-image/1.0-r0/rootfs/lib/firmware<br />=
=0A&gt; <br />=0A&gt; =09The recipes are in file:<br />=0A&gt; =09~/poky=
/meta-atmel-lsp/recipes-lsp/zd1211-firmware<br />=0A&gt; =09There are ot=
her recipes in ~/poky/meta-atmel-lsp/recipes-lsp that<br />=0A&gt; work,=
 so bitbake can see these ok (but these are bbappend, not bb files)<br /=
>=0A&gt; <br />=0A&gt; =09In ideas why the<br />=0A&gt; <br />=0A&gt; <b=
r />=0A&gt; <br />=0A&gt; =09=09----- Original Message -----<br />=0A&gt=
; <br />=0A&gt; =09=09From:<br />=0A&gt; =09=09"Anders Darander" &lt;and=
ers@chargestorm.se&gt;<br />=0A&gt; <br />=0A&gt; =09=09To:<br />=0A&gt;=
 =09=09"Bryan Evenson" &lt;bevenson@melinkcorp.com&gt;<br />=0A&gt; <br=
 />=0A&gt; =09=09Cc:<br />=0A&gt; =09=09"peterengcomau001@adam.com.au"<b=
r />=0A&gt; &lt;peterengcomau001@adam.com.au&gt;, "yocto@yoctoproject.or=
g"<br />=0A&gt; &lt;yocto@yoctoproject.org&gt;<br />=0A&gt; <br />=0A&gt=
; =09=09Sent:<br />=0A&gt; =09=09Fri, 14 Nov 2014 15:44:24 +0100<br />=
=0A&gt; <br />=0A&gt; =09=09Subject:<br />=0A&gt; =09=09Re: [yocto] reci=
pe fails to load local files<br />=0A&gt; <br />=0A&gt; <br />=0A&gt;=
 =09=09Just a few nitpick's..<br />=0A&gt; <br />=0A&gt; =09=09* Bryan E=
venson &lt;bevenson@melinkcorp.com&gt; [141114<br />=0A&gt; 15:21]:<br /=
>=0A&gt; <br />=0A&gt; =09=09&gt; &gt; LICENSE =3D "CLOSED"<br />=0A&gt;=
 =09=09&gt; &gt; FILES_${PN} +=3D "~/poky/meta-atmel-lsp/recipes-<br />=
=0A&gt; lsp/zd1211-<br />=0A&gt; =09=09&gt; &gt; firmware/zd1211-firmwar=
e"<br />=0A&gt; <br />=0A&gt; =09=09&gt; FILES doesn't specify where to=
 find the files on the build<br />=0A&gt; machine, it<br />=0A&gt; =09=
=09&gt; specifies where the installed files exist on the target<br />=0A=
&gt; filesystem.<br />=0A&gt; =09=09&gt; This is what the error you are=
 seeing is telling you; the files<br />=0A&gt; were<br />=0A&gt; =09=09&=
gt; installed in the do_install step but they did not get placed in<br /=
>=0A&gt; the<br />=0A&gt; =09=09&gt; final package. In your case I belie=
ve:<br />=0A&gt; <br />=0A&gt; =09=09&gt; FILES_${PN} +=3D "${libdir}/zd=
1211_*"<br />=0A&gt; <br />=0A&gt; =09=09FILES_${PN} +=3D "/lib/firmware=
/zd1211"<br />=0A&gt; <br />=0A&gt; =09=09&gt; would work.<br />=0A&gt;=
 <br />=0A&gt; =09=09&gt; &gt; SRC_URI =3D "\<br />=0A&gt; =09=09&gt; &g=
t; file://zd1211_ub \<br />=0A&gt; =09=09&gt; &gt; file://zd1211_uph \<b=
r />=0A&gt; =09=09&gt; &gt; file://zd1211_uphm \<br />=0A&gt; =09=09&gt;=
 &gt; file://zd1211_uphr \<br />=0A&gt; =09=09&gt; &gt; file://zd1211_ur=
 \<br />=0A&gt; =09=09&gt; &gt; "<br />=0A&gt; <br />=0A&gt; =09=09&gt;=
 &gt; do_install() {<br />=0A&gt; =09=09&gt; &gt; install -d ${D}/lib/fi=
rmware/zd1211<br />=0A&gt; =09=09&gt; &gt; install -m 0555 ${WORKDIR}/zd=
1211_*<br />=0A&gt; ${D}/lib/firmware/zd1211/<br />=0A&gt; =09=09&gt; &g=
t; }<br />=0A&gt; <br />=0A&gt; =09=09&gt; As mentioned in the FILES var=
iable description in the Yocto<br />=0A&gt; manual,<br />=0A&gt; =09=09&=
gt; you should use the standard path variables whenever<br />=0A&gt; pos=
sible. The<br />=0A&gt; =09=09&gt; list of available path variables are=
 near the top of<br />=0A&gt; =09=09&gt; meta/conf/bitbake.conf. That me=
ans in your case the<br />=0A&gt; following would<br />=0A&gt; =09=09&gt=
; be better:<br />=0A&gt; <br />=0A&gt; =09=09Well, in general that's tr=
ue. Though, in this specific case, it<br />=0A&gt; should<br />=0A&gt;=
 =09=09actually be a hardcoded /lib/firmware. ${libdir} could be lib64<b=
r />=0A&gt; or<br />=0A&gt; =09=09something else, especially in a multil=
ib-build. However, the<br />=0A&gt; firmware<br />=0A&gt; =09=09files ar=
e always searched for in /lib/firmware.<br />=0A&gt; <br />=0A&gt; =09=
=09Cheers,<br />=0A&gt; =09=09Anders<br />=0A&gt; <br />=0A&gt; =09=09&g=
t; do_install() {<br />=0A&gt; =09=09&gt; install -d ${D}/${libdir}/firm=
ware/zd1211<br />=0A&gt; =09=09&gt; install -m 0555 ${WORKDIR}/zd1211_*<=
br />=0A&gt; ${D}/${libdir}/firmware/zd1211/<br />=0A&gt; <br />=0A&gt;=
 =09=09--<br />=0A&gt; =09=09Anders Darander<br />=0A&gt; =09=09ChargeSt=
orm AB / eStorm AB<br />=0A&gt; <br />=0A&gt; <br />=0A&gt; =09---- Mess=
age sent via Adam Internet WebMail -<br />=0A&gt; http://www.adam.com.au=
/<br />=0A&gt; <br />=0A&gt; =09--<br />=0A&gt; =09_____________________=
__________________________<br />=0A&gt; =09yocto mailing list<br />=0A&g=
t; =09yocto@yoctoproject.org &lt;mailto:yocto@yoctoproject.org&gt;<br />=
=0A&gt; =09https://lists.yoctoprojectorg/listinfo/yocto<br />=0A&gt; &lt=
;https://lists.yoctoproject.org/listinfo/yocto&gt;<br />=0A&gt; <br />=
=0A&gt; <br />=0A&gt; <br /><br /></blockquote></div>---- Message sent v=
ia Adam Internet WebMail  - http://www.adam.com.au/</body></html>

--=_99fe9a6e6a1ff1d3246f6716bf1e012c--
