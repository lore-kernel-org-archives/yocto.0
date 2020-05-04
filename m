Subject: BSP layer for Firecracker: Sensible? Advisable? #linux #yocto
To: yocto@lists.yoctoproject.org
From: mark@taqtiqa.com
X-Originating-Location: Hurstville, New South Wales, AU (115.69.5.21)
X-Originating-Platform: Linux Firefox 75
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 03 May 2020 22:24:58 -0700
Message-ID: <Mmnl.1588569898079183849.jTqF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jDElPzVxH9VIwjqiEnHn"

--jDElPzVxH9VIwjqiEnHn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I'm exploring the use of yocto to build [kernels for Firecracker VM's (vml=
inux, initrd and rootfs)](https://github.com/bbros-dev/firecracker-kernels/=
tree/develop).=C2=A0 I'm still at the point of working out what should be s=
etup. Right now we're setup to build for many kernels and variants, so I'm =
pretty sure the yocto setup costs are worthwhile in the longer term.

A goal will be to squeeze out maximum performance and/or minimum-size. so =
I'm wondering would a BSP layer deliver any benefit?=C2=A0 The Firecracker =
VM has a very small device list, with support for Intel x86_64 and ARM64 CP=
U's.=C2=A0 The devices are: "only 5 emulated devices are available: virtio-=
net, virtio-block, virtio-vsock, serial console, and a minimal keyboard con=
troller used only to stop the microVM"

Appreciate any suggestions and feedback.
Mark

--jDElPzVxH9VIwjqiEnHn
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I'm exploring the use of yocto to build [kernels for Firecracker V=
M's (vmlinux, initrd and rootfs)](https://github.com/bbros-dev/firecracker-=
kernels/tree/develop).&nbsp; I'm still at the point of working out what sho=
uld be setup. Right now we're setup to build for many kernels and variants,=
 so I'm pretty sure the yocto setup costs are worthwhile in the longer term=
. <br /><br />A goal will be to squeeze out maximum performance and/or mini=
mum-size. so I'm wondering would a BSP layer deliver any benefit?&nbsp; The=
 Firecracker VM has a very small device list, with support for Intel x86_64=
 and ARM64 CPU's.&nbsp; The devices are: "only 5 emulated devices are avail=
able: virtio-net, virtio-block, virtio-vsock, serial console, and a minimal=
 keyboard controller used only to stop the microVM"<br /><br />Appreciate a=
ny suggestions and feedback.<br />Mark

--jDElPzVxH9VIwjqiEnHn--
