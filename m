Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 012BFE008E1; Sun, 16 Nov 2014 05:55:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.236 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail4.adam.net.au (webmail4.adam.net.au [202.136.110.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 304F8E008BA
	for <yocto@yoctoproject.org>; Sun, 16 Nov 2014 05:55:19 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sAGDsrpQ019222;
	Mon, 17 Nov 2014 00:24:53 +1030
Message-Id: <c9dbdd6d8a8f4cad34cf72059ecb75b92b957b17@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Alexandru Vaduva" <vaduvajanalexandru@yahoo.com>,
	peterengcomau001@adam.com.au, "Anders Darander" <anders@chargestorm.se>,
	"Bryan Evenson" <bevenson@melinkcorp.com>
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <190755735.675679.1416081194869.JavaMail.yahoo@jws10032.mail.ne1.yahoo.com>
Date: Mon, 17 Nov 2014 00:24:53 +1030
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
X-List-Received-Date: Sun, 16 Nov 2014 13:55:33 -0000
Content-Type: multipart/alternative;
	boundary="=_261a62ec1f2d5ab64eaca09b1f9df29a"

--=_261a62ec1f2d5ab64eaca09b1f9df29a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

There is no package called zd1211 that I can identify. If I=0Arun=C2=A0$=
=C2=A0_bitbake=C2=A0atmel-qt5-demo-image=C2=A0__-g -u depexp_=C2=A0It do=
es not=0Alist a package that has zd1211 in it. Having said that, if I ru=
n=C2=A0$=0Afind -name zd1211*It shows that zd1211rw and zd1211rw.ko file=
s are in=0Athe rootfs in the tmp/work directory under kernel/drivers/net=
/wirless.=0AIs that what you are referring to?=0ALachlan=0A----- Origina=
l Message -----=0AFrom: "Alexandru Vaduva" =0ATo:"peterengcomau001@adam.=
com.au" , "Anders Darander" , "Bryan=0AEvenson" =0ACc:"yocto@yoctoprojec=
t.org" =0ASent:Sat, 15 Nov 2014 19:53:14 +0000 (UTC)=0ASubject:Re: [yoct=
o] recipe fails to load local files=0A=0A  Is "zd1211" available in pack=
ages and=0Apackage-split/zd1211-firmware*?  =0A=0A      On Saturday, Nov=
ember 15, 2014 9:09 PM,=0A"peterengcomau001@adam.com.au"  wrote:=0A=0A T=
hanks, I have done the changes and no longer get the error.=0AHowever, t=
he firmware files still do not get generated when I build=0Athe image.=
=0AThe current recipe I am using is:=0A_________________________________=
_____=0ADESCRIPTION =3D "Belkin Wifi Firmware"=0ALICENSE =3D "GPL"=0APR=
 =3D "r0"=0A=0AFILESPATH =3D "${THISDIR}/${PN}"=0AFILES_${PN} +=3D "/lib=
/firmware/zd1211"=0A=0ASRC_URI =3D "=0A=C2=A0 file://zd1211_ub =0A=C2=A0=
 file://zd1211_uph =0A=C2=A0 file://zd1211_uphm =0A=C2=A0 file://zd1211_=
uphr =0A=C2=A0 file://zd1211_ur =0A"=0A=0AS =3D "${WORKDIR}"=0A=0Ado_ins=
tall() {=0A=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 install -d ${D}/lib/fir=
mware/zd1211=0A=C2=A0=C2=A0=C2=A0 install -m 0555 ${WORKDIR}/zd1211_*=C2=
=A0=C2=A0=C2=A0=0A${D}/lib/firmware/zd1211/=0A}=0A______________________=
__________________=0A=0ANo errors result when building the image. Howeve=
r, there is no=0Adirectory or files in:=0A~/poky/build-atmel/tmp/work/sa=
ma5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r0/rootfs/lib/firmw=
are=0A=0AThe recipes are in file:=0A~/poky/meta-atmel-lsp/recipes-lsp/zd=
1211-firmware=0AThere are other recipes in ~/poky/meta-atmel-lsp/recipes=
-lsp that=0Awork, so bitbake can see these ok (but these are bbappend, n=
ot bb=0Afiles)=0A=0A In ideas why the =0A=0A----- Original Message -----=
=0A From: "Anders Darander"  =0ATo:"Bryan Evenson" =0ACc:"peterengcomau0=
01@adam.com.au" , "yocto@yoctoproject.org" =0ASent:Fri, 14 Nov 2014 15:4=
4:24 +0100=0A Subject:Re: [yocto] recipe fails to load local files=0A=0A=
 Just a few nitpick's...=0A=0A * Bryan Evenson  [141114 15:21]:=0A=0A >=
 > LICENSE =3D "CLOSED"=0A > > FILES_${PN} +=3D "~/poky/meta-atmel-lsp/r=
ecipes-lsp/zd1211-=0A > > firmware/zd1211-firmware"=0A=0A > FILES doesn'=
t specify where to find the files on the build=0Amachine, it=0A > specif=
ies where the installed files exist on the target=0Afilesystem.=0A > Thi=
s is what the error you are seeing is telling you; the files=0Awere=0A >=
 installed in the do_install step but they did not get placed in=0Athe=
=0A > final package. In your case I believe:=0A=0A > FILES_${PN} +=3D "$=
{libdir}/zd1211_*"=0A=0A FILES_${PN} +=3D "/lib/firmware/zd1211"=0A=0A >=
 would work.=0A=0A > > SRC_URI =3D "=0A > > file://zd1211_ub =0A > > fil=
e://zd1211_uph =0A > > file://zd1211_uphm =0A > > file://zd1211_uphr =0A=
 > > file://zd1211_ur =0A > > "=0A=0A > > do_install() {=0A > > install=
 -d ${D}/lib/firmware/zd1211=0A > > install -m 0555 ${WORKDIR}/zd1211_*=
 ${D}/lib/firmware/zd1211/=0A > > }=0A=0A > As mentioned in the FILES va=
riable description in the Yocto=0Amanual,=0A > you should use the standa=
rd path variables whenever possible. The=0A > list of available path var=
iables are near the top of=0A > meta/conf/bitbake.conf. That means in yo=
ur case the following=0Awould=0A > be better:=0A=0A Well, in general tha=
t's true. Though, in this specific case, it=0Ashould=0A actually be a ha=
rdcoded /lib/firmware. ${libdir} could be lib64 or=0A something else, es=
pecially in a multilib-build. However, the=0Afirmware=0A files are alway=
s searched for in /lib/firmware.=0A=0A Cheers,=0A Anders=0A=0A > do_inst=
all() {=0A > install -d ${D}/${libdir}/firmware/zd1211=0A > install -m 0=
555 ${WORKDIR}/zd1211_*=0A${D}/${libdir}/firmware/zd1211/=0A=0A -- =0A A=
nders Darander=0A ChargeStorm AB / eStorm AB =0A---- Message sent via Ad=
am Internet WebMail - http://www.adam.com.au/=0A=0A-- =0A_______________=
________________________________=0Ayocto mailing list=0Ayocto@yoctoproje=
ct.org [1]=0Ahttps://lists.yoctoproject.org/listinfo/yocto [2]=0A=0A   =
  =0A=0ALinks:=0A------=0A[1] mailto:yocto@yoctoproject.org=0A[2] https:=
//lists.yoctoproject.org/listinfo/yocto=0A

--=_261a62ec1f2d5ab64eaca09b1f9df29a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>There is no package called zd1211 that I can identify. If I=
 run=C2=A0<div>$=C2=A0<em style=3D"margin:0px;padding:0px;border:0px;fon=
t-size:13px;font-family:arial, helvetica, sans-serif;vertical-align:base=
line;color:rgb(61,61,61);line-height:19.5px;"><span class=3D"mce_paste_m=
arker" style=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;fo=
nt-style:inherit;font-family:inherit;vertical-align:baseline;">bitbake=
=C2=A0</span><span class=3D"mce_paste_marker" style=3D"margin:0px;paddin=
g:0px;border:0px;font-weight:inherit;font-style:inherit;font-family:inhe=
rit;vertical-align:baseline;">atmel-qt5-demo-image=C2=A0</span></em><spa=
n class=3D"mce_paste_marker" style=3D"margin:0px;padding:0px;border:0px;=
font-size:13px;font-family:arial, helvetica, sans-serif;vertical-align:b=
aseline;color:rgb(61,61,61);line-height:19.5px;"><em style=3D"margin:0px=
;padding:0px;border:0px;font-weight:inherit;font-family:inherit;vertical=
-align:baseline;">-g -u depexp</em></span>=C2=A0</div><div>It does not l=
ist a package that has zd1211 in it. Having said that, if I run=C2=A0</d=
iv><div>$ find -name zd1211*</div><div>It shows that zd1211rw and zd1211=
rw.ko files are in the rootfs in the tmp/work directory under kernel/dri=
vers/net/wirless.</div><div><br /></div><div>Is that what you are referr=
ing to?</div><div><br /></div><div>Lachlan</div><div><blockquote><br />-=
---- Original Message -----<br /><div style=3D"width:100%;background:rgb=
(228,228,228);"><div style=3D"font-weight:bold;">From:</div> "Alexandru=
 Vaduva" &lt;vaduvajanalexandru@yahoo.com&gt;</div><br /><div style=3D"f=
ont-weight:bold;">To:</div>"peterengcomau001@adam.com.au" &lt;peterengco=
mau001@adam.com.au&gt;, "Anders Darander" &lt;anders@chargestorm.se&gt;,=
 "Bryan Evenson" &lt;bevenson@melinkcorp.com&gt;<br /><div style=3D"font=
-weight:bold;">Cc:</div>"yocto@yoctoproject.org" &lt;yocto@yoctoproject.=
org&gt;<br /><div style=3D"font-weight:bold;">Sent:</div>Sat, 15 Nov 201=
4 19:53:14 +0000 (UTC)<br /><div style=3D"font-weight:bold;">Subject:</d=
iv>Re: [yocto] recipe fails to load local files<br /><br /><br /><div st=
yle=3D"color:#000;background-color:#fff;font-family:HelveticaNeue, 'Helv=
etica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif;font-size:12p=
x;">=0A<div dir=3D"ltr">=0A<span>Is </span>"zd1211" available in package=
s and package-split/zd1211-firmware*?</div> <div class=3D"qtdSeparateBR"=
>=0A<br /><br /></div>=0A<div class=3D"yahoo_quoted"> <div style=3D"font=
-family:HelveticaNeue, 'Helvetica Neue', Helvetica, Arial, 'Lucida Grand=
e', sans-serif;font-size:12px;"> <div style=3D"font-family:HelveticaNeue=
, 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif;font-s=
ize:16px;"> <div dir=3D"ltr"> <font face=3D"Arial" size=3D"2"> On Saturd=
ay, November 15, 2014 9:09 PM, "peterengcomau001@adam.com.au" &lt;petere=
ngcomau001@adam.com.au&gt; wrote:<br /></font> </div>  <br /><br /><div=
 class=3D"y_msg_container">=0A<div><div>Thanks, I have done the changes=
 and no longer get the error. However, the firmware files still do not g=
et generated when I build the image.<br clear=3D"none" />The current rec=
ipe I am using is:<br clear=3D"none" />_________________________________=
_____<br clear=3D"none" />DESCRIPTION =3D "Belkin Wifi Firmware"<br clea=
r=3D"none" />LICENSE =3D "GPL"<br clear=3D"none" />PR =3D "r0"<br clear=
=3D"none" /><br clear=3D"none" />FILESPATH =3D "${THISDIR}/${PN}"<br cle=
ar=3D"none" />FILES_${PN} +=3D "/lib/firmware/zd1211"<br clear=3D"none"=
 /><br clear=3D"none" />SRC_URI =3D "\<br clear=3D"none" />=C2=A0 file:/=
/zd1211_ub \<br clear=3D"none" />=C2=A0 file://zd1211_uph \<br clear=3D"=
none" />=C2=A0 file://zd1211_uphm \<br clear=3D"none" />=C2=A0 file://zd=
1211_uphr \<br clear=3D"none" />=C2=A0 file://zd1211_ur \<br clear=3D"no=
ne" />"<br clear=3D"none" /><br clear=3D"none" />S =3D "${WORKDIR}"<br c=
lear=3D"none" /><br clear=3D"none" />do_install() {<br clear=3D"none" />=
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 install -d ${D}/lib/firmware/zd121=
1<br clear=3D"none" />=C2=A0=C2=A0=C2=A0 install -m 0555 ${WORKDIR}/zd12=
11_*=C2=A0=C2=A0=C2=A0 ${D}/lib/firmware/zd1211/<br clear=3D"none" />}<b=
r clear=3D"none" />________________________________________<br clear=3D"=
none" /><br clear=3D"none" />No errors result when building the image. H=
owever, there is no directory or files in:<br clear=3D"none" />~/poky/bu=
ild-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.=
0-r0/rootfs/lib/firmware<br clear=3D"none" /><br clear=3D"none" />The re=
cipes are in file:<br clear=3D"none" />~/poky/meta-atmel-lsp/recipes-lsp=
/zd1211-firmware<br clear=3D"none" />There are other recipes in ~/poky/m=
eta-atmel-lsp/recipes-lsp that work, so bitbake can see these ok (but th=
ese are bbappend, not bb files)<br clear=3D"none" /><br clear=3D"none" /=
>=0A=09=09=09=09In ideas why the <br clear=3D"none" /><blockquote>=0A<br=
 clear=3D"none" />----- Original Message -----<br clear=3D"none" /><div=
 style=3D"width:100%;background:rgb(228,228,228);">=0A<div style=3D"font=
-weight:bold;">From:</div> "Anders Darander" &lt;anders@chargestorm.se&g=
t;</div>=0A<br clear=3D"none" /><div style=3D"font-weight:bold;">To:</di=
v>"Bryan Evenson" &lt;bevenson@melinkcorp.com&gt;<br clear=3D"none" /><d=
iv style=3D"font-weight:bold;">Cc:</div>"peterengcomau001@adam.com.au" &=
lt;peterengcomau001@adam.com.au&gt;, "yocto@yoctoproject.org" &lt;yocto@=
yoctoproject.org&gt;<br clear=3D"none" /><div style=3D"font-weight:bold;=
">Sent:</div>Fri, 14 Nov 2014 15:44:24 +0100<br clear=3D"none" /><div cl=
ass=3D"yiv6315069973yqt6716113864">=0A<div style=3D"font-weight:bold;">S=
ubject:</div>Re: [yocto] recipe fails to load local files<br clear=3D"no=
ne" /><br clear=3D"none" /><br clear=3D"none" />=0AJust a few nitpick's.=
.<br clear=3D"none" /><br clear=3D"none" />=0A* Bryan Evenson &lt;beven=
son@melinkcorp.com&gt; [141114 15:21]:<br clear=3D"none" /><br clear=3D"=
none" />=0A&gt; &gt; LICENSE =3D "CLOSED"<br clear=3D"none" />=0A&gt; &g=
t; FILES_${PN} +=3D "~/poky/meta-atmel-lsp/recipes-lsp/zd1211-<br clear=
=3D"none" />=0A&gt; &gt; firmware/zd1211-firmware"<br clear=3D"none" /><=
br clear=3D"none" />=0A&gt; FILES doesn't specify where to find the file=
s on the build machine, it<br clear=3D"none" />=0A&gt; specifies where t=
he installed files exist on the target filesystem.<br clear=3D"none" />=
=0A&gt; This is what the error you are seeing is telling you; the files=
 were<br clear=3D"none" />=0A&gt; installed in the do_install step but t=
hey did not get placed in the<br clear=3D"none" />=0A&gt; final package.=
  In your case I believe:<br clear=3D"none" /><br clear=3D"none" />=0A&g=
t; FILES_${PN} +=3D "${libdir}/zd1211_*"<br clear=3D"none" /><br clear=
=3D"none" />=0AFILES_${PN} +=3D "/lib/firmware/zd1211"<br clear=3D"none"=
 /><br clear=3D"none" />=0A&gt; would work.<br clear=3D"none" /><br clea=
r=3D"none" />=0A&gt; &gt; SRC_URI =3D "\<br clear=3D"none" />=0A&gt; &gt=
;   file://zd1211_ub \<br clear=3D"none" />=0A&gt; &gt;   file://zd1211_=
uph \<br clear=3D"none" />=0A&gt; &gt;   file://zd1211_uphm \<br clear=
=3D"none" />=0A&gt; &gt;   file://zd1211_uphr \<br clear=3D"none" />=0A&=
gt; &gt;   file://zd1211_ur \<br clear=3D"none" />=0A&gt; &gt; "<br clea=
r=3D"none" /><br clear=3D"none" />=0A&gt; &gt; do_install() {<br clear=
=3D"none" />=0A&gt; &gt;         install -d ${D}/lib/firmware/zd1211<br=
 clear=3D"none" />=0A&gt; &gt;     install -m 0555 ${WORKDIR}/zd1211_* =
   ${D}/lib/firmware/zd1211/<br clear=3D"none" />=0A&gt; &gt; }<br clear=
=3D"none" /><br clear=3D"none" />=0A&gt; As mentioned in the FILES varia=
ble description in the Yocto manual,<br clear=3D"none" />=0A&gt; you sho=
uld use the standard path variables whenever possible.  The<br clear=3D"=
none" />=0A&gt; list of available path variables are near the top of<br=
 clear=3D"none" />=0A&gt; meta/conf/bitbake.conf.  That means in your ca=
se the following would<br clear=3D"none" />=0A&gt; be better:<br clear=
=3D"none" /><br clear=3D"none" />=0AWell, in general that's true. Though=
, in this specific case, it should<br clear=3D"none" />=0Aactually be a=
 hardcoded /lib/firmware. ${libdir} could be lib64 or<br clear=3D"none"=
 />=0Asomething else, especially in a multilib-build. However, the firmw=
are<br clear=3D"none" />=0Afiles are always searched for in /lib/firmwar=
e.<br clear=3D"none" /><br clear=3D"none" />=0ACheers,<br clear=3D"none"=
 />=0AAnders<br clear=3D"none" /><br clear=3D"none" />=0A&gt;  do_instal=
l() {<br clear=3D"none" />=0A&gt;          install -d ${D}/${libdir}/fir=
mware/zd1211<br clear=3D"none" />=0A&gt;      install -m 0555 ${WORKDIR}=
/zd1211_*    ${D}/${libdir}/firmware/zd1211/<br clear=3D"none" /><br cle=
ar=3D"none" />=0A-- <br clear=3D"none" />=0AAnders Darander<br clear=3D"=
none" />=0AChargeStorm AB / eStorm AB</div>=0A<br clear=3D"none" /></blo=
ckquote>---- Message sent via Adam Internet WebMail  - http://www.adam.c=
om.au/</div></div>=0A<br /><div class=3D"yqt6716113864">-- <br clear=3D"=
none" />_______________________________________________<br clear=3D"none=
" />yocto mailing list<br clear=3D"none" /><a href=3D"mailto:yocto@yocto=
project.org">yocto@yoctoproject.org</a><br clear=3D"none" /><a href=3D"h=
ttps://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject=
org/listinfo/yocto</a><br clear=3D"none" /></div>=0A<br /><br /></div>=
  </div> </div>  </div> </div>=0A=0A</blockquote></div></body></html>

--=_261a62ec1f2d5ab64eaca09b1f9df29a--
