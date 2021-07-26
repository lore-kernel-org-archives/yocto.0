Subject: Recipe dependent on Debian package - How should I approach? #debian #yocto
To: yocto@lists.yoctoproject.org
From: "Mitch Gaines" <gainesmitch2@gmail.com>
X-Originating-Location: Billerica, Massachusetts, US (71.174.61.89)
X-Originating-Platform: Linux Chrome 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 26 Jul 2021 06:25:55 -0700
Message-ID: <4t2u.1627305955765836583.vxyg@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BpgeWRlJweXZURoiXr3R"

--BpgeWRlJweXZURoiXr3R
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a project I am attempting to migrate from a Debian platform to Yocto=
. This specific project has a dependency on libsystemd-dev which is a Debia=
n package, but it doesn't seem to build when adding a DEPENDS on "systemd" =
which is available on yocto. What is the best approach for migrating depend=
encies in this manner? I'm sure I am going to run into other projects to mi=
grate which require Debian packages that are not directly available on Yoct=
o. Or am I doing something wrong? See this specific example outlined below:

Below is a recipe for a Makefile C project that was mostly generated with =
`recipetool create`. I then added the DEPENDS on "systemd" and removed the =
unused tasks:
# Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order to b=
e fully functional.
# (Feel free to remove these comments when editing.)

# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best gues=
ses - it is
# your responsibility to verify that the values are complete and correct.
#
# The following license files were not able to be identified and are
# represented as "Unknown" below, you will need to check them yourself:
#=C2=A0 =C2=A0debian/copyright
LICENSE =3D "Unknown"
LIC_FILES_CHKSUM =3D "file://debian/copyright;md5=3Dsome-hash"

SRC_URI =3D "git://git@my-project.git;protocol=3Dssh"

# Modify these as desired
PV =3D "1.0+git${SRCPV}"
SRCREV =3D "<...>"

S =3D "${WORKDIR}/git"
DEPENDS =3D "systemd"

# NOTE: this is a Makefile-only piece of software, so we cannot generate m=
uch of the
# recipe automatically - you will need to examine the Makefile yourself an=
d ensure
# that the appropriate arguments are passed in.

do_compile () {
oe_runmake my-project
}
Whenever I bitbake this recipe, I get the following:

NOTE: Executing Tasks ERROR: <recipe-name> do_compile: oe_runmake failed E=
RROR: <recipe-name> do_compile: Execution of '/home/mitch/bin/yocto/project=
-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gi=
tAUTOINC+...-r0/temp/run.do_compile.13271' failed with exit code 1: make[1]=
: Entering directory '/home/mitch/bin/yocto/project-name/build/tmp/work/arm=
v7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/git/src/=
core' CC file-name.c ../file-name.c:6:10: fatal error: systemd/sd-daemon.h:=
 No such file or directory 6 | #include <systemd/sd-daemon.h> | ^~~~~~~~~~~=
~~~~~~~~~~ compilation terminated. make[1]: *** [Makefile:93: build/file-na=
me.o] Error 1 make[1]: Leaving directory '/home/mitch/bin/yocto/project-nam=
e/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUT=
OINC+...-r0/git/src/core' make: *** [Makefile:72: some-recipe] Error 2 WARN=
ING: exit code 1 from a shell command. ERROR: Logfile of failure stored in:=
 /home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-li=
nux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/temp/log.do_compile.13271 Log=
 data follows: | DEBUG: Executing shell function do_compile | NOTE: make -j=
 24 my-project | make[1]: Entering directory '/home/mitch/bin/yocto/project=
-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gi=
tAUTOINC+...-r0/git/src/core' | CC my-file.c | ../my-file.c:6:10: fatal err=
or: systemd/sd-daemon.h: No such file or directory | 6 | #include <systemd/=
sd-daemon.h> | | ^~~~~~~~~~~~~~~~~~~~~ | compilation terminated. | make[1]:=
 *** [Makefile:93: build/my-file.o] Error 1 | make[1]: Leaving directory '/=
home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-linu=
x-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/git/src/core' | make: *** [Make=
file:72: my-project] Error 2 | ERROR: oe_runmake failed | WARNING: exit cod=
e 1 from a shell command. | ERROR: Execution of '/home/mitch/bin/yocto/proj=
ect-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0=
+gitAUTOINC+...-r0/temp/run.do_compile.13271' failed with exit code 1: | ma=
ke[1]: Entering directory '/home/mitch/bin/yocto/project-name/build/tmp/wor=
k/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/git=
/src/core' | CC my-file.c | ../my-file.c:6:10: fatal error: systemd/sd-daem=
on.h: No such file or directory | 6 | #include <systemd/sd-daemon.h>

Am I doing anything overtly wrong here? Would appreciate any assistance yo=
u can provide.

Thanks!

--BpgeWRlJweXZURoiXr3R
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a project I am attempting to migrate from a Debian platform to Yocto=
. This specific project has a dependency on libsystemd-dev which is a Debia=
n package, but it doesn't seem to build when adding a DEPENDS on "systemd" =
which is available on yocto. What is the best approach for migrating depend=
encies in this manner? I'm sure I am going to run into other projects to mi=
grate which require Debian packages that are not directly available on Yoct=
o. Or am I doing something wrong? See this specific example outlined below:=
<br /><br />Below is a recipe for a Makefile C project that was mostly gene=
rated with `recipetool create`. I then added the DEPENDS on "systemd" and r=
emoved the unused tasks:<br />
<div>
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">&nbsp; &nbsp; # Recipe created by recip=
etool</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;"># This is the basis of a recipe and may=
 need further editing in order to be fully functional.</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;"># (Feel free to remove these comments w=
hen editing.)</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">&nbsp;</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;"># WARNING: the following LICENSE and LI=
C_FILES_CHKSUM values are best guesses - it is</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;"># your responsibility to verify that th=
e values are complete and correct.</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">#</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;"># The following license files were not =
able to be identified and are</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;"># represented as "Unknown" below, you w=
ill need to check them yourself:</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">#&nbsp; &nbsp;debian/copyright</span></=
div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">LICENSE =3D "Unknown"</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">LIC_FILES_CHKSUM =3D "file://debian/cop=
yright;md5=3Dsome-hash"</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">&nbsp;</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">SRC_URI =3D "git://git@my-project.git;p=
rotocol=3Dssh"</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">&nbsp;</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;"># Modify these as desired</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">PV =3D "1.0+git${SRCPV}"</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">SRCREV =3D "&lt;...&gt;"</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">&nbsp;</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">S =3D "${WORKDIR}/git"</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">DEPENDS =3D "systemd"</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">&nbsp;</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;"># NOTE: this is a Makefile-only piece o=
f software, so we cannot generate much of the</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;"># recipe automatically - you will need =
to examine the Makefile yourself and ensure</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;"># that the appropriate arguments are pa=
ssed in.</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">&nbsp;</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">&nbsp;</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">do_compile () {</span></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">&nbsp; &nbsp; oe_runmake my-project</sp=
an></div>
</div>
<div style=3D"padding-left: 30px;">
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; font-fa=
mily: courier_newregular, courier;">}</span></div>
</div>
<span style=3D"color: #242729; font-family: -apple-system, BlinkMacSystemF=
ont, 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px;">Whenever =
I bitbake this recipe, I get the following:<br /><br /></span><br class=3D"=
Apple-interchange-newline" />
<div style=3D"padding-left: 30px;"><span style=3D"font-size: 13px; white-s=
pace: pre; font-family: courier_newregular, courier;">NOTE: Executing Tasks=
 ERROR: &lt;recipe-name&gt; do_compile: oe_runmake failed ERROR: &lt;recipe=
-name&gt; do_compile: Execution of '/home/mitch/bin/yocto/project-name/buil=
d/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+.=
..-r0/temp/run.do_compile.13271' failed with exit code 1: make[1]: Entering=
 directory '/home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-n=
eon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/git/src/core' CC f=
ile-name.c ../file-name.c:6:10: fatal error: systemd/sd-daemon.h: No such f=
ile or directory 6 | #include &lt;systemd/sd-daemon.h&gt; | ^~~~~~~~~~~~~~~=
~~~~~~ compilation terminated. make[1]: *** [Makefile:93: build/file-name.o=
] Error 1 make[1]: Leaving directory '/home/mitch/bin/yocto/project-name/bu=
ild/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC=
+...-r0/git/src/core' make: *** [Makefile:72: some-recipe] Error 2 WARNING:=
 exit code 1 from a shell command. ERROR: Logfile of failure stored in: /ho=
me/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-linux-=
gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/temp/log.do_compile.13271 Log dat=
a follows: | DEBUG: Executing shell function do_compile | NOTE: make -j 24 =
my-project | make[1]: Entering directory '/home/mitch/bin/yocto/project-nam=
e/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUT=
OINC+...-r0/git/src/core' | CC my-file.c | ../my-file.c:6:10: fatal error: =
systemd/sd-daemon.h: No such file or directory | 6 | #include &lt;systemd/s=
d-daemon.h&gt; | | ^~~~~~~~~~~~~~~~~~~~~ | compilation terminated. | make[1=
]: *** [Makefile:93: build/my-file.o] Error 1 | make[1]: Leaving directory =
'/home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-li=
nux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/git/src/core' | make: *** [Ma=
kefile:72: my-project] Error 2 | ERROR: oe_runmake failed | WARNING: exit c=
ode 1 from a shell command. | ERROR: Execution of '/home/mitch/bin/yocto/pr=
oject-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1=
.0+gitAUTOINC+...-r0/temp/run.do_compile.13271' failed with exit code 1: | =
make[1]: Entering directory '/home/mitch/bin/yocto/project-name/build/tmp/w=
ork/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/g=
it/src/core' | CC my-file.c | ../my-file.c:6:10: fatal error: systemd/sd-da=
emon.h: No such file or directory | 6 | #include &lt;systemd/sd-daemon.h&gt=
;</span></div>
<span style=3D"color: #242729; font-family: -apple-system, BlinkMacSystemF=
ont, 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px;"><br /><br=
 /></span><span style=3D"color: #242729; font-family: -apple-system, BlinkM=
acSystemFont, 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px;">=
Am I doing anything overtly wrong here? Would appreciate any assistance you=
 can provide.<br /><br />Thanks!</span>

--BpgeWRlJweXZURoiXr3R--
