Subject: Issue generating working sdk containing Clang (meta-clang) and package_deb for compiling eBPF #sdk #dunfell #yocto #kernel #linux
To: yocto@lists.yoctoproject.org
From: "msg board" <msgboardpana@gmail.com>
X-Originating-Location: Fremont, California, US (73.231.211.214)
X-Originating-Platform: Mac Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Mar 2021 09:16:29 -0700
Message-ID: <8S52.1616688989583067700.ubBM@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UsH5vJAiqbjQCCApBWKs"

--UsH5vJAiqbjQCCApBWKs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I=C2=A0need Clang=C2=A0compiler apart=C2=A0from currently=C2=A0available d=
efault gcc compiler as I am trying to compile eBPF which will run on my cus=
tom yocto which is based on core-image-minimal. Therefore I=C2=A0added Clan=
g=C2=A0compiler to my yocto sdk build using the meta-clang layer available =
at https://github.com/kraj/meta-clang. My yocto is based on dunfell and use=
s package_deb inside local.conf. SDK compilation succeeded with command "bi=
tbake <mycustomdistro> -c populate_sdk " but while installation on host the=
re errors similar to the ones mentioned in this issue ( https://github.com/=
kraj/meta-clang/issues/119 ).=C2=A0 Therefore, I removed the LDFLAGS_append=
_class-nativesdk =3D " -fuse-ld=3Dgold" line from clang_git.bb and compiled=
. This gave me errors related to this issue ( https://stackoverflow.com/que=
stions/60058817/bitbake-populate-sdk-for-image-fails-with-error ). Therefor=
e, I added package_ipk and also kept package_deb . The compilation was succ=
essful but there was one warning as below :

-------------------------

<CUSTOMDISTRO> do_populate_sdk: Unable to install packages. Command <Path>=
/opkg --volatile-cache -f <Path>/opkg.conf -t <Path>/sysroots/core2-64-poky=
-linux --force-postinstall --prefer-arch-to-version install <Long list of s=
pace seperate package names> returned 1

Collected errors: Solver encountered 1 problem(s) ....

-------------------------

The installation of on host was successful

When I tried to use the sdk to compile eBPF, I got errors mentioning that =
the sysroot does not contain /usr/include/gelf.h . After looking I saw that=
 elfutils-dev tools were not installed. elfutils-dev would have installed g=
elf.h. in /usr/include of sysroot.

Without the addition of Clang I was able to generate working sdk with just=
 package_deb in local.conf.

--UsH5vJAiqbjQCCApBWKs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p>
<p>I&nbsp;need Clang&nbsp;compiler apart&nbsp;from currently&nbsp;availabl=
e default gcc compiler as I am trying to compile eBPF which will run on my =
custom yocto which is based on core-image-minimal. Therefore I&nbsp;added C=
lang&nbsp;compiler to my yocto sdk build using the meta-clang layer availab=
le at&nbsp;<a href=3D"https://github.com/kraj/meta-clang" target=3D"_blank"=
 rel=3D"nofollow noopener">https://github.com/kraj/meta-clang</a>&nbsp;. My=
 yocto is based on dunfell and uses package_deb inside local.conf. SDK comp=
ilation succeeded with command "bitbake &lt;mycustomdistro&gt; -c populate_=
sdk " but while installation on host there errors similar to the ones menti=
oned in&nbsp;<a href=3D"https://github.com/kraj/meta-clang/issues/119" targ=
et=3D"_blank" rel=3D"nofollow noopener">this issue</a>&nbsp;.&nbsp; Therefo=
re, I removed the&nbsp;<span style=3D"font-size: 12px; font-family: SFMono-=
Regular, Consolas, 'Liberation Mono', Menlo, monospace; color: #24292e;">LD=
FLAGS_append_class-nativesdk =3D " -fuse-ld=3Dgold"&nbsp;</span><span style=
=
=3D"color: #24292e;"><span style=3D"font-family: arial, sans-serif;">line =
from clang_git.bb and compiled. This gave me errors related to this&nbsp;<a=
 href=3D"https://stackoverflow.com/questions/60058817/bitbake-populate-sdk-=
for-image-fails-with-error" target=3D"_blank" rel=3D"nofollow noopener">iss=
ue</a>&nbsp;. Therefore, I added package_ipk and also kept package_deb . Th=
e compilation was successful but there was one warning as below :</span></s=
pan></p>
<p><span style=3D"color: #24292e;"><span style=3D"font-family: arial, sans=
-serif;">-------------------------</span></span></p>
<p><span style=3D"color: #24292e;"><span style=3D"font-family: arial, sans=
-serif;">&lt;CUSTOMDISTRO&gt; do_populate_sdk: Unable to install packages. =
Command &lt;Path&gt;/opkg --volatile-cache -f &lt;Path&gt;/opkg.conf -t &lt=
;Path&gt;/sysroots/core2-64-poky-linux --force-postinstall --prefer-arch-to=
-version install &lt;Long list of space seperate package names&gt; returned=
 1</span></span></p>
<p><span style=3D"color: #24292e;"><span style=3D"font-family: arial, sans=
-serif;">Collected errors:&nbsp;</span></span><span style=3D"font-family: a=
rial, sans-serif; color: #24292e;">Solver encountered 1 problem(s) ....</sp=
an></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><span style=3D"color: #24292e;"><span style=3D"font-family: arial, sans=
-serif;">-------------------------</span></span></p>
<p>The installation of on host was successful</p>
<p><span style=3D"color: #24292e;"><span style=3D"font-family: arial, sans=
-serif;">When I tried to use the sdk to compile eBPF, I got errors mentioni=
ng that the sysroot does not contain /usr/include/gelf.h . After looking I =
saw that elfutils-dev tools were not installed. elfutils-dev would have ins=
talled gelf.h. in /usr/include of sysroot.</span></span></p>
<p>Without the addition of Clang I was able to generate working sdk with j=
ust package_deb in local.conf.&nbsp;</p>

--UsH5vJAiqbjQCCApBWKs--
