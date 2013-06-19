Return-Path: <gschmottlach@gmail.com>
Received: from mail-wi0-f193.google.com (mail-wi0-f193.google.com
	[209.85.212.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B70FBE00496
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 14:05:02 -0700 (PDT)
Received: by mail-wi0-f193.google.com with SMTP id k10so429299wiv.8
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 14:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=rwr9lvVS1GDgV8LFSMXr+CoSpoqj3vzDEnZUwo66pas=;
	b=nIsC1X1uPKr0tSXwUz881hXPJmKyWGSO86bwAOSIFo7uDtg0xDB/DlxkfXeE34tT+S
	MGkyUJwCdaGTdjqSqkcrFw+6P9UKqoCF3P9YGZghctgXMRqtvSjAhhDVv2d+HuTkWK9f
	IUAog/iKvCCnsPCN7tSg6KrDsdFSXo5CfuNAOBWeZF5QGVpCLQ157l7Am+jHxq3yC4Ye
	tw5/sd4O5npM4Tvl2dei/p4vYjsxuwHRsimUWzJFQSR+Dy+U671KjNMfjySThDyfGqBy
	FuLktBvZOoDwxkjfg8Vyn2cyYAma9VB3i5BSgDXotQmMyY6o5Sa2y3lvt9N5KH3Fm0Cl
	UDww==
MIME-Version: 1.0
X-Received: by 10.180.105.231 with SMTP id gp7mr5713700wib.23.1371675900654;
	Wed, 19 Jun 2013 14:05:00 -0700 (PDT)
Received: by 10.195.12.116 with HTTP; Wed, 19 Jun 2013 14:05:00 -0700 (PDT)
Date: Wed, 19 Jun 2013 17:05:00 -0400
Message-ID: <CAMS2kBGbttiHR76+GTBCPO_vh8SZXh56sGVajB-6srrnc2EBcQ@mail.gmail.com>
From: Glenn Schmottlach <gschmottlach@gmail.com>
To: yocto@yoctoproject.org
Subject: Trying to Integrate QNX's Neutrino 6.5.0 toolcain into OE/Yocto as a foreign (external) tool-chain
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
X-List-Received-Date: Wed, 19 Jun 2013 21:05:03 -0000
Content-Type: multipart/alternative; boundary=f46d0442881ace3c6504df882efe

--f46d0442881ace3c6504df882efe
Content-Type: text/plain; charset=ISO-8859-1

The company I work for tends to do a fair amount of work in both Linux and
QNX. Primarily we use the Bitbake/OpenEmbedded/Yocto build framework to
build individual recipes (packages, e.g. libraries, apps, etc...) and
ultimately Linux BSP images for several HW platforms and CPUs. As I
understand it the OpenEmbedded framework supports external (binary)
tool-chains (e.g. like those provided with QNX's Linux host tools which are
gcc based) so my thoughts have been focused on integrating the QNX
tool-chain into the OpenEmbedded/Yocto framework. Ideally, with suitable
recipes and the layering system provided by the framework, it seems
plausible that I *should* be able to generate QNX
executables/libraries/images using this build framework on a Linux host.

Has anyone out there attempted this? Is this even feasible since OE/Yocto
tends to be so Linux focused. I suspect it could be a great option for
people (like myself) who must do development under both platforms and want
to create a common build/packaging processes. For my first attempt, I'm not
as interested in a full QNX image as selectively building several
middle-ware components that are very portable (mostly 'C' code only - no
strict Linux dependencies).

So far I've examined the Linaro and Code Sourcery toolchain meta-layers.
I've tried to to implement my own QNX tool-chain but it's not clear if it's
possible to selectively apply this to specific recipes. I've found
instructions here for OE:

http://www.openembedded.org/wiki/Adding_a_secondary_toolchain

but these seems significantly different from the approaches I've seen
implemented for Linaro and Code Sourcery. Which one is the correct approach
. . . will they both work under Yocto? Also, QNX is *not* eglibc based (it
uses Dinkumware C/C++ libraries) so I'm not sure how that might impact the
layer. Likewise there are no Linux headers, etc... Also, it's not real
clear on how to "enable" this external tool-chain and if it can be done
selectively per recipe. I've been racking my brain on this topic. Any
helpful guidance would be appreciated.

--f46d0442881ace3c6504df882efe
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>The company I work for tends to do a fair amount=
 of work in both Linux and QNX. Primarily we use the Bitbake/OpenEmbedded/Y=
octo build framework to build individual recipes (packages, e.g. libraries,=
 apps, etc...) and ultimately Linux BSP images for several HW platforms and=
 CPUs. As I understand it the OpenEmbedded framework supports external (bin=
ary) tool-chains (e.g. like those provided with QNX&#39;s Linux host tools =
which are gcc based) so my thoughts have been focused on integrating the QN=
X tool-chain into the OpenEmbedded/Yocto framework. Ideally, with suitable =
recipes and the layering system provided by the framework, it seems plausib=
le that I *should* be able to generate QNX executables/libraries/images usi=
ng this build framework on a Linux host.<br>
<br>Has anyone out there attempted this? Is this even feasible since OE/Yoc=
to tends to be so Linux focused. I suspect it could be a great option for p=
eople (like myself) who must do development under both platforms and want t=
o create a common build/packaging processes. For my first attempt, I&#39;m =
not as interested in a full QNX image as selectively building several middl=
e-ware components that are very portable (mostly &#39;C&#39; code only - no=
 strict Linux dependencies).<br>
<br></div>So far I&#39;ve examined the Linaro and Code Sourcery toolchain m=
eta-layers. I&#39;ve tried to to implement my own QNX tool-chain but it&#39=
;s not clear if it&#39;s possible to selectively apply this to specific rec=
ipes. I&#39;ve found instructions here for OE:<br>
<br><a href=3D"http://www.openembedded.org/wiki/Adding_a_secondary_toolchai=
n">http://www.openembedded.org/wiki/Adding_a_secondary_toolchain</a><br><br=
></div>but these seems significantly different from the approaches I&#39;ve=
 seen implemented for Linaro and Code Sourcery. Which one is the correct ap=
proach . . . will they both work under Yocto? Also, QNX is *not* eglibc bas=
ed (it uses Dinkumware C/C++ libraries) so I&#39;m not sure how that might =
impact the layer. Likewise there are no Linux headers, etc... Also, it&#39;=
s not real clear on how to &quot;enable&quot; this external tool-chain and =
if it can be done selectively per recipe. I&#39;ve been racking my brain on=
 this topic. Any helpful guidance would be appreciated.<br>
=A0 <br></div>

--f46d0442881ace3c6504df882efe--
