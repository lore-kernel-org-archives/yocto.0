Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CFE7E008A7; Mon, 29 Dec 2014 08:28:14 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E418BE002A6
	for <yocto@yoctoproject.org>; Mon, 29 Dec 2014 08:28:10 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sBTGS5cf010180;
	Tue, 30 Dec 2014 02:58:05 +1030
Message-Id: <cd5a7db309a3342e668e2b4b21d86bd91d416e52@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <4255067.HY4uUhKlVr@peggleto-mobl5.ger.corp.intel.com>
Date: Tue, 30 Dec 2014 02:58:05 +1030
MIME-Version: 1.0
Subject: Re: bitbake cannot locate source file from recipe
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
X-List-Received-Date: Mon, 29 Dec 2014 16:28:14 -0000
Content-Type: multipart/alternative;
	boundary="=_0f68f171bd258dd64393f5ff2d46a152"

--=_0f68f171bd258dd64393f5ff2d46a152
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=C2=A0The result of bitbake -e linux-yocto-custom gives this output:=0A=
=0A# $FILESPATH [2 operations]=0A#=C2=A0=C2=A0 set /home/lachlan/poky/me=
ta/conf/documentation.conf:174=0A#=C2=A0=C2=A0=C2=A0=C2=A0 [doc] "The de=
fault set of directories the OpenEmbedded=0Abuild system uses when searc=
hing for patches and files. It is defined=0Ain the base.bbclass class fo=
und in meta/classes in the Source D=0Airectory. Do not hand-edit the FIL=
ESPATH variable."=0A#=C2=A0=C2=A0 set /home/lachlan/poky/meta/classes/ba=
se.bbclass:83=0A#=C2=A0=C2=A0=C2=A0=C2=A0 "${@base_set_filespath(["${FIL=
E_DIRNAME}/${BP}",=0A"${FILE_DIRNAME}/${BPN}", "${FILE_DIRNAME}/files"],=
 d)}"=0A# computed:=0A#=C2=A0=C2=A0 "${@base_set_filespath(["${FILE_DIRN=
AME}/${BP}",=0A"${FILE_DIRNAME}/${BPN}", "${FILE_DIRNAME}/files"], d)}"=
=0AFILESPATH=3D"/home/lachlan/poky/meta-atmel/recipes-kernel/linux/files=
/sama5d3xek/poky:/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/linux/=
files/poky:/home/lachlan/poky/meta-atmel/recipes-kernel=0A/linux/linux-y=
octo-custom-3.10+AUTOINC+35158dd80a/poky:/home/lachlan/poky/meta-atmel/r=
ecipes-kernel/linux/linux-yocto-custom/poky:/home/lachlan/poky/meta-atme=
l/recipes-kernel/linux/files/poky:/h=0Aome/lachlan/poky/meta-atmel/recip=
es-kernel/linux/files/sama5d3xek/sama5d3xek:/home/lachlan/poky/meta-atme=
l-lsp/recipes-kernel/linux/files/sama5d3xek:/home/lachlan/poky/meta-atme=
l/recipes-kernel/=0Alinux/linux-yocto-custom-3.10+AUTOINC+35158dd80a/sam=
a5d3xek:/home/lachlan/poky/meta-atmel/recipes-kernel/linux/linux-yocto-c=
ustom/sama5d3xek:/home/lachlan/poky/meta-atmel/recipes-kernel/linux/fi=
=0Ales/sama5d3xek:/home/lachlan/poky/meta-atmel/recipes-kernel/linux/fil=
es/sama5d3xek/armv7a:/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/li=
nux/files/armv7a:/home/lachlan/poky/meta-atmel/recipe=0As-kernel/linux/l=
inux-yocto-custom-3.10+AUTOINC+35158dd80a/armv7a:/home/lachlan/poky/meta=
-atmel/recipes-kernel/linux/linux-yocto-custom/armv7a:/home/lachlan/poky=
/meta-atmel/recipes-kernel/linux/files/armv7a:/home/lachlan/poky/meta-at=
mel/recipes-kernel/linux/files/sama5d3xek/arm:/home/lachlan/poky/meta-at=
mel-lsp/recipes-kernel/linux/files/arm:/home/lachlan/poky/meta-atmel/rec=
ipes-kernel/linux/linux-yocto-custom-3.10+AUTOINC+35158dd80a/arm:/home/l=
achlan/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom/arm:/home=
/lachlan/poky/meta-atmel/recipes-kernel/linux/files/arm:/home/lachlan/po=
ky/meta-atmel/recipes-kernel/linux/files/sama5d3xek/:/home/lachlan/poky/=
meta-atmel-lsp/recipes-kernel/linux/files/:/home/lachlan/poky/meta-atmel=
/recipes-kernel/linux/linux-yocto-custom-3.10+AUTOINC+35158dd80a/:/home/=
lachlan/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom/:/home/l=
achlan/poky/meta-atmel/recipes-kernel/linux/files/"=0A#=0A=0A# $SRC_URI=
 [6 operations]=0A#=C2=A0=C2=A0 set /home/lachlan/poky/meta/conf/bitbake=
conf:588=0A#=C2=A0=C2=A0=C2=A0=C2=A0 ""=0A#=C2=A0=C2=A0 set /home/lachl=
an/poky/meta/conf/documentation.conf:378=0A#=C2=A0=C2=A0=C2=A0=C2=A0 [do=
c] "The list of source files - local or remote. This=0Avariable tells th=
e OpenEmbedded build system what bits to pull in for=0Athe build and how=
 to pull them in."=0A#=C2=A0=C2=A0 set=0A/home/lachlan/poky/meta-atmel/r=
ecipes-kernel/linux/linux-yocto-custom_3.10.bb:46=0A#=C2=A0=C2=A0=C2=A0=
=C2=A0=0A"git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it;protocol=3Dgit;nocheckout=3D1"=0A#=C2=A0=C2=A0 append=0A/home/lachlan=
/poky/meta-atmel-lsp/recipes-kernel/linux/linux-yocto-custom_3.10.bbappe=
nd:10=0A#=C2=A0=C2=A0=C2=A0=C2=A0 " file://sama5d3xek_lsp.dts "=0A#=C2=
=A0=C2=A0 set=0A/home/lachlan/poky/meta-atmel/recipes-kernel/linux/linux=
-yocto-custom_3.10.bbappend:9=0A#=C2=A0=C2=A0=C2=A0=C2=A0=0A"git://githu=
b.com/linux4sam/linux-at91.git;protocol=3Dgit;branch=3D${KBRANCH};nochec=
kout=3D1"=0A#=C2=A0=C2=A0 append=0A/home/lachlan/poky/meta-atmel/recipes=
-kernel/linux/linux-yocto-custom_3.10.bbappend:10=0A#=C2=A0=C2=A0=C2=A0=
=C2=A0 "file://defconfig"=0A# computed:=0A#=C2=A0=C2=A0=0A"git://github.=
com/linux4sam/linux-at91.git;protocol=3Dgit;branch=3D${KBRANCH};nochecko=
ut=3D1=0Afile://defconfig"=0ASRC_URI=3D"git://github.com/linux4sam/linux=
-at91.git;protocol=3Dgit;branch=3Dlinux-3.10-at91;nocheckout=3D1=0Afile:=
//defconfig"=0A=0AI can infer from this that it did not pickup the dts f=
ile as a valid=0Asource file, but I cannot seem to workout why?=0AFrom t=
he FILEPATH it appears that is has extracted the correct=0Alocation of t=
he sourcefile at:=0A/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/lin=
ux/files/sama5d3xek:=0A=0A=0A Is there something else I should be lookin=
g for or is there=0Asomething in this that can highlight the problem=0AR=
egards=0ALachlan=0A=0A----- Original Message -----=0AFrom: "Paul Eggleto=
n" =0ATo:, =0ACc:=0ASent:Mon, 29 Dec 2014 14:46:20 +0000=0ASubject:Re: [=
yocto] bitbake cannot locate source file from recipe=0A=0A On Tuesday 30=
 December 2014 00:26:05 peterengcomau001@adam.com.au=0Awrote:=0A > I hav=
e had some success and some failure.=0A > Attempt 1: FAILI changed the S=
RC to:FILESEXTRAPATHS_prepend :=3D=0A > "${THISDIR}/files:" removing the=
 machine name and the space. The=0A > machine is sama5d3xek.=0A > I stil=
l get an the error : (the directory is now changed)=0A > =0A > > | DEBUG=
: Executing shell function do_install=0A > > | cp: cannot stat=0A > =0A=
 >=0A'/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnue=
abi/linux=0A > > -yocto-custom/3.10+AUTOINC+35158dd80a-r5/sama5d3xek_lsp=
dts': No=0A > > such file or directory=0A > >=0A > > =0A > =0A > Note:=
=0A > There is already a .bbappend file for this recipe in the original=
=0A > source. Can a problem occur having two bbappend recipes each=0A >=
 containing FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:" but=0A > re=
ferring to different ${THISDIR} directories?=0A > The existing linux-yoc=
to-custom_3.10.bbppend file contains:KBRANCH=0A=3D=0A > "linux-3.10-at91=
"SRCREV =3D "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" -=0Ai=0A > am on a di=
ffernt computer so I wont copy the numbersPV =3D=0A > "${LINUX_VERSION}+=
${SRCPV}"PR =3D "r5"FILESEXTRAPATHS_prepend :=3D=0A > "${THISDIR}/files/=
${MACHINE}:" SRC_URI =3D=0A >=0A"git://github.com/linux4sam/linux-at91gi=
t;protocol=3Dgit;branch=3D${KBRANCH};noc=0A > heckout=3D1"SRC_URI +=3D "=
file://defconfig"=0A > do_deploy_append () {.......}=0A > Attempt 2: FAI=
L I tried making the source file name=0AincorrectSRC_URI=0A > +=3D " fil=
e://sama5d3xek_wrong.dts "The same error results. I would=0Ahave=0A > th=
ought it would pick up a different error if the original source=0Afile=
=0A > could not be found.=0A > Attempt 3: THIS WORKEDI also copied the f=
ollowing code to the=0A > original vendor supplied .bbppend recipe, as w=
ell as moving the=0A > sama5d3xek_lsp.dts to the correct directory for t=
hat recipeSRC_URI=0A+=3D=0A > " file://sama5d3xek_lsp.dts "=0A > KERNEL_=
DEVICETREE +=3D " sama5d3xek_lsp.dtb"=0A > =0A > do_install_prepend () {=
=0A > cp ${WORKDIR}/sama5d3xek_lsp.dts=0A > ${WORKDIR}/linux/arch/${ARCH=
}/boot/dts=0A > }=0A > =0A > This worked and the device tree blob was bu=
ilt. However, I don't=0Awant=0A > to modify the vendor supplied source f=
iles and would like another=0Away=0A > of doing this in my own layer.=0A=
=0A You'd have to look at what bitbake -e linux-yocto-custom | less=0Are=
ports as the =0A values of the variables you are changing (SRC_URI, FILE=
SEXTRAPATHS,=0Aand =0A do_install), because it depends on what this othe=
r bbappend is doing=0Aand in =0A what order the bbappends are applied (t=
he latter is determined by=0Athe relative =0A layer priorities).=0A=0A C=
heers,=0A Paul=0A=0A -- =0A=0A Paul Eggleton=0A Intel Open Source Techno=
logy Centre=0A -- =0A _______________________________________________=0A=
 yocto mailing list=0A yocto@yoctoproject.org=0A https://lists.yoctoproj=
ect.org/listinfo/yocto=0A=0A---- Message sent via Adam Internet WebMail=
 - http://www.adam.com.au/

--=_0f68f171bd258dd64393f5ff2d46a152
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>=C2=A0The result of bitbake -e linux-yocto-custom gives this=
 output:<br /><br /># $FILESPATH [2 operations]<br />#=C2=A0=C2=A0 set /=
home/lachlan/poky/meta/conf/documentation.conf:174<br />#=C2=A0=C2=A0=C2=
=A0=C2=A0 [doc] "The default set of directories the OpenEmbedded build s=
ystem uses when searching for patches and files. It is defined in the ba=
se.bbclass class found in meta/classes in the Source D<br />irectory. Do=
 not hand-edit the FILESPATH variable."<br />#=C2=A0=C2=A0 set /home/lac=
hlan/poky/meta/classes/base.bbclass:83<br />#=C2=A0=C2=A0=C2=A0=C2=A0 "$=
{@base_set_filespath(["${FILE_DIRNAME}/${BP}", "${FILE_DIRNAME}/${BPN}",=
 "${FILE_DIRNAME}/files"], d)}"<br /># computed:<br />#=C2=A0=C2=A0 "${@=
base_set_filespath(["${FILE_DIRNAME}/${BP}", "${FILE_DIRNAME}/${BPN}", "=
${FILE_DIRNAME}/files"], d)}"<br />FILESPATH=3D"/home/lachlan/poky/meta-=
atmel/recipes-kernel/linux/files/sama5d3xek/poky:/home/lachlan/poky/meta=
-atmel-lsp/recipes-kernel/linux/files/poky:/home/lachlan/poky/meta-atmel=
/recipes-kernel<br />/linux/linux-yocto-custom-3.10+AUTOINC+35158dd80a/p=
oky:/home/lachlan/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custo=
m/poky:/home/lachlan/poky/meta-atmel/recipes-kernel/linux/files/poky:/h<=
br />ome/lachlan/poky/meta-atmel/recipes-kernel/linux/files/sama5d3xek/s=
ama5d3xek:/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/linux/files/s=
ama5d3xek:/home/lachlan/poky/meta-atmel/recipes-kernel/<br />linux/linux=
-yocto-custom-3.10+AUTOINC+35158dd80a/sama5d3xek:/home/lachlan/poky/meta=
-atmel/recipes-kernel/linux/linux-yocto-custom/sama5d3xek:/home/lachlan/=
poky/meta-atmel/recipes-kernel/linux/fi<br />les/sama5d3xek:/home/lachla=
n/poky/meta-atmel/recipes-kernel/linux/files/sama5d3xek/armv7a:/home/lac=
hlan/poky/meta-atmel-lsp/recipes-kernel/linux/files/armv7a:/home/lachlan=
/poky/meta-atmel/recipe<br />s-kernel/linux/linux-yocto-custom-3.10+AUTO=
INC+35158dd80a/armv7a:/home/lachlan/poky/meta-atmel/recipes-kernel/linux=
/linux-yocto-custom/armv7a:/home/lachlan/poky/meta-atmel/recipes-kernel/=
linux/files/armv7a:/home/lachlan/poky/meta-atmel/recipes-kernel/linux/fi=
les/sama5d3xek/arm:/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/linu=
x/files/arm:/home/lachlan/poky/meta-atmel/recipes-kernel/linux/linux-yoc=
to-custom-3.10+AUTOINC+35158dd80a/arm:/home/lachlan/poky/meta-atmel/reci=
pes-kernel/linux/linux-yocto-custom/arm:/home/lachlan/poky/meta-atmel/re=
cipes-kernel/linux/files/arm:/home/lachlan/poky/meta-atmel/recipes-kerne=
l/linux/files/sama5d3xek/:/home/lachlan/poky/meta-atmel-lsp/recipes-kern=
el/linux/files/:/home/lachlan/poky/meta-atmel/recipes-kernel/linux/linux=
-yocto-custom-3.10+AUTOINC+35158dd80a/:/home/lachlan/poky/meta-atmel/rec=
ipes-kernel/linux/linux-yocto-custom/:/home/lachlan/poky/meta-atmel/reci=
pes-kernel/linux/files/"<br />#<br /><br /># $SRC_URI [6 operations]<br=
 />#=C2=A0=C2=A0 set /home/lachlan/poky/meta/conf/bitbake.conf:588<br />=
#=C2=A0=C2=A0=C2=A0=C2=A0 ""<br />#=C2=A0=C2=A0 set /home/lachlan/poky/m=
eta/conf/documentation.conf:378<br />#=C2=A0=C2=A0=C2=A0=C2=A0 [doc] "Th=
e list of source files - local or remote. This variable tells the OpenEm=
bedded build system what bits to pull in for the build and how to pull t=
hem in."<br />#=C2=A0=C2=A0 set /home/lachlan/poky/meta-atmel/recipes-ke=
rnel/linux/linux-yocto-custom_3.10.bb:46<br />#=C2=A0=C2=A0=C2=A0=C2=A0=
 "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;proto=
col=3Dgit;nocheckout=3D1"<br />#=C2=A0=C2=A0 append /home/lachlan/poky/m=
eta-atmel-lsp/recipes-kernel/linux/linux-yocto-custom_3.10.bbappend:10<b=
r />#=C2=A0=C2=A0=C2=A0=C2=A0 " file://sama5d3xek_lsp.dts "<br />#=C2=A0=
=C2=A0 set /home/lachlan/poky/meta-atmel/recipes-kernel/linux/linux-yoct=
o-custom_3.10.bbappend:9<br />#=C2=A0=C2=A0=C2=A0=C2=A0 "git://github.co=
m/linux4sam/linux-at91.git;protocol=3Dgit;branch=3D${KBRANCH};nocheckout=
=3D1"<br />#=C2=A0=C2=A0 append /home/lachlan/poky/meta-atmel/recipes-ke=
rnel/linux/linux-yocto-custom_3.10.bbappend:10<br />#=C2=A0=C2=A0=C2=A0=
=C2=A0 "file://defconfig"<br /># computed:<br />#=C2=A0=C2=A0 "git://git=
hub.com/linux4sam/linux-at91.git;protocol=3Dgit;branch=3D${KBRANCH};noch=
eckout=3D1 file://defconfig"<br />SRC_URI=3D"git://github.com/linux4sam/=
linux-at91.git;protocol=3Dgit;branch=3Dlinux-3.10-at91;nocheckout=3D1 fi=
le://defconfig"<br /><br />I can infer from this that it did not pickup=
 the dts file as a valid source file, but I cannot seem to workout why?<=
br />From the FILEPATH it appears that is has extracted the correct loca=
tion of the sourcefile at: /home/lachlan/poky/meta-atmel-lsp/recipes-ker=
nel/linux/files/sama5d3xek: <br /><br />=0A=09=09=09=09Is there somethin=
g else I should be looking for or is there something in this that can hi=
ghlight the problem<br /><blockquote>Regards<br />Lachlan<br /><br />---=
-- Original Message -----<br /><div style=3D"width:100%;background:rgb(2=
28,228,228);"><div style=3D"font-weight:bold;">From:</div> "Paul Eggleto=
n" &lt;paul.eggleton@linux.intel.com&gt;</div><br /><div style=3D"font-w=
eight:bold;">To:</div>&lt;peterengcomau001@adam.com.au&gt;, &lt;yocto@yo=
ctoproject.org&gt;<br /><div style=3D"font-weight:bold;">Cc:</div><br />=
<div style=3D"font-weight:bold;">Sent:</div>Mon, 29 Dec 2014 14:46:20 +0=
000<br /><div style=3D"font-weight:bold;">Subject:</div>Re: [yocto] bitb=
ake cannot locate source file from recipe<br /><br /><br />=0AOn Tuesday=
 30 December 2014 00:26:05 peterengcomau001@adam.com.au wrote:<br />=0A&=
gt; I have had some success and some failure.<br />=0A&gt; Attempt 1: FA=
ILI changed the SRC to:FILESEXTRAPATHS_prepend :=3D<br />=0A&gt; "${THIS=
DIR}/files:" removing the machine name and the space. The<br />=0A&gt; m=
achine is sama5d3xek.<br />=0A&gt; I still get an the error : (the direc=
tory is now changed)<br />=0A&gt; <br />=0A&gt; &gt; | DEBUG: Executing=
 shell function do_install<br />=0A&gt; &gt; | cp: cannot stat<br />=0A&=
gt; <br />=0A&gt; '/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-po=
ky-linux-gnueabi/linux<br />=0A&gt; &gt; -yocto-custom/3.10+AUTOINC+3515=
8dd80a-r5/sama5d3xek_lsp.dts': No<br />=0A&gt; &gt; such file or directo=
ry<br />=0A&gt; &gt;<br />=0A&gt; &gt; <br />=0A&gt; <br />=0A&gt; Note:=
<br />=0A&gt; There is already a .bbappend file for this recipe in the o=
riginal<br />=0A&gt; source. Can a problem occur having two bbappend rec=
ipes each<br />=0A&gt; containing FILESEXTRAPATHS_prepend :=3D "${THISDI=
R}/files:" but<br />=0A&gt; referring to different ${THISDIR} directorie=
s?<br />=0A&gt; The existing linux-yocto-custom_3.10.bbppend file contai=
ns:KBRANCH =3D<br />=0A&gt; "linux-3.10-at91"SRCREV =3D "xxxxxxxxxxxxxxx=
xxxxxxxxxxxxxxxxxxxxx" - i<br />=0A&gt; am on a differnt computer so I w=
ont copy the numbersPV =3D<br />=0A&gt; "${LINUX_VERSION}+${SRCPV}"PR=
 =3D "r5"FILESEXTRAPATHS_prepend :=3D<br />=0A&gt; "${THISDIR}/files/${M=
ACHINE}:" SRC_URI =3D<br />=0A&gt; "git://github.com/linux4sam/linux-at9=
1git;protocol=3Dgit;branch=3D${KBRANCH};noc<br />=0A&gt; heckout=3D1"SRC=
_URI +=3D "file://defconfig"<br />=0A&gt; do_deploy_append () {.......}<=
br />=0A&gt; Attempt 2: FAIL I tried making the source file name incorre=
ctSRC_URI<br />=0A&gt; +=3D " file://sama5d3xek_wrong.dts "The same erro=
r results. I would have<br />=0A&gt; thought it would pick up a differen=
t error if the original source file<br />=0A&gt; could not be found.<br=
 />=0A&gt; Attempt 3: THIS WORKEDI also copied the following code to the=
<br />=0A&gt; original vendor supplied .bbppend recipe, as well as movin=
g the<br />=0A&gt; sama5d3xek_lsp.dts to the correct directory for that=
 recipeSRC_URI +=3D<br />=0A&gt; " file://sama5d3xek_lsp.dts "<br />=0A&=
gt; KERNEL_DEVICETREE +=3D " sama5d3xek_lsp.dtb"<br />=0A&gt; <br />=0A&=
gt; do_install_prepend () {<br />=0A&gt;     cp ${WORKDIR}/sama5d3xek_ls=
p.dts<br />=0A&gt;  ${WORKDIR}/linux/arch/${ARCH}/boot/dts<br />=0A&gt;=
 }<br />=0A&gt; <br />=0A&gt; This worked and the device tree blob was b=
uilt. However, I don't want<br />=0A&gt; to modify the vendor supplied s=
ource files and would like another way<br />=0A&gt; of doing this in my=
 own layer.<br /><br />=0AYou'd have to look at what bitbake -e linux-yo=
cto-custom | less reports as the <br />=0Avalues of the variables you ar=
e changing (SRC_URI, FILESEXTRAPATHS, and <br />=0Ado_install), because=
 it depends on what this other bbappend is doing and in <br />=0Awhat or=
der the bbappends are applied (the latter is determined by the relative=
 <br />=0Alayer priorities).<br /><br />=0ACheers,<br />=0APaul<br /><br=
 />=0A-- <br /><br />=0APaul Eggleton<br />=0AIntel Open Source Technolo=
gy Centre<br />=0A-- <br />=0A__________________________________________=
_____<br />=0Ayocto mailing list<br />=0Ayocto@yoctoproject.org<br />=0A=
https://lists.yoctoproject.org/listinfo/yocto<br /><br /><br /></blockqu=
ote>---- Message sent via Adam Internet WebMail  - http://www.adam.com.a=
u/</body></html>

--=_0f68f171bd258dd64393f5ff2d46a152--
