Return-Path: <poornesh.g@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D2D8C3DA59
	for <webhook@archiver.kernel.org>; Fri, 19 Jul 2024 05:58:13 +0000 (UTC)
Subject: Weston failing on RK3568 yocto honister
To: yocto@lists.yoctoproject.org
From: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 18 Jul 2024 22:58:07 -0700
Message-ID: <rzah.1721368687157871565.KgGq@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="an8fZ20Za7RxdI2A0d5R"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Jul 2024 05:58:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63531

--an8fZ20Za7RxdI2A0d5R
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings !

I have built a yocto (honister) for RK3568 evb machine. I am trying to enab=
le wayland in my yocto since i have LCD and HDMI interfaces connected. But =
i could not able to launch weston as am getting *"FATAL: dlopen(libmali.so.=
1) failed((null))".* But i have " *libmali.so.1* " available in my Rootfile=
 system.

Please refer the detailed log below . I kindly requesting your suggestions =
to overcome this issue.

Thanks in advance.

---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
-
root@rockchip-rk3568-evb:~# weston
FATAL: dlopen(libmali.so.1) failed((null))

root@rockchip-rk3568-evb:~# ls -lah=C2=A0 /usr/lib/libmali.so.1
lrwxrwxrwx=C2=A0 =C2=A0 1 root=C2=A0 =C2=A0 =C2=A0root=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 16 Nov 19 17:22 /usr/lib/libmali.so.1 -> libmali.so.1.9.0

root@rockchip-rk3568-evb:~# weston
FATAL: dlopen(libmali.so.1) failed((null))

root@rockchip-rk3568-evb:/usr/lib# ldd libmali.so.1
linux-vdso.so.1 (0x0000007f94267000)
libdl.so.2 =3D> /usr/lib/libdl.so.2 (0x0000007f8d63c000)
libpthread.so.0 =3D> /usr/lib/libpthread.so.0 (0x0000007f8d62a000)
libdrm.so.2 =3D> /usr/lib/libdrm.so.2 (0x0000007f8d604000)
libwayland-client.so.0 =3D> /usr/lib/libwayland-client.so.0 (0x0000007f8d5e=
4000)
libwayland-server.so.0 =3D> /usr/lib/libwayland-server.so.0 (0x0000007f8d5b=
f000)
libstdc++.so.6 =3D> /usr/lib/libstdc++.so.6 (0x0000007f8d3a5000)
libm.so.6 =3D> /usr/lib/libm.so.6 (0x0000007f8d310000)
libc.so.6 =3D> /usr/lib/libc.so.6 (0x0000007f8d169000)
libgcc_s.so.1 =3D> /usr/lib/libgcc_s.so.1 (0x0000007f8d144000)
/usr/lib/ld-linux-aarch64.so.1 (0x0000007f94233000)
libffi.so.8 =3D> /usr/lib/libffi.so.8 (0x0000007f8d12a000)

---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
--------

--an8fZ20Za7RxdI2A0d5R
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Greetings !</div>
<div>&nbsp;</div>
<div>I have built a yocto (honister) for RK3568 evb machine. I am trying to=
 enable wayland in my yocto since i have LCD and HDMI interfaces connected.=
 But i could not able to launch weston as am getting <strong>"FATAL: dlopen=
(libmali.so.1) failed((null))".&nbsp;</strong>But i have "<strong>libmali.s=
o.1</strong>" available in my Rootfile system.</div>
<div>&nbsp;</div>
<div>Please refer the detailed log below . I kindly requesting your suggest=
ions to overcome this issue.</div>
<div>&nbsp;</div>
<div>Thanks in advance.</div>
<div>&nbsp;</div>
<div>----------------------------------------------------------------------=
---------------------------------------------------------------------------=
------&nbsp;</div>
<div>
<div>root@rockchip-rk3568-evb:~# weston</div>
<div>FATAL: dlopen(libmali.so.1) failed((null))</div>
<div>&nbsp;</div>
<div>root@rockchip-rk3568-evb:~# ls -lah&nbsp; /usr/lib/libmali.so.1</div>
<div>lrwxrwxrwx&nbsp; &nbsp; 1 root&nbsp; &nbsp; &nbsp;root&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; 16 Nov 19 17:22 /usr/lib/libmali.so.1 -&gt; libmali.so.1=
.9.0</div>
<div>&nbsp;</div>
<div>root@rockchip-rk3568-evb:~# weston</div>
<div>FATAL: dlopen(libmali.so.1) failed((null))</div>
<div>&nbsp;</div>
<div>root@rockchip-rk3568-evb:/usr/lib# ldd libmali.so.1</div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>linux-vdso.so.1 (0x0000007f94267000)</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>libdl.so.2 =3D&gt; /usr/lib/libdl.so.2 (0x0000007f8d63c000)</span>=
</div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>libpthread.so.0 =3D&gt; /usr/lib/libpthread.so.0 (0x0000007f8d62a0=
00)</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>libdrm.so.2 =3D&gt; /usr/lib/libdrm.so.2 (0x0000007f8d604000)</spa=
n></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>libwayland-client.so.0 =3D&gt; /usr/lib/libwayland-client.so.0 (0x=
0000007f8d5e4000)</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>libwayland-server.so.0 =3D&gt; /usr/lib/libwayland-server.so.0 (0x=
0000007f8d5bf000)</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>libstdc++.so.6 =3D&gt; /usr/lib/libstdc++.so.6 (0x0000007f8d3a5000=
)</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>libm.so.6 =3D&gt; /usr/lib/libm.so.6 (0x0000007f8d310000)</span></=
div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>libc.so.6 =3D&gt; /usr/lib/libc.so.6 (0x0000007f8d169000)</span></=
div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>libgcc_s.so.1 =3D&gt; /usr/lib/libgcc_s.so.1 (0x0000007f8d144000)<=
/span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>/usr/lib/ld-linux-aarch64.so.1 (0x0000007f94233000)</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>libffi.so.8 =3D&gt; /usr/lib/libffi.so.8 (0x0000007f8d12a000)</spa=
n></div>
<div>&nbsp;</div>
<div><span style=3D"white-space: normal;">---------------------------------=
---------------------------------------------------------------------------=
--------------------------------------------------</span></div>
<div>&nbsp;</div>
</div>

--an8fZ20Za7RxdI2A0d5R--

