Subject: #toolchain #sdk #qt5 - compiler missing from from do_populate_sdk
To: yocto@lists.yoctoproject.org
From: "vitalEol" <evan.oloughlin@vitalograph.ie>
X-Originating-Location: IE (178.250.116.254)
X-Originating-Platform: Linux Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 23 Feb 2021 00:47:58 -0800
Message-ID: <GTL0.1614070078052935582.xbkg@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EkhIKDaAP7OuK95lEbTe"

--EkhIKDaAP7OuK95lEbTe
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

We have a functioning image built for our device/platform based on Ti Proc=
essor SDK 04.03.00.05; at this point I'm trying to build an SDK for the ima=
ge that I can distribute to other members of our development team to develo=
p Qt5-based application for our platform. I want to build an SDK installer =
that includes additional Qt5 components which aren't included in the defaul=
t Ti SDK like QtConnectivity and QtVirtualKeyboard.

I've tried several methods to build the SDK including:

* adding *inherit populate_sdk populate_sdk_qt5* to my image recipe and ru=
nning *bitbake {image} -c populate_sdk*
* creating a new image recipe for the SDK with *IMAGE_FEATURES +=3D " dev-=
pkgs tools-sdk tools-debug eclipse-debug debug-tweaks"*
* building *meta-toolchain-qt5*

None of the resulting SDK installers appear to include the compiler, after=
 sourcing the environment script I get the following:
micheal:buildData$ source /buildData/customToolchain/environment-setup-arm=
v7ahf-neon-linux-gnueabi
micheal:buildData$ $CC
bash: arm-linux-gnueabihf-gcc: command not found
micheal:buildData$

I know that in the past I did manage to get a working SDK/Toolchain using =
one of the methods above though at the moment none seem to work for me.

Regards,
Evan

--EkhIKDaAP7OuK95lEbTe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />We have a functioning image built for our device/platform ba=
sed on Ti Processor SDK 04.03.00.05; at this point I'm trying to build an S=
DK for the image that I can distribute to other members of our development =
team to develop Qt5-based application for our platform. I want to build an =
SDK installer that includes additional Qt5 components which aren't included=
 in the default Ti SDK like QtConnectivity and QtVirtualKeyboard.<br /><br =
/><br />I've tried several methods to build the SDK including:&nbsp;<br />
<ul>
<li>adding <em><strong>inherit populate_sdk populate_sdk_qt5</strong></em>=
 to my image recipe and running&nbsp;<em><strong>bitbake {image} -c populat=
e_sdk</strong></em></li>
<li>creating a new image recipe for the SDK with&nbsp;<em><strong>IMAGE_FE=
ATURES +=3D " dev-pkgs tools-sdk tools-debug eclipse-debug debug-tweaks"</s=
trong></em></li>
<li>building <em><strong>meta-toolchain-qt5</strong></em></li>
</ul>
<br />None of the resulting SDK installers appear to include the compiler,=
 after sourcing the environment script I get the following:<br />
<div><em>micheal:buildData$ source /buildData/customToolchain/environment-=
setup-armv7ahf-neon-linux-gnueabi</em></div>
<div><em>micheal:buildData$ $CC</em></div>
<div><em>bash: arm-linux-gnueabihf-gcc: command not found</em></div>
<div><em>micheal:buildData$</em></div>
<br />I know that in the past I did manage to get a working SDK/Toolchain =
using one of the methods above though at the moment none seem to work for m=
e.<br /><br /><br />Regards,<br />Evan

--EkhIKDaAP7OuK95lEbTe--
