Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE57C3ABC3
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 17:44:06 +0000 (UTC)
Subject: bb.fetch2.ParameterError....Unsupported dependency....  #bitbake #devtool #npm
To: yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Eden Prairie, Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 12 May 2025 10:43:58 -0700
Message-ID: <fRbk.1747071838718951014.U6ma@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JhB9IWSFROQ1YMdTljFt"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 17:44:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65316

--JhB9IWSFROQ1YMdTljFt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Full error: bb.fetch2.ParameterError: URL: 'npmsw:///home/user/eps-yocto/bu=
ild/exos-x-vanadium-bmc/tmp/work/recipetool-uizo5dj0/source/git/npm-shrinkw=
rap.json' has invalid parameters. Unsupported dependency: @babel/helper-str=
ing-parser

I have a 15 year plus code base that my group wants me to try to get going =
in another team's yocto setup. I'm pretty sure this issue mostly boils down=
 to this codebase being very incompatible with how yocto/bitbake does thing=
s? It reaches out to install npm for example and various other web related =
libraries. It's an old Makefile(I want to use these issues as an excuse to =
port to CMAKE) project.

I'm trying to use https://wiki.yoctoproject.org/wiki/images/f/f3/DD9_Devtoo=
l_NA20.pdf and https://www.youtube.com/watch?v=3DCiD7rB35CRE to even do a h=
andful of steps and I fail to accomplish even that.

I can bitbake what is currently in our repo, I can bitbake the sdk(non-exte=
nded). I successfully added a workspace, and when I try to execute 'devtool=
 add' to either remotely collect the git repo of my app, or a fresh local v=
ersion, both fail with the following backtrace. I know very little about bi=
tbake and to be honest, the documentation feels like trying to get a sip of=
 water from a fire hydrant. It wasn't until seeing devtool that it seemed t=
here was something that allowed someone to actually just dive in and I gues=
s that was wrong. All I know is that I was attempting to use devtool to pro=
grammatically generate my .bb for me, or at least get me started.

This npm-shrinkwrap.json doesn't exist in the repo permanently and appears =
to be something that gets created/destroyed as part of our npm check-out.

Full trace:
Traceback (most recent call last):
File "/home/user/eps-yocto/scripts/recipetool", line 111, in <module>
ret =3D main()
File "/home/user/eps-yocto/scripts/recipetool", line 100, in main
ret =3D args.func(args)
File "/home/user/eps-yocto/poky/scripts/lib/recipetool/create.py", line 758=
, in create_recipe
handler.process(srctree_use, classes, lines_before, lines_after, handled, e=
xtravalues)
File "/home/user/eps-yocto/poky/scripts/lib/recipetool/create_npm.py", line=
 264, in process
fetcher =3D bb.fetch2.Fetch([url_local], d)
File "/home/user/eps-yocto/poky/bitbake/lib/bb/fetch2/__init__.py", line 17=
94, in __init__
self.ud[url] =3D FetchData(url, d, localonly)
File "/home/user/eps-yocto/poky/bitbake/lib/bb/fetch2/__init__.py", line 13=
46, in __init__
self.method.urldata_init(self, d)
File "/home/user/eps-yocto/poky/bitbake/lib/bb/fetch2/npmsw.py", line 210, =
in urldata_init
foreach_dependencies(shrinkwrap, _resolve_dependency, ud.dev)
File "/home/user/eps-yocto/poky/bitbake/lib/bb/fetch2/npmsw.py", line 69, i=
n foreach_dependencies
callback(name, package_infos, package)
File "/home/user/eps-yocto/poky/bitbake/lib/bb/fetch2/npmsw.py", line 192, =
in _resolve_dependency
raise ParameterError("Unsupported dependency: %s" % name, ud.url)
bb.fetch2.ParameterError: URL: 'npmsw:///home/user/eps-yocto/build/exos-x-v=
anadium-bmc/tmp/work/recipetool-uizo5dj0/source/git/npm-shrinkwrap.json' ha=
s invalid parameters. Unsupported dependency: @babel/helper-string-parser
ERROR: Command 'script -e -q -c "recipetool --color=3Dalways create --devto=
ol -o /tmp/devtooli6tqqg15 'https://lco-sw-github-prod.colo.nlah.com/System=
s-FW/mclinux.git' =C2=A0-x /home/user/eps-yocto/build/exos-x-vanadium-bmc/w=
orkspace/sources/devtoolsrc6qxi_qjz --srcbranch main" /dev/null' failed

--JhB9IWSFROQ1YMdTljFt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Full error: bb.fetch2.ParameterError: URL: 'npmsw:///home/user/eps-yoc=
to/build/exos-x-vanadium-bmc/tmp/work/recipetool-uizo5dj0/source/git/npm-sh=
rinkwrap.json' has invalid parameters. Unsupported dependency: @babel/helpe=
r-string-parser</div>
<div>&nbsp;</div>
<div>I have a 15 year plus code base that my group wants me to try to get g=
oing in another team's yocto setup. I'm pretty sure this issue mostly boils=
 down to this codebase being very incompatible with how yocto/bitbake does =
things? It reaches out to install npm for example and various other web rel=
ated libraries. It's an old Makefile(I want to use these issues as an excus=
e to port to CMAKE) project.</div>
<div>&nbsp;</div>
<div>I'm trying to use <a href=3D"https://wiki.yoctoproject.org/wiki/images=
/f/f3/DD9_Devtool_NA20.pdf" target=3D"_blank" rel=3D"noopener">https://wiki=
.yoctoproject.org/wiki/images/f/f3/DD9_Devtool_NA20.pdf</a> and &nbsp;<a hr=
ef=3D"https://www.youtube.com/watch?v=3DCiD7rB35CRE" target=3D"_blank" rel=
=3D"noopener">https://www.youtube.com/watch?v=3DCiD7rB35CRE</a> to even do =
a handful of steps and I fail to accomplish even that.</div>
<div>&nbsp;</div>
<div>I can bitbake what is currently in our repo, I can bitbake the sdk(non=
-extended). I successfully added a workspace, and when I try to execute 'de=
vtool add' to either remotely collect the git repo of my app, or a fresh lo=
cal version, both fail with the following backtrace. I know very little abo=
ut bitbake and to be honest, the documentation feels like trying to get a s=
ip of water from a fire hydrant. It wasn't until seeing devtool that it see=
med there was something that allowed someone to actually just dive in and I=
 guess that was wrong. All I know is that I was attempting to use devtool t=
o programmatically generate my .bb for me, or at least get me started.</div=
>
<div>&nbsp;</div>
<div>This npm-shrinkwrap.json doesn't exist in the repo permanently and app=
ears to be something that gets created/destroyed as part of our npm check-o=
ut.</div>
<div>&nbsp;</div>
<div>Full trace:<br />Traceback (most recent call last):<br />&nbsp; File "=
/home/user/eps-yocto/scripts/recipetool", line 111, in &lt;module&gt;<br />=
&nbsp; &nbsp; ret =3D main()<br />&nbsp; File "/home/user/eps-yocto/scripts=
/recipetool", line 100, in main<br />&nbsp; &nbsp; ret =3D args.func(args)<=
br />&nbsp; File "/home/user/eps-yocto/poky/scripts/lib/recipetool/create.p=
y", line 758, in create_recipe<br />&nbsp; &nbsp; handler.process(srctree_u=
se, classes, lines_before, lines_after, handled, extravalues)<br />&nbsp; F=
ile "/home/user/eps-yocto/poky/scripts/lib/recipetool/create_npm.py", line =
264, in process<br />&nbsp; &nbsp; fetcher =3D bb.fetch2.Fetch([url_local],=
 d)<br />&nbsp; File "/home/user/eps-yocto/poky/bitbake/lib/bb/fetch2/__ini=
t__.py", line 1794, in __init__<br />&nbsp; &nbsp; self.ud[url] =3D FetchDa=
ta(url, d, localonly)<br />&nbsp; File "/home/user/eps-yocto/poky/bitbake/l=
ib/bb/fetch2/__init__.py", line 1346, in __init__<br />&nbsp; &nbsp; self.m=
ethod.urldata_init(self, d)<br />&nbsp; File "/home/user/eps-yocto/poky/bit=
bake/lib/bb/fetch2/npmsw.py", line 210, in urldata_init<br />&nbsp; &nbsp; =
foreach_dependencies(shrinkwrap, _resolve_dependency, ud.dev)<br />&nbsp; F=
ile "/home/user/eps-yocto/poky/bitbake/lib/bb/fetch2/npmsw.py", line 69, in=
 foreach_dependencies<br />&nbsp; &nbsp; callback(name, package_infos, pack=
age)<br />&nbsp; File "/home/user/eps-yocto/poky/bitbake/lib/bb/fetch2/npms=
w.py", line 192, in _resolve_dependency<br />&nbsp; &nbsp; raise ParameterE=
rror("Unsupported dependency: %s" % name, ud.url)<br />bb.fetch2.ParameterE=
rror: URL: 'npmsw:///home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp/work=
/recipetool-uizo5dj0/source/git/npm-shrinkwrap.json' has invalid parameters=
. Unsupported dependency: @babel/helper-string-parser<br />ERROR: Command '=
script -e -q -c "recipetool --color=3Dalways create --devtool -o /tmp/devto=
oli6tqqg15 'https://lco-sw-github-prod.colo.nlah.com/Systems-FW/mclinux.git=
' &nbsp;-x /home/user/eps-yocto/build/exos-x-vanadium-bmc/workspace/sources=
/devtoolsrc6qxi_qjz --srcbranch main" /dev/null' failed</div>

--JhB9IWSFROQ1YMdTljFt--

