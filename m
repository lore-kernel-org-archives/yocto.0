Subject: How to use WORKDIR of recipe A in recipe B ?
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (197.27.110.168)
X-Originating-Platform: Linux Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Oct 2020 11:22:51 -0700
Message-ID: <qaTe.1603822971108892398.k5IF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lVnvlpPXR2KbWCMgAzCB"

--lVnvlpPXR2KbWCMgAzCB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I have a macchina.io recipe that fetches the source from Github and compil=
es it correctly.

In the WORKDIR , there is a samples directory with many examples, and each=
 example has a Makefile, here is an example :

include $(POCO_BASE)/build/rules/global
include $(POCO_BASE)/OSP/BundleCreator/BundleCreator.make
objects =3D BundleActivator
target=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D io.macchi=
na.samples.sensor1
target_includes =3D $(PROJECT_BASE)/devices/Devices/include
target_libs=C2=A0=C2=A0=C2=A0=C2=A0 =3D IoTDevices PocoOSP PocoUtil PocoJS=
ON PocoXML PocoFoundation
postbuild =3D $(SET_LD_LIBRARY_PATH) $(BUNDLE_TOOL) -n$(OSNAME) -a$(OSARCH=
) -o../bundles HelloSensor1.bndlspec
include $(POCO_BASE)/build/rules/dylib

There is a global variable that are used when building macchina, like (POC=
O_BASE, BUNDLE_TOOL, ...)

Now, I don't want to make a patch for my custom sample, because that will =
force macchina to recompile again and that will take more than 45minutes.
I need to use the macchina WORKDIR

--lVnvlpPXR2KbWCMgAzCB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I have a macchina.io recipe that fetches the source from=
 Github and compiles it correctly.<br /><br />In the WORKDIR , there is a s=
amples directory with many examples, and each example has a Makefile, here =
is an example : <br /><br />include $(POCO_BASE)/build/rules/global<br />in=
clude $(POCO_BASE)/OSP/BundleCreator/BundleCreator.make<br />objects =3D Bu=
ndleActivator<br />target&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; =3D io.macchina.samples.sensor1<br />target_includes =3D $(PROJECT_BAS=
E)/devices/Devices/include<br />target_libs&nbsp;&nbsp;&nbsp;&nbsp; =3D IoT=
Devices PocoOSP PocoUtil PocoJSON PocoXML PocoFoundation<br />postbuild =3D=
 $(SET_LD_LIBRARY_PATH) $(BUNDLE_TOOL) -n$(OSNAME) -a$(OSARCH) -o../bundles=
 HelloSensor1.bndlspec<br />include $(POCO_BASE)/build/rules/dylib<br /><br=
 />There is a global variable that are used when building macchina, like (P=
OCO_BASE, BUNDLE_TOOL, ...)<br /><br />Now, I don't want to make a patch fo=
r my custom sample, because that will force macchina to recompile again and=
 that will take more than 45minutes.<br />I need to use the macchina WORKDI=
R

--lVnvlpPXR2KbWCMgAzCB--
