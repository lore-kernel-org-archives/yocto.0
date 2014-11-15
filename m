Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 099D7E0085D; Sat, 15 Nov 2014 11:10:09 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E91FE0048B
	for <yocto@yoctoproject.org>; Sat, 15 Nov 2014 11:10:03 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sAFJ9bY7028349;
	Sun, 16 Nov 2014 05:39:37 +1030
Message-Id: <b96181e954d8d48d268f1d0468ad24badd3ab1be@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Anders Darander" <anders@chargestorm.se>,
	"Bryan Evenson" <bevenson@melinkcorp.com>
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <20141114144424.GF13784@ad.chargestorm.se>
Date: Sun, 16 Nov 2014 05:39:37 +1030
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
X-List-Received-Date: Sat, 15 Nov 2014 19:10:09 -0000
Content-Type: multipart/alternative;
	boundary="=_7ae8ff5dfb7c91eb74f6d801e1d4cc2d"

--=_7ae8ff5dfb7c91eb74f6d801e1d4cc2d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks, I have done the changes and no longer get the error. However,=0A=
the firmware files still do not get generated when I build the image.=0A=
The current recipe I am using is:=0A____________________________________=
__=0ADESCRIPTION =3D "Belkin Wifi Firmware"=0ALICENSE =3D "GPL"=0APR =3D=
 "r0"=0A=0AFILESPATH =3D "${THISDIR}/${PN}"=0AFILES_${PN} +=3D "/lib/fir=
mware/zd1211"=0A=0ASRC_URI =3D "=0A=C2=A0 file://zd1211_ub =0A=C2=A0 fil=
e://zd1211_uph =0A=C2=A0 file://zd1211_uphm =0A=C2=A0 file://zd1211_uphr=
 =0A=C2=A0 file://zd1211_ur =0A"=0A=0AS =3D "${WORKDIR}"=0A=0Ado_install=
() {=0A=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 install -d ${D}/lib/firmwar=
e/zd1211=0A=C2=A0=C2=A0=C2=A0 install -m 0555 ${WORKDIR}/zd1211_*=C2=A0=
=C2=A0=C2=A0=0A${D}/lib/firmware/zd1211/=0A}=0A_________________________=
_______________=0A=0ANo errors result when building the image. However,=
 there is no=0Adirectory or files in:=0A~/poky/build-atmel/tmp/work/sama=
5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r0/rootfs/lib/firmwar=
e=0A=0AThe recipes are in file:=0A~/poky/meta-atmel-lsp/recipes-lsp/zd12=
11-firmware=0AThere are other recipes in ~/poky/meta-atmel-lsp/recipes-l=
sp that=0Awork, so bitbake can see these ok (but these are bbappend, not=
 bb=0Afiles)=0A=0A In ideas why the =0A=0A----- Original Message -----=
=0AFrom: "Anders Darander" =0ATo:"Bryan Evenson" =0ACc:"peterengcomau001=
@adam.com.au" , "yocto@yoctoproject.org" =0ASent:Fri, 14 Nov 2014 15:44:=
24 +0100=0ASubject:Re: [yocto] recipe fails to load local files=0A=0A Ju=
st a few nitpick's...=0A=0A * Bryan Evenson  [141114 15:21]:=0A=0A > > L=
ICENSE =3D "CLOSED"=0A > > FILES_${PN} +=3D "~/poky/meta-atmel-lsp/recip=
es-lsp/zd1211-=0A > > firmware/zd1211-firmware"=0A=0A > FILES doesn't sp=
ecify where to find the files on the build=0Amachine, it=0A > specifies=
 where the installed files exist on the target=0Afilesystem.=0A > This i=
s what the error you are seeing is telling you; the files=0Awere=0A > in=
stalled in the do_install step but they did not get placed in=0Athe=0A >=
 final package. In your case I believe:=0A=0A > FILES_${PN} +=3D "${libd=
ir}/zd1211_*"=0A=0A FILES_${PN} +=3D "/lib/firmware/zd1211"=0A=0A > woul=
d work.=0A=0A > > SRC_URI =3D "=0A > > file://zd1211_ub =0A > > file://z=
d1211_uph =0A > > file://zd1211_uphm =0A > > file://zd1211_uphr =0A > >=
 file://zd1211_ur =0A > > "=0A=0A > > do_install() {=0A > > install -d $=
{D}/lib/firmware/zd1211=0A > > install -m 0555 ${WORKDIR}/zd1211_* ${D}/=
lib/firmware/zd1211/=0A > > }=0A=0A > As mentioned in the FILES variable=
 description in the Yocto=0Amanual,=0A > you should use the standard pat=
h variables whenever possible. The=0A > list of available path variables=
 are near the top of=0A > meta/conf/bitbake.conf. That means in your cas=
e the following=0Awould=0A > be better:=0A=0A Well, in general that's tr=
ue. Though, in this specific case, it=0Ashould=0A actually be a hardcode=
d /lib/firmware. ${libdir} could be lib64 or=0A something else, especial=
ly in a multilib-build. However, the=0Afirmware=0A files are always sear=
ched for in /lib/firmware.=0A=0A Cheers,=0A Anders=0A=0A > do_install()=
 {=0A > install -d ${D}/${libdir}/firmware/zd1211=0A > install -m 0555 $=
{WORKDIR}/zd1211_*=0A${D}/${libdir}/firmware/zd1211/=0A=0A -- =0A Anders=
 Darander=0A ChargeStorm AB / eStorm AB=0A---- Message sent via Adam Int=
ernet WebMail - http://www.adam.com.au/

--=_7ae8ff5dfb7c91eb74f6d801e1d4cc2d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Thanks, I have done the changes and no longer get the error.=
 However, the firmware files still do not get generated when I build the=
 image.<br />The current recipe I am using is:<br />____________________=
__________________<br />DESCRIPTION =3D "Belkin Wifi Firmware"<br />LICE=
NSE =3D "GPL"<br />PR =3D "r0"<br /><br />FILESPATH =3D "${THISDIR}/${PN=
}"<br />FILES_${PN} +=3D "/lib/firmware/zd1211"<br /><br />SRC_URI =3D "=
\<br />=C2=A0 file://zd1211_ub \<br />=C2=A0 file://zd1211_uph \<br />=
=C2=A0 file://zd1211_uphm \<br />=C2=A0 file://zd1211_uphr \<br />=C2=A0=
 file://zd1211_ur \<br />"<br /><br />S =3D "${WORKDIR}"<br /><br />do_i=
nstall() {<br />=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 install -d ${D}/li=
b/firmware/zd1211<br />=C2=A0=C2=A0=C2=A0 install -m 0555 ${WORKDIR}/zd1=
211_*=C2=A0=C2=A0=C2=A0 ${D}/lib/firmware/zd1211/<br />}<br />__________=
______________________________<br /><br />No errors result when building=
 the image. However, there is no directory or files in:<br />~/poky/buil=
d-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-=
r0/rootfs/lib/firmware<br /><br />The recipes are in file:<br />~/poky/m=
eta-atmel-lsp/recipes-lsp/zd1211-firmware<br />There are other recipes i=
n ~/poky/meta-atmel-lsp/recipes-lsp that work, so bitbake can see these=
 ok (but these are bbappend, not bb files)<br /><br />=0A=09=09=09=09In=
 ideas why the <br /><blockquote><br />----- Original Message -----<br /=
><div style=3D"width:100%;background:rgb(228,228,228);"><div style=3D"fo=
nt-weight:bold;">From:</div> "Anders Darander" &lt;anders@chargestorm.se=
&gt;</div><br /><div style=3D"font-weight:bold;">To:</div>"Bryan Evenson=
" &lt;bevenson@melinkcorp.com&gt;<br /><div style=3D"font-weight:bold;">=
Cc:</div>"peterengcomau001@adam.com.au" &lt;peterengcomau001@adam.com.au=
&gt;, "yocto@yoctoproject.org" &lt;yocto@yoctoproject.org&gt;<br /><div=
 style=3D"font-weight:bold;">Sent:</div>Fri, 14 Nov 2014 15:44:24 +0100<=
br /><div style=3D"font-weight:bold;">Subject:</div>Re: [yocto] recipe f=
ails to load local files<br /><br /><br />=0AJust a few nitpick's...<br=
 /><br />=0A* Bryan Evenson &lt;bevenson@melinkcorp.com&gt; [141114 15:2=
1]:<br /><br />=0A&gt; &gt; LICENSE =3D "CLOSED"<br />=0A&gt; &gt; FILES=
_${PN} +=3D "~/poky/meta-atmel-lsp/recipes-lsp/zd1211-<br />=0A&gt; &gt;=
 firmware/zd1211-firmware"<br /><br />=0A&gt; FILES doesn't specify wher=
e to find the files on the build machine, it<br />=0A&gt; specifies wher=
e the installed files exist on the target filesystem.<br />=0A&gt; This=
 is what the error you are seeing is telling you; the files were<br />=
=0A&gt; installed in the do_install step but they did not get placed in=
 the<br />=0A&gt; final package.  In your case I believe:<br /><br />=0A=
&gt; FILES_${PN} +=3D "${libdir}/zd1211_*"<br /><br />=0AFILES_${PN} +=
=3D "/lib/firmware/zd1211"<br /><br />=0A&gt; would work.<br /><br />=0A=
&gt; &gt; SRC_URI =3D "\<br />=0A&gt; &gt;   file://zd1211_ub \<br />=0A=
&gt; &gt;   file://zd1211_uph \<br />=0A&gt; &gt;   file://zd1211_uphm \=
<br />=0A&gt; &gt;   file://zd1211_uphr \<br />=0A&gt; &gt;   file://zd1=
211_ur \<br />=0A&gt; &gt; "<br /><br />=0A&gt; &gt; do_install() {<br /=
>=0A&gt; &gt;         install -d ${D}/lib/firmware/zd1211<br />=0A&gt; &=
gt;     install -m 0555 ${WORKDIR}/zd1211_*    ${D}/lib/firmware/zd1211/=
<br />=0A&gt; &gt; }<br /><br />=0A&gt; As mentioned in the FILES variab=
le description in the Yocto manual,<br />=0A&gt; you should use the stan=
dard path variables whenever possible.  The<br />=0A&gt; list of availab=
le path variables are near the top of<br />=0A&gt; meta/conf/bitbake.con=
f.  That means in your case the following would<br />=0A&gt; be better:<=
br /><br />=0AWell, in general that's true. Though, in this specific cas=
e, it should<br />=0Aactually be a hardcoded /lib/firmware. ${libdir} co=
uld be lib64 or<br />=0Asomething else, especially in a multilib-build.=
 However, the firmware<br />=0Afiles are always searched for in /lib/fir=
mware.<br /><br />=0ACheers,<br />=0AAnders<br /><br />=0A&gt;  do_insta=
ll() {<br />=0A&gt;          install -d ${D}/${libdir}/firmware/zd1211<b=
r />=0A&gt;      install -m 0555 ${WORKDIR}/zd1211_*    ${D}/${libdir}/f=
irmware/zd1211/<br /><br />=0A-- <br />=0AAnders Darander<br />=0ACharge=
Storm AB / eStorm AB<br /></blockquote>---- Message sent via Adam Intern=
et WebMail  - http://www.adam.com.au/</body></html>

--=_7ae8ff5dfb7c91eb74f6d801e1d4cc2d--
