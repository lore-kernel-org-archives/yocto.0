Return-Path: <stephan.muehlstrasser@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91447C3DA6F
	for <webhook@archiver.kernel.org>; Fri, 25 Aug 2023 09:20:04 +0000 (UTC)
Subject: "Replicating a Build Offline" not working as expected when Git data is removed
To: yocto@lists.yoctoproject.org
From: "Stephan M" <stephan.muehlstrasser@gmail.com>
X-Originating-Location: Uetersen, Schleswig-Holstein, DE (62.246.58.80)
X-Originating-Platform: Windows Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 25 Aug 2023 02:19:58 -0700
Message-ID: <o2S3.1692955198371059896.EMq5@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fj0lVevfSr3sU0aWGXg8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 09:20:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60889

--fj0lVevfSr3sU0aWGXg8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to follow the steps to replicate a build offline: https://docs.y=
octoproject.org/4.2.2/dev-manual/building.html?highlight=3Dbb_no_network#re=
plicating-a-build-offline

This is not working as expected. Originally I ran into this with NXP's mick=
ledore build, but I can replicate that with a plain mickledore poky environ=
ment.

In the documentation it says:

Optionally Remove Any Git or other SCM Subdirectories From the Downloads Di=
rectory: If you want, you can clean up your downloads directory by removing=
 any Git or other Source Control Management (SCM) subdirectories such as ${=
DL_DIR}/git2/*. ...

When I do that, the offline build breaks. Without that step it succeeds.

I did the following:

~/src$ git clone -b mickledore-4.2.2 https://git.yoctoproject.org/poky
Cloning into 'poky'...
...
~/src$ cd poky/
~/src/poky$ . oe-init-build-env

You had no conf/local.conf file. This configuration file has therefore been

created for you from /home/stm/src/poky/meta-poky/conf/templates/default/lo=
cal.conf.sample

You may wish to edit it to, for example, select a different MACHINE (target

hardware).
...

# Now edited=C2=A0conf/local.conf and added: BB_GENERATE_MIRROR_TARBALLS =
=3D "1"

~/src/poky/build$ bitbake core-image-minimal --runonly=3Dfetch

# All the packages are downloaded and tar files are created in ${TOPDIR}/do=
wnloads
# Now I remove the Git data from the "downloads" directory:

~/src/poky/build$ rm -rf downloads/git2/*

# Now I edit conf/local.conf again and add the following according to the d=
ocumentation
# SOURCE_MIRROR_URL ?=3D "file://${TOPDIR}/downloads/"

# INHERIT +=3D "own-mirrors"

# BB_NO_NETWORK =3D "1"

~/src/poky/build$ tail -10 conf/local.conf

# CONF_VERSION is increased each time build/conf/ changes incompatibly and =
is used to

# track the version of this file when it was generated. This can safely be =
ignored if

# this doesn't mean anything to you.

CONF_VERSION =3D "2"

BB_GENERATE_MIRROR_TARBALLS =3D "1"

SOURCE_MIRROR_URL ?=3D "file://${TOPDIR}/downloads/"

INHERIT +=3D "own-mirrors"

BB_NO_NETWORK =3D "1"

# An attempt to run the build fails early with these error messages:

~/src/poky/build$ bitbake core-image-minimal

Loading cache: 100% |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| ETA:=C2=A0 --:--:--

Loaded 0 entries from dependency cache.

Parsing recipes: 100% |####################################################=
##############################| Time: 0:00:07

Parsing of 899 .bb files complete (0 cached, 899 parsed). 1799 targets, 49 =
skipped, 0 masked, 0 errors.

NOTE: Resolving any missing task queue dependencies

Build Configuration:

BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "2.4.0"

BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"

NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "universal"

TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-poky-linux"

MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "qemux86-64"

DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"

DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "4.2.2"

TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "m64 core2"

TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D ""

meta

meta-poky

meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "HEAD:6e17b3e644ca15b8b4afd071=
ccaa6f172a0e681a"

Initialising tasks: 100% |#################################################=
##############################| Time: 0:00:01

Sstate summary: Wanted 1074 Local 0 Mirrors 0 Missed 1074 Current 0 (0% mat=
ch, 0% complete)

NOTE: Executing Tasks

ERROR: gnu-config-native-20230216+gitAUTOINC+63acb96f92-r0 do_unpack: Bitba=
ke Fetcher Error: UnpackError('No up to date source found: clone directory =
not available or not up to date: /home/stm/src/poky/build/downloads/git2/gi=
t.savannah.gnu.org.git.config.git; shallow clone not enabled', 'git://git.s=
avannah.gnu.org/git/config.git;protocol=3Dhttps;branch=3Dmaster')

ERROR: Logfile of failure stored in: /home/stm/src/poky/build/tmp/work/x86_=
64-linux/gnu-config-native/20230216+gitAUTOINC+63acb96f92-r0/temp/log.do_un=
pack.19635

ERROR: Task (virtual:native:/home/stm/src/poky/meta/recipes-devtools/gnu-co=
nfig/gnu-config_git.bb:do_unpack) failed with exit code '1'

ERROR: pkgconfig-native-0.29.2+gitAUTOINC+d97db4fae4-r0 do_unpack: Bitbake =
Fetcher Error: UnpackError('No up to date source found: clone directory not=
 available or not up to date: /home/stm/src/poky/build/downloads/git2/gitla=
b.freedesktop.org.pkg-config.pkg-config.git; shallow clone not enabled', 'g=
it://gitlab.freedesktop.org/pkg-config/pkg-config.git;branch=3Dmaster;proto=
col=3Dhttps')

ERROR: Logfile of failure stored in: /home/stm/src/poky/build/tmp/work/x86_=
64-linux/pkgconfig-native/0.29.2+gitAUTOINC+d97db4fae4-r0/temp/log.do_unpac=
k.19647

ERROR: Task (virtual:native:/home/stm/src/poky/meta/recipes-devtools/pkgcon=
fig/pkgconfig_git.bb:do_unpack) failed with exit code '1'

NOTE: Tasks Summary: Attempted 44 tasks of which 22 didn't need to be rerun=
 and 2 failed.

Summary: 2 tasks failed:

virtual:native:/home/stm/src/poky/meta/recipes-devtools/gnu-config/gnu-conf=
ig_git.bb:do_unpack

virtual:native:/home/stm/src/poky/meta/recipes-devtools/pkgconfig/pkgconfig=
_git.bb:do_unpack

Summary: There were 2 ERROR messages, returning a non-zero exit code.

Am I doing something wrong, or is this a bug?

The background for these experiments is the question how to guarantee long-=
term reproducibility of our Yocto project builds. My current idea is to pre=
serve the "downloads" directory as a separate Git repository, maybe using G=
it LFS. Is this a good or bad idea?

I read of course https://docs.yoctoproject.org/4.2.2/test-manual/reproducib=
le-builds.html?highlight=3Dreproducibility#reproducible-builds , but my con=
cern are the downloaded packages. If I try to reproduce a certain build 5 o=
r 10 years from now, it might no longer be possible to download all the rel=
evant packages if I want to create a build environment from scratch.

Thanks
Stephan

--fj0lVevfSr3sU0aWGXg8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">Hi,</span><br style=3D"color: #222222; font-family: Arial=
, Helvetica, sans-serif; font-size: small;" /><br style=3D"color: #222222; =
font-family: Arial, Helvetica, sans-serif; font-size: small;" /><span style=
=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: s=
mall;">I'm trying to follow the steps to replicate a build offline: https:/=
/docs.yoctoproject.org/4.2.2/dev-manual/building.html?highlight=3Dbb_no_net=
work#replicating-a-build-offline</span><br style=3D"color: #222222; font-fa=
mily: Arial, Helvetica, sans-serif; font-size: small;" /><br style=3D"color=
: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small;" />=
<span style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">This is not working as expected. Originally I ran into th=
is with NXP's mickledore build, but I can replicate that with a plain mickl=
edore poky environment.<br /><br /></span><span style=3D"color: #222222; fo=
nt-family: Arial, Helvetica, sans-serif; font-size: small;">In the document=
ation it says:<br /><br /></span>
<p style=3D"line-height: 24px; margin-bottom: 0px;"><em style=3D"font-weigh=
t: bold;">Optionally Remove Any Git or other SCM Subdirectories From the Do=
wnloads Directory:</em>&nbsp;If you want, you can clean up your downloads d=
irectory by removing any Git or other Source Control Management (SCM) subdi=
rectories such as&nbsp;<code class=3D"docutils literal notranslate" style=
=3D"font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono'=
, 'Courier New', Courier, monospace; font-size: 13.6px; max-width: 100%; ba=
ckground: inherit; border: none; padding: unset; color: inherit; overflow-x=
: auto;"><span class=3D"pre" style=3D"font-size: medium; font-family: Couri=
er, monospace;">${DL_DIR}/git2/*</span></code>. ...<br /><br />When I do th=
at, the offline build breaks. Without that step it succeeds.<br /><br />I d=
id the following:<br /><br />~/src$ git clone -b mickledore-4.2.2 https://g=
it.yoctoproject.org/poky<br />Cloning into 'poky'...<br />...<br />~/src$ c=
d poky/<br />~/src/poky$ . oe-init-build-env</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">You had no conf/local.c=
onf file. This configuration file has therefore been</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">created for you from /h=
ome/stm/src/poky/meta-poky/conf/templates/default/local.conf.sample</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">You may wish to edit it=
 to, for example, select a different MACHINE (target</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">hardware).<br />...<br =
/><br /># Now edited&nbsp;conf/local.conf and added: BB_GENERATE_MIRROR_TAR=
BALLS =3D "1"<br /><br />~/src/poky/build$ bitbake core-image-minimal --run=
only=3Dfetch<br /><br /># All the packages are downloaded and tar files are=
 created in ${TOPDIR}/downloads<br /># Now I remove the Git data from the "=
downloads" directory:<br /><br />~/src/poky/build$ rm -rf downloads/git2/*<=
br /><br /># Now I edit conf/local.conf again and add the following accordi=
ng to the documentation<br /># SOURCE_MIRROR_URL ?=3D "file://${TOPDIR}/dow=
nloads/"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;"># INHERIT +=3D "own-mir=
rors"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;"># BB_NO_NETWORK =3D "1"=
<br /><br /></p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">~/src/poky/build$ tail =
-10 conf/local.conf</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;"># CONF_VERSION is incre=
ased each time build/conf/ changes incompatibly and is used to</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;"># track the version of =
this file when it was generated. This can safely be ignored if</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;"># this doesn't mean any=
thing to you.</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">CONF_VERSION =3D "2"</p=
>
<p style=3D"line-height: 24px; margin-bottom: 0px;">&nbsp;</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">BB_GENERATE_MIRROR_TARB=
ALLS =3D "1"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">SOURCE_MIRROR_URL ?=3D =
"file://${TOPDIR}/downloads/"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">INHERIT +=3D "own-mirro=
rs"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">BB_NO_NETWORK =3D "1"</=
p>
<div>&nbsp;</div>
<p style=3D"line-height: 24px; margin-bottom: 0px;"># An attempt to run the=
 build fails early with these error messages:<br /><br /></p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">~/src/poky/build$ bitba=
ke core-image-minimal</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">Loading cache: 100% |&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| ETA:&nb=
sp; --:--:--</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">Loaded 0 entries from d=
ependency cache.</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">Parsing recipes: 100% |=
###########################################################################=
#######| Time: 0:00:07</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">Parsing of 899 .bb file=
s complete (0 cached, 899 parsed). 1799 targets, 49 skipped, 0 masked, 0 er=
rors.</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">NOTE: Resolving any mis=
sing task queue dependencies</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">&nbsp;</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">Build Configuration:</p=
>
<p style=3D"line-height: 24px; margin-bottom: 0px;">BB_VERSION&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;=3D "2.4.0"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">BUILD_SYS&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-linux"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">NATIVELSBSTRING&nbsp; &=
nbsp; &nbsp; =3D "universal"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">TARGET_SYS&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;=3D "x86_64-poky-linux"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">MACHINE&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "qemux86-64"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">DISTRO&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">DISTRO_VERSION&nbsp; &n=
bsp; &nbsp; &nbsp;=3D "4.2.2"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">TUNE_FEATURES&nbsp; &nb=
sp; &nbsp; &nbsp; =3D "m64 core2"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">TARGET_FPU&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;=3D ""</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">meta</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">meta-poky</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">meta-yocto-bsp&nbsp; &n=
bsp; &nbsp; &nbsp;=3D "HEAD:6e17b3e644ca15b8b4afd071ccaa6f172a0e681a"</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">&nbsp;</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">Initialising tasks: 100=
% |########################################################################=
#######| Time: 0:00:01</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">Sstate summary: Wanted =
1074 Local 0 Mirrors 0 Missed 1074 Current 0 (0% match, 0% complete)</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">NOTE: Executing Tasks</=
p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">ERROR: gnu-config-nativ=
e-20230216+gitAUTOINC+63acb96f92-r0 do_unpack: Bitbake Fetcher Error: Unpac=
kError('No up to date source found: clone directory not available or not up=
 to date: /home/stm/src/poky/build/downloads/git2/git.savannah.gnu.org.git.=
config.git; shallow clone not enabled', 'git://git.savannah.gnu.org/git/con=
fig.git;protocol=3Dhttps;branch=3Dmaster')</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">ERROR: Logfile of failu=
re stored in: /home/stm/src/poky/build/tmp/work/x86_64-linux/gnu-config-nat=
ive/20230216+gitAUTOINC+63acb96f92-r0/temp/log.do_unpack.19635</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">ERROR: Task (virtual:na=
tive:/home/stm/src/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:=
do_unpack) failed with exit code '1'</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">ERROR: pkgconfig-native=
-0.29.2+gitAUTOINC+d97db4fae4-r0 do_unpack: Bitbake Fetcher Error: UnpackEr=
ror('No up to date source found: clone directory not available or not up to=
 date: /home/stm/src/poky/build/downloads/git2/gitlab.freedesktop.org.pkg-c=
onfig.pkg-config.git; shallow clone not enabled', 'git://gitlab.freedesktop=
.org/pkg-config/pkg-config.git;branch=3Dmaster;protocol=3Dhttps')</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">ERROR: Logfile of failu=
re stored in: /home/stm/src/poky/build/tmp/work/x86_64-linux/pkgconfig-nati=
ve/0.29.2+gitAUTOINC+d97db4fae4-r0/temp/log.do_unpack.19647</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">ERROR: Task (virtual:na=
tive:/home/stm/src/poky/meta/recipes-devtools/pkgconfig/pkgconfig_git.bb:do=
_unpack) failed with exit code '1'</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">NOTE: Tasks Summary: At=
tempted 44 tasks of which 22 didn't need to be rerun and 2 failed.</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">&nbsp;</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">Summary: 2 tasks failed=
:</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">&nbsp; virtual:native:/=
home/stm/src/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_unp=
ack</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">&nbsp; virtual:native:/=
home/stm/src/poky/meta/recipes-devtools/pkgconfig/pkgconfig_git.bb:do_unpac=
k</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">Summary: There were 2 E=
RROR messages, returning a non-zero exit code.</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">&nbsp;</p>
<p style=3D"line-height: 24px; margin-bottom: 0px;">Am I doing something wr=
ong, or is this a bug?<br /><br />The background for these experiments is t=
he question how to guarantee long-term reproducibility of our Yocto project=
 builds. My current idea is to preserve the "downloads" directory as a sepa=
rate Git repository, maybe using Git LFS. Is this a good or bad idea?<br />=
<br />I read of course&nbsp;<a href=3D"https://docs.yoctoproject.org/4.2.2/=
test-manual/reproducible-builds.html?highlight=3Dreproducibility#reproducib=
le-builds" target=3D"_blank" rel=3D"noopener">https://docs.yoctoproject.org=
/4.2.2/test-manual/reproducible-builds.html?highlight=3Dreproducibility#rep=
roducible-builds</a>&nbsp;, but my concern are the downloaded packages. If =
I try to reproduce a certain build 5 or 10 years from now, it might no long=
er be possible to download all the relevant packages if I want to create a =
build environment from scratch.<br /><br />Thanks<br />Stephan<br /><br /><=
br /></p>

--fj0lVevfSr3sU0aWGXg8--

