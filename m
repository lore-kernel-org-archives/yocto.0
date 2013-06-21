Return-Path: <gschmottlach@gmail.com>
Received: from mail-we0-f193.google.com (mail-we0-f193.google.com
	[74.125.82.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 238E9E01409
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 07:12:43 -0700 (PDT)
Received: by mail-we0-f193.google.com with SMTP id q58so2361758wes.8
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 07:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=mXvrA+27kFWoDAsBkbyfRtbYWJlYZdUGPM79R3AT+7o=;
	b=apm4BbCuYH8Hf4kibK7u6zmTPLDLB4GTkaLgHWcFdCAl3XjYIa5OE3KA3xwIoy3B/i
	l3YlhzYXKAsD+pZR4zwNxNvjcL4a849+GBemfUch+8PgKPQFXggGf8laO3I/TW7wT85G
	QCxMlO2iTVne0jlRwI0v7D5DAwBfESfSySwzMuxsYjvwLWFpW0ShUAZwcRSHkfzhmomN
	9d6/hK9Um0wzRsnoys/bytnUrL5zTI79+9rxJqwTpr/CCMmDnXA1Ke/sz41fBtxVGkRC
	kAS2HHPlI0aZM0EWmWdJMsK0Fs9VqHcLhajSwgG1UFV0HxOYP2psEfxmniXrkEKIOiDA
	5jzg==
MIME-Version: 1.0
X-Received: by 10.180.108.168 with SMTP id hl8mr2939626wib.23.1371823962240;
	Fri, 21 Jun 2013 07:12:42 -0700 (PDT)
Received: by 10.195.12.116 with HTTP; Fri, 21 Jun 2013 07:12:42 -0700 (PDT)
Date: Fri, 21 Jun 2013 10:12:42 -0400
Message-ID: <CAMS2kBEOG6OjrwcRguCjnctsa4OPgv6M=5st8-Vi09i3XO2aUA@mail.gmail.com>
From: Glenn Schmottlach <gschmottlach@gmail.com>
To: yocto@yoctoproject.org
Subject: Creating a meta-layer for a third-party GCC-based binary tool-chain - how?
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
X-List-Received-Date: Fri, 21 Jun 2013 14:12:44 -0000
Content-Type: multipart/alternative; boundary=e89a8f3ba2f3f6bcba04dfaaa762

--e89a8f3ba2f3f6bcba04dfaaa762
Content-Type: text/plain; charset=ISO-8859-1

I'm trying to create a meta-layer for a third-party GCC-based proprietary
tool-chain. I need to be able to select this tool-chain on a per-recipe
basis while other recipes may either the standard Yocto
native/cross-tool-chain. This proprietary tool chain is divided into a
host-tool part (where all the cross-tools are located, e.g.
arm-unknown-nto-qnx6.5.0-gcc/ar/g++ etc...) and the associated target
sysroot that includes common headers and target (arm, mips, ppc, sh4, x86)
specific libraries. This tool-chain on my system is sitting in /opt outside
of the Yocto environment and is not re-distributable in a third-party SDK
(e.g. you have to license it from the manufacturer and install it
separately).

I seem to have come across two approaches to this problem. One solution
appears to be recommended by the OE community and it is described here:

http://www.openembedded.org/wiki/Adding_a_secondary_toolchain

This approach *seems* to offer the ability to selectively (per recipe)
enable/disable a secondary tool-chain. What is not clear is whether Yocto
supports this approach.

The second approach seems to be the one used by Linaro and CodeSourcery and
involves setting the TCMODE/TCLIB variables and may be more extensive.
What's not clear is whether the Linaro/CodeSourcery tool-chain can
selectively be turned on/off per recipe.

I've done some prototyping with both approach but I've had mixed success .
. . partly due to my in-experience with BitBake/Yocto. So I hope someone
can take pity on me and answer a few questions:

1) Is the OE approach of adding a secondary tool-chain work-able under
Yocto? Is the Yocto (TCMODE/TCLIB) approach more acceptable (e.g.
recommended) and does it allow the recipe itself (or some other white/black
listing approach) to decide which recipes are compiled with the alternate
tool-chain? If so, how does a recipe specify the tool-chain that should be
used? It's not clear by examining the meta-layers provided by those
tool-chains.

2) Since my proprietary tool-chain has it's own sysroot outside Yocto, I
believe the recommended approach is to copy this sysroot into the a Yocto
generated sysroot. If so, where do I do that? Do create a second recipe to
do that? Is it done in the meta-toolchain  .conf files or .bbclass files?
How do I make sure these system files are copied to the Yocto sysroot
before building the recipes that depend on it?

3) What will be the name of the sysroot where I should copy the external
binary tool-chain to? I can't figure out who/how that name is generated and
used . . . is it based off the tool-chain prefix (e.g.
arm-unknown-nto-6.5.0)? Is it something I can specify?

4) The external tool-chain has a non-e/glibc based C library (it's
Dinkumware based). Do I have to do anything special to keep it from linking
against the one created/used by Yocto?

5) Ultimately, the target machine and OS is not Linux but very similar
(e.g. posix based). At this point I'm not concerned about building a
boot-able image but rather just building individual recipes and packing the
resulting libraries/applications into a convenient tarball (or opkg
archive). So I'm thinking I just need to specify a very rudimentary/simple
"machine" in order to specify the CPU architecture so the right external
cross-tool is selected. Is there any such meta-layer available . . . a very
minimal machine? I could accept a QEMU based machine (if necessary) because
the OS I'm targeting can be run under QEMU. Of course the question may be
whether I really need to specify a machine/distro for my use-case?

At this time, I just want to use my tool-chain meta-layer to help me
port/build/package several middle-ware and library components using an
external (non-distributable) binary tool-chain. In this sense, I'm only
using Yocto to do half of it's customary job which (usually) results in a
Linux image for a target.

This request for assistance is long. Any answers that could be provided
(even if they don't address all of my questions) would be extremely
helpful. Links to previous discussions would be useful as well.

Thanks for your time and consideration . . .

--e89a8f3ba2f3f6bcba04dfaaa762
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div>I&#=
39;m trying to create a meta-layer for a third-party GCC-based proprietary =
tool-chain. I need to be able to select this tool-chain on a per-recipe bas=
is while other recipes may either the standard Yocto native/cross-tool-chai=
n. This proprietary tool chain is divided into a host-tool part (where all =
the cross-tools are located, e.g. arm-unknown-nto-qnx6.5.0-gcc/ar/g++ etc..=
.) and the associated target sysroot that includes common headers and targe=
t (arm, mips, ppc, sh4, x86) specific libraries. This tool-chain on my syst=
em is sitting in /opt outside of the Yocto environment and is not re-distri=
butable in a third-party SDK (e.g. you have to license it from the manufact=
urer and install it separately).<br>
<br></div>I seem to have come across two approaches to this problem. One so=
lution appears to be recommended by the OE community and it is described he=
re:<br><br><a href=3D"http://www.openembedded.org/wiki/Adding_a_secondary_t=
oolchain">http://www.openembedded.org/wiki/Adding_a_secondary_toolchain</a>=
<br>
<br></div>This approach *seems* to offer the ability to selectively (per re=
cipe) enable/disable a secondary tool-chain. What is not clear is whether Y=
octo supports this approach.<br><br></div>The second approach seems to be t=
he one used by Linaro and CodeSourcery and involves setting the TCMODE/TCLI=
B variables and may be more extensive. What&#39;s not clear is whether the =
Linaro/CodeSourcery tool-chain can selectively be turned on/off per recipe.=
<br>
<br></div>I&#39;ve done some prototyping with both approach but I&#39;ve ha=
d mixed success . . . partly due to my in-experience with BitBake/Yocto. So=
 I hope someone can take pity on me and answer a few questions:<br><br>
</div>1) Is the OE approach of adding a secondary tool-chain work-able unde=
r Yocto? Is the Yocto (TCMODE/TCLIB) approach more acceptable (e.g. recomme=
nded) and does it allow the recipe itself (or some other white/black listin=
g approach) to decide which recipes are compiled with the alternate tool-ch=
ain? If so, how does a recipe specify the tool-chain that should be used? I=
t&#39;s not clear by examining the meta-layers provided by those tool-chain=
s.<br>
<br></div>2) Since my proprietary tool-chain has it&#39;s own sysroot outsi=
de Yocto, I believe the recommended approach is to copy this sysroot into t=
he a Yocto generated sysroot. If so, where do I do that? Do create a second=
 recipe to do that? Is it done in the meta-toolchain=A0 .conf files or .bbc=
lass files? How do I make sure these system files are copied to the Yocto s=
ysroot before building the recipes that depend on it?<br>
<br></div>3) What will be the name of the sysroot where I should copy the e=
xternal binary tool-chain to? I can&#39;t figure out who/how that name is g=
enerated and used . . . is it based off the tool-chain prefix (e.g. arm-unk=
nown-nto-6.5.0)? Is it something I can specify?<br>
<br></div>4) The external tool-chain has a non-e/glibc based C library (it&=
#39;s Dinkumware based). Do I have to do anything special to keep it from l=
inking against the one created/used by Yocto?<br><br></div>5) Ultimately, t=
he target machine and OS is not Linux but very similar (e.g. posix based). =
At this point I&#39;m not concerned about building a boot-able image but ra=
ther just building individual recipes and packing the resulting libraries/a=
pplications into a convenient tarball (or opkg archive). So I&#39;m thinkin=
g I just need to specify a very rudimentary/simple &quot;machine&quot; in o=
rder to specify the CPU architecture so the right external cross-tool is se=
lected. Is there any such meta-layer available . . . a very minimal machine=
? I could accept a QEMU based machine (if necessary) because the OS I&#39;m=
 targeting can be run under QEMU. Of course the question may be whether I r=
eally need to specify a machine/distro for my use-case?<br>
<br>At this time, I just want to use my tool-chain meta-layer to help me po=
rt/build/package several middle-ware and library components using an extern=
al (non-distributable) binary tool-chain. In this sense, I&#39;m only using=
 Yocto to do half of it&#39;s customary job which (usually) results in a Li=
nux image for a target.<br>
<br></div>This request for assistance is long. Any answers that could be pr=
ovided (even if they don&#39;t address all of my questions) would be extrem=
ely helpful. Links to previous discussions would be useful as well.<br>
<br></div>Thanks for your time and consideration . . .<br></div>

--e89a8f3ba2f3f6bcba04dfaaa762--
