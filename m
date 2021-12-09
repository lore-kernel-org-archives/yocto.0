Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 097E3C433EF
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 13:27:39 +0000 (UTC)
Subject: kwayland-server-5.23.1
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (14.98.179.254)
X-Originating-Platform: Linux Chrome 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 09 Dec 2021 05:27:37 -0800
Message-ID: <SRZF.1639056457909467290.9KuM@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4GDkgeoepdpItWU65Cy5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 13:27:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55534

--4GDkgeoepdpItWU65Cy5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am facing a problem with the Kwayland-server package issue. Can anybody k=
now about this package issue or patchwork can you please guide me.

ERROR: kwayland-server-5.23.1-r0 do_compile: Execution of '/home/sample-kde=
/build/tmp-glibc/work/riscv64-oe-linux/kwayland-server/5.23.1-r0/temp/run.d=
o_compile.23397' failed with exit code 1:
ninja: error: '/usr/share/wayland/wayland.xml', needed by 'src/server/qwayl=
and-server-wayland.cpp', missing and no known rule to make it
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /home/sample-kde/build/tmp-glibc/work/=
riscv64-oe-linux/kwayland-server/5.23.1-r0/temp/log.do_compile.23397
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: VERBOSE=3D1 cmake --build /home/sateesh/sample-kde/build/tmp-glibc/=
work/riscv64-oe-linux/kwayland-server/5.23.1-r0/build --target all --
| ninja: error: '/usr/share/wayland/wayland.xml', needed by 'src/server/qwa=
yland-server-wayland.cpp', missing and no known rule to make it
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/home/sample-kde/build/tmp-glibc/work/riscv64-oe-lin=
ux/kwayland-server/5.23.1-r0/temp/run.do_compile.23397' failed with exit co=
de 1:
| ninja: error: '/usr/share/wayland/wayland.xml', needed by 'src/server/qwa=
yland-server-wayland.cpp', missing and no known rule to make it
| WARNING: exit code 1 from a shell command.
|
ERROR: Task (/home/sample-kde/yocto-meta-kde/recipes-plasma/kwayland-server=
_5.23.1.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3506 tasks of which 3500 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
/home/sample-kde/yocto-meta-kde/recipes-plasma/kwayland-server_5.23.1.bb:do=
_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

--
Regards,
Sateesh

--4GDkgeoepdpItWU65Cy5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I am fa=
cing a problem with the Kwayland-server package issue. Can anybody know abo=
ut this package issue or patchwork can you please guide me.&nbsp;&nbsp;<br =
/><br />
<div>ERROR: kwayland-server-5.23.1-r0 do_compile: Execution of '/home/sampl=
e-kde/build/tmp-glibc/work/riscv64-oe-linux/kwayland-server/5.23.1-r0/temp/=
run.do_compile.23397' failed with exit code 1:</div>
<div>ninja: error: '/usr/share/wayland/wayland.xml', needed by 'src/server/=
qwayland-server-wayland.cpp', missing and no known rule to make it</div>
<div>WARNING: exit code 1 from a shell command.</div>
<div>&nbsp;</div>
<div>ERROR: Logfile of failure stored in: /home/sample-kde/build/tmp-glibc/=
work/riscv64-oe-linux/kwayland-server/5.23.1-r0/temp/log.do_compile.23397</=
div>
<div>Log data follows:</div>
<div>| DEBUG: Executing shell function do_compile</div>
<div>| NOTE: VERBOSE=3D1 cmake --build /home/sateesh/sample-kde/build/tmp-g=
libc/work/riscv64-oe-linux/kwayland-server/5.23.1-r0/build --target all --<=
/div>
<div>| ninja: error: '/usr/share/wayland/wayland.xml', needed by 'src/serve=
r/qwayland-server-wayland.cpp', missing and no known rule to make it</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>| ERROR: Execution of '/home/sample-kde/build/tmp-glibc/work/riscv64-o=
e-linux/kwayland-server/5.23.1-r0/temp/run.do_compile.23397' failed with ex=
it code 1:</div>
<div>| ninja: error: '/usr/share/wayland/wayland.xml', needed by 'src/serve=
r/qwayland-server-wayland.cpp', missing and no known rule to make it</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>|&nbsp;</div>
<div>ERROR: Task (/home/sample-kde/yocto-meta-kde/recipes-plasma/kwayland-s=
erver_5.23.1.bb:do_compile) failed with exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 3506 tasks of which 3500 didn't need to=
 be rerun and 1 failed.</div>
<div>&nbsp;</div>
<div>Summary: 1 task failed:</div>
<div>&nbsp; /home/sample-kde/yocto-meta-kde/recipes-plasma/kwayland-server_=
5.23.1.bb:do_compile</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div>
<div>&nbsp;</div>
<br />-- <br />Regards,<br />Sateesh

--4GDkgeoepdpItWU65Cy5--

