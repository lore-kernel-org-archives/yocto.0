Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F08AC369AB
	for <webhook@archiver.kernel.org>; Mon, 21 Apr 2025 12:30:47 +0000 (UTC)
Subject: Issue while building YOCTO for Intel tiger lake UP3 processor #ubuntu #yocto
To: yocto@lists.yoctoproject.org
From: "ar825" <arehman.signatics.solutions@gmail.com>
X-Originating-Location: Islamabad, PK (206.84.142.53)
X-Originating-Platform: Windows Chrome 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Apr 2025 01:35:49 -0700
Message-ID: <XnIC.1745224549095117020.MUK4@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MZb2vY5kMYTpV9yTj7pE"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Apr 2025 12:30:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65208

--MZb2vY5kMYTpV9yTj7pE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to build *Yocto* for the *Intel Tiger Lake UP3 processor* , and=
 after executing the following command:

repo sync -c -j8 --force-sync

I encountered an issue where the kernel repository is not reachable.

Below is the terminal log output after running the command:

$ repo sync -c -j8 --force-sync
Fetching: 44% (12/27) 1:29 | 6 jobs | 1:29 openembedded-core @ intel-embedd=
ed-..
fatal: unable to access 'https://git.yoctoproject.org/git/yocto-kernel-cach=
e/': Could not resolve host: git.yoctoproject.org
yocto-kernel-cache:
fatal: unable to access 'https://git.yoctoproject.org/git/yocto-kernel-cach=
e/': Could not resolve host: git.yoctoproject.org
yocto-kernel-cache: sleeping 4.0 seconds before retrying
fatal: unable to access 'https://git.yoctoproject.org/git/yocto-kernel-cach=
e/': Could not resolve host: git.yoctoproject.org
error: Cannot fetch yocto-kernel-cache from https://git.yoctoproject.org/gi=
t/yocto-kernel-cache
Fetching: 100% (27/27), done in 40m22.403s
managed/linux-intel-ese-lts-5.10: Shared project intel/linux-intel-lts.git =
found, disabling pruning.
managed/linux-intel-ese-mlt: Shared project intel/mainline-tracking.git fou=
nd, disabling pruning.
managed/yocto-kernel-cache: Shared project yocto-kernel-cache found, disabl=
ing pruning.
Fetching: 100% (1/1), done in 0.012s
Checking out files: 100% (66461/66461), done.
Checking out files: 100% (66445/66445), done.
Checking out files: 100% (71472/71472), done.ecking out files: =C2=A093% (6=
6469/71472)
Checking out files: 100% (71472/71472), done.
Checking out files: 100% (75120/75120), done.
Checking out files: 100% (74335/74335), done.
Checking out files: 100% (74496/74496), done.king.gitChecking out files: =
=C2=A090% (67047/74496)
Checking out files: 100% (74497/74497), done.ts.gitChecking out files: =C2=
=A096% (72179/74497)
Checking out: =C2=A051% (14/27), done in 5.522s
Checking out: =C2=A048% (13/27), done in 0.215s
error: Unable to fully sync the tree
error: Downloading network changes failed.
Try re-running with "-j1 --fail-fast" to exit at the first error.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
Repo command failed due to the following `SyncError` errors:
GitCommandError: 'fetch --quiet --progress origin --force --prune --recurse=
-submodules=3Dno --tags +refs/heads/*:refs/remotes/origin/* +refs/tags/*:re=
fs/tags/*' on yocto-kernel-cache failed
stdout: fatal: unable to access 'https://git.yoctoproject.org/git/yocto-ker=
nel-cache/': Could not resolve host: git.yoctoproject.org

--MZb2vY5kMYTpV9yTj7pE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">
<p style=3D"box-sizing: border-box; margin: 0px 0px 10px; overflow-wrap: br=
eak-word !important;">I am trying to build<span>&nbsp;</span><strong style=
=3D"box-sizing: border-box; font-weight: bold; overflow-wrap: break-word !i=
mportant;">Yocto</strong><span>&nbsp;</span>for the<span>&nbsp;</span><stro=
ng style=3D"box-sizing: border-box; font-weight: bold; overflow-wrap: break=
-word !important;">Intel Tiger Lake UP3 processor</strong>, and after execu=
ting the following command:</p>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">&nbsp;</div>
<div class=3D"overflow-y-auto p-4" dir=3D"ltr" style=3D"box-sizing: border-=
box; overflow-wrap: break-word !important;"><code style=3D"box-sizing: bord=
er-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; fon=
t-size: 14.4px; padding: 2px 4px; color: #c7254e; background-color: #f9f2f4=
; border-radius: 4px; overflow-wrap: break-word !important;"><span style=3D=
"box-sizing: border-box; overflow-wrap: break-word !important;"><span style=
=3D"box-sizing: border-box; overflow-wrap: break-word !important;">repo<spa=
n>&nbsp;</span></span><span style=3D"box-sizing: border-box; overflow-wrap:=
 break-word !important;"><span class=3D"hljs-built_in" style=3D"box-sizing:=
 border-box; overflow-wrap: break-word !important;">sync</span></span><span=
 style=3D"box-sizing: border-box; overflow-wrap: break-word !important;"><s=
pan>&nbsp;</span>-c -j8 --force-sync</span></span></code></div>
<div class=3D"overflow-y-auto p-4" dir=3D"ltr" style=3D"box-sizing: border-=
box; overflow-wrap: break-word !important;">&nbsp;</div>
</div>
<p style=3D"box-sizing: border-box; margin: 0px 0px 10px; overflow-wrap: br=
eak-word !important;">I encountered an issue where the kernel repository is=
 not reachable.</p>
<p style=3D"box-sizing: border-box; margin: 0px 0px 10px; overflow-wrap: br=
eak-word !important;">Below is the terminal log output after running the co=
mmand:</p>
</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;"><br style=3D"box-sizing: border-box; overflow-w=
rap: break-word !important;" />
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">$ repo sync -c -j8 --force-sync<br style=3D"box-sizing: border-box; overf=
low-wrap: break-word !important;" />Fetching: 44% (12/27) 1:29 | 6 jobs | 1=
:29 openembedded-core @ intel-embedded-..<br style=3D"box-sizing: border-bo=
x; overflow-wrap: break-word !important;" />fatal: unable to access 'https:=
//git.yoctoproject.org/git/yocto-kernel-cache/': Could not resolve host: gi=
t.yoctoproject.org</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">yocto-kernel-cache:<br style=3D"box-sizing: border-box; overflow-wrap: br=
eak-word !important;" />fatal: unable to access 'https://git.yoctoproject.o=
rg/git/yocto-kernel-cache/': Could not resolve host: git.yoctoproject.org<b=
r style=3D"box-sizing: border-box; overflow-wrap: break-word !important;" /=
>yocto-kernel-cache: sleeping 4.0 seconds before retrying<br style=3D"box-s=
izing: border-box; overflow-wrap: break-word !important;" />fatal: unable t=
o access 'https://git.yoctoproject.org/git/yocto-kernel-cache/': Could not =
resolve host: git.yoctoproject.org<br style=3D"box-sizing: border-box; over=
flow-wrap: break-word !important;" />error: Cannot fetch yocto-kernel-cache=
 from https://git.yoctoproject.org/git/yocto-kernel-cache<br style=3D"box-s=
izing: border-box; overflow-wrap: break-word !important;" />Fetching: 100% =
(27/27), done in 40m22.403s<br style=3D"box-sizing: border-box; overflow-wr=
ap: break-word !important;" />managed/linux-intel-ese-lts-5.10: Shared proj=
ect intel/linux-intel-lts.git found, disabling pruning.<br style=3D"box-siz=
ing: border-box; overflow-wrap: break-word !important;" />managed/linux-int=
el-ese-mlt: Shared project intel/mainline-tracking.git found, disabling pru=
ning.<br style=3D"box-sizing: border-box; overflow-wrap: break-word !import=
ant;" />managed/yocto-kernel-cache: Shared project yocto-kernel-cache found=
, disabling pruning.<br style=3D"box-sizing: border-box; overflow-wrap: bre=
ak-word !important;" />Fetching: 100% (1/1), done in 0.012s<br style=3D"box=
-sizing: border-box; overflow-wrap: break-word !important;" />Checking out =
files: 100% (66461/66461), done.<br style=3D"box-sizing: border-box; overfl=
ow-wrap: break-word !important;" />Checking out files: 100% (66445/66445), =
done.<br style=3D"box-sizing: border-box; overflow-wrap: break-word !import=
ant;" />Checking out files: 100% (71472/71472), done.ecking out files: &nbs=
p;93% (66469/71472) &nbsp;&nbsp;<br style=3D"box-sizing: border-box; overfl=
ow-wrap: break-word !important;" />Checking out files: 100% (71472/71472), =
done.<br style=3D"box-sizing: border-box; overflow-wrap: break-word !import=
ant;" />Checking out files: 100% (75120/75120), done.<br style=3D"box-sizin=
g: border-box; overflow-wrap: break-word !important;" />Checking out files:=
 100% (74335/74335), done.<br style=3D"box-sizing: border-box; overflow-wra=
p: break-word !important;" />Checking out files: 100% (74496/74496), done.k=
ing.gitChecking out files: &nbsp;90% (67047/74496) &nbsp;&nbsp;<br style=3D=
"box-sizing: border-box; overflow-wrap: break-word !important;" />Checking =
out files: 100% (74497/74497), done.ts.gitChecking out files: &nbsp;96% (72=
179/74497) &nbsp;&nbsp;<br style=3D"box-sizing: border-box; overflow-wrap: =
break-word !important;" />Checking out: &nbsp;51% (14/27), done in 5.522s<b=
r style=3D"box-sizing: border-box; overflow-wrap: break-word !important;" /=
>Checking out: &nbsp;48% (13/27), done in 0.215s<br style=3D"box-sizing: bo=
rder-box; overflow-wrap: break-word !important;" />error: Unable to fully s=
ync the tree<br style=3D"box-sizing: border-box; overflow-wrap: break-word =
!important;" />error: Downloading network changes failed.<br style=3D"box-s=
izing: border-box; overflow-wrap: break-word !important;" />Try re-running =
with "-j1 --fail-fast" to exit at the first error.<br style=3D"box-sizing: =
border-box; overflow-wrap: break-word !important;" />=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br st=
yle=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />Rep=
o command failed due to the following `SyncError` errors:<br style=3D"box-s=
izing: border-box; overflow-wrap: break-word !important;" />GitCommandError=
: 'fetch --quiet --progress origin --force --prune --recurse-submodules=3Dn=
o --tags +refs/heads/*:refs/remotes/origin/* +refs/tags/*:refs/tags/*' on y=
octo-kernel-cache failed<br style=3D"box-sizing: border-box; overflow-wrap:=
 break-word !important;" />stdout: fatal: unable to access 'https://git.yoc=
toproject.org/git/yocto-kernel-cache/': Could not resolve host: git.yoctopr=
oject.org</div>
</div>
</div>

--MZb2vY5kMYTpV9yTj7pE--

