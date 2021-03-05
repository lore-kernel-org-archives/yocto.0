Subject: Re: meta-toolchain, gdb-cross-canadian_9.2 fails due to "no usable python" #toolchain
To: yocto@lists.yoctoproject.org
From: mmiguelhorta@gmail.com
X-Originating-Location: Amora, District of Setúbal, PT (84.90.95.208)
X-Originating-Platform: Linux Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 05 Mar 2021 12:58:22 -0800
References: <CAMKF1sqsMX1-TAX_m7HvPotwQs98yDE-HXfYe1upeCMNSMbT7g@mail.gmail.com>
In-Reply-To: <CAMKF1sqsMX1-TAX_m7HvPotwQs98yDE-HXfYe1upeCMNSMbT7g@mail.gmail.com>
Message-ID: <3015.1614977902706588765@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Nfv7BLiqNR3duDUFltdo"

--Nfv7BLiqNR3duDUFltdo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the tip Raj, it got me into the right track. The error was that =
"Python.h" missing, but the interesting bit was the path where it was looki=
ng for it.
It was searching for it within:
(...)./recipe-sysroot/opt/my-image/my-distro-version/sysroots/(...)
while in the filesystem it existed at
(...)./recipe-sysroot/opt/my-image/3.2.1/sysroots/(...)

From that I deduced that somehow it was picking conflicting values for DIS=
TRO_VERSION, executing the follow commands confirmed my suspicion
bitbake -e gdb-cross-canadian-arm | grep "^DISTRO"; -> DISTRO_VERSION=3D"m=
y-distro-version"
bitbake -e nativesdk-python3| grep "^DISTRO"; -> DISTRO_VERSION=3D"3.2.1"

After digging a bit more I figured why it was happening, "my-distro-versio=
n" was defined through an override:
MACHINEOVERRIDES=3D"machine"
DISTRO_VERSION_machine=3D"my-distro-version"

However for nativesdk recipes MACHINEOVERRIDES is empty so it picked up DI=
STRO_VERSION as defined in poky.conf file, "3.2.1".

Dropping the override and having both DISTRO_VERSION equal solved the issu=
e. Thanks!

--Nfv7BLiqNR3duDUFltdo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the tip Raj, it got me into the right track. The error was that =
"Python.h" missing, but the interesting bit was the path where it was looki=
ng for it.<br />It was searching for it within:<br />(...)./recipe-sysroot/=
opt/my-image/my-distro-version/sysroots/(...)<br />while in the filesystem =
it existed at<br />(...)./recipe-sysroot/opt/my-image/3.2.1/sysroots/(...)<=
br /><br />From that I deduced that somehow it was picking conflicting valu=
es for DISTRO_VERSION, executing the follow commands confirmed my suspicion=
<br />bitbake -e gdb-cross-canadian-arm | grep "^DISTRO"; -&gt; DISTRO_VERS=
ION=3D"my-distro-version"<br />bitbake -e nativesdk-python3| grep "^DISTRO"=
; -&gt; DISTRO_VERSION=3D"3.2.1"<br /><br />After digging a bit more I figu=
red why it was happening, "my-distro-version" was defined through an overri=
de:<br />MACHINEOVERRIDES=3D"machine"<br />DISTRO_VERSION_machine=3D"my-dis=
tro-version"<br /><br />However for nativesdk recipes MACHINEOVERRIDES is e=
mpty so it picked up DISTRO_VERSION as defined in poky.conf file, "3.2.1".<=
br /><br />Dropping the override and having both DISTRO_VERSION equal solve=
d the issue. Thanks!

--Nfv7BLiqNR3duDUFltdo--
