Return-Path: <amansh.sharma5@gmail.com>
Received: from mail-ob0-f195.google.com (mail-ob0-f195.google.com
	[209.85.214.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E09FE01572
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 02:57:52 -0700 (PDT)
Received: by mail-ob0-f195.google.com with SMTP id wd6so1160612obb.6
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2013 02:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=WiCh16nmEQZAZBQn2Ta1kmZ/lgJVPuueeX3FzW81QO4=;
	b=cERa77utvLmD86grgNik2/a0vCEuId2yj56Drpe56MvwxG7cH2SW2VBm6xnPx01t1N
	/h+7UzvZedcKA53e/i4dLywB3m43FLj7+0YmEE1VSg4+OgQRMGps8X6QxsH8NzX1UiWi
	F4SgmFAnLdAGiUv4axedeNTx921aZVwoATZnSfPamyX8bL8Mw2gg72u42+s4Sh42E0Dz
	zpLXd1HoQtmFI8GOBLXzzEfnOVsBlYAqu33YtbPSiwkAeo6bc2mbECnSAa1wjbUM1+ty
	Ez4GrM5LxN26TKq7gr9X/D1LlM/zCwcnFdc0+rVF5HSt5gEIwiiCj+4oxMs35oELry9T
	6UqA==
MIME-Version: 1.0
X-Received: by 10.182.250.232 with SMTP id zf8mr498255obc.75.1375351071007;
	Thu, 01 Aug 2013 02:57:51 -0700 (PDT)
Received: by 10.182.52.105 with HTTP; Thu, 1 Aug 2013 02:57:50 -0700 (PDT)
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A01657971@039-SN2MPN1-021.039d.mgd.msft.net>
References: <CAPMH7--cJ6ZOM_s3EzbQjBYCrYn90sAMSEvTLaDMuHmx+LapKQ@mail.gmail.com>
	<CA452391058F6D4E9715FB2C29D9312A016522AF@039-SN2MPN1-021.039d.mgd.msft.net>
	<CAPMH7-8ebq6KLtA7dtTBtrB6_vnXgEVY9ZY7hc0cLBz228wsog@mail.gmail.com>
	<CA452391058F6D4E9715FB2C29D9312A01657971@039-SN2MPN1-021.039d.mgd.msft.net>
Date: Thu, 1 Aug 2013 15:27:50 +0530
Message-ID: <CAPMH7-8EuXvq-n-zqJzVz=Ct7g_DxmXKwKKVHb=mCKGFCosNEg@mail.gmail.com>
From: Aman Sharma <amansh.sharma5@gmail.com>
To: yocto@yoctoproject.org
Cc: rahul1991.arora@gmail.com
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
X-List-Received-Date: Thu, 01 Aug 2013 09:57:52 -0000
Content-Type: multipart/alternative; boundary=089e0160c45407688504e2dfe08e

--089e0160c45407688504e2dfe08e
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi all,

I intend to add java (openjdk) to my root file system. I was able to
successfully add meta-java layer and build the same, packages were built
but were not added to the root file system.

Following are the steps which i followed to include java in my powerpc.

1.  export
PATH=3D$PATH:/home/vvdn/yocto/QorIQ-SDK-V1.3.2-20130325-yocto/bitbake/bin/

2 ./scripts/host-prepare.sh

3 source ./fsl-setup-poky -m p1020rdb

Then i used following command to include meta-java utility.

git clone -b master git://github.com/woglinde/meta-java.git

With this i successfully installed meta-java utility.

The i added meta-java to bblayers.conf.file.

Then i added following lines to local.conf file.

# Java preferences.  Could also be in distro config.
  PREFERRED_PROVIDER_virtual/java-native =3D "jamvm-native"
  PREFERRED_PROVIDER_virtual/javac-native =3D "ecj-bootstrap-native"
  PREFERRED_VERSION_openjdk-7-jre =3D "03b21-2.1.8"
  PREFERRED_VERSION_icedtea7-native =3D "2.1.3"
  PREFERRED_PROVIDER_openjdk-7-jre =3D "openjdk-7-jre"

After this i tried.

4 bitbake openjdk-7-jre

5 bitbake fsl-image-core

After this i successfully build a root file system but meta-java was not
included in this build. Can anyone help me regarding this.

Thanks in advance for the help.

Regards

Aman Sharma
On Thu, Aug 1, 2013 at 7:45 AM, Luo Zhenhua-B19537 <B19537@freescale.com>wr=
ote:

>  Aman, ****
>
> ** **
>
> =93jre-related-pkg-list=94 is just a description, you need to replace it =
with
> actually package name(e.g. openjdk-7-jre). ****
>
> ** **
>
> ** **
>
> Best Regards,****
>
> ** **
>
> Zhenhua****
>
> ** **
>
> *From:* Aman Sharma [mailto:amansh.sharma5@gmail.com]
> *Sent:* Wednesday, July 31, 2013 9:10 PM
> *To:* Luo Zhenhua-B19537
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Integrate java with yocto****
>
> ** **
>
> Hi Luo,****
>
> ** **
>
> I am getting this error message.****
>
> freescale@freescale-sdk:~/SDK/QorIQ-SDK-V1.4-20130625-yocto/build_t4240qd=
s_release$
> bitbake fsl-image-core
> Loading cache: 100%
> |########################################################################=
##########################################################|
> ETA:  00:00:00
> Loaded 3302 entries from dependency cache.
>
> Build Configuration:
> BB_VERSION        =3D "1.18.0"
> BUILD_SYS         =3D "i686-linux"
> NATIVELSBSTRING   =3D "Ubuntu-10.04"
> TARGET_SYS        =3D "powerpc-fsl_networking-linux"
> MACHINE           =3D "t4240qds"
> DISTRO            =3D "fsl-networking"
> DISTRO_VERSION    =3D "1.4"
> TUNE_FEATURES     =3D "m32 fpu-hard e6500 altivec"
> TARGET_FPU        =3D "hard"
> meta
> meta-yocto
> meta-yocto-bsp    =3D "sdk-v1.4.x:5a7532143a49f59a5c85b08d3daf574fb1eccd8=
d"
> meta-fsl-ppc      =3D "sdk-v1.4.x:f9fd0a617eb6913f87335c551918315ff4ebe18=
c"
> meta-fsl-ppc-toolchain =3D
> "sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c5375034d723"
> meta-virtualization =3D "sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f878329d6=
f93"
> meta-fsl-networking =3D "(nobranch):00f7a535029ca7ef8c96ba8e9916d4742166b=
ab0"
> meta-oe
> meta-networking   =3D "sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02ca26361=
6"
> meta-java         =3D "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
>
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'jre-related-pkg-list' (but
> /home/freescale/SDK/QorIQ-SDK-V1.4-20130625-yocto/meta-fsl-networking/ima=
ges/
> fsl-image-core.bb RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'jre-related-pkg-list' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['jre-related-pkg-list']
> ERROR: Required build target 'fsl-image-core' has no buildable providers.
> Missing or unbuildable dependency chain was: ['fsl-image-core',
> 'jre-related-pkg-list']
>
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>
> I added the following line in local.conf file:
> # Java preferences.  Could also be in distro config.
> PREFERRED_PROVIDER_virtual/java-native =3D "jamvm-native"
> PREFERRED_PROVIDER_virtual/javac-native =3D "ecj-bootstrap-native"
> PREFERRED_VERSION_openjdk-7-jre =3D "03b21-2.1.8"
> PREFERRED_VERSION_icedtea7-native =3D "2.1.3"
> PREFERRED_PROVIDER_openjdk-7-jre =3D "openjdk-7-jre"
>
>
> #By aman
> IMAGE_INSTALL_append =3D "jre-related-pkg-list"
>
> Can you please help me in this.
> Thanks for your Response.
>
> --
> regards
> Aman
>
>                                                    ****
>

--089e0160c45407688504e2dfe08e
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi all,<div><span style=3D"color:rgb(34,34,34);line-height:19px"><br></span=
></div><div><span style=3D"color:rgb(34,34,34);line-height:19px">I intend t=
o add java (openjdk) to my root file system. I was able to successfully add=
 meta-java layer and build the same, packages were=A0</span><span style=3D"=
color:rgb(34,34,34);line-height:19px">built but were not added to the root =
file system.=A0</span><span style=3D"color:rgb(34,34,34);line-height:19px">=
</span></div>
<div><br></div><div>Following are the steps which i followed to include jav=
a in my powerpc.</div><div><br></div><div>1. =A0export PATH=3D$PATH:/home/v=
vdn/yocto/QorIQ-SDK-V1.3.2-20130325-yocto/bitbake/bin/<div><br></div><div>2=
 ./scripts/host-prepare.sh</div>
<div><br></div><div>3 source ./fsl-setup-poky -m p1020rdb</div><div><br></d=
iv><div>Then i used following command to include meta-java utility.</div><d=
iv><br></div><div>git clone -b master git://<a href=3D"http://github.com/wo=
glinde/meta-java.git">github.com/woglinde/meta-java.git</a></div>
<div><br></div><div>With this i successfully installed meta-java utility. =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div><div>The i added meta-=
java to bblayers.conf.file.</div><div><span style=3D"color:rgb(69,77,75);fo=
nt-family:&#39;Open Sans&#39;;font-size:13px;background-color:rgb(250,249,2=
45)"><br>
</span></div><div><font color=3D"#454d4b" face=3D"Open Sans">Then i added f=
ollowing lines to local.conf file.</font></div><div><span style=3D"color:rg=
b(69,77,75);font-family:&#39;Open Sans&#39;;background-color:rgb(250,249,24=
5)">=A0</span></div>
<div><span style=3D"color:rgb(69,77,75);font-family:&#39;Open Sans&#39;;bac=
kground-color:rgb(250,249,245)"># Java preferences. =A0Could also be in dis=
tro config.=A0</span><br style=3D"color:rgb(69,77,75);font-family:&#39;Open=
 Sans&#39;;background-color:rgb(250,249,245)">
<span style=3D"color:rgb(69,77,75);font-family:&#39;Open Sans&#39;;backgrou=
nd-color:rgb(250,249,245)">=A0 PREFERRED_PROVIDER_virtual/java-native =3D &=
quot;jamvm-native&quot;=A0</span><br style=3D"color:rgb(69,77,75);font-fami=
ly:&#39;Open Sans&#39;;background-color:rgb(250,249,245)">
<span style=3D"color:rgb(69,77,75);font-family:&#39;Open Sans&#39;;backgrou=
nd-color:rgb(250,249,245)">=A0 PREFERRED_PROVIDER_virtual/javac-native =3D =
&quot;ecj-bootstrap-native&quot;=A0</span><br style=3D"color:rgb(69,77,75);=
font-family:&#39;Open Sans&#39;;background-color:rgb(250,249,245)">
<span style=3D"color:rgb(69,77,75);font-family:&#39;Open Sans&#39;;backgrou=
nd-color:rgb(250,249,245)">=A0 PREFERRED_VERSION_openjdk-7-jre =3D &quot;03=
b21-2.1.8&quot;=A0</span><br style=3D"color:rgb(69,77,75);font-family:&#39;=
Open Sans&#39;;background-color:rgb(250,249,245)">
<span style=3D"color:rgb(69,77,75);font-family:&#39;Open Sans&#39;;backgrou=
nd-color:rgb(250,249,245)">=A0 PREFERRED_VERSION_icedtea7-native =3D &quot;=
2.1.3&quot;=A0</span><br style=3D"color:rgb(69,77,75);font-family:&#39;Open=
 Sans&#39;;background-color:rgb(250,249,245)">
<span style=3D"color:rgb(69,77,75);font-family:&#39;Open Sans&#39;;backgrou=
nd-color:rgb(250,249,245)">=A0 PREFERRED_PROVIDER_openjdk-7-jre =3D &quot;o=
penjdk-7-jre&quot;=A0</span><br style=3D"color:rgb(69,77,75);font-family:&#=
39;Open Sans&#39;;background-color:rgb(250,249,245)">
</div><div><br></div><div>After this i tried.</div><div><br></div><div>4 bi=
tbake openjdk-7-jre</div><div><br></div><div>5 bitbake fsl-image-core</div>=
<div><br></div><div>After this i successfully build a root file system but =
meta-java was not included in this build. Can anyone help me regarding this=
.</div>
<div><br></div>Thanks in advance for the help.</div><div><br></div><div>Reg=
ards</div><div><br></div><div>Aman Sharma<br><div class=3D"gmail_quote">On =
Thu, Aug 1, 2013 at 7:45 AM, Luo Zhenhua-B19537 <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:B19537@freescale.com" target=3D"_blank">B19537@freescale.com</=
a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Aman,
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=93jre-related-pkg-list=
=94 is just a description, you need to replace it with actually package nam=
e(e.g. openjdk-7-jre).
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Best Regards,<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Zhenhua<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Aman Sha=
rma [mailto:<a href=3D"mailto:amansh.sharma5@gmail.com" target=3D"_blank">a=
mansh.sharma5@gmail.com</a>]
<br>
<b>Sent:</b> Wednesday, July 31, 2013 9:10 PM<br>
<b>To:</b> Luo Zhenhua-B19537<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Integrate java with yocto<u></u><u></u></span><=
/p>
</div>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Hi Luo,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I am getting this err=
or message.<u></u><u></u></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">freescale@freescale-s=
dk:~/SDK/QorIQ-SDK-V1.4-20130625-yocto/build_t4240qds_release$ bitbake fsl-=
image-core<br>
Loading cache: 100% |######################################################=
###########################################################################=
#| ETA:=A0 00:00:00<br>
Loaded 3302 entries from dependency cache.<br>
<br>
Build Configuration:<br>
BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.18.0&quot;<br>
BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;i686-linux&quot;<br>
NATIVELSBSTRING=A0=A0 =3D &quot;Ubuntu-10.04&quot;<br>
TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;powerpc-fsl_networking-linux&quot=
;<br>
MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;t4240qds&quot;<br>
DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;fsl-networking&quot;<br>
DISTRO_VERSION=A0=A0=A0 =3D &quot;1.4&quot;<br>
TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;m32 fpu-hard e6500 altivec&quot;<br>
TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;hard&quot;<br>
meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0<br>
meta-yocto=A0=A0=A0=A0=A0=A0 =A0<br>
meta-yocto-bsp=A0=A0=A0 =3D &quot;sdk-v1.4.x:5a7532143a49f59a5c85b08d3daf57=
4fb1eccd8d&quot;<br>
meta-fsl-ppc=A0=A0=A0=A0=A0 =3D &quot;sdk-v1.4.x:f9fd0a617eb6913f87335c5519=
18315ff4ebe18c&quot;<br>
meta-fsl-ppc-toolchain =3D &quot;sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c53=
75034d723&quot;<br>
meta-virtualization =3D &quot;sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f87832=
9d6f93&quot;<br>
meta-fsl-networking =3D &quot;(nobranch):00f7a535029ca7ef8c96ba8e9916d47421=
66bab0&quot;<br>
meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0<br>
meta-networking=A0=A0 =3D &quot;sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02=
ca263616&quot;<br>
meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:59696d89fd33df6953dcb2dd=
54ccd3b362513f28&quot;<br>
<br>
NOTE: Resolving any missing task queue dependencies<br>
ERROR: Nothing RPROVIDES &#39;jre-related-pkg-list&#39; (but /home/freescal=
e/SDK/QorIQ-SDK-V1.4-20130625-yocto/meta-fsl-networking/images/<a href=3D"h=
ttp://fsl-image-core.bb" target=3D"_blank">fsl-image-core.bb</a> RDEPENDS o=
n or otherwise requires it)<br>

NOTE: Runtime target &#39;jre-related-pkg-list&#39; is unbuildable, removin=
g...<br>
Missing or unbuildable dependency chain was: [&#39;jre-related-pkg-list&#39=
;]<br>
ERROR: Required build target &#39;fsl-image-core&#39; has no buildable prov=
iders.<br>
Missing or unbuildable dependency chain was: [&#39;fsl-image-core&#39;, &#3=
9;jre-related-pkg-list&#39;]<br>
<br>
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.=
<br>
<br>
I added the following line in local.conf file:<br>
# Java preferences.=A0 Could also be in distro config.<br>
PREFERRED_PROVIDER_virtual/java-native =3D &quot;jamvm-native&quot;<br>
PREFERRED_PROVIDER_virtual/javac-native =3D &quot;ecj-bootstrap-native&quot=
;<br>
PREFERRED_VERSION_openjdk-7-jre =3D &quot;03b21-2.1.8&quot;<br>
PREFERRED_VERSION_icedtea7-native =3D &quot;2.1.3&quot;<br>
PREFERRED_PROVIDER_openjdk-7-jre =3D &quot;openjdk-7-jre&quot;<br>
<br>
<br>
#By aman<br>
IMAGE_INSTALL_append =3D &quot;jre-related-pkg-list&quot;<br>
<br>
Can you please help me in this.<br>
Thanks for your Response.<br>
<br>
--<br>
regards<br>
Aman<br>
<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 <u></u><u></u></p>
</div></div></div>
</div>
</div>

</blockquote></div><br></div>

--089e0160c45407688504e2dfe08e--
