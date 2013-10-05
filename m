Return-Path: <raj.khem@gmail.com>
Received: from mail-qa0-f54.google.com (mail-qa0-f54.google.com
	[209.85.216.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48DFEE0164A
	for <yocto@yoctoproject.org>; Sat,  5 Oct 2013 00:04:25 -0700 (PDT)
Received: by mail-qa0-f54.google.com with SMTP id bv4so1691835qab.6
	for <yocto@yoctoproject.org>; Sat, 05 Oct 2013 00:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nMYCqcfqjy2RSgf6xX+uqmMCtNM3t4hNPKE4wbpli2A=;
	b=TDoMoiy26SWx7gTR4hUTnTMHiOJ45Dl8ZDLKwc5QfX3hUOBCtQoagn4HVw9ZEFSzHk
	CXxJBrhPQULU09zah5RP5RpoVW9grXHiQxtVbmqoCPw0rN1MFr4T+OEM8rVX1FsHksCa
	ULMD58Bjl0unkDL36W8eyPZE6clle4GRGPP5spo1VQp2yFBF/K842+O6+A2nXH3ZZ91j
	2XFuFZtivHi0M/+uMeAha7GKaY52zNh0Em+yn/ljI/QtBL4suy2Q1DBxirlWEdx+mvob
	lp/HRW+m5WpMvnN2E3wd3tsYzUI/18LIRyxj8albaLQ1Hs7/a8tfiK5kydgzUjOu12PU
	eLcw==
MIME-Version: 1.0
X-Received: by 10.224.60.199 with SMTP id q7mr24174460qah.80.1380956665166;
	Sat, 05 Oct 2013 00:04:25 -0700 (PDT)
Received: by 10.224.10.201 with HTTP; Sat, 5 Oct 2013 00:04:25 -0700 (PDT)
In-Reply-To: <CA+9-LvtmhquHdw7imNXWhEgU-GWwAsB=aBT8HkMK5B1f=NO8rg@mail.gmail.com>
References: <CAJ7VayiUNSvhFLE4iN4ZDnGYDmQK-P-7R7Xh03z4koo-z_=eOQ@mail.gmail.com>
	<CAJ7VaygyR5mxiMWNxaBYLOuphOwz8y04LMAtuvkbSiH_DWWv-Q@mail.gmail.com>
	<CAJ7VayjZm-_YCoBVMUg9NHOiYF3j8qw+d_Y8Ng02zXnxD6RZOw@mail.gmail.com>
	<CA+9-LvtmhquHdw7imNXWhEgU-GWwAsB=aBT8HkMK5B1f=NO8rg@mail.gmail.com>
Date: Sat, 5 Oct 2013 00:04:25 -0700
Message-ID: <CAMKF1srJvO++1AzCD86Lg1qQuBVhOQyHa8ERJN=QiT+zGeOvrQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: abhishek jain <ashujain9727@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: java cross compilation
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
X-List-Received-Date: Sat, 05 Oct 2013 07:04:26 -0000
Content-Type: multipart/alternative; boundary=001a11c2119c7a40b604e7f90795

--001a11c2119c7a40b604e7f90795
Content-Type: text/plain; charset=UTF-8

Sometimes download issues are transient so please retry, since meta-java
sources may not have been mirrored into the premier roars we have, its more
likely to happen

On Friday, October 4, 2013, abhishek jain wrote:

> Hi All,
>
> I need to cross compile openjdk-7-jre in ppc64 platform using Yocto.
>
> After setting the environment i am running "bitbake openjdok-7-jre"
> command but i am getting following error message:
>
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "i686-linux"
> NATIVELSBSTRING   = "Ubuntu-12.10"
> TARGET_SYS        = "powerpc-fsl_networking-linux"
> MACHINE           = "t4240rdb"
> DISTRO            = "fsl-networking"
> DISTRO_VERSION    = "1.4"
> TUNE_FEATURES     = "m32 fpu-hard e6500 altivec"
> TARGET_FPU        = "hard"
> meta
> meta-yocto
> meta-yocto-bsp    = "sdk-v1.4.x:16bfcaa96c074aac0a1f66d33b45fb33ba559325"
> meta-fsl-ppc      = "sdk-v1.4.x:324b1cb7fadce0bbf145b922ce2e1d9af9ba223b"
> meta-fsl-ppc-toolchain =
> "sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c5375034d723"
> meta-virtualization =
> "sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f878329d6f93"
> meta-fsl-networking =
> "(nobranch):77405d17c48607551e4f095fb2f79eb0c09b8430"
> meta-oe
> meta-networking   = "sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02ca263616"
> meta-java         = "master:de06956f93ecd15d8c941a05da47a4425e3d397a"
>
> NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for
> item openjdk-7-jre)
> NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
> NOTE: Resolving any missing task queue dependencies
> NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for
> item openjdk-7-common)
> NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
> NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for
> item openjdk-7-jre)
> NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
> NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for
> item openjdk-7-java)
> NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
> NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for
> item java2-runtime)
> NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
> NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not available (for
> item java2-vm)
> NOTE: versions of openjdk-7-jre available: 25b30-2.3.12
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: Failed to fetch URL
> http://archive.apache.org/dist/ant/source/apache-ant-1.8.1-src.tar.gz,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 4, no output
> ERROR: Function failed: Fetcher failure for URL: '
> http://archive.apache.org/dist/ant/source/apache-ant-1.8.1-src.tar.gz'.
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in:
> /home/anuj/freescale_1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/i686-linux/ant-native/1.8.1-r1/temp/log.do_fetch.13403
>
> ERROR: Task 209
> (/home/anuj/freescale_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/ant/
> ant-native_1.8.1.bb, do_fetch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1182 tasks of which 902 didn't need to be
> rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>
> /home/anuj/freescale_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/ant/
> ant-native_1.8.1.bb, do_fetch
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
>
> Please help me on fixing this issue.
>
>
> Thanks.
>  Abhishek Jain
>
>
>
>

--001a11c2119c7a40b604e7f90795
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Sometimes download issues are transient so please retry, since meta-java so=
urces may not have been mirrored into the premier roars we have, its more l=
ikely to happen<br><br>On Friday, October 4, 2013, abhishek jain  wrote:<br=
>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi All,<div class=3D"gmail_=
quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"lt=
r"><div class=3D"gmail_quote">
<div dir=3D"ltr"><div><br></div><div>I need to cross compile openjdk-7-jre =
in ppc64 platform using Yocto.</div>
<div><br></div><div>After setting the environment i am running &quot;bitbak=
e openjdok-7-jre&quot; command but i am getting following error message:</d=
iv>




<div><br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.1=
8.0&quot;
<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;i68=
6-linux&quot;
<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;Ubuntu-12.10&quot;
<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;powerpc-=
fsl_networking-linux&quot;
<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 &quot;t4240rdb&quot;
<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;fsl-networking&quot;
<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;1.4&quot;
<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m32 fpu-hard e6500 alti=
vec&quot;
<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;hard&quo=
t;
<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0
<br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
<br>meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;sdk-v1.4.x:16bfcaa96c074aac0=
a1f66d33b45fb33ba559325&quot;
<br>meta-fsl-ppc=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;sdk-v1.4.x:324b1cb=
7fadce0bbf145b922ce2e1d9af9ba223b&quot;
<br>meta-fsl-ppc-toolchain =3D &quot;sdk-v1.4.x:8ec94cec04527cb971c125b1ddd=
2c5375034d723&quot;
<br>meta-virtualization =3D &quot;sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f8=
78329d6f93&quot;
<br>meta-fsl-networking =3D &quot;(nobranch):77405d17c48607551e4f095fb2f79e=
b0c09b8430&quot;
<br>meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0
<br>meta-networking=C2=A0=C2=A0 =3D &quot;sdk-v1.4.x:7c8dd8f096b64a709175d3=
7a08a4fb02ca263616&quot;
<br>meta-java=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;mas=
ter:de06956f93ecd15d8c941a05da47a4425e3d397a&quot;
<br>=C2=A0<br>NOTE: preferred version 03b21-2.1.8 of openjdk-7-jre not avai=
lable (for item openjdk-7-jre)
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
<br>=C2=A0<br>Summary: 1 task failed:
<br>=C2=A0 /home/anuj/freescale_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java=
/recipes-core/ant/<a href=3D"http://ant-native_1.8.1.bb" target=3D"_blank">=
ant-native_1.8.1.bb</a>, do_fetch
<br>Summary: There was 1 WARNING message shown.
<br>Summary: There were 2 ERROR messages shown, returning a non-zero exit c=
ode.<br><br><br></div><div>Please help me on fixing this issue.<br><br><br>=
</div><div>Thanks.<span><font color=3D"#888888"><span><font color=3D"#88888=
8"><br>

</font></span></font></span></div><span><font color=3D"#888888">

<span><font color=3D"#888888"><div>Abhishek Jain<br></div></font></span></f=
ont></span></div>
</div><br></div>
</div></div></div><br></div>
</div><br></div>
</blockquote>

--001a11c2119c7a40b604e7f90795--
