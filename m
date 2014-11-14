Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 155A4E0084F; Fri, 14 Nov 2014 00:37:16 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BF0AE00831
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 00:37:06 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sAE8awIB011385;
	Fri, 14 Nov 2014 19:06:58 +1030
Message-Id: <aab5394606c7e87db4c1c28307cccd252e1a103c@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Bryan Evenson" <bevenson@melinkcorp.com>, peterengcomau001@adam.com.au,
	yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <e28ab8baec5c4d3aa9b4adb87c4c9bff@BLUPR05MB037.namprd05.prod.outlook.com>
Date: Fri, 14 Nov 2014 19:06:58 +1030
MIME-Version: 1.0
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
X-List-Received-Date: Fri, 14 Nov 2014 08:37:16 -0000
Content-Type: multipart/alternative;
	boundary="=_e1fdc64195df823921b1a12f8fe9f74f"

--=_e1fdc64195df823921b1a12f8fe9f74f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Based on your suggestion Bryan, and referring to Section 10 -Glossary=0A=
of the ref-manual regarding FILES, I have changed the recipe as=0Afollow=
s:=0A__________________________________________=0ADESCRIPTION =3D "Belki=
n Wifi Firmware"=0APR =3D "1.5"=0ALICENSE =3D "CLOSED"=0AFILES_${PN} +=
=3D=0A"~/poky/meta-atmel-lsp/recipes-lsp/zd1211-firmware/zd1211-firmware=
"=0ASRC_URI =3D "=0A=C2=A0 file://zd1211_ub =0A=C2=A0 file://zd1211_uph=
 =0A=C2=A0 file://zd1211_uphm =0A=C2=A0 file://zd1211_uphr =0A=C2=A0 fil=
e://zd1211_ur =0A"=0A=0Ado_install() {=0A=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
 =C2=A0install -d ${D}/lib/firmware/zd1211=0A=C2=A0=C2=A0=C2=A0 install=
 -m 0555 ${WORKDIR}/zd1211_*=C2=A0=C2=A0=0A=C2=A0${D}/lib/firmware/zd121=
1/=0A} =0A ___________________________________________________________=
=0A=0AI had not seen a reference to the FILES parameter previously.=0AHo=
wever, this still does not work.=0A=0ARefering to :=0Ahttp://www.embedde=
dlinux.org.cn/OEManual/recipes_examples.html=0A=0AI run the follwoing co=
mmand from my build directory:=0A$ bitbake -b=0Ameta-atmel-lsp/recipes-l=
sp/zd1211-firmware/zd1211-firmware_1.5.bb=0A=0Aand I get the following e=
rror:=0A___________________________________________=0AERROR: QA Issue: z=
d1211-firmware: Files/directories were installed=0Abut not shipped=0A=C2=
=A0 /lib=0A=C2=A0 /lib/firmware=0A=C2=A0 /lib/firmware/zd1211=0A=C2=A0 /=
lib/firmware/zd1211/zd1211_uphr=0A=C2=A0 /lib/firmware/zd1211/zd1211_ub=
=0A=C2=A0 /lib/firmware/zd1211/zd1211_uphm=0A=C2=A0 /lib/firmware/zd1211=
/zd1211_ur=0A=C2=A0 /lib/firmware/zd1211/zd1211_uph=0AERROR: QA run foun=
d fatal errors. Please consider fixing them.=0AERROR: Function failed: d=
o_package_qa=0AERROR: Logfile of failure stored in:=0A/home/lachlan/poky=
/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/zd1211-firmwar=
e/1.5-1.5/temp/log.do_package.3991=0AERROR: Task 10=0A(/home/lachlan/pok=
y/meta-atmel-lsp/recipes-lsp/zd1211-firmware/zd1211-firmware_1.5.bb,=0Ad=
o_package) failed with exit code '1'=0ANOTE: Tasks Summary: Attempted 9=
 tasks of which 6 didn't need to be=0Arerun and 1 failed.=0ANo currently=
 running tasks (9 of 12)=0A=0ASummary: 1 task failed:=0A=C2=A0=0A/home/l=
achlan/poky/meta-atmel-lsp/recipes-lsp/zd1211-firmware/zd1211-firmware_1=
5.bb,=0Ado_package=0A______________________________________________=0A=
=0ANote that i also had to address the LICENSE reference as I was=0Agett=
ing LICENSE_CHCKSUM errors=0A=0AAlso note that when I try to build the f=
ull image, there is no error=0Abut the files are not present.=0AIn my bu=
ild directory configuration file I have the reference to my=0Arecipe lay=
er:=0A=C2=A0 /home/lachlan/poky/meta-atmel-lsp =0Abut although other rec=
ipes in this directory are working fine, this=0Arecipe seems to be overl=
ooked. I know that the full image build sees=0Athe recipe because if I c=
omment out the LICENSE reference, the full=0Aimage build indicates an er=
ror in this regard.=0A=0AThanks for any help=0ALachlan=0A=0A=C2=A0=0A=0A=
----- Original Message -----=0AFrom: "Bryan Evenson" =0ATo:"peterengcoma=
u001@adam.com.au" , "yocto@yoctoproject.org" =0ACc:=0ASent:Thu, 13 Nov 2=
014 17:03:07 +0000=0ASubject:RE: [yocto] recipe fails to load local file=
s=0A=0A=09Lachlan,=0A=0A=09=C2=A0=0A=0A=09If that is your entire recipe,=
 I don=E2=80=99t see any FILES=0Aspecification:=0Ahttp://www.yoctoprojec=
t.org/docs/1.7/mega-manual/mega-manual.html#var-FILES=0A[1].=C2=A0 The S=
RC_URI just says where to get the source, but the FILES=0Astates which f=
iles are expected to be added to the package.=C2=A0 I=0Abelieve the FILE=
S variable is auto-populated by a compiled package,=0Awhich is why you m=
ay not see the FILES variable in every recipe.=0A=C2=A0But in your case=
 in which you don=E2=80=99t compile the code but are just=0Ainstalling f=
iles on disk, you need to fill out the FILES variable.=0A=0A=09=C2=A0=0A=
=0A=09Regards,=0A=0A=09Bryan=0A=0A=09=C2=A0=0A=0A=09FROM: yocto-bounces@=
yoctoproject.org=0A[mailto:yocto-bounces@yoctoproject.org] ON BEHALF OF=
=0Apeterengcomau001@adam.com.au=0ASENT: Thursday, November 13, 2014 10:2=
1 AM=0ATO: yocto@yoctoproject.org=0ASUBJECT: [yocto] recipe fails to loa=
d local files=0A=0A=09=C2=A0=0A=0A=09I am using yocto 1.6.1 and I have a=
 a number of recipes in =0A ~/home/poky/meta-atmel-lsp/recipes-lsp.=0A=
=0A I have a lightpdbbappend that loads local files, I have a=0Awpa-supp=
licant.bbappend that loads local files, but I am also trying=0Ato load s=
ome firmware that should load local files but fails.=0A=0A In ~/home/pok=
y/meta-atmel-lsp/recipes-lsp/zd1211-firmware/ I have=0Athe recipe zd1211=
-firmware_1.55.bb as follows:=0A=0A ____________________________________=
___=0A SUMMARY =3D "Belkin Wifi Firmware"=0A LICENSE =3D "GPL"=0A=0A SRC=
_URI =3D "=0A =C2=A0 file://zd1211_ub =0A =C2=A0 file://zd1211_uph =0A=
 =C2=A0 file://zd1211_uphm =0A =C2=A0 file://zd1211_uphr =0A =C2=A0 file=
://zd1211_ur =0A "=0A=0A do_install() {=0A =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 install -d ${D}/lib/firmware/zd1211=0A =C2=A0=C2=A0=C2=A0 inst=
all -m 0755 ${WORKDIR}/zd1211_*=C2=A0=C2=A0=C2=A0=0A${D}/lib/firmware/zd=
1211/=0A }=0A _____________________________________=0A I sourced these f=
iles but not the recipe from:=0Ahttp://sourceforge.net/projects/zd1211/=
 [2]=0A=0A The files indicated in the recipe are in :=0A=0A~/home/poky/m=
eta-atmel-lsp/recipes-lsp/zd1211-firmware/zd1211-firmware/=0A=0A When I=
 create the image, no directory is created as=0A/lib/firmware/zd1211=0A=
 and also no files are loaded into it.=0A=0A I have also tried {THISDIR}=
=C2=A0 instead of using {WORKDIR}=0A I also tried specifying a specific=
 file rather than using the wild=0Acard=0A I have also tried using 'cp'=
 instead of 'install -m 0755'=0A=0A None seem to work.=0A I am expecting=
 the firmware files to be located in:=0A=0A~/poky/build-atmel/tmp/work/s=
ama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r0/rootfs/etc/firm=
ware=0A but they are not.=0A=0A I originally started with a recipe to lo=
ad the files directly from=0Athe source, but that did not work. The orig=
inal recipe used was=0Azd1211-firmware_1.4.bb from:=0Ahttps://gitorious.=
org/opencsbc/openembedded/source/583297ac295f1b381019ccecb4ae6abaa69cbc6=
c:recipes/zd1211=0A[3]=0A=0A That did not work and now I am extracting t=
he files from the .tar=0Aand trying to load them direct.=0A Maybe the sa=
me problem exists between the original recipe and=0Aloading the .tar fil=
es.=0A=0A Thanks for any help=0A Lachlan=0A=0A ---- Message sent via Ada=
m Internet WebMail -=0Ahttp://www.adam.com.au/ [4]=0A=0A=09   ---- Messa=
ge sent via Adam Internet WebMail -=0Ahttp://www.adam.com.au/=0A=0ALinks=
:=0A------=0A[1]=0Ahttp://www.yoctoproject.org/docs/1.7/mega-manual/mega=
-manual.html#var-FILES=0A[2] http://sourceforge.net/projects/zd1211/=0A[=
3]=0Ahttps://gitorious.org/opencsbc/openembedded/source/583297ac295f1b38=
1019ccecb4ae6abaa69cbc6c:recipes/zd1211=0A[4] http://www.adam.com.au/=0A

--=_e1fdc64195df823921b1a12f8fe9f74f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Based on your suggestion Bryan, and referring to Section 10=
 -Glossary of the ref-manual regarding FILES, I have changed the recipe=
 as follows:<br />__________________________________________<br />DESCRI=
PTION =3D "Belkin Wifi Firmware"<br />PR =3D "1.5"<br />LICENSE =3D "CLO=
SED"<br />FILES_${PN} +=3D "~/poky/meta-atmel-lsp/recipes-lsp/zd1211-fir=
mware/zd1211-firmware"<br />SRC_URI =3D "\<br />=C2=A0 file://zd1211_ub=
 \<br />=C2=A0 file://zd1211_uph \<br />=C2=A0 file://zd1211_uphm \<br /=
>=C2=A0 file://zd1211_uphr \<br />=C2=A0 file://zd1211_ur \<br />"<br />=
<br />do_install() {<br />=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0install=
 -d ${D}/lib/firmware/zd1211<br />=C2=A0=C2=A0=C2=A0 install -m 0555 ${W=
ORKDIR}/zd1211_*=C2=A0=C2=A0 =C2=A0${D}/lib/firmware/zd1211/<br />} <br=
 />=0A=09=09=09=09______________________________________________________=
_____<br /><br />I had not seen a reference to the FILES parameter previ=
ously. However, this still does not work.<br /><br />Refering to :<br />=
http://www.embeddedlinux.org.cn/OEManual/recipes_examples.html<br /><br=
 />I run the follwoing command from my build directory:<br />$ bitbake -=
b meta-atmel-lsp/recipes-lsp/zd1211-firmware/zd1211-firmware_1.5.bb<br /=
><br />and I get the following error:<br />_____________________________=
______________<br />ERROR: QA Issue: zd1211-firmware: Files/directories=
 were installed but not shipped<br />=C2=A0 /lib<br />=C2=A0 /lib/firmwa=
re<br />=C2=A0 /lib/firmware/zd1211<br />=C2=A0 /lib/firmware/zd1211/zd1=
211_uphr<br />=C2=A0 /lib/firmware/zd1211/zd1211_ub<br />=C2=A0 /lib/fir=
mware/zd1211/zd1211_uphm<br />=C2=A0 /lib/firmware/zd1211/zd1211_ur<br /=
>=C2=A0 /lib/firmware/zd1211/zd1211_uph<br />ERROR: QA run found fatal e=
rrors. Please consider fixing them.<br />ERROR: Function failed: do_pack=
age_qa<br />ERROR: Logfile of failure stored in: /home/lachlan/poky/buil=
d-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/zd1211-firmware/1.5=
-1.5/temp/log.do_package.3991<br />ERROR: Task 10 (/home/lachlan/poky/me=
ta-atmel-lsp/recipes-lsp/zd1211-firmware/zd1211-firmware_1.5.bb, do_pack=
age) failed with exit code '1'<br />NOTE: Tasks Summary: Attempted 9 tas=
ks of which 6 didn't need to be rerun and 1 failed.<br />No currently ru=
nning tasks (9 of 12)<br /><br />Summary: 1 task failed:<br />=C2=A0 /ho=
me/lachlan/poky/meta-atmel-lsp/recipes-lsp/zd1211-firmware/zd1211-firmwa=
re_1.5.bb, do_package<br />_____________________________________________=
_<br /><br />Note that i also had to address the LICENSE reference as I=
 was getting LICENSE_CHCKSUM errors<br /><br />Also note that when I try=
 to build the full image, there is no error but the files are not presen=
t.<br />In my build directory configuration file I have the reference to=
 my recipe layer:<br />=C2=A0 /home/lachlan/poky/meta-atmel-lsp \<br />b=
ut although other recipes in this directory are working fine, this recip=
e seems to be overlooked. I know that the full image build sees the reci=
pe because if I comment out the LICENSE reference, the full image build=
 indicates an error in this regard.<br /><br />Thanks for any help<br />=
Lachlan<br /><br />=C2=A0<br /><br /><blockquote><br />----- Original Me=
ssage -----<br /><div style=3D"width:100%;background:rgb(228,228,228);">=
<div style=3D"font-weight:bold;">From:</div> "Bryan Evenson" &lt;bevenso=
n@melinkcorp.com&gt;</div><br /><div style=3D"font-weight:bold;">To:</di=
v>"peterengcomau001@adam.com.au" &lt;peterengcomau001@adam.com.au&gt;, "=
yocto@yoctoproject.org" &lt;yocto@yoctoproject.org&gt;<br /><div style=
=3D"font-weight:bold;">Cc:</div><br /><div style=3D"font-weight:bold;">S=
ent:</div>Thu, 13 Nov 2014 17:03:07 +0000<br /><div style=3D"font-weight=
:bold;">Subject:</div>RE: [yocto] recipe fails to load local files<br />=
<br /><br /><div class=3D"WordSection1">=0A<p class=3D"MsoNormal"><span=
 style=3D"font-size:11pt;font-family:Calibri, 'sans-serif';color:#1F497D=
;">Lachlan,</span></p><p></p><p></p>=0A<p class=3D"MsoNormal"><span styl=
e=3D"font-size:11pt;font-family:Calibri, 'sans-serif';color:#1F497D;"></=
span></p><p>=C2=A0</p><p></p>=0A<p class=3D"MsoNormal"><span style=3D"fo=
nt-size:11pt;font-family:Calibri, 'sans-serif';color:#1F497D;">If that i=
s your entire recipe, I don=E2=80=99t see any FILES specification:=0A<a=
 href=3D"http://www.yoctoproject.org/docs/1.7/mega-manual/mega-manual.ht=
ml#var-FILES">=0Ahttp://www.yoctoproject.org/docs/1.7/mega-manual/mega-m=
anual.html#var-FILES</a>.=C2=A0 The SRC_URI just says where to get the s=
ource, but the FILES states which files are expected to be added to the=
 package.=C2=A0 I believe the FILES variable is auto-populated by a comp=
iled=0A package, which is why you may not see the FILES variable in ever=
y recipe. =C2=A0But in your case in which you don=E2=80=99t compile the=
 code but are just installing files on disk, you need to fill out the FI=
LES variable.</span></p><p></p><p></p>=0A<p class=3D"MsoNormal"><span st=
yle=3D"font-size:11pt;font-family:Calibri, 'sans-serif';color:#1F497D;">=
</span></p><p>=C2=A0</p><p></p>=0A<p class=3D"MsoNormal"><span style=3D"=
font-size:11pt;font-family:Calibri, 'sans-serif';color:#1F497D;">Regards=
,</span></p><p></p><p></p>=0A<p class=3D"MsoNormal"><span style=3D"font-=
size:11pt;font-family:Calibri, 'sans-serif';color:#1F497D;">Bryan</span>=
</p><p></p><p></p>=0A<p class=3D"MsoNormal"><span style=3D"font-size:11p=
t;font-family:Calibri, 'sans-serif';color:#1F497D;"></span></p><p>=C2=A0=
</p><p></p>=0A<div style=3D"border:none;border-left:solid #0000FF 1.5pt;=
padding:0in 0in 0in 4pt;">=0A<div>=0A<div style=3D"border:none;border-to=
p:solid #E1E1E1 1pt;padding:3pt 0in 0in 0in;">=0A<p class=3D"MsoNormal">=
<b><span style=3D"font-size:11pt;font-family:Calibri, 'sans-serif';">Fro=
m:</span></b><span style=3D"font-size:11pt;font-family:Calibri, 'sans-se=
rif';"> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoprojec=
t.org]=0A<b>On Behalf Of </b>peterengcomau001@adam.com.au<br /><b>Sent:<=
/b> Thursday, November 13, 2014 10:21 AM<br /><b>To:</b> yocto@yoctoproj=
ect.org<br /><b>Subject:</b> [yocto] recipe fails to load local files</s=
pan></p><p></p><p></p>=0A</div>=0A</div>=0A<p class=3D"MsoNormal"></p><p=
>=C2=A0</p><p></p>=0A<p class=3D"MsoNormal">I am using yocto 1.6.1 and I=
 have a a number of recipes in <br />=0A~/home/poky/meta-atmel-lsp/recip=
es-lsp.<br /><br />=0AI have a lightpdbbappend that loads local files, I=
 have a wpa-supplicant.bbappend that loads local files, but I am also tr=
ying to load some firmware that should load local files but fails.<br />=
<br />=0AIn ~/home/poky/meta-atmel-lsp/recipes-lsp/zd1211-firmware/ I ha=
ve the recipe zd1211-firmware_1.55.bb as follows:<br /><br />=0A________=
_______________________________<br />=0ASUMMARY =3D "Belkin Wifi Firmwar=
e"<br />=0ALICENSE =3D "GPL"<br /><br />=0ASRC_URI =3D "\<br />=0A=C2=A0=
 <a>file://zd1211_ub</a> \<br />=0A=C2=A0 <a>file://zd1211_uph</a> \<br=
 />=0A=C2=A0 <a>file://zd1211_uphm</a> \<br />=0A=C2=A0 <a>file://zd1211=
_uphr</a> \<br />=0A=C2=A0 <a>file://zd1211_ur</a> \<br />=0A"<br /><br=
 />=0Ado_install() {<br />=0A=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 insta=
ll -d ${D}/lib/firmware/zd1211<br />=0A=C2=A0=C2=A0=C2=A0 install -m 075=
5 ${WORKDIR}/zd1211_*=C2=A0=C2=A0=C2=A0 ${D}/lib/firmware/zd1211/<br />=
=0A}<br />=0A_____________________________________<br />=0AI sourced the=
se files but not the recipe from:<br /><a href=3D"http://sourceforge.net=
/projects/zd1211/">http://sourceforge.net/projects/zd1211/</a><br /><br=
 />=0AThe files indicated in the recipe are in :<br />=0A~/home/poky/met=
a-atmel-lsp/recipes-lsp/zd1211-firmware/zd1211-firmware/<br /><br />=0AW=
hen I create the image, no directory is created as /lib/firmware/zd1211<=
br />=0Aand also no files are loaded into it.<br /><br />=0AI have also=
 tried {THISDIR}=C2=A0 instead of using {WORKDIR}<br />=0AI also tried s=
pecifying a specific file rather than using the wild card<br />=0AI have=
 also tried using 'cp' instead of 'install -m 0755'<br /><br />=0ANone s=
eem to work.<br />=0AI am expecting the firmware files to be located in:=
<br />=0A~/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel=
-qt5-demo-image/1.0-r0/rootfs/etc/firmware<br />=0Abut they are not.<br=
 /><br />=0AI originally started with a recipe to load the files directl=
y from the source, but that did not work. The original recipe used was z=
d1211-firmware_1.4.bb from:<br /><a href=3D"https://gitorious.org/opencs=
bc/openembedded/source/583297ac295f1b381019ccecb4ae6abaa69cbc6c:recipes/=
zd1211">https://gitorious.org/opencsbc/openembedded/source/583297ac295f1=
b381019ccecb4ae6abaa69cbc6c:recipes/zd1211</a><br /><br />=0AThat did no=
t work and now I am extracting the files from the .tar and trying to loa=
d them direct.<br />=0AMaybe the same problem exists between the origina=
l recipe and loading the .tar files.<br /><br />=0AThanks for any help<b=
r />=0ALachlan<br /><br />=0A---- Message sent via Adam Internet WebMail=
 - <a href=3D"http://www.adam.com.au/">http://www.adam.com.au/</a></p><p=
></p><p></p>=0A</div>=0A</div>=0A=0A=0A=0A</blockquote>---- Message sent=
 via Adam Internet WebMail  - http://www.adam.com.au/</body></html>

--=_e1fdc64195df823921b1a12f8fe9f74f--
