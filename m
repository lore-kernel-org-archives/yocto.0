Return-Path: <elshoud@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBB4AC6FD1D
	for <webhook@archiver.kernel.org>; Tue, 21 Mar 2023 15:51:57 +0000 (UTC)
Subject: #bitbake
To: yocto@lists.yoctoproject.org
From: "elshoud" <elshoud@gmail.com>
X-Originating-Location: Ixelles-Elsene, Brussels Capital, BE (81.246.50.154)
X-Originating-Platform: Windows Chrome 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 21 Mar 2023 08:51:50 -0700
Message-ID: <aIxj.1679413910808259942.dAzU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rUbT5UI57TUh8ZFXjho3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Mar 2023 15:51:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59482

--rUbT5UI57TUh8ZFXjho3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am new to the mailing list and hope that this is the right place to drop =
my question.
For my project I want to make use of the uvicorn package. Because I did not=
 find any yocto recipe for the latest version I started making one but I am=
=C2=A0stumbling on the fact that there is no setup.py in the release.
There is a setup.cfg and a pyproject.toml in the tar.gz.

Current version at https://pypi.org/project/uvicorn/ is 0.21.1.

With the following bb file:

>=20
> SUMMARY =3D "To be completed"
>=20
> LICENSE =3D "BSD-3-Clause"
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D5c778842f66a649636561c423c0eec=
2e"
>=20
> SRC_URI[sha256sum] =3D
> "9b00c0105f8ad968ac8be1cac44056bb1dc7d37dafb42ea1a4dc787e3ccc6b86"
>=20
> inherit pypi setuptools3
>=20
>=20

When building, I get an error because there is no setup.py:

>=20
> ERROR: python3-uvicorn-0.21.1-r0 do_compile: 'python3 setup.py bdist_whee=
l
> ' execution failed.
> ERROR: python3-uvicorn-0.21.1-r0 do_compile:
> ExecutionError(/tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uv=
icorn/0.21.1-r0/temp/run.do_compile.2246273',
> 1, None, None)
> ERROR: Logfile of failure stored in:
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/temp/log.do_compile.2246273
>=20
> Log data follows:
> | DEBUG: Executing shell function do_compile
> |
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/recipe-sysroot-native/usr/bin/python3-native/python3:
> can't open file
> '/tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r=
0/uvicorn-0.21.1/setup.py':
> [Errno 2] No such file or directory
> | ERROR: 'python3 setup.py bdist_wheel ' execution failed.
> | WARNING:
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/temp/run.do_compile.2246273:180
> exit 1 from 'exit 1'
> | WARNING: Backtrace (BB generated script):
> | #1: bbfatal_log,
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/temp/run.do_compile.2246273,
> line 180
> | #2: setuptools3_do_compile,
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/temp/run.do_compile.2246273,
> line 170
> | #3: do_compile,
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/temp/run.do_compile.2246273,
> line 152
> | #4: main,
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/temp/run.do_compile.2246273,
> line 184
>=20
>=20

What is the best way forward to get the package baked? Is it possible to cr=
eate the setup.py from the pyproject.toml?

Many thanks in advance,
Edwin Elshoud

--rUbT5UI57TUh8ZFXjho3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>I am new to the mailing list and hope that this is the right place to =
drop my question.<br />For my project I want to make use of the uvicorn pac=
kage. Because I did not find any yocto recipe for the latest version I star=
ted making one but I am&nbsp;stumbling on the fact that there is no setup.p=
y in the release.</div>
<div>There is a setup.cfg and a pyproject.toml in the tar.gz.</div>
<div>&nbsp;</div>
<div>Current version at https://pypi.org/project/uvicorn/ is 0.21.1.&nbsp;<=
/div>
<div>&nbsp;</div>
<div>With the following bb file:</div>
<div>&nbsp;</div>
<blockquote>
<div>&nbsp; &nbsp; SUMMARY =3D "To be completed"</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; LICENSE =3D "BSD-3-Clause"</div>
<div>&nbsp; &nbsp; LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D5c778842f66a6=
49636561c423c0eec2e"</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; SRC_URI[sha256sum] =3D "9b00c0105f8ad968ac8be1cac44056bb=
1dc7d37dafb42ea1a4dc787e3ccc6b86"&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; inherit pypi setuptools3</div>
<div>&nbsp;</div>
</blockquote>
<div>When building, I get an error because there is no setup.py:</div>
<div>&nbsp;</div>
<blockquote>
<div>ERROR: python3-uvicorn-0.21.1-r0 do_compile: 'python3 setup.py bdist_w=
heel ' execution failed.</div>
<div>ERROR: python3-uvicorn-0.21.1-r0 do_compile: ExecutionError(/tmp/work/=
cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0/temp/run.do=
_compile.2246273', 1, None, None)</div>
<div>ERROR: Logfile of failure stored in: /tmp/work/cortexa9t2hf-neon-puppy=
-linux-gnueabi/python3-uvicorn/0.21.1-r0/temp/log.do_compile.2246273</div>
<div>
<div>Log data follows:</div>
<div>| DEBUG: Executing shell function do_compile</div>
<div>| /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21=
.1-r0/recipe-sysroot-native/usr/bin/python3-native/python3: can't open file=
 '/tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/uvicorn-0.21.1/setup.py': [Errno 2] No such file or directory</div>
<div>| ERROR: 'python3 setup.py bdist_wheel ' execution failed.</div>
<div>| WARNING: /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvi=
corn/0.21.1-r0/temp/run.do_compile.2246273:180 exit 1 from 'exit 1'</div>
<div>| WARNING: Backtrace (BB generated script):</div>
<div>| <span style=3D"white-space: pre;"> </span>#1: bbfatal_log, /tmp/work=
/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0/temp/run.d=
o_compile.2246273, line 180</div>
<div>| <span style=3D"white-space: pre;"> </span>#2: setuptools3_do_compile=
, /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/temp/run.do_compile.2246273, line 170</div>
<div>| <span style=3D"white-space: pre;"> </span>#3: do_compile, /tmp/work/=
cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0/temp/run.do=
_compile.2246273, line 152</div>
<div>| <span style=3D"white-space: pre;"> </span>#4: main, /tmp/work/cortex=
a9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0/temp/run.do_compi=
le.2246273, line 184</div>
</div>
<div>&nbsp;</div>
</blockquote>
<div>What is the best way forward to get the package baked? Is it possible =
to create the setup.py from the pyproject.toml?<br /><br />Many thanks in a=
dvance,<br />Edwin Elshoud</div>

--rUbT5UI57TUh8ZFXjho3--

