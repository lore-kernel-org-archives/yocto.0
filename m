Subject: How to determine what to put for EXTRA_IMAGE_FEATURES, IMAGE_INSTALL_append, TOOLCHAIN_TARGET_TASK_append, CORE_IMAGE_EXTRA_INSTALL, etc. #yocto
To: yocto@lists.yoctoproject.org
From: "FooBar" <snusbaum@graphicproducts.com>
X-Originating-Location: Beaverton, Oregon, US (50.43.9.42)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 Jan 2020 12:52:00 -0800
Message-ID: <55tx.1579207920208117858.OM7f@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uvznYi0mGsyO14SThjZ4"

--uvznYi0mGsyO14SThjZ4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm hoping to clear up some confusion on my end...

How do we determine what to put for the different variables available to u=
s in layer.conf. I know this is a vague question, but let me specify furthe=
r.

Currently my process for adding to my bitbake is simply following tutorial=
s, following forms, and lots and lots of slow trial and error. I don't unde=
rstand where I'm supposed to get the specific names to put within=C2=A0EXTR=
A_IMAGE_FEATURES, IMAGE_INSTALL_append, TOOLCHAIN_TARGET_TASK_append, CORE_=
IMAGE_EXTRA_INSTALL, etc.

Is there a simple way of finding these, or looking these up? It feels like=
 I'm doing this completely wrong, and that there should be a much easier wa=
y.

For instance, I'm stuck now on adding to my SDK to allow `#include <Polkit=
Qt1/Authority>`. I found what looks to be a possible layer to use: https://=
github.com/KDE/yocto-meta-kf5/blob/master/recipes-kdesupport/polkit-qt-1_0.=
112.0.bb

However, I don't know what to add for=C2=A0EXTRA_IMAGE_FEATURES, IMAGE_INS=
TALL_append, TOOLCHAIN_TARGET_TASK_append, CORE_IMAGE_EXTRA_INSTALL, etc.

I need this include for code that is being migrated to a new embedded boar=
d.

I hope my question makes sense. And I hope someone can guide me in the rig=
ht direction. I simply do not understand where I am supposed to get the inf=
ormation currently, and I would really like to know. I want to be able to t=
ackle this on my own.

Thanks in advance for any help, and I'll try to follow up any questions yo=
u have for me.

--uvznYi0mGsyO14SThjZ4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I'm hoping to clear up some confusion on my end...&nbsp;<br =
/><br />How do we determine what to put for the different variables availab=
le to us in layer.conf. I know this is a vague question, but let me specify=
 further.&nbsp;<br /><br />Currently my process for adding to my bitbake is=
 simply following tutorials, following forms, and lots and lots of slow tri=
al and error. I don't understand where I'm supposed to get the specific nam=
es to put within&nbsp;EXTRA_IMAGE_FEATURES, IMAGE_INSTALL_append, TOOLCHAIN=
_TARGET_TASK_append, CORE_IMAGE_EXTRA_INSTALL, etc.<br /><br />Is there a s=
imple way of finding these, or looking these up? It feels like I'm doing th=
is completely wrong, and that there should be a much easier way.<br /><br /=
>For instance, I'm stuck now on adding to my SDK to allow `#include &lt;Pol=
kitQt1/Authority&gt;`. I found what looks to be a possible layer to use:&nb=
sp;<a href=3D"https://github.com/KDE/yocto-meta-kf5/blob/master/recipes-kde=
support/polkit-qt-1_0.112.0.bb">https://github.com/KDE/yocto-meta-kf5/blob/=
master/recipes-kdesupport/polkit-qt-1_0.112.0.bb</a><br /><br />However, I =
don't know what to add for&nbsp;EXTRA_IMAGE_FEATURES, IMAGE_INSTALL_append,=
 TOOLCHAIN_TARGET_TASK_append, CORE_IMAGE_EXTRA_INSTALL, etc.<br /><br />I =
need this include for code that is being migrated to a new embedded board.<=
br /><br />I hope my question makes sense. And I hope someone can guide me =
in the right direction. I simply do not understand where I am supposed to g=
et the information currently, and I would really like to know. I want to be=
 able to tackle this on my own.<br /><br />Thanks in advance for any help, =
and I'll try to follow up any questions you have for me.

--uvznYi0mGsyO14SThjZ4--
