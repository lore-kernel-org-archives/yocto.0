Subject: imx-boot do_compile failing with custom distro #yocto
To: yocto@lists.yoctoproject.org
From: stefan.wenninger@evopro-ag.de
X-Originating-Location: Regensburg, Bavaria, DE (88.133.236.129)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 08 Apr 2020 07:41:27 -0700
Message-ID: <r2h6.1586356887188852470.W0sx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cDJ8HuojJa7pzZKYVIds"

--cDJ8HuojJa7pzZKYVIds
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I have encountered a curious problem when trying to create my own poky-bas=
ed distribution.
My distribution poky-mydist.conf in conf/distro/ of my own layer:

>=20
> require conf/distro/poky.conf
> DISTRO =3D "poky-mydist"
> DISTRO_NAME =3D "Poky my dist (Custom Project Distro)"
> DISTROOVERRIDES =3D "poky:poky-mydist"
>=20
> DISTRO_FEATURES +=3D "ppp"
>=20

This distro is basically identical to the base poky from poky.conf. I just=
 added a feature to be able to verify that my distro is being used.

When I build core-image-base however, I get the following error:

>=20
> ERROR: imx-boot-0.2-r0 do_compile: Function failed: do_compile (log file
> is located at
> /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0=
.2-r0/temp/log.do_compile.14295)
>=20
> ERROR: Logfile of failure stored in:
> /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0=
.2-r0/temp/log.do_compile.14295
>=20
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | Copying DTB
> | 8MQ/8MM boot binary build
> | Copy ddr_firmware: lpddr4_pmu_train_1d_imem.bin from
> /opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart ->
> /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0=
.2-r0/git/iMX8M
>=20
> | Copy ddr_firmware: lpddr4_pmu_train_1d_dmem.bin from
> /opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart ->
> /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0=
.2-r0/git/iMX8M
>=20
> | Copy ddr_firmware: lpddr4_pmu_train_2d_imem.bin from
> /opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart ->
> /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0=
.2-r0/git/iMX8M
>=20
> | Copy ddr_firmware: lpddr4_pmu_train_2d_dmem.bin from
> /opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart ->
> /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0=
.2-r0/git/iMX8M
>=20
> | cp: cannot stat
> '/opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart/imx-boot-to=
ols/bl31-imx8mq.bin':
> No such file or directory
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0=
.2-r0/temp/log.do_compile.14295)
>=20
> ERROR: Task
> (/opt/yocto-dev/sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-bsp/im=
x-mkimage/imx-boot_0.2.bb:do_compile)
> failed with exit code '1'
>=20

By just switching my DISTRO to 'poky' in local.conf, it builds without err=
or.

There are several things that surprise me about this error:
1. I find it quite strange that these ddr_firmwares are copied from the de=
ploy directory to the working directory of imx-boot. I would expect that to=
 be the other way around.
2. The file bl31-imx8mq.bin is not in the imx-boot-tools folder, even afte=
r a successful build with DISTRO=3D'poky'. (Maybe it was there during build=
 and was just removed afterwards?)

From my point of view it looks like the set of files that get put into imx=
-boot-tools/ is dependant on the DISTRO value? When using DISTRO=3D'poky' t=
he correct set is placed and copied. When using DISTRO=3D'poky-mydist' the =
files that are placed into the folder are not the files that are supposed t=
o be copied from there, hence the error.

Am I interpreting this situation correctly?
Is there an error in my poky-mydist distribution?
Is that something that needs to be fixed in the recipe for imx-boot? Or ca=
n I somehow configure poky-mydist.conf to be treated exactly like poky.conf=
 ?

Thanks in advance
Stefan

--cDJ8HuojJa7pzZKYVIds
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I have encountered a curious problem when trying to create my own =
poky-based distribution.<br />My distribution <em>poky-mydist.conf</em>&nbs=
p;in conf/distro/ of my own layer:<br />
<blockquote>
<div>require conf/distro/poky.conf</div>
<div>DISTRO =3D "poky-mydist"</div>
<div>DISTRO_NAME =3D "Poky my dist (Custom Project Distro)"</div>
<div>DISTROOVERRIDES =3D "poky:poky-mydist"</div>
<div>&nbsp;</div>
<div>DISTRO_FEATURES +=3D "ppp"</div>
</blockquote>
<div>This distro is basically identical to the base poky from <em>poky.con=
f</em>. I just added a feature to be able to verify that my distro is being=
 used.<br /><br />When I build core-image-base however, I get the following=
 error:<br />
<blockquote>
<div>ERROR: imx-boot-0.2-r0 do_compile: Function failed: do_compile (log f=
ile is located at /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-l=
inux/imx-boot/0.2-r0/temp/log.do_compile.14295)</div>
<div>ERROR: Logfile of failure stored in: /opt/yocto-dev/build_poky/tmp/wo=
rk/imx8mq_var_dart-poky-linux/imx-boot/0.2-r0/temp/log.do_compile.14295</di=
v>
<div>Log data follows:</div>
<div>| DEBUG: Executing shell function do_compile</div>
<div>| Copying DTB</div>
<div>| 8MQ/8MM boot binary build</div>
<div>| Copy ddr_firmware: lpddr4_pmu_train_1d_imem.bin from /opt/yocto-dev=
/build_poky/tmp/deploy/images/imx8mq-var-dart -&gt; /opt/yocto-dev/build_po=
ky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0.2-r0/git/iMX8M</div>
<div>| Copy ddr_firmware: lpddr4_pmu_train_1d_dmem.bin from /opt/yocto-dev=
/build_poky/tmp/deploy/images/imx8mq-var-dart -&gt; /opt/yocto-dev/build_po=
ky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0.2-r0/git/iMX8M</div>
<div>| Copy ddr_firmware: lpddr4_pmu_train_2d_imem.bin from /opt/yocto-dev=
/build_poky/tmp/deploy/images/imx8mq-var-dart -&gt; /opt/yocto-dev/build_po=
ky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0.2-r0/git/iMX8M</div>
<div>| Copy ddr_firmware: lpddr4_pmu_train_2d_dmem.bin from /opt/yocto-dev=
/build_poky/tmp/deploy/images/imx8mq-var-dart -&gt; /opt/yocto-dev/build_po=
ky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0.2-r0/git/iMX8M</div>
<div>| cp: cannot stat '/opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq=
-var-dart/imx-boot-tools/bl31-imx8mq.bin': No such file or directory</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>| ERROR: Function failed: do_compile (log file is located at /opt/yoc=
to-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0.2-r0/temp/=
log.do_compile.14295)</div>
<div>ERROR: Task (/opt/yocto-dev/sources/meta-fsl-bsp-release/imx/meta-bsp=
/recipes-bsp/imx-mkimage/imx-boot_0.2.bb:do_compile) failed with exit code =
'1'</div>
</blockquote>
<div>By just switching my DISTRO to 'poky' in local.conf, it builds withou=
t error.<br /><br />There are several things that surprise me about this er=
ror:<br />1. I find it quite strange that these ddr_firmwares are copied fr=
om the deploy directory to the working directory of imx-boot. I would expec=
t that to be the other way around.<br />2. The file <em>bl31-imx8mq.bin</em=
>&nbsp;is not in the imx-boot-tools folder, even after a successful build w=
ith DISTRO=3D'poky'. (Maybe it was there during build and was just removed =
afterwards?)<br /><br />From my point of view it looks like the set of file=
s that get put into imx-boot-tools/ is dependant on the DISTRO value? When =
using DISTRO=3D'poky' the correct set is placed and copied. When using DIST=
RO=3D'poky-mydist' the files that are placed into the folder are not the fi=
les that are supposed to be copied from there, hence the error.<br /><br />=
Am I interpreting this situation correctly?<br />Is there an error in my <e=
m>poky-mydist</em> distribution?<br />Is that something that needs to be fi=
xed in the recipe for imx-boot? Or can I somehow configure <em>poky-mydist.=
conf</em> to be treated exactly like <em>poky.conf</em>?<br /><br /><span s=
tyle=3D"font-size: 11.0pt; font-family: 'Calibri',sans-serif; mso-fareast-f=
ont-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language=
: DE; mso-fareast-language: DE; mso-bidi-language: AR-SA;">Thanks in advanc=
e<br />Stefan&nbsp;</span></div>
</div>

--cDJ8HuojJa7pzZKYVIds--
