Subject: How can I use old Package version with latest Yocto version. #cups #zeus
To: yocto@lists.yoctoproject.org
From: rohitbjadhav1@gmail.com
X-Originating-Location: Pune, Maharashtra, IN (157.33.60.22)
X-Originating-Platform: Linux Firefox 66
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 30 Mar 2021 00:42:40 -0700
Message-ID: <XSIe.1617090160270326998.hymp@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YCYd9lzZyu6z6jddjgJe"

--YCYd9lzZyu6z6jddjgJe
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi
I was using very old version of Yocto i.e. Krogoth. In that version I am a=
ble to use following packages with respective version:
Package name=C2=A0=C2=A0 Version
Cups=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 2.2.4
Cups-filter=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0 1.14.0
qpdf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6.0.0
Opencv=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2.4
It was working fine. But When I switch to any other version of Yocto like=
=C2=A0 Zeus [which I have tried on ].
Specifically for cups-filter pakage observed following errors while compil=
ation and generation of rootfs
ERROR: cups-filters-1.14.0-r0 do_compile: oe_runmake failed
ERROR: cups-filters-1.14.0-r0 do_compile: Execution of '/home/tel/imx_yoct=
o_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/cortexa7t2hf-neon-poky-linux-=
gnueabi/cups-filters/1.14.0-r0/temp/run.do_compile.17590' failed with exit =
code 1:

It is observed due to wrong c standard while compilation as some log says =
as follow:
warning: ISO C99 doesn't support unnamed structs/unions [-Wpedantic]
warning: ' LPT #' directive output may be truncated writing 6 bytes into a=
 region of size between 1 and 1024 [-Wformat-truncation=3D]
warning: 'strncpy' specified bound 1024 equals destination size [-Wstringo=
p-truncation]
filter/pdftoopvp/oprs/OPVPSplash.h:53:3: error: 'GBool' does not name a ty=
pe

Just Need some guideline to resolve this issue.
Please also suggest is there any way to use old pakage of Yocto version to=
 latest Yocto version.
Thanks and Regards
Rohit

--YCYd9lzZyu6z6jddjgJe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi <br />&nbsp;&nbsp; I was using very old version of Yocto i.e. Krogoth. I=
n that version I am able to use following packages with respective version:=
<br />&nbsp;&nbsp;&nbsp; Package name&nbsp;&nbsp; Version<br />&nbsp;&nbsp;=
 Cups&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; 2.2.4<br />&nbsp;&nbsp; Cups-filter&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.14.0<br />&nbsp;&nbs=
p; qpdf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6.0.0<br />&nbsp=
;&nbsp; Opencv&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.4<br />It was working fine. But When =
I switch to any other version of Yocto like&nbsp; Zeus [which I have tried =
on ]. <br />Specifically for cups-filter pakage observed following errors w=
hile compilation and generation of rootfs<br /><span class=3D"test-id__fiel=
d-value slds-form-element__static slds-grow  is-read-only" data-aura-render=
ed-by=3D"313:890;a"><span data-aura-rendered-by=3D"303:890;a" class=3D"uiOu=
tputTextArea" data-aura-class=3D"uiOutputTextArea">ERROR: cups-filters-1.14=
.0-r0 do_compile: oe_runmake failed <br />ERROR: cups-filters-1.14.0-r0 do_=
compile: Execution of '/home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6u=
ll/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/cups-filters/1.14.0-r0/tem=
p/run.do_compile.17590' failed with exit code 1: <br /><br />It is observed=
 due to wrong c standard while compilation as some log says as follow:<br /=
>warning: ISO C99 doesn't support unnamed structs/unions [-Wpedantic] <br /=
>warning: ' LPT #' directive output may be truncated writing 6 bytes into a=
 region of size between 1 and 1024 [-Wformat-truncation=3D] <br />warning: =
'strncpy' specified bound 1024 equals destination size [-Wstringop-truncati=
on]<br />filter/pdftoopvp/oprs/OPVPSplash.h:53:3: error: 'GBool' does not n=
ame a type<br /><br />Just Need some guideline to resolve this issue.<br />=
Please also suggest is there any way to use old pakage of Yocto version to =
latest Yocto version.<br />Thanks and Regards<br />Rohit<br /></span></span=
>

--YCYd9lzZyu6z6jddjgJe--
