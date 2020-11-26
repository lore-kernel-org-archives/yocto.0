Subject: Error during do_install for linux-libc-headers_5.8 recipe during 'bitbake core-image-minimal'
To: yocto@lists.yoctoproject.org
From: aloofbynature@gmail.com
X-Originating-Location: Sacramento, California, US (98.224.11.99)
X-Originating-Platform: Mac Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 26 Nov 2020 04:26:34 -0800
Message-ID: <18AC.1606393594224214075.801I@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="E4UJCFAn4dUXkEXlcieP"

--E4UJCFAn4dUXkEXlcieP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am just starting using Yocto Project and I've been following along with =
the getting started section of the mega manual. I am working on Ubuntu 20.0=
4 LTS through WSL2 on Windows 10 (not sure if it matters but I'm running OS=
 build 20231) trying to create an image using poky-yocto-3.2.

I've followed all setup steps and made sure the host has all necessary pac=
kages before cloning poky (I kept running into an error when trying to clon=
e the repo because the connection was refused so I just extracted the poky-=
yocto-3.2 tarball). When I try to run 'bitbake core-image-minimal' I get an=
 error saying the following task failed with exit code 134:
'poky-yocto-3.2/meta/recipes- kernel/linux-libc-headers/ linux-libc-header=
s_5.8.bb:do_ install'
All the other recipes are installed with no problems.

The first time I tried this I changed local.conf in my build dir to build =
for qemuarm and next try I left everything as the default configuration but=
 still got the same result. Any help fixing this issue is appreciated, than=
ks!

--E4UJCFAn4dUXkEXlcieP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>Hello,</div>
<div>&nbsp;</div>
<div>I am just starting using Yocto Project and I've been following along =
with the getting started section of the mega manual. I am working on Ubuntu=
 20.04 LTS through WSL2 on Windows 10 (not sure if it matters but I'm runni=
ng OS build 20231) trying to create an image using poky-yocto-3.2.</div>
<div>&nbsp;</div>
<div>I've followed all setup steps and made sure the host has all necessar=
y packages before cloning poky (I kept running into an error when trying to=
 clone the repo because the connection was refused so I just extracted the =
poky-yocto-3.2 tarball). When I try to run 'bitbake core-image-minimal' I g=
et an error saying the following task failed with exit code 134:</div>
<div>'poky-yocto-3.2/meta/recipes-<wbr />kernel/linux-libc-headers/<wbr />=
linux-libc-headers_5.8.bb:do_<wbr />install'</div>
<div>All the other recipes are installed with no problems.</div>
<div>&nbsp;</div>
<div>The first time I tried this I changed local.conf in my build dir to b=
uild for qemuarm and next try I left everything as the default configuratio=
n but still got the same result. Any help fixing this issue is appreciated,=
 thanks!</div>
</div>

--E4UJCFAn4dUXkEXlcieP--
