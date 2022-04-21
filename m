Return-Path: <mabnhdev@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15326C8303F
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:13 +0000 (UTC)
Subject: What happened to packages __init__.py? #python #dunfell #python
To: yocto@lists.yoctoproject.org
From: "MikeB" <mabnhdev@gmail.com>
X-Originating-Location: US (134.141.116.6)
X-Originating-Platform: Windows Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 21 Apr 2022 07:27:17 -0700
Message-ID: <2fsr.1650551237978143791.8VeD@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7bR1h52pJzF78YfdR6Vj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56829

--7bR1h52pJzF78YfdR6Vj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm working with multiple platforms on dunfell.

I'm having trouble understanding the installation step of a couple of pthon=
3 packages - namely python3-zc-lockfile and python3-jaraco-functools.=C2=A0=
 In both cases, the install function skips installing an __init__.py file w=
hich messes up my package use.

From the logs, I see the messages below.

Can someone explain why the installation of __init__.py and how I could mod=
ify the recipe so these __init__py files are installed?

Thanks!.

```
DEBUG: Python function extend_recipe_sysroot finished
DEBUG: Executing shell function do_install
running build
running build_py
running egg_info
writing jaraco.functools.egg-info/PKG-INFO
writing dependency_links to jaraco.functools.egg-info/dependency_links.txt
writing namespace_packages to jaraco.functools.egg-info/namespace_packages.=
txt
writing requirements to jaraco.functools.egg-info/requires.txt
writing top-level names to jaraco.functools.egg-info/top_level.txt
reading manifest file 'jaraco.functools.egg-info/SOURCES.txt'
writing manifest file 'jaraco.functools.egg-info/SOURCES.txt'
running install
running install_lib
copying jaraco/functools.py -> /data/mabnhdev/test-yocto-321/build/test-x86=
-64/tmp/work/x86_64-poky-linux/python3-jaraco-functools/1.20-r0/image/usr/l=
ib/python3.8/site-packages/jaraco
Skipping installation of /data/mabnhdev/test-yocto-321/build/test-x86-64/tm=
p/work/x86_64-poky-linux/python3-jaraco-functools/1.20-r0/image/usr/lib/pyt=
hon3.8/site-packages/jaraco/__init__.py (namespace package)
...
```

```
DEBUG: Python function extend_recipe_sysroot finished
DEBUG: Executing shell function do_install
running build
running build_py
running egg_info
writing src/zc.lockfile.egg-info/PKG-INFO
writing dependency_links to src/zc.lockfile.egg-info/dependency_links.txt
writing namespace_packages to src/zc.lockfile.egg-info/namespace_packages.t=
xt
writing requirements to src/zc.lockfile.egg-info/requires.txt
writing top-level names to src/zc.lockfile.egg-info/top_level.txt
reading manifest file 'src/zc.lockfile.egg-info/SOURCES.txt'
reading manifest template 'MANIFEST.in'
warning: no files found matching '*.rst'
warning: no previously-included files matching '*.pyc' found anywhere in di=
stribution
writing manifest file 'src/zc.lockfile.egg-info/SOURCES.txt'
running install
running install_lib
Skipping installation of /data/mabnhdev/test-yocto-321/build/test-x86-64/tm=
p/work/x86_64-poky-linux/python3-zc-lockfile/1.3.0-r0/image/usr/lib/python3=
.8/site-packages/zc/__init__.py (namespace package)
...
```

--7bR1h52pJzF78YfdR6Vj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm working with multiple platforms on dunfell.</div>
<div>&nbsp;</div>
<div>I'm having trouble understanding the installation step of a couple of =
pthon3 packages - namely python3-zc-lockfile and python3-jaraco-functools.&=
nbsp; In both cases, the install function skips installing an __init__.py f=
ile which messes up my package use.</div>
<div>&nbsp;</div>
<div>From the logs, I see the messages below.</div>
<div>&nbsp;</div>
<div>Can someone explain why the installation of __init__.py and how I coul=
d modify the recipe so these __init__py files are installed?</div>
<div>&nbsp;</div>
<div>Thanks!.</div>
<div><br />```</div>
<div>DEBUG: Python function extend_recipe_sysroot finished</div>
<div>DEBUG: Executing shell function do_install</div>
<div>running build</div>
<div>running build_py</div>
<div>running egg_info</div>
<div>writing jaraco.functools.egg-info/PKG-INFO</div>
<div>writing dependency_links to jaraco.functools.egg-info/dependency_links=
.txt</div>
<div>writing namespace_packages to jaraco.functools.egg-info/namespace_pack=
ages.txt</div>
<div>writing requirements to jaraco.functools.egg-info/requires.txt</div>
<div>writing top-level names to jaraco.functools.egg-info/top_level.txt</di=
v>
<div>reading manifest file 'jaraco.functools.egg-info/SOURCES.txt'</div>
<div>writing manifest file 'jaraco.functools.egg-info/SOURCES.txt'</div>
<div>running install</div>
<div>running install_lib</div>
<div>copying jaraco/functools.py -&gt; /data/mabnhdev/test-yocto-321/build/=
test-x86-64/tmp/work/x86_64-poky-linux/python3-jaraco-functools/1.20-r0/ima=
ge/usr/lib/python3.8/site-packages/jaraco</div>
<div>Skipping installation of /data/mabnhdev/test-yocto-321/build/test-x86-=
64/tmp/work/x86_64-poky-linux/python3-jaraco-functools/1.20-r0/image/usr/li=
b/python3.8/site-packages/jaraco/__init__.py (namespace package)</div>
<div>...<br />```</div>
<div><br />```</div>
<div>DEBUG: Python function extend_recipe_sysroot finished</div>
<div>DEBUG: Executing shell function do_install</div>
<div>running build</div>
<div>running build_py</div>
<div>running egg_info</div>
<div>writing src/zc.lockfile.egg-info/PKG-INFO</div>
<div>writing dependency_links to src/zc.lockfile.egg-info/dependency_links.=
txt</div>
<div>writing namespace_packages to src/zc.lockfile.egg-info/namespace_packa=
ges.txt</div>
<div>writing requirements to src/zc.lockfile.egg-info/requires.txt</div>
<div>writing top-level names to src/zc.lockfile.egg-info/top_level.txt</div=
>
<div>reading manifest file 'src/zc.lockfile.egg-info/SOURCES.txt'</div>
<div>reading manifest template 'MANIFEST.in'</div>
<div>warning: no files found matching '*.rst'</div>
<div>warning: no previously-included files matching '*.pyc' found anywhere =
in distribution</div>
<div>writing manifest file 'src/zc.lockfile.egg-info/SOURCES.txt'</div>
<div>running install</div>
<div>running install_lib</div>
<div>Skipping installation of /data/mabnhdev/test-yocto-321/build/test-x86-=
64/tmp/work/x86_64-poky-linux/python3-zc-lockfile/1.3.0-r0/image/usr/lib/py=
thon3.8/site-packages/zc/__init__.py (namespace package)</div>
<div>...</div>
<div>```<br /><br /></div>
<div>&nbsp;</div>

--7bR1h52pJzF78YfdR6Vj--

