Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24EBEC83038
	for <webhook@archiver.kernel.org>; Wed,  2 Jul 2025 18:50:49 +0000 (UTC)
Subject: stderr: fatal: bad revision 'AUTOINC'  #bitbake #devtool
To: yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Milpitas, California, US (134.204.178.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Jul 2025 11:50:42 -0700
Message-ID: <uGCN.1751482242379019809.VPQx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8MmJexgAOg0O91IIe0Jm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Jul 2025 18:50:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65595

--8MmJexgAOg0O91IIe0Jm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Summary

Command: devtool finish lang-lookup-util-native some-layer
Subcommand: 'sh -c 'git format-patch --no-signature --no-numbered AUTOINC -=
o /tmp/oepatchw2ggm8rz -- .'

stderr: fatal: bad revision 'AUTOINC'

One thing of note, SRCREV =3D "${AUTOREV}" has never worked for me, if I wa=
nt my devtool/workspace/recipe to update the git code I'm working with, I h=
ave to reset/remove the recipe, redo devtool add, copy/paste the old recipe=
 and start all over. I executed 'bitbake -e my-recipe' and noticed AUTOINC =
being referenced, but never set outside of, I believe, a default case of 0.=
 Echo'ing ${AUTOINC} inside of my do_compile step also confirms it is empty=
.

FULL OUTPUT

NOTE: Starting bitbake server...
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#1)... (12:15:30.762827)
Loading cache: 100% |######################################################=
###########################################################################=
######################################################| Time: 0:00:01
Loaded 5098 entries from dependency cache.
WARNING: /home/user/eps-yocto/build/exos-x-vanadium-bmc/workspace/recipes/l=
ang-lookup-util-native/lang-lookup-util-native_git.bb: QA Issue: lang-looku=
p-util-native: native/nativesdk class is not inherited last, this can resul=
t in unexpected behaviour. Classes inherited after native/nativesdk: extern=
alsrc.bbclass [native-last]
Parsing recipes: 100% |####################################################=
###########################################################################=
######################################################| Time: 0:00:00
Parsing of 3098 .bb files complete (3092 cached, 6 parsed). 5103 targets, 7=
19 skipped, 0 masked, 0 errors.
Summary: There was 1 WARNING message.
INFO: Updating SRCREV in recipe lang-lookup-util-native_git.bb
Traceback (most recent call last):
File "/home/user/eps-yocto/scripts/devtool", line 350, in <module>
ret =3D main()
File "/home/user/eps-yocto/scripts/devtool", line 337, in main
ret =3D args.func(args, config, basepath, workspace)
File "/home/user/eps-yocto/poky/scripts/lib/devtool/standard.py", line 2234=
, in finish
updated, appendfile, removed =3D _update_recipe(args.recipename, workspace,=
 rd, args.mode, appendlayerdir, wildcard_version=3DTrue, no_remove=3DFalse,=
 no_report_remove=3Dremoving_original, initial_rev=3Dargs.initial_rev, dry_=
run_outdir=3Ddry_run_outdir, no_overrides=3Dargs.no_overrides, force_patch_=
refresh=3Dargs.force_patch_refresh)
File "/home/user/eps-yocto/poky/scripts/lib/devtool/standard.py", line 1928=
, in _update_recipe
updated, appendf, removed =3D _update_recipe_srcrev(recipename, workspace, =
srctree, crd, appendlayerdir, wildcard_version, no_remove, no_report_remove=
, dry_run_outdir)
File "/home/user/eps-yocto/poky/scripts/lib/devtool/standard.py", line 1618=
, in _update_recipe_srcrev
upd_p, new_p, del_p =3D _export_patches(srctree, rd, old_srcrev,
File "/home/user/eps-yocto/poky/scripts/lib/devtool/standard.py", line 1365=
, in _export_patches
GitApplyTree.extractPatches(srctree, start_revs, destdir, patch_pathspec)
File "/home/user/eps-yocto/poky/meta/lib/oe/patch.py", line 523, in extract=
Patches
out =3D runcmd(["sh", "-c", " ".join(shellcmd)], os.path.join(tree, name))
File "/home/user/eps-yocto/poky/meta/lib/oe/patch.py", line 49, in runcmd
raise CmdError(cmd, exitstatus >> 8, "stdout: %s\nstderr: %s" % (stdout, st=
derr))
oe.patch.CmdError: Command Error: 'sh -c 'git format-patch --no-signature -=
-no-numbered AUTOINC -o /tmp/oepatchw2ggm8rz -- .'' exited with 0 =C2=A0Out=
put:
stdout:
stderr: fatal: bad revision 'AUTOINC'

FULL RECIPE

SUMMARY =3D "Recipe for the purpose of building native/host langLookup"
DESCRIPTION =3D "The intention is for this executable to be executed prior =
to ARM/OpenBMC compilation"
HOMEPAGE =3D "TBD"
LICENSE =3D "Apache-2.0 & Unknown"

SRC_URI =3D "git://git@/Joseph-Maniaci/mclinux_yocto.git;protocol=3Dssh;bra=
nch=3D${MC_APP_BRANCH}"
inherit cmake native
# Modify these as desired
PV =3D "1.0+git"
SRCREV =3D "${AUTOREV}"
S =3D "${WORKDIR}/git"
OECMAKE_CXX_FLAGS:remove =3D "-D_FORTIFY_SOURCE=3D2"
OECMAKE_CXX_FLAGS:remove =3D "-O2"
do_compile () {
cmake_do_compile =C2=A0langLookup
}

--8MmJexgAOg0O91IIe0Jm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Summary</div>
<div>&nbsp;</div>
<div>Command: devtool finish lang-lookup-util-native some-layer</div>
<div>Subcommand: 'sh -c 'git format-patch --no-signature --no-numbered AUTO=
INC -o /tmp/oepatchw2ggm8rz -- .'</div>
<div>&nbsp;</div>
<div>stderr: fatal: bad revision 'AUTOINC'</div>
<div>&nbsp;</div>
<div>One thing of note, SRCREV =3D "${AUTOREV}" has never worked for me, if=
 I want my devtool/workspace/recipe to update the git code I'm working with=
, I have to reset/remove the recipe, redo devtool add, copy/paste the old r=
ecipe and start all over. I executed 'bitbake -e my-recipe' and noticed AUT=
OINC being referenced, but never set outside of, I believe, a default case =
of 0. Echo'ing ${AUTOINC} inside of my do_compile step also confirms it is =
empty.<br /><br />FULL OUTPUT</div>
<div><br />NOTE: Starting bitbake server...<br />NOTE: Reconnecting to bitb=
ake server...<br />NOTE: Retrying server connection (#1)... (12:15:30.76282=
7)<br />Loading cache: 100% |##############################################=
###########################################################################=
##############################################################| Time: 0:00:=
01<br />Loaded 5098 entries from dependency cache.<br />WARNING: /home/user=
/eps-yocto/build/exos-x-vanadium-bmc/workspace/recipes/lang-lookup-util-nat=
ive/lang-lookup-util-native_git.bb: QA Issue: lang-lookup-util-native: nati=
ve/nativesdk class is not inherited last, this can result in unexpected beh=
aviour. Classes inherited after native/nativesdk: externalsrc.bbclass [nati=
ve-last]<br />Parsing recipes: 100% |######################################=
###########################################################################=
####################################################################| Time:=
 0:00:00<br />Parsing of 3098 .bb files complete (3092 cached, 6 parsed). 5=
103 targets, 719 skipped, 0 masked, 0 errors.</div>
<div>
<div>Summary: There was 1 WARNING message.<br />INFO: Updating SRCREV in re=
cipe lang-lookup-util-native_git.bb<br />Traceback (most recent call last):=
<br />&nbsp; File "/home/user/eps-yocto/scripts/devtool", line 350, in &lt;=
module&gt;<br />&nbsp; &nbsp; ret =3D main()<br />&nbsp; File "/home/user/e=
ps-yocto/scripts/devtool", line 337, in main<br />&nbsp; &nbsp; ret =3D arg=
s.func(args, config, basepath, workspace)<br />&nbsp; File "/home/user/eps-=
yocto/poky/scripts/lib/devtool/standard.py", line 2234, in finish<br />&nbs=
p; &nbsp; updated, appendfile, removed =3D _update_recipe(args.recipename, =
workspace, rd, args.mode, appendlayerdir, wildcard_version=3DTrue, no_remov=
e=3DFalse, no_report_remove=3Dremoving_original, initial_rev=3Dargs.initial=
_rev, dry_run_outdir=3Ddry_run_outdir, no_overrides=3Dargs.no_overrides, fo=
rce_patch_refresh=3Dargs.force_patch_refresh)<br />&nbsp; File "/home/user/=
eps-yocto/poky/scripts/lib/devtool/standard.py", line 1928, in _update_reci=
pe<br />&nbsp; &nbsp; updated, appendf, removed =3D _update_recipe_srcrev(r=
ecipename, workspace, srctree, crd, appendlayerdir, wildcard_version, no_re=
move, no_report_remove, dry_run_outdir)<br />&nbsp; File "/home/user/eps-yo=
cto/poky/scripts/lib/devtool/standard.py", line 1618, in _update_recipe_src=
rev<br />&nbsp; &nbsp; upd_p, new_p, del_p =3D _export_patches(srctree, rd,=
 old_srcrev,<br />&nbsp; File "/home/user/eps-yocto/poky/scripts/lib/devtoo=
l/standard.py", line 1365, in _export_patches<br />&nbsp; &nbsp; GitApplyTr=
ee.extractPatches(srctree, start_revs, destdir, patch_pathspec)<br />&nbsp;=
 File "/home/user/eps-yocto/poky/meta/lib/oe/patch.py", line 523, in extrac=
tPatches<br />&nbsp; &nbsp; out =3D runcmd(["sh", "-c", " ".join(shellcmd)]=
, os.path.join(tree, name))<br />&nbsp; File "/home/user/eps-yocto/poky/met=
a/lib/oe/patch.py", line 49, in runcmd<br />&nbsp; &nbsp; raise CmdError(cm=
d, exitstatus &gt;&gt; 8, "stdout: %s\nstderr: %s" % (stdout, stderr))<br /=
>oe.patch.CmdError: Command Error: 'sh -c 'git format-patch --no-signature =
--no-numbered AUTOINC -o /tmp/oepatchw2ggm8rz -- .'' exited with 0 &nbsp;Ou=
tput:<br />stdout:&nbsp;<br />stderr: fatal: bad revision 'AUTOINC'</div>
<div>&nbsp;</div>
<div>FULL RECIPE</div>
<div>&nbsp;</div>
<div>
<div>SUMMARY =3D "Recipe for the purpose of building native/host langLookup=
"<br />DESCRIPTION =3D "The intention is for this executable to be executed=
 prior to ARM/OpenBMC compilation"<br />HOMEPAGE =3D "TBD"</div>
<div>LICENSE =3D "Apache-2.0 &amp; Unknown"</div>
<div><br />SRC_URI =3D "git://git@/Joseph-Maniaci/mclinux_yocto.git;protoco=
l=3Dssh;branch=3D${MC_APP_BRANCH}"</div>
<div>inherit cmake native</div>
<div># Modify these as desired<br />PV =3D "1.0+git"<br />SRCREV =3D "${AUT=
OREV}"<br />S =3D "${WORKDIR}/git"</div>
<div>OECMAKE_CXX_FLAGS:remove =3D "-D_FORTIFY_SOURCE=3D2"<br />OECMAKE_CXX_=
FLAGS:remove =3D "-O2"</div>
<div>do_compile () {<br />&nbsp; &nbsp; cmake_do_compile &nbsp;langLookup<b=
r />}</div>
</div>
</div>

--8MmJexgAOg0O91IIe0Jm--

