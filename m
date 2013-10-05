Return-Path: <ashujain9727@gmail.com>
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 666D7E01645
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 23:54:11 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id w6so3946828lbh.5
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2013 23:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=wyr7iQY1wsCnMzhPYZzffowtljVgXchiTEthI/d88zU=;
	b=b4MBCN90PhZFGs3DKZWwS+kD/6VSr94N+nUwzuGf9W4EY7Wxq1xDqa95ZCgD4YukZb
	b1cJv/7X+JkmkFjfyN8gYux/Ms6sSUeK7sDfN/VzwgyeUs99pE4qbTSy5Obm0tO+mTE3
	9ir7yKlQwPTfVfNtzKaVZ5VXdoWHfoonPeKh3rYZrtNgsOQboOXwSY+7JTYg2BHBwUbR
	+uE/yY/UDT4iNf2zUhuOl5Az/g/JY+fRBmLamuiIL79yN0Fq83xKTv1CHqVc9rpvJvGT
	aT7SzaoLKvIUAtQMtnGyFH1dtUBq82yyugF2Fvd5gp9hpFHbYuYpXnQSRbqo22Qclflk
	PisA==
MIME-Version: 1.0
X-Received: by 10.112.72.229 with SMTP id g5mr15261953lbv.10.1380956050367;
	Fri, 04 Oct 2013 23:54:10 -0700 (PDT)
Received: by 10.114.160.5 with HTTP; Fri, 4 Oct 2013 23:54:10 -0700 (PDT)
In-Reply-To: <CAJ7VayjZm-_YCoBVMUg9NHOiYF3j8qw+d_Y8Ng02zXnxD6RZOw@mail.gmail.com>
References: <CAJ7VayiUNSvhFLE4iN4ZDnGYDmQK-P-7R7Xh03z4koo-z_=eOQ@mail.gmail.com>
	<CAJ7VaygyR5mxiMWNxaBYLOuphOwz8y04LMAtuvkbSiH_DWWv-Q@mail.gmail.com>
	<CAJ7VayjZm-_YCoBVMUg9NHOiYF3j8qw+d_Y8Ng02zXnxD6RZOw@mail.gmail.com>
Date: Sat, 5 Oct 2013 12:24:10 +0530
Message-ID: <CA+9-LvtmhquHdw7imNXWhEgU-GWwAsB=aBT8HkMK5B1f=NO8rg@mail.gmail.com>
From: abhishek jain <ashujain9727@gmail.com>
To: yocto@yoctoproject.org
Subject: java cross compilation
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
X-List-Received-Date: Sat, 05 Oct 2013 06:54:15 -0000
Content-Type: multipart/alternative; boundary=001a11c238e8d52b1f04e7f8e2de

--001a11c238e8d52b1f04e7f8e2de
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

I need to cross compile openjdk-7-jre in ppc64 platform using Yocto.

After setting the environment i am running "bitbake openjdok-7-jre" command
but i am getting following error message:

BB_VERSION        = "1.18.0"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-12.10"
TARGET_SYS        = "powerpc-fsl_networking-linux"
MACHINE           = "t4240rdb"
DISTRO            = "fsl-networking"
DISTRO_VERSION    = "1.4"
TUNE_FEATURES     = "m32 fpu-hard e6500 altivec"
TARGET_FPU        = "hard"
meta
meta-yocto
meta-yocto-bsp    = "sdk-v1.4.x:16bfcaa96c074aac0a1f66d33b45fb33ba559325"
meta-fsl-ppc      = "sdk-v1.4.x:324b1cb7fadce0bbf145b922ce2e1d9af9ba223b"
meta-fsl-ppc-toolchain =
"sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c5375034d723"
meta-virtualization = "sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f878329d6f93"
meta-fsl-networking = "(nobranch):77405d17c48607551e4f095fb2f79eb0c09b8430"
meta-oe
meta-networking   = "sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02ca263616"
meta-java         = "master:de06956f93ecd15d8c941a05da47a4425e3d397a"

NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for
item openjdk-7-jre)
NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for
item openjdk-7-common)
NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for
item openjdk-7-jre)
NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for
item openjdk-7-java)
NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for
item java2-runtime)
NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for
item java2-vm)
NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Failed to fetch URL
http://archive.apache.org/dist/ant/source/apache-ant-1.8.1-src.tar.gz,
attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output
ERROR: Function failed: Fetcher failure for URL: '
http://archive.apache.org/dist/ant/source/apache-ant-1.8.1-src.tar.gz'.
Unable to fetch URL from any source.
ERROR: Logfile of failure stored in:
/home/anuj/freescale_1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/i686-linux/ant-native/1.8.1-r1/temp/log.do_fetch.13403

ERROR: Task 209
(/home/anuj/freescale_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/ant/
ant-native_1.8.1.bb, do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1182 tasks of which 902 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:

/home/anuj/freescale_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/ant/
ant-native_1.8.1.bb, do_fetch
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


Please help me on fixing this issue.


Thanks.
Abhishek Jain

--001a11c238e8d52b1f04e7f8e2de
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div class=3D"gmail_quote"><div dir=3D"ltr"><div cl=
ass=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quote"><=
div dir=3D"ltr"><div><br></div><div>I need to cross compile openjdk-7-jre i=
n ppc64 platform using Yocto.</div>
<div><br></div><div>After setting the environment i am running &quot;bitbak=
e openjdok-7-jre&quot; command but i am getting following error message:</d=
iv>




<div><br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.18.0&quot;
<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;i686-linux&quot;
<br>NATIVELSBSTRING=A0=A0 =3D &quot;Ubuntu-12.10&quot;
<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;powerpc-fsl_networking-linux&=
quot;
<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;t4240rdb&quot;
<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;fsl-networking&quot;
<br>DISTRO_VERSION=A0=A0=A0 =3D &quot;1.4&quot;
<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;m32 fpu-hard e6500 altivec&quot;
<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;hard&quot;
<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
<br>meta-yocto=A0=A0=A0=A0=A0=A0=A0=A0
<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;sdk-v1.4.x:16bfcaa96c074aac0a1f66d33b=
45fb33ba559325&quot;
<br>meta-fsl-ppc=A0=A0=A0=A0=A0 =3D &quot;sdk-v1.4.x:324b1cb7fadce0bbf145b9=
22ce2e1d9af9ba223b&quot;
<br>meta-fsl-ppc-toolchain =3D &quot;sdk-v1.4.x:8ec94cec04527cb971c125b1ddd=
2c5375034d723&quot;
<br>meta-virtualization =3D &quot;sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f8=
78329d6f93&quot;
<br>meta-fsl-networking =3D &quot;(nobranch):77405d17c48607551e4f095fb2f79e=
b0c09b8430&quot;
<br>meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
<br>meta-networking=A0=A0 =3D &quot;sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4=
fb02ca263616&quot;
<br>meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:de06956f93ecd15d8c94=
1a05da47a4425e3d397a&quot;
<br>=A0<br>NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not availab=
le (for item openjdk-7-jre)
<br>NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
<br>NOTE: Resolving any missing task queue dependencies
<br>NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for=
 item openjdk-7-common)
<br>NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
<br>NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for=
 item openjdk-7-jre)
<br>NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
<br>NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for=
 item openjdk-7-java)
<br>NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
<br>NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for=
 item java2-runtime)
<br>NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
<br>NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for=
 item java2-vm)
<br>NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
<br>NOTE: Preparing runqueue
<br>NOTE: Executing SetScene Tasks
<br>NOTE: Executing RunQueue Tasks
<br>WARNING: Failed to fetch URL <a href=3D"http://archive.apache.org/dist/=
ant/source/apache-ant-1.8.1-src.tar.gz" target=3D"_blank">http://archive.ap=
ache.org/dist/ant/source/apache-ant-1.8.1-src.tar.gz</a>, attempting MIRROR=
S if available
<br>ERROR: Fetcher failure: Fetch command failed with exit code 4, no outpu=
t
<br>ERROR: Function failed: Fetcher failure for URL: &#39;<a href=3D"http:/=
/archive.apache.org/dist/ant/source/apache-ant-1.8.1-src.tar.gz" target=3D"=
_blank">http://archive.apache.org/dist/ant/source/apache-ant-1.8.1-src.tar.=
gz</a>&#39;. Unable to fetch URL from any source.
<br>ERROR: Logfile of failure stored in: /home/anuj/freescale_1.4/QorIQ-SDK=
-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/i686-linux/ant-native/=
1.8.1-r1/temp/log.do_fetch.13403
<br>ERROR: Task 209 (/home/anuj/freescale_1.4/QorIQ-SDK-V1.4-20130814-yocto=
/meta-java/recipes-core/ant/<a href=3D"http://ant-native_1.8.1.bb" target=
=3D"_blank">ant-native_1.8.1.bb</a>, do_fetch) failed with exit code &#39;1=
&#39;
<br>NOTE: Tasks Summary: Attempted 1182 tasks of which 902 didn&#39;t need =
to be rerun and 1 failed.
<br>Waiting for 0 running tasks to finish:
<br>=A0<br>Summary: 1 task failed:
<br>=A0 /home/anuj/freescale_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/re=
cipes-core/ant/<a href=3D"http://ant-native_1.8.1.bb" target=3D"_blank">ant=
-native_1.8.1.bb</a>, do_fetch
<br>Summary: There was 1 WARNING message shown.
<br>Summary: There were 2 ERROR messages shown, returning a non-zero exit c=
ode.<br><br><br></div><div>Please help me on fixing this issue.<br><br><br>=
</div><div>Thanks.<span class=3D"HOEnZb"><font color=3D"#888888"><span><fon=
t color=3D"#888888"><br>
</font></span></font></span></div><span class=3D"HOEnZb"><font color=3D"#88=
8888">

<span><font color=3D"#888888"><div>Abhishek Jain<br></div></font></span></f=
ont></span></div>
</div><br></div>
</div></div></div><br></div>
</div><br></div>

--001a11c238e8d52b1f04e7f8e2de--
