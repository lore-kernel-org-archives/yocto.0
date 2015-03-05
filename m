Return-Path: <p_j_r_m@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93E29E0086E; Thu,  5 Mar 2015 15:01:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (p_j_r_m[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.229.135 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm37-vm7.bullet.mail.ne1.yahoo.com
	(nm37-vm7.bullet.mail.ne1.yahoo.com [98.138.229.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F88CE0083A
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 15:01:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1425596484; bh=guBrKNE7jAcarTj03zQw6G920u8SgvcLoZwWmzuRa3Y=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=UFNL/po6ujuCJe6fFTm9LQQ+gY68UQ/Wvtjto1/JAZzW/RdRbocuMEQmMcP7HH6nCfUMnWe5G2rZtupszVGbxFww+RmtlXKvSf9s45bVVSToqOCTbzcc1sFqxihiJIEghyZq66ZbHe+ZfBjqYaBHEgmut/dsGhsMJG35ZoKh5KDDXNN395QB+qY4MhbCBKE2+mmtJS8mdUhW0rpUaOrAWWRrTsTn5Tg3BnVu6GlApjZnW2SP0fXGyLwumalPyCS+A6996bTmXCA7To4KBdYv6EIR8C3oQF1m55GqV24rNW0qHkT3fLgdAcgQZWOF2CWpIBlBMjUKCwp4uBllFBLBAw==
Received: from [127.0.0.1] by nm37.bullet.mail.ne1.yahoo.com with NNFMP;
	05 Mar 2015 23:01:24 -0000
Received: from [98.138.101.131] by nm37.bullet.mail.ne1.yahoo.com with NNFMP;
	05 Mar 2015 22:58:36 -0000
Received: from [98.138.89.169] by tm19.bullet.mail.ne1.yahoo.com with NNFMP;
	05 Mar 2015 22:58:36 -0000
Received: from [127.0.0.1] by omp1025.mail.ne1.yahoo.com with NNFMP;
	05 Mar 2015 22:58:36 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 256150.59489.bm@omp1025.mail.ne1.yahoo.com
X-YMail-OSG: 5zAieagVM1lkyg8CSDRyAB6swh1.0YB1IwAtTe55TiKqVLL3oXBX3ln01t2Yhij
	ngCdPBdyvZoCSGsPjCYzxXyfyYfMcE7UKxSlCDv1d6T51aSuQ4_YBwRHAm0RcLiFQuyaEGa0vJ4n
	M_x1.FdVuToYO_r2K2.t3iEaQHIBTMNrfJmzgfamSCT6jaAGkBpGRbGesy40Ukm7djUFLjo0gD_h
	l34xmrR.HAuDN.IAV9vnS8oVZbsfL9iB_CqldNVRnqwQzQMNWcB9.w_UZTMIGrpaa7lWGan9t5km
	pLjpKEoONW1k_zSJG.xuolNM0UWLTP6SGRb4tjxoqopGEgURTUzXSjQvEm.MX2sAj0URkx6RpW3A
	IcQic1Z_2VuJZzNptnv5763uEcjw2SUww.CJ9DnD3ob54P303Bir7difn2qhqTTmSqfjG5gXyxdf
	y..Q5PGLHP2NcF_uTopXU65xrJg1Nectwg4NP6GhzSo1r4GhDYAuh6AUuvQ9se8tacxIZhpaNJ4W
	XWREHRJehyR_NcEfc1XlDV4yfu7Op1D1nFpq84HjPQBbwzazhWO0lC2Kon9PJzqIgaEur8aiahL8
	gmnJEtNqk4GlvVU1Y3oXbr6EPSbYw4EL0mrBrZxlxVt2m_QKTE6QVAyHk0r.CP8OexLYMaAJCTGG
	7E9g3kuV2Ew5OXHPWE3UPF0uUAH8w6cmXT7hjXB6DAJ.bTU3QtDX3rWlJz6VZrXV4HSdLV.hGOw--
Received: by 217.12.9.11; Thu, 05 Mar 2015 22:58:34 +0000 
Date: Thu, 5 Mar 2015 22:58:34 +0000 (UTC)
From: p_j_r_m <p_j_r_m@yahoo.com>
To: Randy Witt <randy.e.witt@linux.intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1911460113.6376815.1425596314408.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <54F8C240.4060808@linux.intel.com>
References: <54F8C240.4060808@linux.intel.com>
MIME-Version: 1.0
Subject: Re: Append recipe LICENCE checksum problem
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: p_j_r_m <p_j_r_m@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Mar 2015 23:01:31 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_6376814_1392570797.1425596314405"

------=_Part_6376814_1392570797.1425596314405
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

>You are overwriting the SRC_URI rather than appending to it. So my guess i=
s that=20
>the source isn't getting fetched, which is why it says it can't find the l=
icense=20
>file.

I=C2=B4ve change that to SRC_URI_append, but it had no effect and it still =
fails.
My recipe is an .bbappend to a grub recipe, and it has no sources. Should i=
t have a source with a LICENCE file?
=C2=A0
=20

     El Jueves 5 de marzo de 2015 21:53, Randy Witt <randy.e.witt@linux.int=
el.com> escribi=C3=B3:
  =20

 On 03/05/2015 12:46 PM, p_j_r_m wrote:
> I have a layer meta-mycompany where i want to append to the grub_2.00 rec=
ipe placed at openembedded-core layer just to add my custom grub.cfg file.
> Also, I see there is ALREADY a grub-2.00.bbappend file in my BSP layer (m=
eta-montavista-1.4).My layer has highest priority.
>
> So I wrote a recipe called grub-2.00.bbappend like this in my layer:
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> SRC_URI =3D "file://grub${MYBOARD}.cfg "

You are overwriting the SRC_URI rather than appending to it. So my guess is=
 that=20
the source isn't getting fetched, which is why it says it can't find the li=
cense=20
file.


> FILES_${PN}_append =3D "${base_prefix}/boot"
>
> do_install_append() {
>=C2=A0 =C2=A0 if [ ! -d ${D}${base_prefix}/boot/grub ]
>=C2=A0 =C2=A0 then
>=C2=A0 =C2=A0 =C2=A0 install -m 0755 -d ${S}${base_prefix}/boot/grub ${D}$=
{base_prefix}/boot/grub
>=C2=A0 =C2=A0 fi
>=C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/grub${MYBOARD}.cfg ${D}${base_pre=
fix}/boot/grub/grub.cfg
> }
>
> $MYBOARD is a custom name just to pick up the proper grub file for each p=
latform.
>
> But when i do a "bitbake grub" I get:
>
> NOTE: Executing RunQueue Tasks
> ERROR: Function failed: grub: LIC_FILES_CHKSUM points to an invalid file:=
 /opt/work/tmp/work/x86_64-montavista-linux/grub/2.00-r1.2.2/grub-2.00/COPY=
ING
> ERROR: Logfile of failure stored in: /opt/work/tmp/work/x86_64-montavista=
-linux/grub/2.00-r1.2.2/temp/log.do_configure.628
> Log data follows:
> | DEBUG: Executing python function sysroot_cleansstate
> ...
> | DEBUG: Python function do_qa_configure finished
> | ERROR: Function failed: grub: LIC_FILES_CHKSUM points to an invalid fil=
e: /opt/work/tmp/work/x86_64-montavista-linux/grub/2.00-r1.2.2/grub-2.00/CO=
PYING
> ERROR: Task 5 (/opt/work/tmp/layers/openembedded-core-1.4-1411101352/open=
embedded-core-1.4-1411101352/meta/recipes-bsp/grub/grub_2.00.bb, do_configu=
re) failed with exit code '1'
>
> If i take my layer out of my conf/extra-layers.conf ,recipe builds ok.
>
> My layer is:
>
> releases
> =E2=94=9C=E2=94=80=E2=94=80 meta-mycompany
> =E2=94=82=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 conf
> =E2=94=82=C2=A0 =E2=94=82=C2=A0 =E2=94=94=E2=94=80=E2=94=80 layer.conf
> =E2=94=82=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 README
> =E2=94=82=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 recipes
> =E2=94=82=C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 grub
> =E2=94=82=C2=A0 =C2=A0 =C2=A0 =E2=94=82=C2=A0 =E2=94=9C=E2=94=80=E2=94=80=
 files
> =E2=94=82=C2=A0 =C2=A0 =C2=A0 =E2=94=82=C2=A0 =E2=94=82=C2=A0 =E2=94=9C=
=E2=94=80=E2=94=80 grubatca.cfg
> =E2=94=82=C2=A0 =C2=A0 =C2=A0 =E2=94=82=C2=A0 =E2=94=82=C2=A0 =E2=94=94=
=E2=94=80=E2=94=80 grubmni.cfg
> =E2=94=82=C2=A0 =C2=A0 =C2=A0 =E2=94=82=C2=A0 =E2=94=94=E2=94=80=E2=94=80=
 grub_2.00.bbappend
> =E2=94=82=C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 images
> =E2=94=82=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 m=
ycompany-atca-image.bb
> =E2=94=82=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 m=
ycompany-atca-image-buildcf.bb
> =E2=94=9C=E2=94=80=E2=94=80 meta-mycompany.tar.bz2
> =E2=94=9C=E2=94=80=E2=94=80 meta-mycompany.tar.bz2.md5
>
> Do you know what is the problem?
> Must an .append recipe also provide a LICENCE file? Where?
>
> Thank you
>

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_6376814_1392570797.1425596314405
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><pre id=3D"yui_3_16_0_1_1425594992438_19970" style=3D"" class=
=3D"">&gt;You are overwriting the SRC_URI rather than appending to it. So m=
y guess is that=20
&gt;the source isn't getting fetched, which is why it says it can't find th=
e license=20
&gt;file.<br><br>I=C2=B4ve change that to SRC_URI_append, but it had no eff=
ect and it still fails.<br>My recipe is an .bbappend to a grub recipe, and =
it has no sources. Should it have a source with a LICENCE file?<br>&nbsp;<b=
r></pre> <div class=3D"qtdSeparateBR"><br><br></div><div style=3D"display: =
block;" class=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaNeue, H=
elvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12px=
;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Ar=
ial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr"> <font =
face=3D"Arial" size=3D"2"> El Jueves 5 de marzo de 2015 21:53, Randy Witt &=
lt;randy.e.witt@linux.intel.com&gt; escribi=C3=B3:<br> </font> </div>  <br>=
<br> <div class=3D"y_msg_container">On 03/05/2015 12:46 PM, p_j_r_m wrote:<=
br clear=3D"none">&gt; I have a layer meta-mycompany where i want to append=
 to the grub_2.00 recipe placed at openembedded-core layer just to add my c=
ustom grub.cfg file.<br clear=3D"none">&gt; Also, I see there is ALREADY a =
grub-2.00.bbappend file in my BSP layer (meta-montavista-1.4).My layer has =
highest priority.<br clear=3D"none">&gt;<br clear=3D"none">&gt; So I wrote =
a recipe called grub-2.00.bbappend like this in my layer:<br clear=3D"none"=
>&gt;<br clear=3D"none">&gt; FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files=
:"<br clear=3D"none">&gt; SRC_URI =3D "file://grub${MYBOARD}.cfg "<br clear=
=3D"none"><br clear=3D"none">You are overwriting the SRC_URI rather than ap=
pending to it. So my guess is that <br clear=3D"none">the source isn't gett=
ing fetched, which is why it says it can't find the license <div class=3D"y=
qt3839249004" id=3D"yqtfd78743"><br clear=3D"none">file.<br clear=3D"none">=
<br clear=3D"none"><br clear=3D"none">&gt; FILES_${PN}_append =3D "${base_p=
refix}/boot"<br clear=3D"none">&gt;<br clear=3D"none">&gt; do_install_appen=
d() {<br clear=3D"none">&gt;&nbsp; &nbsp; if [ ! -d ${D}${base_prefix}/boot=
/grub ]<br clear=3D"none">&gt;&nbsp; &nbsp; then<br clear=3D"none">&gt;&nbs=
p; &nbsp; &nbsp;  install -m 0755 -d ${S}${base_prefix}/boot/grub ${D}${bas=
e_prefix}/boot/grub<br clear=3D"none">&gt;&nbsp; &nbsp; fi<br clear=3D"none=
">&gt;&nbsp; &nbsp; install -m 0755 ${WORKDIR}/grub${MYBOARD}.cfg ${D}${bas=
e_prefix}/boot/grub/grub.cfg<br clear=3D"none">&gt; }<br clear=3D"none">&gt=
;<br clear=3D"none">&gt; $MYBOARD is a custom name just to pick up the prop=
er grub file for each platform.<br clear=3D"none">&gt;<br clear=3D"none">&g=
t; But when i do a "bitbake grub" I get:<br clear=3D"none">&gt;<br clear=3D=
"none">&gt; NOTE: Executing RunQueue Tasks<br clear=3D"none">&gt; ERROR: Fu=
nction failed: grub: LIC_FILES_CHKSUM points to an invalid file: /opt/work/=
tmp/work/x86_64-montavista-linux/grub/2.00-r1.2.2/grub-2.00/COPYING<br clea=
r=3D"none">&gt; ERROR: Logfile of failure stored in: /opt/work/tmp/work/x86=
_64-montavista-linux/grub/2.00-r1.2.2/temp/log.do_configure.628<br clear=3D=
"none">&gt; Log data follows:<br clear=3D"none">&gt; | DEBUG: Executing pyt=
hon function sysroot_cleansstate<br clear=3D"none">&gt; ...<br clear=3D"non=
e">&gt; | DEBUG: Python function do_qa_configure finished<br clear=3D"none"=
>&gt; | ERROR: Function failed: grub: LIC_FILES_CHKSUM points to an invalid=
 file: /opt/work/tmp/work/x86_64-montavista-linux/grub/2.00-r1.2.2/grub-2.0=
0/COPYING<br clear=3D"none">&gt; ERROR: Task 5 (/opt/work/tmp/layers/openem=
bedded-core-1.4-1411101352/openembedded-core-1.4-1411101352/meta/recipes-bs=
p/grub/grub_2.00.bb, do_configure) failed with exit code '1'<br clear=3D"no=
ne">&gt;<br clear=3D"none">&gt; If i take my layer out of my conf/extra-lay=
ers.conf ,recipe builds ok.<br clear=3D"none">&gt;<br clear=3D"none">&gt; M=
y layer is:<br clear=3D"none">&gt;<br clear=3D"none">&gt; releases<br clear=
=3D"none">&gt; =E2=94=9C=E2=94=80=E2=94=80 meta-mycompany<br clear=3D"none"=
>&gt; =E2=94=82&nbsp;  =E2=94=9C=E2=94=80=E2=94=80 conf<br clear=3D"none">&=
gt; =E2=94=82&nbsp;  =E2=94=82&nbsp;  =E2=94=94=E2=94=80=E2=94=80 layer.con=
f<br clear=3D"none">&gt; =E2=94=82&nbsp;  =E2=94=9C=E2=94=80=E2=94=80 READM=
E<br clear=3D"none">&gt; =E2=94=82&nbsp;  =E2=94=9C=E2=94=80=E2=94=80 recip=
es<br clear=3D"none">&gt; =E2=94=82&nbsp; &nbsp; &nbsp;  =E2=94=9C=E2=94=80=
=E2=94=80 grub<br clear=3D"none">&gt; =E2=94=82&nbsp; &nbsp; &nbsp;  =E2=94=
=82&nbsp;  =E2=94=9C=E2=94=80=E2=94=80 files<br clear=3D"none">&gt; =E2=94=
=82&nbsp; &nbsp; &nbsp;  =E2=94=82&nbsp;  =E2=94=82&nbsp;  =E2=94=9C=E2=94=
=80=E2=94=80 grubatca.cfg<br clear=3D"none">&gt; =E2=94=82&nbsp; &nbsp; &nb=
sp;  =E2=94=82&nbsp;  =E2=94=82&nbsp;  =E2=94=94=E2=94=80=E2=94=80 grubmni.=
cfg<br clear=3D"none">&gt; =E2=94=82&nbsp; &nbsp; &nbsp;  =E2=94=82&nbsp;  =
=E2=94=94=E2=94=80=E2=94=80 grub_2.00.bbappend<br clear=3D"none">&gt; =E2=
=94=82&nbsp; &nbsp; &nbsp;  =E2=94=9C=E2=94=80=E2=94=80 images<br clear=3D"=
none">&gt; =E2=94=82&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =E2=94=9C=E2=94=80=
=E2=94=80 mycompany-atca-image.bb<br clear=3D"none">&gt; =E2=94=82&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; =E2=94=94=E2=94=80=E2=94=80 mycompany-atca-image-=
buildcf.bb<br clear=3D"none">&gt; =E2=94=9C=E2=94=80=E2=94=80 meta-mycompan=
y.tar.bz2<br clear=3D"none">&gt; =E2=94=9C=E2=94=80=E2=94=80 meta-mycompany=
.tar.bz2.md5<br clear=3D"none">&gt;<br clear=3D"none">&gt; Do you know what=
 is the problem?<br clear=3D"none">&gt; Must an .append recipe also provide=
 a LICENCE file? Where?<br clear=3D"none">&gt;<br clear=3D"none">&gt; Thank=
 you</div><br clear=3D"none">&gt;<br clear=3D"none"><br clear=3D"none">-- <=
br clear=3D"none">_______________________________________________<br clear=
=3D"none">yocto mailing list<br clear=3D"none"><a shape=3D"rect" ymailto=3D=
"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yoct=
o@yoctoproject.org</a><br clear=3D"none"><a shape=3D"rect" href=3D"https://=
lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoct=
oproject.org/listinfo/yocto</a><div class=3D"yqt3839249004" id=3D"yqtfd7379=
0"><br clear=3D"none"></div><br><br></div>  </div> </div>  </div> </div></b=
ody></html>

------=_Part_6376814_1392570797.1425596314405--
