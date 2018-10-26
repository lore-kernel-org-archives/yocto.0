Return-Path: <jostorha@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21D40E00BC1; Fri, 26 Oct 2018 06:02:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jostorha[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.171 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
	[209.85.167.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D0E9E00AB3
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 06:02:26 -0700 (PDT)
Received: by mail-oi1-f171.google.com with SMTP id c25-v6so917118oiy.0
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 06:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=riwjYV8itIPBfhwm+YxBfvxdGEzhJfM5PGg5mNSgWJg=;
	b=FVoBqpmfsBANsa5m5PPqC/puTeEKXzFLa8BNIgB3YXkzCbxv77SK5Rpnto4g880tQT
	uqsuTBhfu8rTc7VL/mtuxRcrRsoD+bDECclCNR6KVxGp1Gd18hgxyNi+ePQ026qhm/Uv
	emm4EJ1lAtDlEpH6wODqKVlDS3xu5Tf3/OBcnZJd+9XF6pMRX7cfkQZtTaWSonYuDp7X
	g7aDGWv7po9Hj1mXVyj+kXfWzP4UJOXQlbFmUpsjnvEgfX+zwznSZA/QmaDI4QHNMv4r
	pYkOJ7+rLjkuPDDxWsILrgUdoPvxZ1qDwhF9EqS7n06Rt0wyLmqi+q6P3+sSp6DsvbgA
	VA7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=riwjYV8itIPBfhwm+YxBfvxdGEzhJfM5PGg5mNSgWJg=;
	b=kKY4o9WrUp/0uwAmeC51MgXcz5PArVJNqpbJ5iIcBMtFI/yOCs/CEgeW5kpvpQ6SWg
	FfcseIxMueNs1tGOTyUOzc5kWTf+tPBi/lAP4SbiFjlDkJs/muRGPcaIvjU/OP5eGhFp
	MAG7LdFeL7EdGaJCRNBOnf91RBd1xjAeGxW7y8S/876hZHAwyy8WPtNpqrzyfg3GokV8
	HqV5UhxngAlSHxq6VtPGMRRlkcjmQq1zSmLFulgh9b4SGGGUH5hwVLzKQCmjP5La5N3F
	SmpPj+mpjM2+amAQAnvqkG1P6MHxdiNaBG0Slw8bYWUGSIc+nEhiAO3dmi4Wun5Q+9vu
	j/+Q==
X-Gm-Message-State: AGRZ1gJ5hFHkwb43yc2K+MRHGAMSKCP1YngUoAK3JomnXD4e4T/OF+PG
	0qCjICps5Aj2RrIEWDjal0lgWBkVSB/0YOXxhQ/XNDDg
X-Google-Smtp-Source: AJdET5fth9hgF9xpNH8H4Y7HHRwUDY9BBkRerYd25R4uqBKXf4gI9TJemcuq4ZNzNWcTYU7M8U4u//aiJzMD0KiRLEg=
X-Received: by 2002:aca:c28b:: with SMTP id
	s133-v6mr2167024oif.219.1540558941838; 
	Fri, 26 Oct 2018 06:02:21 -0700 (PDT)
MIME-Version: 1.0
From: Jon Ove Storhaug <jostorha@gmail.com>
Date: Fri, 26 Oct 2018 15:02:11 +0200
Message-ID: <CAAzHaFTJEtUE8zxGok5M08FbpQ1i+2VzStBZVmge3KDBTststA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: nodejs project including zeromq fails to build with yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 26 Oct 2018 13:02:28 -0000
Content-Type: multipart/alternative; boundary="0000000000007be1a1057921545a"

--0000000000007be1a1057921545a
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a nodejs project which is including zeromq. I have made a simple
version of this project here: https://gitlab.com/jostor/my-npm-pkg.git
I am building for raspberry pi3. This is what I do:
devtool add https://gitlab.com/jostor/my-npm-pkg.git
devtool build my-npm-pkg

This fails with this output:
ERROR: my-npm-pkg-1.0.0+git999-r0 do_compile: Function failed: do_compile
(log file is located at
/workdir/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm-pkg/1.0.0+git999-r0/temp/log.do_compile.5090)
ERROR: Logfile of failure stored in:
/workdir/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm-pkg/1.0.0+git999-r0/temp/log.do_compile.5090
Log data follows:
| DEBUG: Executing python function externalsrc_compile_prefunc
| NOTE: my-npm-pkg: compiling from external source tree
/workdir/poky/build/workspace/sources/my-npm-pkg
| DEBUG: Python function externalsrc_compile_prefunc finished
| DEBUG: Executing shell function do_compile
| npm WARN using --force I sure hope you know what you are doing.
|
| > zeromq@5.1.0 install
/workdir/poky/build/workspace/sources/my-npm-pkg/node_modules/zeromq
| > node scripts/prebuild-install.js || (node scripts/preinstall.js &&
node-gyp rebuild)
|
|
| prebuild-install WARN install No prebuilt binaries found (target=8.9.4
runtime=node arch=arm platform=linux)
|
| Building libzmq for linux
| checking for a BSD-compatible install...
/workdir/poky/build/tmp/hosttools/install -c
| checking whether build environment is sane... yes
| checking for a thread-safe mkdir -p...
/workdir/poky/build/tmp/hosttools/mkdir -p
| checking for gawk... gawk
| checking whether make sets $(MAKE)... yes
| checking whether make supports nested variables... yes
| checking whether UID '1000' is supported by ustar format... yes
| checking whether GID '1000' is supported by ustar format... yes
| checking how to create a ustar tar archive... gnutar
| checking whether make supports nested variables... (cached) yes
| checking for gcc... arm-poky-linux-gnueabi-gcc  -march=armv7ve -marm
-mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/workdir/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm-pkg/1.0.0+git999-r0/recipe-sysroot
| checking whether the C compiler works... yes
| checking for C compiler default output file name... a.out
| checking for suffix of executables...
| checking whether we are cross compiling... configure: error: in
`/workdir/poky/build/workspace/sources/my-npm-pkg/node_modules/zeromq/zmq/zeromq-4.2.2':
| configure: error: cannot run C compiled programs.
| If you meant to cross compile, use `--host'.
| See `config.log' for more details
| child process exited with code 1
| make: Entering directory
'/workdir/poky/build/workspace/sources/my-npm-pkg/node_modules/zeromq/build'
|   CXX(target) Release/obj.target/zmq/binding.o
| ../binding.cc:28:10: fatal error: zmq.h: No such file or directory
|  #include <zmq.h>
|           ^~~~~~~
| compilation terminated.
| zmq.target.mk:93: recipe for target 'Release/obj.target/zmq/binding.o'
failed
| make: *** [Release/obj.target/zmq/binding.o] Error 1
| make: Leaving directory
'/workdir/poky/build/workspace/sources/my-npm-pkg/node_modules/zeromq/build'
| gyp ERR! build error
| gyp ERR! stack Error: `make` failed with exit code: 2
| gyp ERR! stack     at ChildProcess.onExit
(/workdir/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm-pkg/1.0.0+git999-r0/recipe-sysroot-native/usr/lib/node_modules/npm/node_modules/node-gyp/lib/build.js:258:23)
| gyp ERR! stack     at emitTwo (events.js:126:13)
| gyp ERR! stack     at ChildProcess.emit (events.js:214:7)
| gyp ERR! stack     at Process.ChildProcess._handle.onexit
(internal/child_process.js:198:12)
| gyp ERR! System Linux 4.15.0-36-generic
| gyp ERR! command
"/workdir/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm-pkg/1.0.0+git999-r0/recipe-sysroot-native/usr/bin/node"
"/workdir/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm-pkg/1.0.0+git999-r0/recipe-sysroot-native/usr/lib/node_modules/npm/node_modules/node-gyp/bin/node-gyp.js"
"rebuild"
| gyp ERR! cwd
/workdir/poky/build/workspace/sources/my-npm-pkg/node_modules/zeromq
| gyp ERR! node -v v8.9.4
| gyp ERR! node-gyp -v v3.6.2
| gyp ERR! not ok
| npm WARN my-npm-pkg@1.0.0 No description
| npm WARN my-npm-pkg@1.0.0 No repository field.
|
| npm ERR! code ELIFECYCLE
| npm ERR! errno 1
| npm ERR! zeromq@5.1.0 install: `node scripts/prebuild-install.js || (node
scripts/preinstall.js && node-gyp rebuild)`
| npm ERR! Exit status 1
| npm ERR!
| npm ERR! Failed at the zeromq@5.1.0 install script.
| npm ERR! This is probably not a problem with npm. There is likely
additional logging output above.
|
| npm ERR! A complete log of this run can be found in:
| npm ERR!
 /workdir/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm-pkg/1.0.0+git999-r0/npm_cache/_logs/2018-10-26T12_49_46_985Z-debug.log
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/workdir/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm-pkg/1.0.0+git999-r0/temp/log.do_compile.5090)
ERROR: Task
(/workdir/poky/build/workspace/recipes/my-npm-pkg/my-npm-pkg_git.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 439 tasks of which 436 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /workdir/poky/build/workspace/recipes/my-npm-pkg/my-npm-pkg_git.bb:
do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


If I instead of building this with yocto, are using npm install, it will
build without failing.
Can anyone help me with this? Thanks in advance for your help!

Best Regards,
Jon Ove

--0000000000007be1a1057921545a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr">Hi,<div><br></div><div>I have a nodejs project which is including=
 zeromq. I have made a simple version of this project here:=C2=A0<a href=3D=
"https://gitlab.com/jostor/my-npm-pkg.git">https://gitlab.com/jostor/my-npm=
-pkg.git</a></div><div>I am building for raspberry pi3. This is what I do:=
=C2=A0</div><div><div>devtool add <a href=3D"https://gitlab.com/jostor/my-n=
pm-pkg.git">https://gitlab.com/jostor/my-npm-pkg.git</a></div></div><div>de=
vtool build my-npm-pkg<br></div><div><br></div><div>This fails with this ou=
tput:</div><div><div>ERROR: my-npm-pkg-1.0.0+git999-r0 do_compile: Function=
 failed: do_compile (log file is located at /workdir/poky/build/tmp/work/co=
rtexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm-pkg/1.0.0+git999-r0/temp/log.=
do_compile.5090)</div><div>ERROR: Logfile of failure stored in: /workdir/po=
ky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm-pkg/1.0.0=
+git999-r0/temp/log.do_compile.5090</div><div>Log data follows:</div><div>|=
 DEBUG: Executing python function externalsrc_compile_prefunc</div><div>| N=
OTE: my-npm-pkg: compiling from external source tree /workdir/poky/build/wo=
rkspace/sources/my-npm-pkg</div><div>| DEBUG: Python function externalsrc_c=
ompile_prefunc finished</div><div>| DEBUG: Executing shell function do_comp=
ile</div><div>| npm WARN using --force I sure hope you know what you are do=
ing.</div><div>|</div><div>| &gt; zeromq@5.1.0 install /workdir/poky/build/=
workspace/sources/my-npm-pkg/node_modules/zeromq</div><div>| &gt; node scri=
pts/prebuild-install.js || (node scripts/preinstall.js &amp;&amp; node-gyp =
rebuild)</div><div>|</div><div>|</div><div>| prebuild-install WARN install =
No prebuilt binaries found (target=3D8.9.4 runtime=3Dnode arch=3Darm platfo=
rm=3Dlinux)</div><div>|</div><div>| Building libzmq for linux</div><div>| c=
hecking for a BSD-compatible install... /workdir/poky/build/tmp/hosttools/i=
nstall -c</div><div>| checking whether build environment is sane... yes</di=
v><div>| checking for a thread-safe mkdir -p... /workdir/poky/build/tmp/hos=
ttools/mkdir -p</div><div>| checking for gawk... gawk</div><div>| checking =
whether make sets $(MAKE)... yes</div><div>| checking whether make supports=
 nested variables... yes</div><div>| checking whether UID &#39;1000&#39; is=
 supported by ustar format... yes</div><div>| checking whether GID &#39;100=
0&#39; is supported by ustar format... yes</div><div>| checking how to crea=
te a ustar tar archive... gnutar</div><div>| checking whether make supports=
 nested variables... (cached) yes</div><div>| checking for gcc... arm-poky-=
linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve -marm -mfpu=3Dneon-vfpv4 -mfloat-a=
bi=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/workdir/poky/build/tmp/work/cortex=
a7hf-neon-vfpv4-poky-linux-gnueabi/my-npm-pkg/1.0.0+git999-r0/recipe-sysroo=
t</div><div>| checking whether the C compiler works... yes</div><div>| chec=
king for C compiler default output file name... a.out</div><div>| checking =
for suffix of executables...</div><div>| checking whether we are cross comp=
iling... configure: error: in `/workdir/poky/build/workspace/sources/my-npm=
-pkg/node_modules/zeromq/zmq/zeromq-4.2.2&#39;:</div><div>| configure: erro=
r: cannot run C compiled programs.</div><div>| If you meant to cross compil=
e, use `--host&#39;.</div><div>| See `config.log&#39; for more details</div=
><div>| child process exited with code 1</div><div>| make: Entering directo=
ry &#39;/workdir/poky/build/workspace/sources/my-npm-pkg/node_modules/zerom=
q/build&#39;</div><div>|=C2=A0 =C2=A0CXX(target) Release/obj.target/zmq/bin=
ding.o</div><div>| ../binding.cc:28:10: fatal error: zmq.h: No such file or=
 directory</div><div>|=C2=A0 #include &lt;zmq.h&gt;</div><div>|=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~</div><div>| compilation terminated.<=
/div><div>| <a href=3D"http://zmq.target.mk:93">zmq.target.mk:93</a>: recip=
e for target &#39;Release/obj.target/zmq/binding.o&#39; failed</div><div>| =
make: *** [Release/obj.target/zmq/binding.o] Error 1</div><div>| make: Leav=
ing directory &#39;/workdir/poky/build/workspace/sources/my-npm-pkg/node_mo=
dules/zeromq/build&#39;</div><div>| gyp ERR! build error</div><div>| gyp ER=
R! stack Error: `make` failed with exit code: 2</div><div>| gyp ERR! stack=
=C2=A0 =C2=A0 =C2=A0at ChildProcess.onExit (/workdir/poky/build/tmp/work/co=
rtexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm-pkg/1.0.0+git999-r0/recipe-sy=
sroot-native/usr/lib/node_modules/npm/node_modules/node-gyp/lib/build.js:25=
8:23)</div><div>| gyp ERR! stack=C2=A0 =C2=A0 =C2=A0at emitTwo (events.js:1=
26:13)</div><div>| gyp ERR! stack=C2=A0 =C2=A0 =C2=A0at ChildProcess.emit (=
events.js:214:7)</div><div>| gyp ERR! stack=C2=A0 =C2=A0 =C2=A0at Process.C=
hildProcess._handle.onexit (internal/child_process.js:198:12)</div><div>| g=
yp ERR! System Linux 4.15.0-36-generic</div><div>| gyp ERR! command &quot;/=
workdir/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm=
-pkg/1.0.0+git999-r0/recipe-sysroot-native/usr/bin/node&quot; &quot;/workdi=
r/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm-pkg/1=
.0.0+git999-r0/recipe-sysroot-native/usr/lib/node_modules/npm/node_modules/=
node-gyp/bin/node-gyp.js&quot; &quot;rebuild&quot;</div><div>| gyp ERR! cwd=
 /workdir/poky/build/workspace/sources/my-npm-pkg/node_modules/zeromq</div>=
<div>| gyp ERR! node -v v8.9.4</div><div>| gyp ERR! node-gyp -v v3.6.2</div=
><div>| gyp ERR! not ok</div><div>| npm WARN my-npm-pkg@1.0.0 No descriptio=
n</div><div>| npm WARN my-npm-pkg@1.0.0 No repository field.</div><div>|</d=
iv><div>| npm ERR! code ELIFECYCLE</div><div>| npm ERR! errno 1</div><div>|=
 npm ERR! zeromq@5.1.0 install: `node scripts/prebuild-install.js || (node =
scripts/preinstall.js &amp;&amp; node-gyp rebuild)`</div><div>| npm ERR! Ex=
it status 1</div><div>| npm ERR!</div><div>| npm ERR! Failed at the zeromq@=
5.1.0 install script.</div><div>| npm ERR! This is probably not a problem w=
ith npm. There is likely additional logging output above.</div><div>|</div>=
<div>| npm ERR! A complete log of this run can be found in:</div><div>| npm=
 ERR!=C2=A0 =C2=A0 =C2=A0/workdir/poky/build/tmp/work/cortexa7hf-neon-vfpv4=
-poky-linux-gnueabi/my-npm-pkg/1.0.0+git999-r0/npm_cache/_logs/2018-10-26T1=
2_49_46_985Z-debug.log</div><div>| WARNING: exit code 1 from a shell comman=
d.</div><div>| ERROR: Function failed: do_compile (log file is located at /=
workdir/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/my-npm=
-pkg/1.0.0+git999-r0/temp/log.do_compile.5090)</div><div>ERROR: Task (/work=
dir/poky/build/workspace/recipes/my-npm-pkg/my-npm-pkg_git.bb:do_compile) f=
ailed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Attempted 4=
39 tasks of which 436 didn&#39;t need to be rerun and 1 failed.</div><div><=
br></div><div>Summary: 1 task failed:</div><div>=C2=A0 /workdir/poky/build/=
workspace/recipes/my-npm-pkg/my-npm-pkg_git.bb:do_compile</div><div>Summary=
: There was 1 ERROR message shown, returning a non-zero exit code.</div></d=
iv><div><br></div><div><br></div><div>If I instead of building this with yo=
cto, are using npm install, it will build without failing.=C2=A0</div><div>=
Can anyone help me with this? Thanks in advance for your help!</div><div><b=
r></div><div>Best Regards,</div><div>Jon Ove</div><div><br></div><div><br><=
/div><div><br></div></div></div></div></div></div>

--0000000000007be1a1057921545a--
