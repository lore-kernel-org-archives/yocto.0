Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43C17EB64D7
	for <webhook@archiver.kernel.org>; Wed, 28 Jun 2023 11:37:37 +0000 (UTC)
Subject: report one objcopy bug and fix
To: yocto@lists.yoctoproject.org
From: cddiao@ambarella.com
X-Originating-Location: London, England, GB (95.179.225.185)
X-Originating-Platform: Windows Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 28 Jun 2023 00:55:30 -0700
Message-ID: <t7pW.1687938930579768136.YiLL@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Zo5iPP7hhe45U4lNm0kd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Jun 2023 11:37:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60462

--Zo5iPP7hhe45U4lNm0kd
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
A bug is triggered when using docker + Ubuntu 20.04. 3 LTS. The bug message=
 is :

File: 'xxx/build/poky/meta/classes/kernel-module-split.bbclass', lineno: 68=
, function: extract_modinfo
0064:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 raise msg
0065:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd=
 =3D "%sobjcopy -j .modinfo -O binary %s %s" % (d.getVar("HOST_PREFIX") or =
"", tmpkofile, tmpfile)
0066:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:
0067:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd=
 =3D "%sobjcopy -j .modinfo -O binary %s %s" % (d.getVar("HOST_PREFIX") or =
"", file, tmpfile)
*** 0068:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 subprocess.check_call(c=
md, shell=3DTrue)
Exception: subprocess.CalledProcessError: Command 'aarch64-poky-linux-objco=
py -j .modinfo -O binary ../keymaps/rc-alink-dtu-m.ko=C2=A0=C2=A0 ../tmpwhs=
5uwlt' returned non-zero exit status 1.

The=C2=A0 " rc-alink-dtu-m.ko " file is damaged, and can't=C2=A0 analysis b=
y file command :
$ file -b rc-alink-dtu-m.ko
data
and the damaged is caused by=C2=A0 build/poky/meta/classes/package.bbclass=
=C2=A0 perform_packagecopy()
cmd =3D 'tar --exclude=3D./sysroot-only -cf - -C %s -p -S . | tar -xf - -C =
%s' % (dest, dvar)

remove the "-S " can fix the bug.
notes: this bug only appears in Ubuntu 20.04. 3 LTS, and Ubuntu 20.04. 6 LT=
S do not have the issue.

--Zo5iPP7hhe45U4lNm0kd
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />&nbsp;&nbsp;&nbsp; A bug is triggered when using docker + Ubuntu 2=
0.04.<span style=3D"color: #ff0000;">3</span> LTS. The bug message is :<br =
/><br />
<div style=3D"padding-left: 30px;"><span style=3D"color: #808080;">File: 'x=
xx/build/poky/meta/classes/kernel-module-split.bbclass', lineno: 68, functi=
on: extract_modinfo</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"color: #808080;">&nbsp;&n=
bsp;&nbsp;&nbsp; 0064:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise msg</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"color: #808080;">&nbsp;&n=
bsp;&nbsp;&nbsp; 0065:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; cmd =3D "%sobjcopy -j .modinfo -O binary %s %s" % (d.getVar("=
HOST_PREFIX") or "", tmpkofile, tmpfile)</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"color: #808080;">&nbsp;&n=
bsp;&nbsp;&nbsp; 0066:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:</spa=
n></div>
<div style=3D"padding-left: 30px;"><span style=3D"color: #808080;">&nbsp;&n=
bsp;&nbsp;&nbsp; 0067:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; cmd =3D "%sobjcopy -j .modinfo -O binary %s %s" % (d.getVar("=
HOST_PREFIX") or "", file, tmpfile)</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"color: #808080;">&nbsp;**=
* 0068:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; subprocess.check_call(cmd=
, shell=3DTrue)</span></div>
<div style=3D"padding-left: 30px;"><span style=3D"color: #808080;">&nbsp;Ex=
ception: subprocess.CalledProcessError: Command 'aarch64-poky-linux-objcopy=
 -j .modinfo -O binary ../keymaps/rc-alink-dtu-m.ko&nbsp;&nbsp; ../tmpwhs5u=
wlt' returned non-zero exit status 1.</span></div>
&nbsp;<br />&nbsp;&nbsp;&nbsp; The&nbsp; "<span lang=3D"EN-US">rc-alink-dtu=
-m.ko</span>" file is damaged, and can't&nbsp; analysis by file command :<b=
r />&nbsp;&nbsp;<span style=3D"color: #808080;">&nbsp;&nbsp;&nbsp;&nbsp; $ =
file -b rc-alink-dtu-m.ko</span><br /><span style=3D"color: #808080;">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; data</span><br />&nbsp; &=
nbsp; and the damaged is caused by&nbsp; build/poky/meta/classes/package.bb=
class&nbsp; perform_packagecopy()<br />&nbsp;&nbsp; &nbsp; &nbsp;<span styl=
e=3D"color: #808080;">&nbsp; cmd =3D 'tar --exclude=3D./sysroot-only -cf - =
-C %s -p -S . | tar -xf - -C %s' % (dest, dvar)</span><br /><br />&nbsp;&nb=
sp;&nbsp; remove the "-S " can fix the bug.<br />&nbsp;&nbsp;&nbsp; notes: =
this bug only appears in Ubuntu 20.04.<span style=3D"color: #ff0000;">3</sp=
an> LTS, and Ubuntu 20.04.<span style=3D"color: #ff0000;">6</span> LTS do n=
ot have the issue.<br /><br /><br /><br />&nbsp;<br />&nbsp; &nbsp; &nbsp; =
<br /><br /><br /><br /><br /><br />&nbsp;<br />&nbsp;

--Zo5iPP7hhe45U4lNm0kd--

