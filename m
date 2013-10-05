Return-Path: <soniaverma9727@gmail.com>
Received: from mail-wg0-f67.google.com (mail-wg0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85F78E01621
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 23:39:22 -0700 (PDT)
Received: by mail-wg0-f67.google.com with SMTP id m15so844097wgh.10
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2013 23:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=FEMSubLqwrWyRA72OyvKomL8F9XVc363YzhBaT3lS5I=;
	b=JGwYKmnq43FxKBARV+5uL7DJBqMQYZZx/z57LtJL4vrf7qKE96HH5Wqkk6Mwbb1XdR
	45y1WdiHlYmG3QZ+ineEcDzzKGadEJw9PC8McTDp1I8ftx7Eyq8NxOd7kp6zkbnnvD7p
	QPiwGUwJvIFMHdn/EH0/jTEr3Rqj8XwZPRkOf/P7lzsLc4WAp/YKgMaG5TuXbcrCvKwG
	Fds/q6cKDZ1xXqRbea+xBnolJTWLhvl8PhMRYs8ybghFSEU1a/oGyumXwlauFbMiPrgA
	Wf8c4EOA5H96HmqMloQG9qmn8WQ3rnf02T+wAQ0PRs9bAOcZ9SEYt/fA3iMB5VUSu/9I
	28iw==
MIME-Version: 1.0
X-Received: by 10.180.206.42 with SMTP id ll10mr10456368wic.50.1380955161252; 
	Fri, 04 Oct 2013 23:39:21 -0700 (PDT)
Received: by 10.194.25.162 with HTTP; Fri, 4 Oct 2013 23:39:21 -0700 (PDT)
Date: Sat, 5 Oct 2013 12:09:21 +0530
Message-ID: <CAJ7VayiUNSvhFLE4iN4ZDnGYDmQK-P-7R7Xh03z4koo-z_=eOQ@mail.gmail.com>
From: sonia verma <soniaverma9727@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 09 Oct 2013 07:14:49 -0700
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
X-List-Received-Date: Sat, 05 Oct 2013 06:39:24 -0000
Content-Type: multipart/alternative; boundary=001a11c38462d6561804e7f8adf2

--001a11c38462d6561804e7f8adf2
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
Sonia

--001a11c38462d6561804e7f8adf2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I need to cross compile openjdk=
-7-jre in ppc64 platform using Yocto.</div><div><br></div><div>After settin=
g the environment i am running &quot;bitbake openjdok-7-jre&quot; command b=
ut i am getting following error message:</div>


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
ant/source/apache-ant-1.8.1-src.tar.gz">http://archive.apache.org/dist/ant/=
source/apache-ant-1.8.1-src.tar.gz</a>, attempting MIRRORS if available
<br>ERROR: Fetcher failure: Fetch command failed with exit code 4, no outpu=
t
<br>ERROR: Function failed: Fetcher failure for URL: &#39;<a href=3D"http:/=
/archive.apache.org/dist/ant/source/apache-ant-1.8.1-src.tar.gz">http://arc=
hive.apache.org/dist/ant/source/apache-ant-1.8.1-src.tar.gz</a>&#39;. Unabl=
e to fetch URL from any source.
<br>ERROR: Logfile of failure stored in: /home/anuj/freescale_1.4/QorIQ-SDK=
-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/i686-linux/ant-native/=
1.8.1-r1/temp/log.do_fetch.13403
<br>ERROR: Task 209 (/home/anuj/freescale_1.4/QorIQ-SDK-V1.4-20130814-yocto=
/meta-java/recipes-core/ant/<a href=3D"http://ant-native_1.8.1.bb">ant-nati=
ve_1.8.1.bb</a>, do_fetch) failed with exit code &#39;1&#39;
<br>NOTE: Tasks Summary: Attempted 1182 tasks of which 902 didn&#39;t need =
to be rerun and 1 failed.
<br>Waiting for 0 running tasks to finish:
<br>=A0<br>Summary: 1 task failed:
<br>=A0 /home/anuj/freescale_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/re=
cipes-core/ant/<a href=3D"http://ant-native_1.8.1.bb">ant-native_1.8.1.bb</=
a>, do_fetch
<br>Summary: There was 1 WARNING message shown.
<br>Summary: There were 2 ERROR messages shown, returning a non-zero exit c=
ode.<br><br><br></div><div>Please help me on fixing this issue.<br><br><br>=
</div><div>Thanks.<br></div><div>Sonia<br></div></div>

--001a11c38462d6561804e7f8adf2--
