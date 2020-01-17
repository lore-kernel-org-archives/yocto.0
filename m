Subject: fatal error: PolkitQt1/Authority: No such file or directory
To: yocto@lists.yoctoproject.org
From: "FooBar" <snusbaum@graphicproducts.com>
X-Originating-Location: Beaverton, Oregon, US (50.43.9.42)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Jan 2020 10:42:15 -0800
Message-ID: <C0ZK.1579286535083878978.TdZh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XFkl8Rv0aDCc8zLawgTf"

--XFkl8Rv0aDCc8zLawgTf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Having trouble getting PolkitQt1/Authority. I found polkit-qt-1, via http:=
//layers.openembedded.org/layerindex/branch/master/recipes/?q=3Dpolkit-qt-1=
.

I added to local.conf=C2=A0EXTRA_IMAGE_FEATURES,=C2=A0IMAGE_FEATURES,=C2=
=A0IMAGE_INSTALL_append,=C2=A0TOOLCHAIN_TARGET_TASK_append the polkit, pol=
kit-qt-1, and polkit-qt-1-native.

I tried bitbake polkit-qt-1 then bitbake -c populate_sdk meta-toolchain-qt=
5, which I found polkit-qt-1 should be in qt5-extra, and I have that layer.

I thought that would be all I have to do, but when I setup the environment=
 for the cross toolchain sdk, it cannot find PolkitQt1/Authority. I think m=
aybe the issue has to do with the `Authority` part, but I haven't found a p=
olkit-qt-1-authority or anything.

Any tips? Ideas? Suggestions? I've spent many many hours on this, and I re=
ally need to get the sdk toolchain successfully compiling the codebase we h=
ave.

--XFkl8Rv0aDCc8zLawgTf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />Having trouble getting PolkitQt1/Authority. I found polkit-q=
t-1, via&nbsp;<a href=3D"http://layers.openembedded.org/layerindex/branch/m=
aster/recipes/?q=3Dpolkit-qt-1">http://layers.openembedded.org/layerindex/b=
ranch/master/recipes/?q=3Dpolkit-qt-1</a>&nbsp;.<br /><br />I added to loca=
l.conf&nbsp;EXTRA_IMAGE_FEATURES,&nbsp;IMAGE_FEATURES,&nbsp;IMAGE_INSTALL_a=
ppend,&nbsp;TOOLCHAIN_TARGET_TASK_append the polkit, polkit-qt-1, and polki=
t-qt-1-native.<br /><br />I tried bitbake polkit-qt-1 then bitbake -c popul=
ate_sdk meta-toolchain-qt5, which I found polkit-qt-1 should be in qt5-extr=
a, and I have that layer.<br /><br />I thought that would be all I have to =
do, but when I setup the environment for the cross toolchain sdk, it cannot=
 find PolkitQt1/Authority. I think maybe the issue has to do with the `Auth=
ority` part, but I haven't found a polkit-qt-1-authority or anything.<br />=
<br />Any tips? Ideas? Suggestions? I've spent many many hours on this, and=
 I really need to get the sdk toolchain successfully compiling the codebase=
 we have.

--XFkl8Rv0aDCc8zLawgTf--
