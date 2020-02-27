Subject: adding a package to TOOLCHAIN_HOST_TASK results in error "No match for argument: <package name>" #sdk #yocto
To: yocto@lists.yoctoproject.org
From: "Armando Hernandez" <j.armandohernandez.j@gmail.com>
X-Originating-Location: (62.4.90.5)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 27 Feb 2020 07:05:44 -0800
Message-ID: <QCYz.1582815944808021026.nnbF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="AN2vQJ8FRi4qWZj86qE1"

--AN2vQJ8FRi4qWZj86qE1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying create an eSDK from the meta-ivi layer.
In order to do so, I had to create some .bbappend files to make some recip=
es extend to the nativesdk class.
Particularyl I created the following=C2=A0 .bbappend (which corresponds to=
 this recipe ( https://github.com/GENIVI/meta-ivi/blob/master/meta-ivi/reci=
pes-extended/common-api/common-api-c%2B%2B_3.1.12.6.bb ) )

FILES_${PN}-dev_append_class-nativesdk =3D " ${includedir}/CommonAPI-3.1 $=
{libdir}/*"
BBCLASSEXTEND =3D "nativesdk"

when traing to create the extensible sdk, I get this error:

ERROR: meta-ivi-image-15.0.0-r0 do_populate_sdk_ext: Could not invoke dnf.=
 Command '/data/ivi-project/build/tmp/work/qemux86_64-poky-linux/meta-ivi-i=
mage/15.0.0-r0/recipe-sysroot-native/usr/bin/dnf -v --rpmverbosity=3Ddebug =
-y -c /data/ivi-project/build/tmp/work/qemux86_64-poky-linux/meta-ivi-image=
/15.0.0-r0/sdk-ext/image/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/data/ivi-p=
roject/build/tmp/work/qemux86_64-poky-linux/meta-ivi-image/15.0.0-r0/sdk-ex=
t/image/etc/yum.repos.d --repofrompath=3Doe-repo,/data/ivi-project/build/tm=
p/work/qemux86_64-poky-linux/meta-ivi-image/15.0.0-r0/oe-sdk-ext-repo --ins=
tallroot=3D/data/ivi-project/build/tmp/work/qemux86_64-poky-linux/meta-ivi-=
image/15.0.0-r0/sdk-ext/image --setopt=3Dlogdir=3D/data/ivi-project/build/t=
mp/work/qemux86_64-poky-linux/meta-ivi-image/15.0.0-r0/temp --nogpgcheck in=
stall nativesdk-capicxx-someip nativesdk-capicxx-core nativesdk-dlt-daemon =
nativesdk-common-api-c++ meta-environment-extsdk-qemux86-64' returned 1:
DNF version: 2.7.5
cachedir: /data/ivi-project/build/tmp/work/qemux86_64-poky-linux/meta-ivi-=
image/15.0.0-r0/sdk-ext/image/var/cache/dnf
Added oe-repo repo from /data/ivi-project/build/tmp/work/qemux86_64-poky-l=
inux/meta-ivi-image/15.0.0-r0/oe-sdk-ext-repo
repo: using cache for: oe-repo
not found deltainfo for: oe-repo
not found updateinfo for: oe-repo
oe-repo: using metadata from Thu 27 Feb 2020 02:47:40 PM UTC.
Last metadata expiration check: 0:00:01 ago on Thu 27 Feb 2020 02:47:41 PM=
 UTC.
No match for argument: nativesdk-common-api-c++
Error: Unable to find a match

ERROR: meta-ivi-image-15.0.0-r0 do_populate_sdk_ext: Function failed: do_p=
opulate_sdk_ext
ERROR: Logfile of failure stored in: /data/ivi-project/build/tmp/work/qemu=
x86_64-poky-linux/meta-ivi-image/15.0.0-r0/temp/log.do_populate_sdk_ext.345
ERROR: Task (/data/ivi-project/poky/../meta-ivi/meta-ivi/recipes-yocto-ivi=
/images/meta-ivi-image.bb:do_populate_sdk_ext) failed with exit code '1'

I have searched of similar problems and found different approaches as to h=
ow to solve this, but none of that helped me.
I would like to understand what are the steps this "do_populate_sdk_ext" t=
ask do, to be able to identify the root cause, but I haven't found detailed=
 informaiton on what and how this task is doing.

Any hint is -as always- thankfully appretiated!

Cheers!

--AN2vQJ8FRi4qWZj86qE1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I am trying create an eSDK from the meta-ivi layer.<br />=
In order to do so, I had to create some .bbappend files to make some recipe=
s extend to the nativesdk class.<br />Particularyl I created the following&=
nbsp; .bbappend (which corresponds to <a href=3D"https://github.com/GENIVI/=
meta-ivi/blob/master/meta-ivi/recipes-extended/common-api/common-api-c%2B%2=
B_3.1.12.6.bb" target=3D"_blank" rel=3D"noopener">this recipe</a>)<br /><br=
 />
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">FILES_${PN}-dev_append_class-nativesdk =3D " ${includedi=
r}/CommonAPI-3.1 ${libdir}/*"</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">BBCLASSEXTEND =3D "nativesdk"</span></div>
<br />when traing to create the extensible sdk, I get this error:<br /><br=
 />
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">ERROR: meta-ivi-image-15.0.0-r0 do_populate_sdk_ext: Cou=
ld not invoke dnf. Command '/data/ivi-project/build/tmp/work/qemux86_64-pok=
y-linux/meta-ivi-image/15.0.0-r0/recipe-sysroot-native/usr/bin/dnf -v --rpm=
verbosity=3Ddebug -y -c /data/ivi-project/build/tmp/work/qemux86_64-poky-li=
nux/meta-ivi-image/15.0.0-r0/sdk-ext/image/etc/dnf/dnf.conf --setopt=3Drepo=
sdir=3D/data/ivi-project/build/tmp/work/qemux86_64-poky-linux/meta-ivi-imag=
e/15.0.0-r0/sdk-ext/image/etc/yum.repos.d --repofrompath=3Doe-repo,/data/iv=
i-project/build/tmp/work/qemux86_64-poky-linux/meta-ivi-image/15.0.0-r0/oe-=
sdk-ext-repo --installroot=3D/data/ivi-project/build/tmp/work/qemux86_64-po=
ky-linux/meta-ivi-image/15.0.0-r0/sdk-ext/image --setopt=3Dlogdir=3D/data/i=
vi-project/build/tmp/work/qemux86_64-poky-linux/meta-ivi-image/15.0.0-r0/te=
mp --nogpgcheck install nativesdk-capicxx-someip nativesdk-capicxx-core nat=
ivesdk-dlt-daemon nativesdk-common-api-c++ meta-environment-extsdk-qemux86-=
64' returned 1:</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">DNF version: 2.7.5</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">cachedir: /data/ivi-project/build/tmp/work/qemux86_64-po=
ky-linux/meta-ivi-image/15.0.0-r0/sdk-ext/image/var/cache/dnf</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">Added oe-repo repo from /data/ivi-project/build/tmp/work=
/qemux86_64-poky-linux/meta-ivi-image/15.0.0-r0/oe-sdk-ext-repo</span></div=
>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">repo: using cache for: oe-repo</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">not found deltainfo for: oe-repo</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">not found updateinfo for: oe-repo</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">oe-repo: using metadata from Thu 27 Feb 2020 02:47:40 PM=
 UTC.</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">Last metadata expiration check: 0:00:01 ago on Thu 27 Fe=
b 2020 02:47:41 PM UTC.</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">No match for argument: nativesdk-common-api-c++</span></=
div>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">Error: Unable to find a match</span></div>
<div style=3D"padding-left: 30px;">&nbsp;</div>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">ERROR: meta-ivi-image-15.0.0-r0 do_populate_sdk_ext: Fun=
ction failed: do_populate_sdk_ext</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">ERROR: Logfile of failure stored in: /data/ivi-project/b=
uild/tmp/work/qemux86_64-poky-linux/meta-ivi-image/15.0.0-r0/temp/log.do_po=
pulate_sdk_ext.345</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"font-family: courier_new=
regular, courier;">ERROR: Task (/data/ivi-project/poky/../meta-ivi/meta-ivi=
/recipes-yocto-ivi/images/meta-ivi-image.bb:do_populate_sdk_ext) failed wit=
h exit code '1'</span></div>
<br />I have searched of similar problems and found different approaches a=
s to how to solve this, but none of that helped me.<br />I would like to un=
derstand what are the steps this "do_populate_sdk_ext" task do, to be able =
to identify the root cause, but I haven't found detailed informaiton on wha=
t and how this task is doing.<br /><br />Any hint is -as always- thankfully=
 appretiated!<br /><br />Cheers!

--AN2vQJ8FRi4qWZj86qE1--
