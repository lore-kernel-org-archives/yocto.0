Return-Path: <amansh.sharma5@gmail.com>
Received: from mail-ob0-f193.google.com (mail-ob0-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C144E003D3
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 09:41:59 -0700 (PDT)
Received: by mail-ob0-f193.google.com with SMTP id dn14so649660obc.8
	for <yocto@yoctoproject.org>; Fri, 02 Aug 2013 09:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Q5pEjZZAKwQzYlxLWgaaapyLeECccW9AF1njakPWwnk=;
	b=cjmvry9EexZJySx6tmyw1Zymjo7mm2Yy1z6+nnnxq6CRUBaLV78Is0K4w6UFR+6Jpv
	qCfdhgB50R385t6H+2SVMm6I163Fx6wV4rb7EGPWtqknD/AHZUgNBrIcxZPqy2d9A+YN
	1Za/tmiUmoh0lZFigdPsMsY41mmDoGiFf96d2fI8A2ENIuNbQfvz+qczBy82UDcKxpCL
	4HPyC89V/EjGCBwA2bgCHj/2jW1bs8KRyWqa/onpD7G1LXvwwrysF2mZY6djLtPG8kSF
	xY+lveMawMtafEZkhIcjX2t5Qp6aZgs6B6hKaCm0vQZSfn8ykoeA2vj9L/YHh+8I/41a
	qPRg==
MIME-Version: 1.0
X-Received: by 10.182.45.195 with SMTP id p3mr5973815obm.29.1375461718935;
	Fri, 02 Aug 2013 09:41:58 -0700 (PDT)
Received: by 10.182.52.105 with HTTP; Fri, 2 Aug 2013 09:41:58 -0700 (PDT)
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A01657E94@039-SN2MPN1-021.039d.mgd.msft.net>
References: <CAPMH7--cJ6ZOM_s3EzbQjBYCrYn90sAMSEvTLaDMuHmx+LapKQ@mail.gmail.com>
	<CA452391058F6D4E9715FB2C29D9312A016522AF@039-SN2MPN1-021.039d.mgd.msft.net>
	<CAPMH7-8ebq6KLtA7dtTBtrB6_vnXgEVY9ZY7hc0cLBz228wsog@mail.gmail.com>
	<CA452391058F6D4E9715FB2C29D9312A01657971@039-SN2MPN1-021.039d.mgd.msft.net>
	<CAPMH7-8EuXvq-n-zqJzVz=Ct7g_DxmXKwKKVHb=mCKGFCosNEg@mail.gmail.com>
	<CA452391058F6D4E9715FB2C29D9312A01657E94@039-SN2MPN1-021.039d.mgd.msft.net>
Date: Fri, 2 Aug 2013 22:11:58 +0530
Message-ID: <CAPMH7-_FgG4+UuBcCa2W9icPs3jHMuKTGDqMARsfO_u0aKe6ZQ@mail.gmail.com>
From: Aman Sharma <amansh.sharma5@gmail.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"rahul1991.arora@gmail.com" <rahul1991.arora@gmail.com>
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
X-List-Received-Date: Fri, 02 Aug 2013 16:42:00 -0000
Content-Type: multipart/alternative; boundary=089e01537e4228cd4304e2f9a36e

--089e01537e4228cd4304e2f9a36e
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Luo,

Thanks for your response.

We have successfully installed java through yocto utility.But I want to
conform whether Curl package is by default installed in this utility or
not. I am not sure about this.But I saw that in recipes-support directory,
curl packages are there.

Or we need to put it into recipes-core directory and build it again.
Let say if support is there, and if it needs some configuration then please
help us.


--
Regards
Aman


On Thu, Aug 1, 2013 at 3:34 PM, Luo Zhenhua-B19537 <B19537@freescale.com>wr=
ote:

>  Add IMAGE_INSTALL_append =3D =93 openjdk-7-jre=94 and rebuild fsl-image-=
core,
> please be aware the leading space after first =93. ****
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
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Aman Sharma
> *Sent:* Thursday, August 01, 2013 5:58 PM
> *To:* yocto@yoctoproject.org
> *Cc:* rahul1991.arora@gmail.com
>
> *Subject:* Re: [yocto] Integrate java with yocto****
>
>  ** **
>
> Hi all,****
>
> ** **
>
> I intend to add java (openjdk) to my root file system. I was able to
> successfully add meta-java layer and build the same, packages were built
> but were not added to the root file system. ****
>
> ** **
>
> Following are the steps which i followed to include java in my powerpc.**=
*
> *
>
> ** **
>
> 1.  export
> PATH=3D$PATH:/home/vvdn/yocto/QorIQ-SDK-V1.3.2-20130325-yocto/bitbake/bin=
/**
> **
>
> *[Luo Zhenhua-B19537] this step is not necessary, steps 3 will set the
> path for you. *****
>
> ** **
>
> 2 ./scripts/host-prepare.sh****
>
> ** **
>
> 3 source ./fsl-setup-poky -m p1020rdb****
>
> ** **
>
> Then i used following command to include meta-java utility.****
>
> ** **
>
> git clone -b master git://github.com/woglinde/meta-java.git****
>
> ** **
>
> With this i successfully installed meta-java utility.
>                                         ****
>
> The i added meta-java to bblayers.conf.file.****
>
> ** **
>
> Then i added following lines to local.conf file.****
>
>  ****
>
> # Java preferences.  Could also be in distro config.
>   PREFERRED_PROVIDER_virtual/java-native =3D "jamvm-native"
>   PREFERRED_PROVIDER_virtual/javac-native =3D "ecj-bootstrap-native"
>   PREFERRED_VERSION_openjdk-7-jre =3D "03b21-2.1.8"
>   PREFERRED_VERSION_icedtea7-native =3D "2.1.3"
>   PREFERRED_PROVIDER_openjdk-7-jre =3D "openjdk-7-jre" ****
>
> ** **
>
> After this i tried.****
>
> ** **
>
> 4 bitbake openjdk-7-jre****
>
> ** **
>
> 5 bitbake fsl-image-core****
>
> ** **
>
> After this i successfully build a root file system but meta-java was not
> included in this build. Can anyone help me regarding this.****
>
> ** **
>
> Thanks in advance for the help.****
>
> ** **
>
> Regards****
>
> ** **
>
> Aman Sharma****
>
> On Thu, Aug 1, 2013 at 7:45 AM, Luo Zhenhua-B19537 <B19537@freescale.com>
> wrote:****
>
> Aman, ****
>
>  ****
>
> =93jre-related-pkg-list=94 is just a description, you need to replace it =
with
> actually package name(e.g. openjdk-7-jre). ****
>
>  ****
>
>  ****
>
> Best Regards,****
>
>  ****
>
> Zhenhua****
>
>  ****
>
> *From:* Aman Sharma [mailto:amansh.sharma5@gmail.com]
> *Sent:* Wednesday, July 31, 2013 9:10 PM
> *To:* Luo Zhenhua-B19537
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Integrate java with yocto****
>
>  ****
>
> Hi Luo,****
>
>  ****
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
> ** **
>

--089e01537e4228cd4304e2f9a36e
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Luo,<div><br></div><div>Thanks for your response.</div><div><br></div><d=
iv>We have successfully installed java through yocto utility.But I want to =
conform whether Curl package is by default installed in this utility or not=
. I am not sure about this.But I saw that in recipes-support directory, cur=
l packages are there.</div>

<div><br></div><div>Or we need to put it into recipes-core directory and bu=
ild it again.</div><div>Let say if support is there, and if it needs some c=
onfiguration then please help us.</div><div><br></div><div><br></div><div>

--</div><div>Regards</div><div>Aman</div><div>=A0=A0<br><br><div class=3D"g=
mail_quote">On Thu, Aug 1, 2013 at 3:34 PM, Luo Zhenhua-B19537 <span dir=3D=
"ltr">&lt;<a href=3D"mailto:B19537@freescale.com" target=3D"_blank">B19537@=
freescale.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Add IMAGE_INSTALL_append =
=3D =93 openjdk-7-jre=94 and rebuild fsl-image-core, please be aware the le=
ading space after first =93.
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
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Aman Sharma<br>
<b>Sent:</b> Thursday, August 01, 2013 5:58 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Cc:</b> <a href=3D"mailto:rahul1991.arora@gmail.com" target=3D"_blank">r=
ahul1991.arora@gmail.com</a></span></p><div><br>
<b>Subject:</b> Re: [yocto] Integrate java with yocto<u></u><u></u></div><p=
></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Hi all,<u></u><u></u></p><div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#222222">I intend to add java (=
openjdk) to my root file system. I was able to successfully add meta-java l=
ayer and build the same, packages were=A0built but were not added to the ro=
ot file system.=A0</span><u></u><u></u></p>


</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Following are the steps which i followed to include =
java in my powerpc.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
</div><div>
<p class=3D"MsoNormal">1. =A0export PATH=3D$PATH:/home/vvdn/yocto/QorIQ-SDK=
-V1.3.2-20130325-yocto/bitbake/bin/<u></u><u></u></p>
<p class=3D"MsoNormal"><b><i><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">[Luo Zhenhua-B19537=
] this step is not necessary, steps 3 will set the path for you.
</span></i></b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,&quot;sans-serif&quot;;color:#1f497d"><u></u><u></u></span></p><div><di=
v>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">2 ./scripts/host-prepare.sh<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">3 source ./fsl-setup-poky -m p1020rdb<u></u><u></u><=
/p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Then i used following command to include meta-java u=
tility.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">git clone -b master git://<a href=3D"http://github.c=
om/woglinde/meta-java.git" target=3D"_blank">github.com/woglinde/meta-java.=
git</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">With this i successfully installed meta-java utility=
. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The i added meta-java to bblayers.conf.file.<u></u><=
u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Open Sans&quot;,&qu=
ot;serif&quot;;color:#454d4b">Then i added following lines to local.conf fi=
le.</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Open Sans&quot;,&qu=
ot;serif&quot;;color:#454d4b;background:#faf9f5">=A0</span><u></u><u></u></=
p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Open Sans&quot;,&qu=
ot;serif&quot;;color:#454d4b;background:#faf9f5"># Java preferences. =A0Cou=
ld also be in distro config.=A0</span><span style=3D"font-family:&quot;Open=
 Sans&quot;,&quot;serif&quot;;color:#454d4b"><br>


<span style=3D"background:#faf9f5">=A0 PREFERRED_PROVIDER_virtual/java-nati=
ve =3D &quot;jamvm-native&quot;=A0</span><br>
<span style=3D"background:#faf9f5">=A0 PREFERRED_PROVIDER_virtual/javac-nat=
ive =3D &quot;ecj-bootstrap-native&quot;=A0</span><br>
<span style=3D"background:#faf9f5">=A0 PREFERRED_VERSION_openjdk-7-jre =3D =
&quot;03b21-2.1.8&quot;=A0</span><br>
<span style=3D"background:#faf9f5">=A0 PREFERRED_VERSION_icedtea7-native =
=3D &quot;2.1.3&quot;=A0</span><br>
<span style=3D"background:#faf9f5">=A0 PREFERRED_PROVIDER_openjdk-7-jre =3D=
 &quot;openjdk-7-jre&quot;=A0</span></span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">After this i tried.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">4 bitbake openjdk-7-jre<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">5 bitbake fsl-image-core<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">After this i successfully build a root file system b=
ut meta-java was not included in this build. Can anyone help me regarding t=
his.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<p class=3D"MsoNormal">Thanks in advance for the help.<u></u><u></u></p>
</div></div></div><div><div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Regards<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Aman Sharma<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">On Thu, Aug 1, 2013 at 7:45 AM, Luo Zhenhua-B19537 &=
lt;<a href=3D"mailto:B19537@freescale.com" target=3D"_blank">B19537@freesca=
le.com</a>&gt; wrote:<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Aman,
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=93jre-related-pkg-list=
=94 is just a description, you need to replace it with actually package nam=
e(e.g.
 openjdk-7-jre). </span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Best Regards,</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Zhenhua</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
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
<b>Subject:</b> Re: [yocto] Integrate java with yocto</span><u></u><u></u><=
/p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Hi Luo,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
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
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
</div></div></div>
</div>
</div>

</blockquote></div><br></div>

--089e01537e4228cd4304e2f9a36e--
