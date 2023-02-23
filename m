Return-Path: <tamtamis@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 049B6C636D7
	for <webhook@archiver.kernel.org>; Thu, 23 Feb 2023 10:27:19 +0000 (UTC)
Subject: Re: Question about psuedo abort errors
To: yocto@lists.yoctoproject.org
From: "Tamis" <tamtamis@gmail.com>
X-Originating-Location: DE (165.225.27.90)
X-Originating-Platform: Windows Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 23 Feb 2023 02:27:08 -0800
References: <bbff00030abef49a53d877a67e739be43667de7b.camel@linuxfoundation.org>
In-Reply-To: <bbff00030abef49a53d877a67e739be43667de7b.camel@linuxfoundation.org>
Message-ID: <2956.1677148028932653597@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bzGztlb5atxCTZ61DJT5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Feb 2023 10:27:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59291

--bzGztlb5atxCTZ61DJT5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I know that this might be an old thread but we seem to deal the exact same =
issue in our yocto builds, that's why I am writing here.
Recently we switched from sumo yocto branch to dunfel.
Now some recipes with nothing special in it, just compile and install, are =
failing in the install phase because of pseudo abort.
Those recipes are installing via the do_install some headers files into the=
 usr/include folder and later those headers are share via the sysroot to ot=
her recipes.

I read what has been written above but I didn't see a final solution. So I =
am also trying to understand the error in order to find a solution.
If we do a clean build=C2=A0=C2=A0(bitbake lib32-las -c cleansstate) then t=
he recipe compiles fines. But if we invoke the building without the cleasst=
ate the recipe fails in install phase due to pseudo.

Install error:
--------------------------------------------

+ install -m 0644 WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_=
list.h WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_pdinc.h WOR=
KDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_util.h WORKDIR/lib32-=
las/M-WBS0.1-r0/git/lasiflib/include/lasif_varmsg.h WORKDIR/lib32-las/M-WBS=
0.1-r0/image/usr/include

abort()ing pseudo client by server request. See https://wiki.yoctoproject.o=
rg/wiki/Pseudo_Abort for more details on this.

Check logfile: WORDIR/lib32-las/M-WBS0.1-r0/pseudo//pseudo.log

Aborted (core dumped)

+ bb_exit_handler

+ ret=3D134

+ echo WARNING: exit code 134 from a shell command.

WARNING: exit code 134 from a shell command.

+ exit 134

---------------------------------------------------------------------------=
------

And pseudo log error output:

------------------------------------------------------------------

pid 26345 [parent 26344], doing new pid setup and server start

Setup complete, sending SIGUSR1 to pid 26344.

path mismatch [3 links]: ino 7868999 db 'WORKDIR/lib32-las/M-WBS0.1-r0/pack=
age/usr/src/debug/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.h' =
req 'WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.h'.

db cleanup for server shutdown, 08:38:52.482

memory-to-file backup complete, 08:38:52.482.

db cleanup finished, 08:38:52.482

debug_logfile: fd 2

pid 6423 [parent 6422], doing new pid setup and server start

Setup complete, sending SIGUSR1 to pid 6422.

path mismatch [3 links]: ino 7868999 db 'WORKDIR/lib32-las/M-WBS0.1-r0/pack=
age/usr/src/debug/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.h' =
req 'WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.h'.

db cleanup for server shutdown, 09:13:45.899

memory-to-file backup complete, 09:13:45.899.

db cleanup finished, 09:13:45.899

---------------------------------------------------------------------------=
--------------------------------------------------------

I added the export PSEUDO_DEBUG =3D "nfoPcvdDyerpswikVx" in the recipe but =
I couldn't understand much.
In the whole build we have the RM_WORK enabled but for that current recipe =
we have excluded it.

Also the task order is the following:

do_cleansstate (20698): log.do_cleansstate.20698
do_cleanall (22404): log.do_cleanall.22404
do_rm_work (24346): log.do_rm_work.24346
do_fetch (24434): log.do_fetch.24434
do_prepare_recipe_sysroot (24465): log.do_prepare_recipe_sysroot.24465
do_unpack (24466): log.do_unpack.24466
do_patch (24493): log.do_patch.24493
do_populate_lic (24665): log.do_populate_lic.24665
do_deploy_source_date_epoch (24666): log.do_deploy_source_date_epoch.24666
do_configure (24765): log.do_configure.24765
do_compile (24809): log.do_compile.24809
do_install (27477): log.do_install.27477
do_populate_sysroot (27510): log.do_populate_sysroot.27510
do_package (27509): log.do_package.27509
do_packagedata (29544): log.do_packagedata.29544
do_package_qa (29592): log.do_package_qa.2959
do_package_write_ipk (29593): log.do_package_write_ipk.29593

Ok build till now.

Next invocation

do_prepare_recipe_sysroot (23311): log.do_prepare_recipe_sysroot.23311
do_configure (23769): log.do_configure.23769
do_compile (24132): log.do_compile.24132
do_install (26628): log.do_install.26628
do_install (32535): log.do_install.32535
do_install (4454): log.do_install.4454
do_install (26343): log.do_install.26343
do_rm_work (4905): log.do_rm_work.4905
do_deploy_source_date_epoch (4919): log.do_deploy_source_date_epoch.4919
do_configure (4954): log.do_configure.4954
do_compile (5003): log.do_compile.5003
do_install (6421): log.do_install.6421

All above are failures in do_install phase. You see multiple invocations tr=
ying to fix the error and adding more debug.
If I don't do a cleansstate or cleanall the recipe is not building.
We do not delete or manipulate any files in the WORKDIR folder. We might on=
ly *copy* some files after the end of the build in some folders outside of =
yocto. So the WORKDIR structure remains untouched from our actions.

In sumo branch we did not have those issues. So something seems to have bee=
n changed in between. Right now the dunfell used branch is=C2=A0dunfell-23.=
0.21 and the latest is=C2=A0dunfell-23.0.22 but I don't see a pseudo fix or=
 something similar.

I could also use RM_WORK to that recipe and clean it after build, so the er=
ror would disappear but it would be good to understand what is the problem =
here.

If requested I can also sent the full log of install along with the pseudo =
debug output.

Rusty Howell did you solve your problem and how?

Thanks a lot,
Any suggestions would be=C2=A0highly appreciated,
Panagiotis Tamtamis

--bzGztlb5atxCTZ61DJT5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,<br /><br />I know that this might be an old thread but we seem to=
 deal the exact same issue in our yocto builds, that's why I am writing her=
e.<br />Recently we switched from sumo yocto branch to dunfel.<br />Now som=
e recipes with nothing special in it, just compile and install, are failing=
 in the install phase because of pseudo abort.<br />Those recipes are insta=
lling via the do_install some headers files into the usr/include folder and=
 later those headers are share via the sysroot to other recipes.</p>
<p>I read what has been written above but I didn't see a final solution. So=
 I am also trying to understand the error in order to find a solution.<br /=
>If we do a clean build&nbsp;&nbsp;(bitbake lib32-las -c cleansstate) then =
the recipe compiles fines. But if we invoke the building without the cleass=
tate the recipe fails in install phase due to pseudo.</p>
<p><br />Install error:<br />--------------------------------------------</=
p>
<p>+ install -m 0644 WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/las=
if_list.h WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_pdinc.h =
WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_util.h WORKDIR/lib=
32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_varmsg.h WORKDIR/lib32-las/M-=
WBS0.1-r0/image/usr/include</p>
<p>&nbsp;</p>
<p>abort()ing pseudo client by server request. See https://wiki.yoctoprojec=
t.org/wiki/Pseudo_Abort for more details on this.</p>
<p>Check logfile: WORDIR/lib32-las/M-WBS0.1-r0/pseudo//pseudo.log</p>
<p>&nbsp;</p>
<p>Aborted (core dumped)</p>
<p>+ bb_exit_handler</p>
<p>+ ret=3D134</p>
<p>+ echo WARNING: exit code 134 from a shell command.</p>
<p>WARNING: exit code 134 from a shell command.</p>
<p>+ exit 134</p>
<p>------------------------------------------------------------------------=
---------</p>
<p>And pseudo log error output:</p>
<p>------------------------------------------------------------------</p>
<p>pid 26345 [parent 26344], doing new pid setup and server start</p>
<p>Setup complete, sending SIGUSR1 to pid 26344.</p>
<p>path mismatch [3 links]: ino 7868999 db 'WORKDIR/lib32-las/M-WBS0.1-r0/p=
ackage/usr/src/debug/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.=
h' req 'WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.h'.</=
p>
<p>db cleanup for server shutdown, 08:38:52.482</p>
<p>memory-to-file backup complete, 08:38:52.482.</p>
<p>db cleanup finished, 08:38:52.482</p>
<p>debug_logfile: fd 2</p>
<p>pid 6423 [parent 6422], doing new pid setup and server start</p>
<p>Setup complete, sending SIGUSR1 to pid 6422.</p>
<p>path mismatch [3 links]: ino 7868999 db 'WORKDIR/lib32-las/M-WBS0.1-r0/p=
ackage/usr/src/debug/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.=
h' req 'WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.h'.</=
p>
<p>db cleanup for server shutdown, 09:13:45.899</p>
<p>memory-to-file backup complete, 09:13:45.899.</p>
<p>db cleanup finished, 09:13:45.899</p>
<p>------------------------------------------------------------------------=
-----------------------------------------------------------<br /><br />I ad=
ded the&nbsp;<span style=3D"color: #000000; font-family: sans-serif; font-s=
ize: 12.7px;">export PSEUDO_DEBUG =3D "nfoPcvdDyerpswikVx"&nbsp;</span>in t=
he recipe but I couldn't understand much.<br />In the whole build we have t=
he RM_WORK enabled but for that current recipe we have excluded it.</p>
<p>Also the task order is the following:</p>
<p>do_cleansstate (20698): log.do_cleansstate.20698<br />do_cleanall (22404=
): log.do_cleanall.22404<br />do_rm_work (24346): log.do_rm_work.24346<br /=
>do_fetch (24434): log.do_fetch.24434<br />do_prepare_recipe_sysroot (24465=
): log.do_prepare_recipe_sysroot.24465<br />do_unpack (24466): log.do_unpac=
k.24466<br />do_patch (24493): log.do_patch.24493<br />do_populate_lic (246=
65): log.do_populate_lic.24665<br />do_deploy_source_date_epoch (24666): lo=
g.do_deploy_source_date_epoch.24666<br />do_configure (24765): log.do_confi=
gure.24765<br />do_compile (24809): log.do_compile.24809<br />do_install (2=
7477): log.do_install.27477<br />do_populate_sysroot (27510): log.do_popula=
te_sysroot.27510<br />do_package (27509): log.do_package.27509<br />do_pack=
agedata (29544): log.do_packagedata.29544<br />do_package_qa (29592): log.d=
o_package_qa.2959<br />do_package_write_ipk (29593): log.do_package_write_i=
pk.29593<br /><br />Ok build till now.</p>
<p>Next invocation</p>
<p>do_prepare_recipe_sysroot (23311): log.do_prepare_recipe_sysroot.23311<b=
r />do_configure (23769): log.do_configure.23769<br />do_compile (24132): l=
og.do_compile.24132<br />do_install (26628): log.do_install.26628<br />do_i=
nstall (32535): log.do_install.32535<br />do_install (4454): log.do_install=
.4454<br />do_install (26343): log.do_install.26343<br />do_rm_work (4905):=
 log.do_rm_work.4905<br />do_deploy_source_date_epoch (4919): log.do_deploy=
_source_date_epoch.4919<br />do_configure (4954): log.do_configure.4954<br =
/>do_compile (5003): log.do_compile.5003<br />do_install (6421): log.do_ins=
tall.6421</p>
<p>All above are failures in do_install phase. You see multiple invocations=
 trying to fix the error and adding more debug.<br />If I don't do a cleans=
state or cleanall the recipe is not building.<br />We do not delete or mani=
pulate any files in the WORKDIR folder. We might only <strong>copy</strong>=
 some files after the end of the build in some folders outside of yocto. So=
 the WORKDIR structure remains untouched from our actions.</p>
<p>In sumo branch we did not have those issues. So something seems to have =
been changed in between. Right now the dunfell used branch is&nbsp;dunfell-=
23.0.21 and the latest is&nbsp;dunfell-23.0.22 but I don't see a pseudo fix=
 or something similar.</p>
<p>I could also use RM_WORK to that recipe and clean it after build, so the=
 error would disappear but it would be good to understand what is the probl=
em here.</p>
<p>If requested I can also sent the full log of install along with the pseu=
do debug output.<br /><br />Rusty Howell did you solve your problem and how=
?</p>
<p>Thanks a lot,<br />Any suggestions would be&nbsp;highly appreciated,<br =
/>Panagiotis Tamtamis</p>

--bzGztlb5atxCTZ61DJT5--

