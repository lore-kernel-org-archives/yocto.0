Subject: #yocto do_package error for custom app
To: yocto@lists.yoctoproject.org
From: "Bastien0530" <bastien.gallet-pesenti@pi.esisar.grenoble-inp.fr>
X-Originating-Location: Saint-Privat-des-Vieux, Occitanie, FR (109.19.109.181)
X-Originating-Platform: Linux Firefox 75
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 04 May 2020 01:13:17 -0700
Message-ID: <uvNE.1588579997175508090.uKqz@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="efmCqICbhWSitQDr3hmN"

--efmCqICbhWSitQDr3hmN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I'm currently trying to add a cutsom app to my cutsom image for raspi3 and=
 I encountered a problem during the do_package phase of the build of the im=
age.

ERROR: si4688-app-1.0-r0 do_package: Fatal errors occurred in subprocesses=
:
Command '['arm-poky-linux-gnueabi-objcopy', '--only-keep-debug', '/home/ga=
lletpb/Documents/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnu=
eabi/si4688-app/1.0-r0/package/usr/bin/si4688-app', '/home/galletpb/Documen=
ts/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/si4688-ap=
p/1.0-r0/package/usr/bin/.debug/si4688-app']' returned non-zero exit status=
 1.
Subprocess output:arm-poky-linux-gnueabi-objcopy:/home/galletpb/Documents/=
poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/si4688-app/1=
.0-r0/package/usr/bin/si4688-app: file format not recognized

ERROR: Logfile of failure stored in: /home/galletpb/Documents/poky/build/t=
mp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/si4688-app/1.0-r0/temp/l=
og.do_package.5485
ERROR: Task (/home/galletpb/Documents/poky/meta-my-layer/recipes-custom/si=
4688-app/si4688-app_1.0.bb:do_package) failed with exit code '1'

I wrote this simple recipe:

DESCRIPTION =3D "A SI4688 control application built with a Makefile."
SECTION =3D "Custom"

LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=3D801f80980=
d171dd6425610833a22dbe6"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

SRC_URI=C2=A0 =3D "file://${BPN}"

S =3D "${WORKDIR}/${PN}"

do_compile() {
oe_runmake
}

do_install() {
oe_runmake DESTDIR=3D"${D}${bindir}" install
}

I tried beforehand to add the line
INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
to the pevious recipe but it doesn't work either.

Do you have any idea of what's wrong with this?

I share you my Makefile if it could be useful:

EXE=3Dsi4688-app
SRC=3D$(wildcard *.c)
OBJS=3D$(SRC:.c=3D.o)

.PHONY: all

all: $(EXE)

$(EXE): $(OBJS)
$(CC) -o $@ $^ $(LDFLAGS)

gpio.o : gpio.h

si46xx_core.o : gpio.h si46xx.h

dabpi_ctl.o : si46xx.h version.h

si46xx_dab.o : si46xx.h

si46xx_fm.o : si46xx.h

%.o: %.c
$(CC) -o $@ -c $< $(CFLAGS)

.PHONY: clean

clean:
rm -rf *.o

.PHONY: mrproper

mrproper: clean
rm -rf $(EXE)

.PHONY: install

install: $(EXE)
install -m 0755 -d $(DESTDIR)
install -m 0755 $(EXE) $(DESTDIR)

Thanks for your time,
Bastien

--efmCqICbhWSitQDr3hmN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,<br />I'm currently trying to add a cutsom app to my cutsom image for=
 raspi3 and I encountered a problem during the do_package phase of the buil=
d of the image.<br /><br /><br />ERROR: si4688-app-1.0-r0 do_package: Fatal=
 errors occurred in subprocesses:<br />Command '['arm-poky-linux-gnueabi-ob=
jcopy', '--only-keep-debug', '/home/galletpb/Documents/poky/build/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/si4688-app/1.0-r0/package/usr/bi=
n/si4688-app', '/home/galletpb/Documents/poky/build/tmp/work/cortexa7t2hf-n=
eon-vfpv4-poky-linux-gnueabi/si4688-app/1.0-r0/package/usr/bin/.debug/si468=
8-app']' returned non-zero exit status 1.<br />Subprocess output:arm-poky-l=
inux-gnueabi-objcopy:/home/galletpb/Documents/poky/build/tmp/work/cortexa7t=
2hf-neon-vfpv4-poky-linux-gnueabi/si4688-app/1.0-r0/package/usr/bin/si4688-=
app: file format not recognized<br /><br />ERROR: Logfile of failure stored=
 in: /home/galletpb/Documents/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-p=
oky-linux-gnueabi/si4688-app/1.0-r0/temp/log.do_package.5485<br />ERROR: Ta=
sk (/home/galletpb/Documents/poky/meta-my-layer/recipes-custom/si4688-app/s=
i4688-app_1.0.bb:do_package) failed with exit code '1'<br /><br /><br />I w=
rote this simple recipe:</p>
<p><br />DESCRIPTION =3D "A SI4688 control application built with a Makefi=
le."<br />SECTION =3D "Custom"<br /><br />LICENSE =3D "GPLv2"<br />LIC_FILE=
S_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=3D801f80980d171dd642=
5610833a22dbe6" <br /><br />FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:=
"<br /><br />SRC_URI&nbsp; =3D "file://${BPN}"<br /><br />S =3D "${WORKDIR}=
/${PN}"<br /><br />do_compile() {<br />&nbsp;&nbsp;&nbsp; oe_runmake<br />}=
<br /><br />do_install() {<br />&nbsp;&nbsp;&nbsp; oe_runmake DESTDIR=3D"${=
D}${bindir}" install<br />}<br /><br />I tried beforehand to add the line<b=
r />INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"<br />to the pevious recipe but it d=
oesn't work either.<br /><br />Do you have any idea of what's wrong with th=
is?<br /><br />I share you my Makefile if it could be useful:<br /><br />EX=
E=3Dsi4688-app<br />SRC=3D$(wildcard *.c)<br />OBJS=3D$(SRC:.c=3D.o)<br /><=
br />.PHONY: all<br /><br />all: $(EXE)<br /><br />$(EXE): $(OBJS)<br />&nb=
sp;&nbsp;&nbsp; $(CC) -o $@ $^ $(LDFLAGS)<br /><br />gpio.o : gpio.h<br /><=
br />si46xx_core.o : gpio.h si46xx.h<br /><br />dabpi_ctl.o : si46xx.h vers=
ion.h<br /><br />si46xx_dab.o : si46xx.h<br /><br />si46xx_fm.o : si46xx.h<=
br /><br />%.o: %.c<br />&nbsp;&nbsp;&nbsp; $(CC) -o $@ -c $&lt; $(CFLAGS)<=
br /><br />.PHONY: clean<br /><br />clean:<br />&nbsp;&nbsp;&nbsp; rm -rf *=
.o<br /><br />.PHONY: mrproper<br /><br />mrproper: clean<br />&nbsp;&nbsp;=
&nbsp; rm -rf $(EXE)<br /><br />.PHONY: install<br /><br />install: $(EXE)<=
br />&nbsp;&nbsp;&nbsp; install -m 0755 -d $(DESTDIR)<br />&nbsp;&nbsp;&nbs=
p; install -m 0755 $(EXE) $(DESTDIR)<br /><br />Thanks for your time,<br />=
Bastien<br /><br /><br /></p>
<p>&nbsp;</p>

--efmCqICbhWSitQDr3hmN--
