Subject: Re: Unable to build core-image-full-cmdline on openSUSE Leap 15.1: dnf can't find _curses module in do_rootfs task
To: yocto@lists.yoctoproject.org
From: bpeter@lytx.com
X-Originating-Location: San Diego, California, US (99.95.169.71)
X-Originating-Platform: Linux Firefox 68
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Apr 2020 10:51:26 -0700
References: <98NB.1575840802217143019.f9l4@lists.yoctoproject.org>
In-Reply-To: <98NB.1575840802217143019.f9l4@lists.yoctoproject.org>
Message-ID: <10689.1588009886774474741@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pFnKgpxnEUj7zjhHDzEv"

--pFnKgpxnEUj7zjhHDzEv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm experiencing the same problem with yocto zeus on both OpenSuse Leap 15.=
0 and 15.1. Were you able to find a resolution for this issue?

I've been investigating and found problems with some of the libraries buil=
t for python3-native. They're missing some dependencies:

/home/brendan/workspaces/imx-linux-zeus/build_fsl-imx-xwayland/tmp/sysroot=
s-components/x86_64/python3-native/usr/lib/python3.7/lib-dynload/_curses.cp=
ython-37m-x86_64-linux-gnu_failed.so
/home/brendan/workspaces/imx-linux-zeus/build_fsl-imx-xwayland/tmp/sysroot=
s-components/x86_64/python3-native/usr/lib/python3.7/lib-dynload/_curses_pa=
nel.cpython-37m-x86_64-linux-gnu_failed.so

readelf -d | grep NEEDED
0x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libpanelw.so.5]
0x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libncursesw.so.5]
0x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libtinfo.so.5]
0x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libpython3.7m.so.1.0]
0x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libpthread.so.0]
0x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libc.so.6]

--pFnKgpxnEUj7zjhHDzEv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm experiencing the same problem with yocto zeus on both OpenSuse Leap 15.=
0 and 15.1. Were you able to find a resolution for this issue?<br /><br />I=
've been investigating and found problems with some of the libraries built =
for python3-native. They're missing some dependencies:<br /><br />/home/bre=
ndan/workspaces/imx-linux-zeus/build_fsl-imx-xwayland/tmp/sysroots-componen=
ts/x86_64/python3-native/usr/lib/python3.7/lib-dynload/_curses.cpython-37m-=
x86_64-linux-gnu_failed.so<br />/home/brendan/workspaces/imx-linux-zeus/bui=
ld_fsl-imx-xwayland/tmp/sysroots-components/x86_64/python3-native/usr/lib/p=
ython3.7/lib-dynload/_curses_panel.cpython-37m-x86_64-linux-gnu_failed.so<b=
r /><br />readelf -d | grep NEEDED<br />&nbsp;0x0000000000000001 (NEEDED)&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shar=
ed library: [libpanelw.so.5]<br />&nbsp;0x0000000000000001 (NEEDED)&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shared lib=
rary: [libncursesw.so.5]<br />&nbsp;0x0000000000000001 (NEEDED)&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shared library=
: [libtinfo.so.5]<br />&nbsp;0x0000000000000001 (NEEDED)&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shared library: [libp=
ython3.7m.so.1.0]<br />&nbsp;0x0000000000000001 (NEEDED)&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shared library: [libp=
thread.so.0]<br />&nbsp;0x0000000000000001 (NEEDED)&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shared library: [libc.so.6=
]

--pFnKgpxnEUj7zjhHDzEv--
