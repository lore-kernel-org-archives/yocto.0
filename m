Return-Path: <giuseppe.diguglielmo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8ED5E009AA; Fri,  5 May 2017 10:24:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (giuseppe.diguglielmo[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89834E009AA
	for <yocto@yoctoproject.org>; Fri,  5 May 2017 10:24:23 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id c15so32134957ith.0
	for <yocto@yoctoproject.org>; Fri, 05 May 2017 10:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rRZd1nfTtNdArgUoEJW63V7C7wJknPay0JSKfdkNwCw=;
	b=cG7VMJxww4eS+7y4HtlWE5LZmdcPE/FJUBmpKCTYPSixhHJq2BflmKiCcQEJg29fyW
	YVJFsTgPAvgcdc6toGonzG9VpTgdQgtIct+nCiGfA/K0LBLE5zMbFZwOefqLI8vXRSeb
	oUdCkLCnqbrzMScw13O/TgEpUKMilSScmU3u4T3LCj7e5xjPvWcJUXK1hLi9Gi/JkAbT
	EnnsQDr6rxvklQYNIbSFW3dSJ+ZKOiQ0kf1ZJF9wMY6z66DBMQH8MLXD36JednD9ua/V
	j5E+2DfJk3KTIG3VYLazrSYqg/w+8BuIGTzKrH7RxY+Jmoribsli30yFjIH8gVmLqjTy
	tmOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rRZd1nfTtNdArgUoEJW63V7C7wJknPay0JSKfdkNwCw=;
	b=Eqy0EilOLs7KAcjQPR33wKaqwnh3voGqqPW3WJRyhjISLoWIVtmnNd4mONuSyaqAdT
	cq/fr5Sr54ri/dmIVfx1FQgr6RSwXCf7wJoWBA8mfl3Z007gtJZXLR8f09VkNKsNxRJX
	dnt+ifUhLMn+s3SHcnwh3v3SH0/Izu7GzbAPDa1CsYR9+aRj7eWhenhkgA9lq35ISVa9
	F7DZ+Nal1s4XZ0vah/Zl41CfhbVfCX+p4fBPxuU/oYDAOrIig1lhI2bGyh2q3xDyrKa2
	a5mxPyPVHcS2w2l1BXVJ547pavbqGb3O8T/WI7uQg6Vi+pi+uNSjEzDyZMmr1ZkQTjtN
	Ft+A==
X-Gm-Message-State: AN3rC/6jcYsKhRtnlDcR+svf4G43Iy+trNquoe5q6lcl8IfDnZYvB9bb
	MRJrOpgeKgLj+GzN13lKGXj7HOOKYg==
X-Received: by 10.36.193.134 with SMTP id e128mr8833561itg.43.1494005062043;
	Fri, 05 May 2017 10:24:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.208.9 with HTTP; Fri, 5 May 2017 10:24:21 -0700 (PDT)
In-Reply-To: <CAC+thW3i5+o4sGWCDBeP95NXqDN=zdiH1sBUHGLs0v+jY+OhWg@mail.gmail.com>
References: <CAOiuDAXJjtK37Zx-7WmoUW9PUXQPdBLorcx7d17=s3gEwaqutg@mail.gmail.com>
	<CAC+thW3i5+o4sGWCDBeP95NXqDN=zdiH1sBUHGLs0v+jY+OhWg@mail.gmail.com>
From: Giuseppe Di Guglielmo <giuseppe.diguglielmo@gmail.com>
Date: Fri, 5 May 2017 13:24:21 -0400
Message-ID: <CAOiuDAWrnaYcfRqkLnC7PV-9ghGLBwxMCz=q0avhMddEkkpQ3w@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Creating a new recipe
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
X-List-Received-Date: Fri, 05 May 2017 17:24:24 -0000
X-Groupsio-MsgNum: 35896
Content-Type: multipart/mixed; boundary=94eb2c08ebd206989e054eca2956

--94eb2c08ebd206989e054eca2956
Content-Type: multipart/alternative; boundary=94eb2c08ebd2069899054eca2954

--94eb2c08ebd2069899054eca2954
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I made some further steps.

I attach the layer package that I am creating. You can add it to
conf/bblayers.conf.

The error that I the following. Let me know what you thing of it.

Thank you,
Giuseppe

$ bitbake bazel
Parsing recipes: 100%
|##########################################################################=
###########################################################################=
############################################|
Time: 0:00:32
Parsing of 1774 .bb files complete (0 cached, 1774 parsed). 2490 targets,
149 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.32.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal-4.8"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "zc702-zynq7"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.2.1"
TUNE_FEATURES     =3D "arm armv7a vfp thumb neon       callconvention-hard
    cortexa9"
TARGET_FPU        =3D "hard"
meta              =3D "morty:924e576b8930fd2268d85f0b151e5f68a3c2afce"
meta-xilinx       =3D "morty:1ddfc0ba94f597822e619395fa0b35fb322e26af"
meta-poky
meta-tensorflow   =3D "morty:924e576b8930fd2268d85f0b151e5f68a3c2afce"
meta-xilinx-tools =3D "rel-v2017.1:64847a5afcffcb73e4bcf2137911819b55537308=
"
meta-yocto-bsp    =3D "morty:924e576b8930fd2268d85f0b151e5f68a3c2afce"
meta-oe
meta-python       =3D "morty:fe5c83312de11e80b85680ef237f8acb04b4b26e"
meta-java         =3D "HEAD:67e48693501bddb80745b9735b7b3d4d28dce9a1"
workspace         =3D "<unknown>:<unknown>"

Initialising tasks: 100%
|##########################################################################=
###########################################################################=
#########################################|
Time: 0:00:01
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: bazel-0.4.5-r0 do_compile: Function failed: do_compile (log file is
located at
/home/giuseppe/research/projects/zynq/yocto/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/bazel/0.4.5-r0/temp/log.do_compile.4221)
ERROR: Logfile of failure stored in:
/home/giuseppe/research/projects/zynq/yocto/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/bazel/0.4.5-r0/temp/log.do_compile.4221
Log data follows:
| DEBUG: Executing shell function do_compile
| INFO: You can skip this first step by providing a path to the bazel
binary as second argument:
| INFO:    ./compile.sh compile /path/to/bazel
| =EF=BF=BD  Building Bazel from scratch.......
| =EF=BF=BD  Building Bazel with Bazel.
| .WARNING: /tmp/bazel_tTNeGhsI/out/external/bazel_tools/WORKSPACE:1:
Workspace name in /tmp/bazel_tTNeGhsI/out/external/bazel_tools/WORKSPACE
(@io_bazel) does not match the name given in the repository's definition
(@bazel_tools); this will cause a build error in future versions.
| INFO: Loading package: src
| INFO: Loading package: @bazel_tools//tools/cpp
| INFO: Loading package: @local_config_xcode//
| ERROR: in target '//external:cc_toolchain': no such package
'@local_config_cc//': Traceback (most recent call last):
|       File
"/tmp/bazel_tTNeGhsI/out/external/bazel_tools/tools/cpp/cc_configure.bzl",
line 684
|               _find_cc(repository_ctx)
|       File
"/tmp/bazel_tTNeGhsI/out/external/bazel_tools/tools/cpp/cc_configure.bzl",
line 398, in _find_cc
|               repository_ctx.which(cc_name)
| Program argument of which() may not contains a / or a \
('arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -marm -mfpu=3Dneon
 -mfloat-abi=3Dhard -mcpu=3Dcortex-a9
--sysroot=3D/home/giuseppe/research/projects/zynq/yocto/build/tmp/sysroots/=
zc702-zynq7'
given).
| INFO: Elapsed time: 1.004s
|
| ERROR: Could not build Bazel
| WARNING:
/home/giuseppe/research/projects/zynq/yocto/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/bazel/0.4.5-r0/temp/run.do_compile.4221:1
exit 2 from 'bash ./compile.sh'
| ERROR: Function failed: do_compile (log file is located at
/home/giuseppe/research/projects/zynq/yocto/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/bazel/0.4.5-r0/temp/log.do_compile.4221)
ERROR: Task
(/home/giuseppe/research/projects/zynq/yocto/poky/meta-tensorflow/recipes/b=
azel/bazel_0.4.5.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 1370 tasks of which 1369 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/home/giuseppe/research/projects/zynq/yocto/poky/meta-tensorflow/recipes/ba=
zel/bazel_0.4.5.bb:
do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.








On Fri, May 5, 2017 at 1:04 PM, Andrea Galbusera <gizero@gmail.com> wrote:

> On Fri, May 5, 2017 at 4:40 PM, Giuseppe Di Guglielmo <
> giuseppe.diguglielmo@gmail.com> wrote:
>
>> Hi all,
>> I am trying to create a new recipe for Bazel (from Google):
>> https://bazel.build/versions/master/docs/install-compile-source.html
>>
>> The standard compilation flow is relatively simple: "Unzip the archive
>> and call bash ./compile.sh; this will create a bazel binary in
>> output/bazel. This binary is self-contained, so it can be copied to a
>> directory on the PATH (such as /usr/local/bin) or used in-place."
>>
>> I need some support on how to debug the recipe file that I attach.
>>
>> In do_compile(), I run bash ./compile.sh. This requires the JAVA_HOME
>> variable that I export hard-coded because at the moment I do not know ho=
w
>> to fetch that path in a recipe. At this point the compile.sh fails and I=
 do
>> not know how to debug. Please, can you have a look at it and provide me
>> some comments?
>>
>
> How does it fail? What is the log from bitbake? Please also provide the
> layers configuration that bitbake shows.
>

--94eb2c08ebd2069899054eca2954
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I made some further steps.<div><br></div><div>I attach the=
 layer package that I am creating. You can add it to conf/bblayers.conf.</d=
iv><div><br></div><div>The error that I the following. Let me know what you=
 thing of it.</div><div><br></div><div>Thank you,</div><div>Giuseppe</div><=
div><br></div><div><div><font face=3D"monospace, monospace" size=3D"1">$ bi=
tbake bazel</font></div><div><font face=3D"monospace, monospace" size=3D"1"=
>Parsing recipes: 100% |###################################################=
###########################################################################=
###################################################################| Time: =
0:00:32</font></div><div><font face=3D"monospace, monospace" size=3D"1">Par=
sing of 1774 .bb files complete (0 cached, 1774 parsed). 2490 targets, 149 =
skipped, 0 masked, 0 errors.</font></div><div><font face=3D"monospace, mono=
space" size=3D"1">NOTE: Resolving any missing task queue dependencies</font=
></div><div><font face=3D"monospace, monospace" size=3D"1"><br></font></div=
><div><font face=3D"monospace, monospace" size=3D"1">Build Configuration:</=
font></div><div><font face=3D"monospace, monospace" size=3D"1">BB_VERSION =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.32.0&quot;</font></div><div><font fa=
ce=3D"monospace, monospace" size=3D"1">BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D &quot;x86_64-linux&quot;</font></div><div><font face=3D"monospace, =
monospace" size=3D"1">NATIVELSBSTRING =C2=A0 =3D &quot;universal-4.8&quot;<=
/font></div><div><font face=3D"monospace, monospace" size=3D"1">TARGET_SYS =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot;</font></d=
iv><div><font face=3D"monospace, monospace" size=3D"1">MACHINE =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;zc702-zynq7&quot;</font></div><div><font=
 face=3D"monospace, monospace" size=3D"1">DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</font></div><div><font face=3D"monosp=
ace, monospace" size=3D"1">DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;2.2.1&quot=
;</font></div><div><font face=3D"monospace, monospace" size=3D"1">TUNE_FEAT=
URES =C2=A0 =C2=A0 =3D &quot;arm armv7a vfp thumb neon =C2=A0 =C2=A0 =C2=A0=
 callconvention-hard =C2=A0 =C2=A0 =C2=A0 cortexa9&quot;</font></div><div><=
font face=3D"monospace, monospace" size=3D"1">TARGET_FPU =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D &quot;hard&quot;</font></div><div><font face=3D"monospace, mo=
nospace" size=3D"1">meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;morty:924e576b8930fd2268d85f0b151e5f68a3c2afce&quot;</font></div>=
<div><font face=3D"monospace, monospace" size=3D"1">meta-xilinx =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;morty:1ddfc0ba94f597822e619395fa0b35fb322e26af&quot;</=
font></div><div><font face=3D"monospace, monospace" size=3D"1">meta-poky =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</font></div><div><font face=3D"monospace,=
 monospace" size=3D"1">meta-tensorflow =C2=A0 =3D &quot;morty:924e576b8930f=
d2268d85f0b151e5f68a3c2afce&quot;</font></div><div><font face=3D"monospace,=
 monospace" size=3D"1">meta-xilinx-tools =3D &quot;rel-v2017.1:64847a5afcff=
cb73e4bcf2137911819b55537308&quot;</font></div><div><font face=3D"monospace=
, monospace" size=3D"1">meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;morty:924e576=
b8930fd2268d85f0b151e5f68a3c2afce&quot;</font></div><div><font face=3D"mono=
space, monospace" size=3D"1">meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0</font></div><div><font face=3D"monospace, monospace" size=3D"1">meta-py=
thon =C2=A0 =C2=A0 =C2=A0 =3D &quot;morty:fe5c83312de11e80b85680ef237f8acb0=
4b4b26e&quot;</font></div><div><font face=3D"monospace, monospace" size=3D"=
1">meta-java =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;HEAD:67e48693501bddb8074=
5b9735b7b3d4d28dce9a1&quot;</font></div><div><font face=3D"monospace, monos=
pace" size=3D"1">workspace =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&lt;unknow=
n&gt;:&lt;unknown&gt;&quot;</font></div><div><font face=3D"monospace, monos=
pace" size=3D"1"><br></font></div><div><font face=3D"monospace, monospace" =
size=3D"1">Initialising tasks: 100% |######################################=
###########################################################################=
###########################################################################=
##| Time: 0:00:01</font></div><div><font face=3D"monospace, monospace" size=
=3D"1">NOTE: Executing SetScene Tasks</font></div><div><font face=3D"monosp=
ace, monospace" size=3D"1">NOTE: Executing RunQueue Tasks</font></div><div>=
<font face=3D"monospace, monospace" size=3D"1" color=3D"#cc0000">ERROR: baz=
el-0.4.5-r0 do_compile: Function failed: do_compile (log file is located at=
 /home/giuseppe/research/projects/zynq/yocto/build/tmp/work/cortexa9hf-neon=
-poky-linux-gnueabi/bazel/0.4.5-r0/temp/log.do_compile.4221)</font></div><d=
iv><font face=3D"monospace, monospace" size=3D"1" color=3D"#cc0000">ERROR: =
Logfile of failure stored in: /home/giuseppe/research/projects/zynq/yocto/b=
uild/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/bazel/0.4.5-r0/temp/log.do=
_compile.4221</font></div><div><font face=3D"monospace, monospace" size=3D"=
1">Log data follows:</font></div><div><font face=3D"monospace, monospace" s=
ize=3D"1">| DEBUG: Executing shell function do_compile</font></div><div><fo=
nt face=3D"monospace, monospace" size=3D"1">| <font color=3D"#38761d">INFO<=
/font>: You can skip this first step by providing a path to the bazel binar=
y as second argument:</font></div><div><font face=3D"monospace, monospace" =
size=3D"1">| <font color=3D"#38761d">INFO</font>: =C2=A0 =C2=A0./compile.sh=
 compile /path/to/bazel</font></div><div><font face=3D"monospace, monospace=
" size=3D"1">| =EF=BF=BD =C2=A0Building Bazel from scratch.......</font></d=
iv><div><font face=3D"monospace, monospace" size=3D"1">| =EF=BF=BD =C2=A0Bu=
ilding Bazel with Bazel.</font></div><div><font face=3D"monospace, monospac=
e" size=3D"1">| .WARNING: /tmp/bazel_tTNeGhsI/out/external/bazel_tools/WORK=
SPACE:1: Workspace name in /tmp/bazel_tTNeGhsI/out/external/bazel_tools/WOR=
KSPACE (@io_bazel) does not match the name given in the repository&#39;s de=
finition (@bazel_tools); this will cause a build error in future versions.<=
/font></div><div><font face=3D"monospace, monospace" size=3D"1">| <font col=
or=3D"#38761d">INFO</font>: Loading package: src</font></div><div><font fac=
e=3D"monospace, monospace" size=3D"1">| <font color=3D"#38761d">INFO</font>=
: Loading package: @bazel_tools//tools/cpp</font></div><div><font face=3D"m=
onospace, monospace" size=3D"1">| <font color=3D"#38761d">INFO</font>: Load=
ing package: @local_config_xcode//</font></div><div><font face=3D"monospace=
, monospace" size=3D"1">| <font color=3D"#cc0000">ERROR</font>: in target &=
#39;//external:cc_toolchain&#39;: no such package &#39;@local_config_cc//&#=
39;: Traceback (most recent call last):</font></div><div><font face=3D"mono=
space, monospace" size=3D"1">| =C2=A0 =C2=A0 =C2=A0 File &quot;/tmp/bazel_t=
TNeGhsI/out/external/bazel_tools/tools/cpp/cc_configure.bzl&quot;, line 684=
</font></div><div><font face=3D"monospace, monospace" size=3D"1">| =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 _find_cc(repository_ctx)</font></=
div><div><font face=3D"monospace, monospace" size=3D"1">| =C2=A0 =C2=A0 =C2=
=A0 File &quot;/tmp/bazel_tTNeGhsI/out/external/bazel_tools/tools/cpp/cc_co=
nfigure.bzl&quot;, line 398, in _find_cc</font></div><div><font face=3D"mon=
ospace, monospace" size=3D"1">| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 repository_ctx.which(cc_name)</font></div><div><font face=3D"monospa=
ce, monospace" size=3D"1">| Program argument of which() may not contains a =
/ or a \ (&#39;arm-poky-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a -marm -mfp=
u=3Dneon =C2=A0-mfloat-abi=3Dhard -mcpu=3Dcortex-a9 --sysroot=3D/home/giuse=
ppe/research/projects/zynq/yocto/build/tmp/sysroots/zc702-zynq7&#39; given)=
.</font></div><div><font face=3D"monospace, monospace" size=3D"1">| INFO: E=
lapsed time: 1.004s</font></div><div><font face=3D"monospace, monospace" si=
ze=3D"1">|=C2=A0</font></div><div><font face=3D"monospace, monospace" size=
=3D"1">| ERROR: Could not build Bazel</font></div><div><font face=3D"monosp=
ace, monospace" size=3D"1">| WARNING: /home/giuseppe/research/projects/zynq=
/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/bazel/0.4.5-r0/tem=
p/run.do_compile.4221:1 exit 2 from &#39;bash ./compile.sh&#39;</font></div=
><div><font face=3D"monospace, monospace" size=3D"1">| ERROR: Function fail=
ed: do_compile (log file is located at /home/giuseppe/research/projects/zyn=
q/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/bazel/0.4.5-r0/te=
mp/log.do_compile.4221)</font></div><div><font face=3D"monospace, monospace=
" size=3D"1" color=3D"#cc0000">ERROR: Task (/home/giuseppe/research/project=
s/zynq/yocto/poky/meta-tensorflow/recipes/bazel/bazel_0.4.5.bb:do_compile) =
failed with exit code &#39;1&#39;</font></div><div><font face=3D"monospace,=
 monospace" size=3D"1">NOTE: Tasks Summary: Attempted 1370 tasks of which 1=
369 didn&#39;t need to be rerun and 1 failed.</font></div><div><font face=
=3D"monospace, monospace" size=3D"1"><br></font></div><div><font face=3D"mo=
nospace, monospace" size=3D"1">Summary: 1 task failed:</font></div><div><fo=
nt face=3D"monospace, monospace" size=3D"1">=C2=A0 /home/giuseppe/research/=
projects/zynq/yocto/poky/meta-tensorflow/recipes/bazel/bazel_0.4.5.bb:do_co=
mpile</font></div><div><font face=3D"monospace, monospace" size=3D"1">Summa=
ry: There was 1 ERROR message shown, returning a non-zero exit code.</font>=
</div></div><div><font face=3D"monospace, monospace" size=3D"1"><br></font>=
</div><div><font face=3D"monospace, monospace" size=3D"1"><br></font></div>=
<div><font face=3D"monospace, monospace" size=3D"1"><br></font></div><div><=
font face=3D"monospace, monospace" size=3D"1"><br></font></div><div><font f=
ace=3D"monospace, monospace" size=3D"1"><br></font></div><div><font face=3D=
"monospace, monospace" size=3D"1"><br></font></div><div><br></div></div><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, May 5, 2017 =
at 1:04 PM, Andrea Galbusera <span dir=3D"ltr">&lt;<a href=3D"mailto:gizero=
@gmail.com" target=3D"_blank">gizero@gmail.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><di=
v class=3D"gmail_quote"><span class=3D"">On Fri, May 5, 2017 at 4:40 PM, Gi=
useppe Di Guglielmo <span dir=3D"ltr">&lt;<a href=3D"mailto:giuseppe.digugl=
ielmo@gmail.com" target=3D"_blank">giuseppe.diguglielmo@gmail.<wbr>com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi all=
,<div>I am trying to create a new recipe for Bazel (from Google):</div><div=
><a href=3D"https://bazel.build/versions/master/docs/install-compile-source=
.html" target=3D"_blank">https://bazel.build/versions/m<wbr>aster/docs/inst=
all-compile-sou<wbr>rce.html</a><br></div><div><br></div><div>The standard =
compilation flow is relatively simple:=C2=A0<span style=3D"color:rgb(68,68,=
68);font-family:robotodraft,&quot;helvetica neue&quot;,helvetica,arial,sans=
-serif;font-size:14px">&quot;Unzip the archive and </span>call=C2=A0<code s=
tyle=3D"font-size:13px;box-sizing:border-box;font-family:&quot;source code =
pro&quot;,monospace;padding:2px 4px;color:rgb(199,37,78);background-color:r=
gb(249,249,249);border-radius:4px">bash ./compile.sh</code>;<span style=3D"=
color:rgb(68,68,68);font-family:robotodraft,&quot;helvetica neue&quot;,helv=
etica,arial,sans-serif;font-size:14px"> this will create a </span>bazel<spa=
n style=3D"color:rgb(68,68,68);font-family:robotodraft,&quot;helvetica neue=
&quot;,helvetica,arial,sans-serif;font-size:14px"> binary </span>in=C2=A0<c=
ode style=3D"font-size:13px;box-sizing:border-box;font-family:&quot;source =
code pro&quot;,monospace;padding:2px 4px;color:rgb(199,37,78);background-co=
lor:rgb(249,249,249);border-radius:4px">output/bazel</code>.<span style=3D"=
color:rgb(68,68,68);font-family:robotodraft,&quot;helvetica neue&quot;,helv=
etica,arial,sans-serif;font-size:14px"> This binary is self-contained, so i=
t can be copied to a directory on the PATH (such as=C2=A0</span><code style=
=3D"font-size:13px;box-sizing:border-box;font-family:&quot;source code pro&=
quot;,monospace;padding:2px 4px;color:rgb(199,37,78);background-color:rgb(2=
49,249,249);border-radius:4px">/usr/local/bin</code><span style=3D"color:rg=
b(68,68,68);font-family:robotodraft,&quot;helvetica neue&quot;,helvetica,ar=
ial,sans-serif;font-size:14px">) or used </span>in-place<span style=3D"colo=
r:rgb(68,68,68);font-family:robotodraft,&quot;helvetica neue&quot;,helvetic=
a,arial,sans-serif;font-size:14px">.</span>&quot;</div><div><br></div><div>=
I need some support on how to debug the recipe file that I=C2=A0attach.</di=
v><div><br></div><div>In do_compile(), I run=C2=A0<font face=3D"monospace, =
monospace" size=3D"1" color=3D"#ff0000">bash ./compile.sh</font>. This requ=
ires the JAVA_HOME variable that I export hard-coded because at the moment =
I do not know how to fetch that path in a recipe. At this point the compile=
.sh fails and I do not know how to debug. Please, can you have a look at it=
 and provide me some comments?</div></div></blockquote><div><br></div></spa=
n><div>How does it fail? What is the log from bitbake? Please also provide =
the layers configuration that bitbake shows.</div></div></div></div>
</blockquote></div><br></div>

--94eb2c08ebd2069899054eca2954--

--94eb2c08ebd206989e054eca2956
Content-Type: application/x-gzip; name="meta-tensorflow.tgz"
Content-Disposition: attachment; filename="meta-tensorflow.tgz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_j2c3ssk90

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
y+fJn2S1NmUAKAAA

--94eb2c08ebd206989e054eca2956--
