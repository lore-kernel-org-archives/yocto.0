Subject: Dunfell busybox NFS mount fails to build
To: yocto@lists.yoctoproject.org
From: "MikeB" <mabnhdev@gmail.com>
X-Originating-Location: Raleigh, North Carolina, US (107.13.78.59)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 13 Jun 2020 16:06:59 -0700
Message-ID: <p9vd.1592089619874670888.VyFF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SAkZ0aqv2naWiScxlRCt"

--SAkZ0aqv2naWiScxlRCt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to build busybox on Dunfell with NFS mount configured (CONFIG_FE=
ATURE_MOUNT_NFS).=C2=A0 The build fails with the following.

| util-linux/mount.c:253:11: fatal error: rpc/rpc.h: No such file or direc=
tory
|=C2=A0 =C2=A0253 | # include <rpc/rpc.h>

Reading online, later versions of glibc no longer install rpc headers.=C2=
=A0 Once suggested solution is to configure glibc with --enable-obsolete-r=
pc.=C2=A0 I tried that, but then the build fails as follows.

ERROR: tcp-wrappers-7.6-r10 do_prepare_recipe_sysroot: The file /usr/inclu=
de/rpcsvc/yppasswd.x is installed by both glibc and libnsl2, aborting

I also tried adding libtirpc as a dependency to busybox; no luck there eit=
her.

Can someone give me a workaround for this problem?

Thanks.

--SAkZ0aqv2naWiScxlRCt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to build busybox on Dunfell with NFS mount configured (CONFIG_FE=
ATURE_MOUNT_NFS).&nbsp; The build fails with the following.<br /><br />
<div>| util-linux/mount.c:253:11: fatal error: rpc/rpc.h: No such file or =
directory</div>
<div>|&nbsp; &nbsp;253 | # include &lt;rpc/rpc.h&gt;</div>
<div><br />Reading online, later versions of glibc no longer install rpc h=
eaders.&nbsp; Once suggested solution is to configure glibc with --enable-o=
bsolete-rpc.&nbsp; I tried that, but then the build fails as follows.<br />=
<br />
<div>ERROR: tcp-wrappers-7.6-r10 do_prepare_recipe_sysroot: The file /usr/=
include/rpcsvc/yppasswd.x is installed by both glibc and libnsl2, aborting<=
/div>
<div><br />I also tried adding libtirpc as a dependency to busybox; no luc=
k there either.<br /><br />Can someone give me a workaround for this proble=
m?<br /><br />Thanks.<br /><br /></div>
</div>

--SAkZ0aqv2naWiScxlRCt--
