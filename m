Return-Path: <amansh.sharma5@gmail.com>
Received: from mail-ob0-f193.google.com (mail-ob0-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE536E003F8
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 06:10:30 -0700 (PDT)
Received: by mail-ob0-f193.google.com with SMTP id dn14so390029obc.0
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 06:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=yNj4dlG/dG+P8bbFbv0MGCY/oVFjshSkBUNBpOCw7eQ=;
	b=QyULjmt7QprDaPHkquOlHkthsVfutYi1VCLRF2zHGpDEC1HTYVrcxcXuBknu0oU/3d
	aUpd96VdQqG/Rh/qhaMej90cx1hB6hrmOopd0OMLq/RMsO3H20q0o0i6bWZnp7tMtmxZ
	jdHuULnFsNG8x31/K32/N+KJUROpggnib87Q7Qq7K2J4X9H8a3o5WnxBPNjf0YfFvA++
	lk+pw/+ogbMRSXsiJZCdOh7lX2Q2AKqaliu2pLESJrnxjFalC2CvCNqb1Rl+F6gi496h
	pI8Pe6fdTTVEcFAk730/hlCy3Kuc4i6LxevMgqsJnZO1VnVzbDVECFEOyJs4amdwHNAd
	TDdA==
MIME-Version: 1.0
X-Received: by 10.182.199.74 with SMTP id ji10mr4486779obc.69.1375276229633;
	Wed, 31 Jul 2013 06:10:29 -0700 (PDT)
Received: by 10.182.52.105 with HTTP; Wed, 31 Jul 2013 06:10:29 -0700 (PDT)
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A016522AF@039-SN2MPN1-021.039d.mgd.msft.net>
References: <CAPMH7--cJ6ZOM_s3EzbQjBYCrYn90sAMSEvTLaDMuHmx+LapKQ@mail.gmail.com>
	<CA452391058F6D4E9715FB2C29D9312A016522AF@039-SN2MPN1-021.039d.mgd.msft.net>
Date: Wed, 31 Jul 2013 21:10:29 +0800
Message-ID: <CAPMH7-8ebq6KLtA7dtTBtrB6_vnXgEVY9ZY7hc0cLBz228wsog@mail.gmail.com>
From: Aman Sharma <amansh.sharma5@gmail.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Integrate java with yocto
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
X-List-Received-Date: Wed, 31 Jul 2013 13:10:32 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1c02422ae2404e2ce73c2

--e89a8ff1c02422ae2404e2ce73c2
Content-Type: text/plain; charset=ISO-8859-1

Hi Luo,

I am getting this error message.

freescale@freescale-sdk:~/SDK/QorIQ-SDK-V1.4-20130625-yocto/build_t4240qds_release$
bitbake fsl-image-core
Loading cache: 100%
|##################################################################################################################################|
ETA:  00:00:00
Loaded 3302 entries from dependency cache.

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-10.04"
TARGET_SYS        = "powerpc-fsl_networking-linux"
MACHINE           = "t4240qds"
DISTRO            = "fsl-networking"
DISTRO_VERSION    = "1.4"
TUNE_FEATURES     = "m32 fpu-hard e6500 altivec"
TARGET_FPU        = "hard"
meta
meta-yocto
meta-yocto-bsp    = "sdk-v1.4.x:5a7532143a49f59a5c85b08d3daf574fb1eccd8d"
meta-fsl-ppc      = "sdk-v1.4.x:f9fd0a617eb6913f87335c551918315ff4ebe18c"
meta-fsl-ppc-toolchain =
"sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c5375034d723"
meta-virtualization = "sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f878329d6f93"
meta-fsl-networking = "(nobranch):00f7a535029ca7ef8c96ba8e9916d4742166bab0"
meta-oe
meta-networking   = "sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02ca263616"
meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'jre-related-pkg-list' (but
/home/freescale/SDK/QorIQ-SDK-V1.4-20130625-yocto/meta-fsl-networking/images/
fsl-image-core.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'jre-related-pkg-list' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['jre-related-pkg-list']
ERROR: Required build target 'fsl-image-core' has no buildable providers.
Missing or unbuildable dependency chain was: ['fsl-image-core',
'jre-related-pkg-list']

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

I added the following line in local.conf file:
# Java preferences.  Could also be in distro config.
PREFERRED_PROVIDER_virtual/java-native = "jamvm-native"
PREFERRED_PROVIDER_virtual/javac-native = "ecj-bootstrap-native"
PREFERRED_VERSION_openjdk-7-jre = "03b21-2.1.8"
PREFERRED_VERSION_icedtea7-native = "2.1.3"
PREFERRED_PROVIDER_openjdk-7-jre = "openjdk-7-jre"


#By aman
IMAGE_INSTALL_append = "jre-related-pkg-list"

Can you please help me in this.
Thanks for your Response.

--
regards
Aman

--e89a8ff1c02422ae2404e2ce73c2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Luo,<div><br></div><div>I am getting this error message.<br><br></div>fr=
eescale@freescale-sdk:~/SDK/QorIQ-SDK-V1.4-20130625-yocto/build_t4240qds_re=
lease$ bitbake fsl-image-core<br>Loading cache: 100% |#####################=
###########################################################################=
##################################| ETA:=A0 00:00:00<br>
Loaded 3302 entries from dependency cache.<br><br>Build Configuration:<br>B=
B_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.18.0&quot;<br>BUILD_SYS=A0=A0=A0=
=A0=A0=A0=A0=A0 =3D &quot;i686-linux&quot;<br>NATIVELSBSTRING=A0=A0 =3D &qu=
ot;Ubuntu-10.04&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;powerpc-=
fsl_networking-linux&quot;<br>
MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;t4240qds&quot;<br>DISTRO=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;fsl-networking&quot;<br>DISTRO_VER=
SION=A0=A0=A0 =3D &quot;1.4&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;m3=
2 fpu-hard e6500 altivec&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot=
;hard&quot;<br>
meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0<br>meta-yocto=A0=A0=A0=A0=A0=
=A0 =A0<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;sdk-v1.4.x:5a7532143a49f59a5c8=
5b08d3daf574fb1eccd8d&quot;<br>meta-fsl-ppc=A0=A0=A0=A0=A0 =3D &quot;sdk-v1=
.4.x:f9fd0a617eb6913f87335c551918315ff4ebe18c&quot;<br>meta-fsl-ppc-toolcha=
in =3D &quot;sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c5375034d723&quot;<br>
meta-virtualization =3D &quot;sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f87832=
9d6f93&quot;<br>meta-fsl-networking =3D &quot;(nobranch):00f7a535029ca7ef8c=
96ba8e9916d4742166bab0&quot;<br>meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0<br>m=
eta-networking=A0=A0 =3D &quot;sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02c=
a263616&quot;<br>
meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:59696d89fd33df6953dcb2dd=
54ccd3b362513f28&quot;<br><br>NOTE: Resolving any missing task queue depend=
encies<br>ERROR: Nothing RPROVIDES &#39;jre-related-pkg-list&#39; (but /hom=
e/freescale/SDK/QorIQ-SDK-V1.4-20130625-yocto/meta-fsl-networking/images/<a=
 href=3D"http://fsl-image-core.bb">fsl-image-core.bb</a> RDEPENDS on or oth=
erwise requires it)<br>
NOTE: Runtime target &#39;jre-related-pkg-list&#39; is unbuildable, removin=
g...<br>Missing or unbuildable dependency chain was: [&#39;jre-related-pkg-=
list&#39;]<br>ERROR: Required build target &#39;fsl-image-core&#39; has no =
buildable providers.<br>
Missing or unbuildable dependency chain was: [&#39;fsl-image-core&#39;, &#3=
9;jre-related-pkg-list&#39;]<br><br>Summary: There were 2 ERROR messages sh=
own, returning a non-zero exit code.<br><br>I added the following line in l=
ocal.conf file:<br>
# Java preferences.=A0 Could also be in distro config.<br>PREFERRED_PROVIDE=
R_virtual/java-native =3D &quot;jamvm-native&quot;<br>PREFERRED_PROVIDER_vi=
rtual/javac-native =3D &quot;ecj-bootstrap-native&quot;<br>PREFERRED_VERSIO=
N_openjdk-7-jre =3D &quot;03b21-2.1.8&quot;<br>
PREFERRED_VERSION_icedtea7-native =3D &quot;2.1.3&quot;<br>PREFERRED_PROVID=
ER_openjdk-7-jre =3D &quot;openjdk-7-jre&quot;<br><br><br>#By aman<br>IMAGE=
_INSTALL_append =3D &quot;jre-related-pkg-list&quot;<br><br>Can you please =
help me in this.<br>
Thanks for your Response.<br><br>--<br>regards<br>Aman<br><br>=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br><br>

--e89a8ff1c02422ae2404e2ce73c2--
