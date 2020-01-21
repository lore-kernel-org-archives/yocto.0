Subject: Excluding recipe u-boot-fw-utils from a target build #yocto
To: yocto@lists.yoctoproject.org
From: "Richard.W" <rwillis@shaw.ca>
X-Originating-Location: Coquitlam, British Columbia, CA (96.48.241.85)
X-Originating-Platform: Windows Firefox 72
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 21:38:21 -0800
Message-ID: <v6oe.1579585101006051714.sd14@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="D0Lo2ef4eJfcdzU6ZFyf"

--D0Lo2ef4eJfcdzU6ZFyf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am using Yocto "Rocko" and an older u-boot bootloader with it (2013.10). =
The machine target is an i.mx6 and so I am including the freescale imx laye=
rs.

Within the freescale layer is a recipe for a u-boot-fw-utils which I under=
stand just generates 2 methods to access u-boot env variables from the linu=
x user space. I don;t think I need this and so I am trying to stop it from =
being built as is is failing when trying to make the target with some *_def=
config which I cannot determine how it is getting that.

| make -f ./scripts/Makefile.build obj=3Dscripts/basic
| rm -f .tmp_quiet_recordmcount
| make -f ./scripts/Makefile.build obj=3Dscripts/kconfig mx6_cubox-i_confi=
g
| scripts/kconfig/conf=C2=A0 --defconfig=3Darch/../configs/mx6_cubox-i_def=
config Kconfig
| ***
| *** Can't find default configuration "arch/../configs/mx6_cubox-i_defcon=
fig"!
| ***
| scripts/kconfig/Makefile:121: recipe for target 'mx6_cubox-i_defconfig' =
failed
| make[1]: *** [mx6_cubox-i_defconfig] Error 1
| Makefile:479: recipe for target 'mx6_cubox-i_config' failed
| make: *** [mx6_cubox-i_config] Error 2
| ERROR: oe_runmake failed
| WARNING: <path>/u-boot-fslc-fw-utils/v2017.11+gitAUTOINC+a07698f0bf-r0/t=
emp/run.do_compile.23669:1 exit 1 from 'exit 1'
| ERROR: Function failed: do_compile (log file is located at <path>/u-boot=
-fslc-fw-utils/v2017.11+gitAUTOINC+a07698f0bf-r0/temp/log.do_compile.23669)
ERROR: Task (<path>/meta-freescale/recipes-bsp/u-boot/u-boot-fslc-fw-utils=
_2017.11.bb:do_compile) failed with exit code '1'

Note: the u-boot-fw-utils in this case would be set to: u-boot-fslc-fw-uti=
ls_2017.11 (for rocko)
Note: my u-boot recipe builds fine.

I put the following lines into my conf/layer.conf file, to no effect:
IMAGE_INSTALL_remove +=3D " u-boot-fslc-fw-utils"
IMAGE_INSTALL_remove +=3D " u-boot-fw-utils"

Prior to this I had set the particular u-boot-fw-utils recipe in build/con=
f/local.conf:
PREFERRED_PROVIDER_u-boot-fw-utils =3D "u-boot-fslc-fw-utils"
As bitbake was reporting multiple providers and I thought it would help to=
 fix the make *_defconfig error... it did not help.

Thanks,
- Richard

--D0Lo2ef4eJfcdzU6ZFyf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am using Yocto "Rocko" and an older u-boot bootloader with it (2013.10). =
The machine target is an i.mx6 and so I am including the freescale imx laye=
rs.<br /><br />Within the freescale layer is a recipe for a u-boot-fw-utils=
 which I understand just generates 2 methods to access u-boot env variables=
 from the linux user space. I don;t think I need this and so I am trying to=
 stop it from being built as is is failing when trying to make the target w=
ith some *_defconfig which I cannot determine how it is getting that.<br />=
<br /><span style=3D"font-family: courier_newregular, courier;">| make -f .=
/scripts/Makefile.build obj=3Dscripts/basic</span><br /><span style=3D"font=
-family: courier_newregular, courier;">| rm -f .tmp_quiet_recordmcount</spa=
n><br /><span style=3D"font-family: courier_newregular, courier;">| make -f=
 ./scripts/Makefile.build obj=3Dscripts/kconfig mx6_cubox-i_config</span><b=
r /><span style=3D"font-family: courier_newregular, courier;">| scripts/kco=
nfig/conf&nbsp; --defconfig=3Darch/../configs/mx6_cubox-i_defconfig Kconfig=
</span><br /><span style=3D"font-family: courier_newregular, courier;">| **=
*</span><br /><span style=3D"font-family: courier_newregular, courier;">| *=
** Can't find default configuration "arch/../configs/mx6_cubox-i_defconfig"=
!</span><br /><span style=3D"font-family: courier_newregular, courier;">| *=
**</span><br /><span style=3D"font-family: courier_newregular, courier;">| =
scripts/kconfig/Makefile:121: recipe for target 'mx6_cubox-i_defconfig' fai=
led</span><br /><span style=3D"font-family: courier_newregular, courier;">|=
 make[1]: *** [mx6_cubox-i_defconfig] Error 1</span><br /><span style=3D"fo=
nt-family: courier_newregular, courier;">| Makefile:479: recipe for target =
'mx6_cubox-i_config' failed</span><br /><span style=3D"font-family: courier=
_newregular, courier;">| make: *** [mx6_cubox-i_config] Error 2</span><br /=
><span style=3D"font-family: courier_newregular, courier;">| ERROR: oe_runm=
ake failed</span><br /><span style=3D"font-family: courier_newregular, cour=
ier;">| WARNING: &lt;path&gt;/u-boot-fslc-fw-utils/v2017.11+gitAUTOINC+a076=
98f0bf-r0/temp/run.do_compile.23669:1 exit 1 from 'exit 1'</span><br /><spa=
n style=3D"font-family: courier_newregular, courier;">| ERROR: Function fai=
led: do_compile (log file is located at &lt;path&gt;/u-boot-fslc-fw-utils/v=
2017.11+gitAUTOINC+a07698f0bf-r0/temp/log.do_compile.23669)</span><br /><sp=
an style=3D"font-family: courier_newregular, courier;">ERROR: Task (&lt;pat=
h&gt;/meta-freescale/recipes-bsp/u-boot/u-boot-fslc-fw-utils_2017.11.bb:do_=
compile) failed with exit code '1'</span><br /><br />Note: the u-boot-fw-ut=
ils in this case would be set to: u-boot-fslc-fw-utils_2017.11 (for rocko)<=
br />Note: my u-boot recipe builds fine.<br /><br />I put the following lin=
es into my conf/layer.conf file, to no effect:<br />&nbsp; IMAGE_INSTALL_re=
move +=3D " u-boot-fslc-fw-utils"<br />&nbsp; IMAGE_INSTALL_remove +=3D " u=
-boot-fw-utils"<br /><br />Prior to this I had set the particular u-boot-fw=
-utils recipe in build/conf/local.conf:<br />&nbsp; PREFERRED_PROVIDER_u-bo=
ot-fw-utils =3D "u-boot-fslc-fw-utils"<br />As bitbake was reporting multip=
le providers and I thought it would help to fix the make *_defconfig error.=
.. it did not help.<br /><br />Thanks,<br />&nbsp;- Richard

--D0Lo2ef4eJfcdzU6ZFyf--
