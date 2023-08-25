Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5334AC3DA66
	for <webhook@archiver.kernel.org>; Fri, 25 Aug 2023 16:46:37 +0000 (UTC)
Subject: lxc 4.0.6 to 4.0.9 upgrade hitting error with liblxc.a: not a valid ELF file #meta-virtualization
To: yocto@lists.yoctoproject.org
From: suhas103@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (72.163.220.11)
X-Originating-Platform: Mac Firefox 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 25 Aug 2023 08:47:26 -0700
Message-ID: <3F5Z.1692978446496601123.8m32@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zv6piq06wWnhIZbrcCWg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 16:46:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60892

--zv6piq06wWnhIZbrcCWg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Trying to update meta-virtualization in Dunfell branch.

Previously using meta-virtualization hash used was "beea119eb529b4a11f26600=
4aee8b548427aea39" where lxc is at 4.0.6 and when modified to "e6b6abacfb3a=
7273f0e4154010f749252c1eb0a2" (where lxc is at 4.0.9) following error is th=
rowing.

ERROR: lxc-4.0.9-r0 do_package: dwarfsrcfiles failed with exit code 1 (cmd =
was ['dwarfsrcfiles', '/nobackup/ravpati2/existing_oe/xr-oe/build/_tmp-lnt/=
work/corei7-64-xr-linux/lxc/4.0.9-r0/package/usr/lib64/liblxc.a']):
dwarfsrcfiles: /nobackup/ravpati2/existing_oe/xr-oe/build/_tmp-lnt/work/cor=
ei7-64-xr-linux/lxc/4.0.9-r0/package/usr/lib64/liblxc.a: not a valid ELF fi=
le
ERROR: Logfile of failure stored in: /nobackup/ravpati2/existing_oe/xr-oe/b=
uild/_tmp-lnt/work/corei7-64-xr-linux/lxc/4.0.9-r0/temp/log.do_package.4056=
0
ERROR: Task (/nobackup/ravpati2/existing_oe/xr-oe/repos/external/openembedd=
ed-core/../meta-virtualization/recipes-containers/lxc/lxc_4.0.9.bb:do_packa=
ge) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2575 tasks of which 2561 didn't need to be r=
erun and 1 failed.
Summary: 1 task failed:
/nobackup/ravpati2/existing_oe/xr-oe/repos/external/openembedded-core/../me=
ta-virtualization/recipes-containers/lxc/lxc_4.0.9.bb:do_package

Manual compilation for lxc-4.0.9 gives proper liblxc.a file.

Please, help to resolve this

- Suhas

--zv6piq06wWnhIZbrcCWg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Trying to update meta-virtualization in Dunfell branch. <br /><br />Previou=
sly using meta-virtualization hash used was "beea119eb529b4a11f266004aee8b5=
48427aea39" where lxc is at 4.0.6 and when modified to "e6b6abacfb3a7273f0e=
4154010f749252c1eb0a2" (where lxc is at 4.0.9) following error is throwing.=
<br /><br /><br />ERROR: lxc-4.0.9-r0 do_package: dwarfsrcfiles failed with=
 exit code 1 (cmd was ['dwarfsrcfiles', '/nobackup/ravpati2/existing_oe/xr-=
oe/build/_tmp-lnt/work/corei7-64-xr-linux/lxc/4.0.9-r0/package/usr/lib64/li=
blxc.a']):<br />dwarfsrcfiles: /nobackup/ravpati2/existing_oe/xr-oe/build/_=
tmp-lnt/work/corei7-64-xr-linux/lxc/4.0.9-r0/package/usr/lib64/liblxc.a: no=
t a valid ELF file<br />ERROR: Logfile of failure stored in: /nobackup/ravp=
ati2/existing_oe/xr-oe/build/_tmp-lnt/work/corei7-64-xr-linux/lxc/4.0.9-r0/=
temp/log.do_package.40560<br />ERROR: Task (/nobackup/ravpati2/existing_oe/=
xr-oe/repos/external/openembedded-core/../meta-virtualization/recipes-conta=
iners/lxc/lxc_4.0.9.bb:do_package) failed with exit code '1'<br />NOTE: Tas=
ks Summary: Attempted 2575 tasks of which 2561 didn't need to be rerun and =
1 failed.<br />Summary: 1 task failed:<br />&nbsp; /nobackup/ravpati2/exist=
ing_oe/xr-oe/repos/external/openembedded-core/../meta-virtualization/recipe=
s-containers/lxc/lxc_4.0.9.bb:do_package<br /><br /><br />Manual compilatio=
n for lxc-4.0.9 gives proper liblxc.a file.<br /><br />Please, help to reso=
lve this<br /><br /><br />- Suhas

--zv6piq06wWnhIZbrcCWg--

