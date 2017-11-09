Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47F96E009CB; Thu,  9 Nov 2017 08:31:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.179 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f179.google.com (mail-ot0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 951C9E00928
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 08:31:03 -0800 (PST)
Received: by mail-ot0-f179.google.com with SMTP id w8so5776851otw.11
	for <yocto@yoctoproject.org>; Thu, 09 Nov 2017 08:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Mwe7yfCQarbh9qsh8Cadcrrh0/yBRHDg5/yLtPXrXDg=;
	b=EftO3Y4IRHPYFpppSFg4AknXSqQ5LeN4fHWf0D9TvV21VZQXXvF2Pa+e2mCLDT4N6N
	EA1ODUsrJQ1gTDnKDfRmLHmQ/NJ0XDpcdTPYXcGF1TMXH8Pu+hBEH6Yp762of2KD7TMP
	ysx6p291rVpgxY8PBbAesyBMpVVPQ2BbLq7WdbH48mYIjdzzjuGuThym/j3InnhEuul1
	Qdcxsx+C0bAVOs3tugyHYBmjUng4WXbfWdauT9itVBDd9UBbf4xCqVDyjMUaIiU56k45
	A/oJt0h1I44rhmkDBtKp2oCxPYAVdo2CIVqpiikugm9N9dRDfssqRwEgq9U8J84bcRfT
	3UdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Mwe7yfCQarbh9qsh8Cadcrrh0/yBRHDg5/yLtPXrXDg=;
	b=bfk122x+D6PrRK6zZH0BeC9Kf2FGWshEja6c9T4NBTTcHHqZnaZegxqVEc2k9B9yyw
	oqnXceLV89nijmsMSbstfqUjih13RuIyyqVLd7RWeGmTyNqvo/W7BfBJFzmt6zEWmsvd
	ypeztgFGgUAVzPFaNwwg6Mgo5GCIrUBM4VlBLFcYZArWb1R1dGITtfGl8Qwh4W/OOmJh
	68xWMbcuZIh9bK6yPI/UykULWfSQFcJuwwiJFCY55sqByaPxfZUdQAk053OOH9vRiWhT
	vsbT8QsBJe+tS9aXE/W8XMTc6ga4+Df46eICnDz2w+gg9UrBBeFc2btzf2hB1S7fSJoS
	WERQ==
X-Gm-Message-State: AJaThX7TsFi61sNzHwAAz5VkPYtbKRBzJHMa9kHRBohKXu/UBUUa58YU
	Kp3FQrI6gCw2rieca4duoW0YmiAA6ziNHWsvFRV40w==
X-Google-Smtp-Source: AGs4zMaV4dqdHJuAlQyUVI/QS3lRmaE15479ixbzfVgpk8PN7CH94Ed9hfRVF0QMHdDvVqd2+jiuj1tj9mbdgeu2J3c=
X-Received: by 10.157.68.156 with SMTP id v28mr725316ote.358.1510245062761;
	Thu, 09 Nov 2017 08:31:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Thu, 9 Nov 2017 08:31:02 -0800 (PST)
In-Reply-To: <c8c334bb-5455-a793-d230-f539a35cd7d4@windriver.com>
References: <CAOT_U5a2DJzXR2a0JCGPRRPyTY30-BmtSCwNTmt4=mYg3ZUnkw@mail.gmail.com>
	<db7a5271-522c-ea83-ae33-4d1ac3f51c7d@windriver.com>
	<CAOT_U5bj9S+LTPSVjoa0xgHnXfBdgPAbWC8K9rOt3uyv2Re_YQ@mail.gmail.com>
	<5153e880-0977-8f23-716f-5eb44954266d@windriver.com>
	<CAOT_U5aiYOMwVFYYQNYS9TtCSmtLtccAUTTguxLopVcbP3ei4A@mail.gmail.com>
	<c8c334bb-5455-a793-d230-f539a35cd7d4@windriver.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 9 Nov 2017 17:31:02 +0100
Message-ID: <CAOT_U5ZZfdDPz0Ab4T_zvLwmq8_Xfyk-bNE6LVo-6bLDVhHXMA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: KBUILD_DEFCONFIG_KMACHINE not used anywhere
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
X-List-Received-Date: Thu, 09 Nov 2017 16:31:05 -0000
Content-Type: multipart/alternative; boundary="f40304353a087d6cba055d8f5491"

--f40304353a087d6cba055d8f5491
Content-Type: text/plain; charset="UTF-8"

Sure.

The layer that will fetch all the other layers by running make:
https://github.com/getsenic/senic-os

The kernel source being used:
https://github.com/getsenic/senic-os-linux/tree/senic/4.13

Things like the KBUILD_DEFCONFIG that you are trying to use, are
> that extra level of processing that weren't needed/wanted in the
> core part.


Alrighty, think I'm getting it now.

do_kernel_configme has more processing and logic to deal with
> kernel config fragments and wasn't something that was desired to be
> imposed on all build (but I do have a streamlined version that moves
> the logic into the core class now .. that will be out for review
> shortly).


Cool, would like to see how the discussion will go.


On Thu, Nov 9, 2017 at 4:59 PM, Bruce Ashfield <bruce.ashfield@windriver.com
> wrote:

> On 11/09/2017 10:53 AM, Alan Martinovic wrote:
>
>>       - what branch/release of yocto are you using ?
>>
>>
>> Morty
>>
>>     - can you try just using: KBUILD_DEFCONFIG="senic_defconfig"
>>
>>
>> Yup, same error.
>>
>>     .. and finally, the KBUILD_DEFCONFIG processing is meant to pick
>>     up in-tree defconfigs for use in the build, so whatever you reference
>>     must bein in arch/<your arch>/configs/<kbuild defconfig> .. so make
>>     sure that is the case with senic_defconfig.
>>
>>
>> Yup, it's in there.
>>
>>
>>     You can always add the defconfig directly to the SRC_URI as well
>>     (i.e. copy it into your layer and call it 'defconfig' and add it
>>     to the SRC_URI like any other element.
>>
>>
>> Yup, am using that as a workaround .
>>
>> What is the difference between do_kernel_configme and do_configure?
>>
>
> do configure is the existing/traditional/common/simple kernel.bbclass
> way to copy a defconfig and make sure it gets into the build.
>
> do_kernel_configme has more processing and logic to deal with
> kernel config fragments and wasn't something that was desired to be
> imposed on all build (but I do have a streamlined version that moves
> the logic into the core class now .. that will be out for review
> shortly).
>
> Things like the KBUILD_DEFCONFIG that you are trying to use, are
> that extra level of processing that weren't needed/wanted in the
> core part.
>
> Not quite clear on why both exist.
>> I ask because I originally wanted to override do_configure as a fix,
>> and it seems that wouldn't have helped because it fails at
>> do_kernel_configme.
>>
>
> Are the recipes / kernel tree something I can find ? If I can just
> launch a build, I'm sure I can point out what is wrong pretty
> quickly.
>
> Bruce
>
>
>>
>> On Thu, Nov 9, 2017 at 3:13 PM, Bruce Ashfield <
>> bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>>
>> wrote:
>>
>>     On 2017-11-09 8:11 AM, Alan Martinovic wrote:
>>
>>              What is your kernel recipe ? Something you wrote, or
>> something
>>              from a vendor ?
>>
>>
>>         Something I inherited.
>>         It does seem to have been based on linux-yocto-custom.bb
>>         <http://linux-yocto-custom.bb> <http://linux-yocto-custom.bb>.
>>
>>
>>         SECTION = "kernel"
>>         DESCRIPTION = "Mainline Linux kernel"
>>         LICENSE = "GPLv2"
>>         LIC_FILES_CHKSUM =
>>         "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
>>
>>         COMPATIBLE_MACHINE = "(senic-hub-beta|senic-hub)"
>>
>>         inherit kernel
>>         require recipes-kernel/linux/linux-yocto.inc
>>
>>         KBRANCH = "senic/4.13"
>>         SRCREV = "e469b218af6fe7cb8c50c4395ae9f3204f8033ae"
>>
>>         PV = "4.13+git${SRCPV}"
>>         S = "${WORKDIR}/git"
>>
>>         KBUILD_DEFCONFIG_senic-hub-beta="senic_defconfig"
>>
>>         SRC_URI =
>>         "git://github.com/TheMeaningfulEngineer/senic-os-linux.git;
>> nobranch=1;protocol=git;branch=${KBRANCH}
>> <http://github.com/TheMeaningfulEngineer/senic-os-linux.git;nobranch=1;protocol=git;branch=$%7BKBRANCH%7D>
>>         <http://github.com/TheMeaningfulEngineer/senic-os-linux.git;
>> nobranch=1;protocol=git;branch=$%7BKBRANCH%7D>
>>         <http://github.com/TheMeaningfulEngineer/senic-os-linux.git;
>> nobranch=1;protocol=git;branch=${KBRANCH}
>>         <http://github.com/TheMeaningfulEngineer/senic-os-linux.git;
>> nobranch=1;protocol=git;branch=$%7BKBRANCH%7D>>
>>
>>         \
>>                     "
>>
>>
>>         Running it with:
>>
>>         bitbake -v linux-senic
>>
>>
>>         It fails with:
>>
>>         ERROR: linux-senic-4.13+gitAUTOINC+e469b218af-r0
>>         do_kernel_configme: Could not configure senic-hub-beta-standard
>>         ERROR: linux-senic-4.13+gitAUTOINC+e469b218af-r0
>>         do_kernel_configme: Function failed: do_kernel_configme (log
>>         file is located at /home/alan/senic-o
>>         s/build/tmp-glibc/work/senic_hub_beta-senic-linux-gnueabi/li
>> nux-senic/4.13+gitAUTOINC+e469b218af-r0/temp/log.do_kernel_configme.5641)
>>
>>         ERROR: Logfile of failure stored in:
>>         /home/alan/senic-os/build/tmp-glibc/work/senic_hub_beta-seni
>> c-linux-gnueabi/linux-senic/4.13+gitAUTOINC+e469b2
>>         18af-r0/temp/log.do_kernel_configme.5641
>>
>>
>>         Not sure when "-standard" got appended...?
>>
>>
>>     That's just part of the localversion processing in the bbclass, so
>>     no worries there.
>>
>>         A more exact error seems to be:
>>
>>         linux-senic-4.13+gitAUTOINC+e469b218af-r0 do_kernel_configme: +
>>         configs=[ERROR]: no configuration queue found in outdir
>>         (.kernel-meta)
>>
>>         Could it be expecting a "linux-yocto style" with the meta
>> branches?
>>
>>
>>     Nope. Well, you do need some sort of configuration available, but it
>>     doesn't have to be in that format.
>>
>>     That error is indicating that no configuration was found (no defconfig
>>     or fragments).
>>
>>     A couple more questions, and I can probably sort this out.
>>
>>     - what branch/release of yocto are you using ?
>>     - can you try just using: KBUILD_DEFCONFIG="senic_defconfig"
>>
>>     For that second one, I'm wondering if the variable expansion is not
>>     working with the machine override.
>>
>>     .. and finally, the KBUILD_DEFCONFIG processing is meant to pick
>>     up in-tree defconfigs for use in the build, so whatever you reference
>>     must bein in arch/<your arch>/configs/<kbuild defconfig> .. so make
>>     sure that is the case with senic_defconfig.
>>
>>     You can always add the defconfig directly to the SRC_URI as well
>>     (i.e. copy it into your layer and call it 'defconfig' and add it
>>     to the SRC_URI like any other element.
>>
>>     Bruce
>>
>>
>>
>>
>>         On Tue, Nov 7, 2017 at 6:47 PM, Bruce Ashfield
>>         <bruce.ashfield@windriver.com
>>         <mailto:bruce.ashfield@windriver.com>
>>         <mailto:bruce.ashfield@windriver.com
>>
>>         <mailto:bruce.ashfield@windriver.com>>> wrote:
>>
>>              On 11/07/2017 08:46 AM, Alan Martinovic wrote:
>>
>>                  Hi,
>>                  I'm trying to get yocto to build the kernel with an
>> in-tree
>>                  defconfig.
>>                  For that I found references to the variable
>>                  KBUILD_DEFCONFIG_KMACHINE.
>>
>>                  However, I've been experiencing that the kernel is
>>         being built with
>>                  some default defconfig, and not the in-tree one that
>>         came with the
>>                  kernel and I defined with the KBUILD_DEFCONFIG_KMACHINE.
>>
>>                  I've looked through all yocto sources for where the
>>                  KBUILD_DEFCONFIG_KMACHINE is actually used, and found
>>         it only in my
>>                  kernel recipe. So I decided to dissect my recipe.
>>
>>
>>              What is your kernel recipe ? Something you wrote, or
>> something
>>              from a vendor ?
>>
>>
>>
>>                  There is a:
>>
>>                  inherit kernel
>>
>>                  in my recipe for which, besides others, defines how the
>>         kernel
>>                  config
>>                  will be selected.
>>                  Looking at the sources of
>>         oe/meta/classes/kernel.bbclass exposes how
>>                  the kernel configuration happens:
>>
>>                  kernel_do_configure() {
>>                            # fixes extra + in /lib/modules/2.6.37+
>>                            # $ scripts/setlocalversion . => +
>>                            # $ make kernelversion => 2.6.37
>>                            # $ make kernelrelease => 2.6.37+
>>                            touch ${B}/.scmversion ${S}/.scmversion
>>
>>                            if [ "${S}" != "${B}" ] && [ -f
>>         "${S}/.config" ] && [ ! -f
>>                  "${B}/.config" ]; then
>>                                    mv "${S}/.config" "${B}/.config"
>>                            fi
>>
>>                            # Copy defconfig to .config if .config does
>>         not exist.
>>                  This allows
>>                            # recipes to manage the .config themselves in
>>                  do_configure_prepend().
>>                            if [ -f "${WORKDIR}/defconfig" ] && [ ! -f
>>                  "${B}/.config" ]; then
>>                                    cp "${WORKDIR}/defconfig"
>> "${B}/.config"
>>                            fi
>>
>>                            ${KERNEL_CONFIG_COMMAND}
>>                  }
>>
>>
>>                  I'm planning a workaround by overriding the
>>         do_configure in my
>>                  recipe
>>                  to select the correct defconfig from the kernel. It
>>         does seem
>>                  however
>>                  like the KBUILD_DEFCONFIG_KMACHINE is exactly here to
>>         not have to do
>>                  the workarounds.
>>
>>                  Anyone has experiences with successfully using
>>                  KBUILD_DEFCONFIG_KMACHINE?
>>                  Is it a specific poky feature (I'm not using poky but
>>         specific open
>>                  embedded layers and bitbake)?
>>
>>              That is a feature of kernel-yocto, so if your recipe is
>>         inheriting
>>              kernel-yocto you can use what you are looking for.
>>
>>              But note, in the documentation you are referencing you have
>>         to replace
>>              KMACHINE with your actual machine .. not use the string
>>         KMACHINE.
>>
>>              i.e. in your recipe (or bbappend)
>>
>>              # for cases where the KMACHINE (KERNEL MACHINE) and bitbake
>>              # machine match, just do this:
>>              KMACHINE=$MACHINE
>>
>>              KBUILD_DEFCONFIG_${KMACHINE}="your defconfig"
>>
>>              i.e. it is just a standard bitbake variable with a machine
>>         OVERRIDE
>>              to make it specific to the machine you are building.
>>
>>              Bruce
>>
>>
>>
>>                  Be Well,
>>                  Alan
>>
>>                  Ref.
>>         https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.
>> html#using-an-in-tree-defconfig-file
>>         <https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev
>> .html#using-an-in-tree-defconfig-file>
>>                         <https://www.yoctoproject.org/
>> docs/2.2/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file
>>         <https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev
>> .html#using-an-in-tree-defconfig-file>>
>>
>>
>>
>>
>>
>>
>

--f40304353a087d6cba055d8f5491
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sure.<div><br></div><div>The layer that will fetch all the=
 other layers by running make:</div><div><a href=3D"https://github.com/gets=
enic/senic-os">https://github.com/getsenic/senic-os</a><br></div><div><br><=
/div><div>The kernel source being used:<br><div><a href=3D"https://github.c=
om/getsenic/senic-os-linux/tree/senic/4.13">https://github.com/getsenic/sen=
ic-os-linux/tree/senic/4.13</a><br></div><div><br></div></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><span style=3D"font-size:12.8px">Thing=
s like the KBUILD_DEFCONFIG that you are trying to use, are<br></span><span=
 style=3D"font-size:12.8px">that extra level of processing that weren&#39;t=
 needed/wanted in the<br></span><span style=3D"font-size:12.8px">core part.=
</span></blockquote><div><br></div><div>Alrighty, think I&#39;m getting it =
now.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<span style=3D"font-size:12.8px">do_kernel_configme has more processing and=
 logic to deal with<br></span><span style=3D"font-size:12.8px">kernel confi=
g fragments and wasn&#39;t something that was desired to be<br></span><span=
 style=3D"font-size:12.8px">imposed on all build (but I do have a streamlin=
ed version that moves<br></span><span style=3D"font-size:12.8px">the logic =
into the core class now .. that will be out for review<br></span><span styl=
e=3D"font-size:12.8px">shortly).</span></blockquote><div><br></div><div>Coo=
l, would like to see how the discussion will go.</div><div><br></div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Nov 9, 20=
17 at 4:59 PM, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce=
.ashfield@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 11=
/09/2017 10:53 AM, Alan Martinovic wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
=C2=A0 =C2=A0 =C2=A0=C2=A0- what branch/release of yocto are you using ?<br=
>
<br>
<br>
Morty<br>
<br>
=C2=A0 =C2=A0 - can you try just using: KBUILD_DEFCONFIG=3D&quot;senic_defc=
on<wbr>fig&quot;<br>
<br>
<br>
Yup, same error.<br>
<br>
=C2=A0 =C2=A0 .. and finally, the KBUILD_DEFCONFIG processing is meant to p=
ick<br>
=C2=A0 =C2=A0 up in-tree defconfigs for use in the build, so whatever you r=
eference<br>
=C2=A0 =C2=A0 must bein in arch/&lt;your arch&gt;/configs/&lt;kbuild defcon=
fig&gt; .. so make<br>
=C2=A0 =C2=A0 sure that is the case with senic_defconfig.<br>
<br>
<br>
Yup, it&#39;s in there.<br>
<br>
<br>
=C2=A0 =C2=A0 You can always add the defconfig directly to the SRC_URI as w=
ell<br>
=C2=A0 =C2=A0 (i.e. copy it into your layer and call it &#39;defconfig&#39;=
 and add it<br>
=C2=A0 =C2=A0 to the SRC_URI like any other element.<br>
<br>
<br>
Yup, am using that as a workaround .<br>
<br>
What is the difference between do_kernel_configme and do_configure?<br>
</blockquote>
<br></span>
do configure is the existing/traditional/common/si<wbr>mple kernel.bbclass<=
br>
way to copy a defconfig and make sure it gets into the build.<br>
<br>
do_kernel_configme has more processing and logic to deal with<br>
kernel config fragments and wasn&#39;t something that was desired to be<br>
imposed on all build (but I do have a streamlined version that moves<br>
the logic into the core class now .. that will be out for review<br>
shortly).<br>
<br>
Things like the KBUILD_DEFCONFIG that you are trying to use, are<br>
that extra level of processing that weren&#39;t needed/wanted in the<br>
core part.<span class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Not quite clear on why both exist.<br>
I ask because I originally wanted to override do_configure as a fix,<br>
and it seems that wouldn&#39;t have helped because it fails at do_kernel_co=
nfigme.<br>
</blockquote>
<br></span>
Are the recipes / kernel tree something I can find ? If I can just<br>
launch a build, I&#39;m sure I can point out what is wrong pretty<br>
quickly.<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><span class=3D"">
<br>
<br>
On Thu, Nov 9, 2017 at 3:13 PM, Bruce Ashfield &lt;<a href=3D"mailto:bruce.=
ashfield@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</a> =
&lt;mailto:<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank=
">bruce.ashfield@windriv<wbr>er.com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 On 2017-11-09 8:11 AM, Alan Martinovic wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 What is your kernel recipe =
? Something you wrote, or something<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 from a vendor ?<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Something I inherited.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 It does seem to have been based on <a href=3D"h=
ttp://linux-yocto-custom.bb" rel=3D"noreferrer" target=3D"_blank">linux-yoc=
to-custom.bb</a><br></span>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"http://linux-yocto-custom.bb" re=
l=3D"noreferrer" target=3D"_blank">http://linux-yocto-custom.bb</a>&gt; &lt=
;<a href=3D"http://linux-yocto-custom.bb" rel=3D"noreferrer" target=3D"_bla=
nk">http://linux-yocto-custom.bb</a>&gt;<wbr>.<span class=3D""><br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SECTION =3D &quot;kernel&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 DESCRIPTION =3D &quot;Mainline Linux kernel&quo=
t;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 LICENSE =3D &quot;GPLv2&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 LIC_FILES_CHKSUM =3D<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;file://COPYING;md5=3Dd7810fab74<wbr>87fb0=
aad327b76f1be7cd7&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 COMPATIBLE_MACHINE =3D &quot;(senic-hub-beta|se=
nic-hub)&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inherit kernel<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 require recipes-kernel/linux/linux-yoc<wbr>to.i=
nc<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 KBRANCH =3D &quot;senic/4.13&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SRCREV =3D &quot;e469b218af6fe7cb8c50c4395ae9f<=
wbr>3204f8033ae&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 PV =3D &quot;4.13+git${SRCPV}&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 KBUILD_DEFCONFIG_senic-hub-bet<wbr>a=3D&quot;se=
nic_defconfig&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SRC_URI =3D<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;git://<a href=3D"http://github.com/TheMea=
ningfulEngineer/senic-os-linux.git;nobranch=3D1;protocol=3Dgit;branch=3D$%7=
BKBRANCH%7D" rel=3D"noreferrer" target=3D"_blank">github.com/TheMeaningfu<w=
br>lEngineer/senic-os-linux.git;<wbr>nobranch=3D1;protocol=3Dgit;<wbr>branc=
h=3D${KBRANCH}</a><br></span>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"http://github.com/TheMeaningfulE=
ngineer/senic-os-linux.git;nobranch=3D1;protocol=3Dgit;branch=3D$%7BKBRANCH=
%7D" rel=3D"noreferrer" target=3D"_blank">http://github.com/TheMeaningf<wbr=
>ulEngineer/senic-os-linux.git;<wbr>nobranch=3D1;protocol=3Dgit;<wbr>branch=
=3D$%7BKBRANCH%7D</a>&gt;<span class=3D""><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"http://github.com/TheMeaningfulE=
ngineer/senic-os-linux.git;nobranch=3D1;protocol=3Dgit;branch=3D$%7BKBRANCH=
%7D" rel=3D"noreferrer" target=3D"_blank">http://github.com/TheMeaningf<wbr=
>ulEngineer/senic-os-linux.git;<wbr>nobranch=3D1;protocol=3Dgit;<wbr>branch=
=3D${KBRANCH}</a><br></span>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"http://github.com/TheMeaningfulE=
ngineer/senic-os-linux.git;nobranch=3D1;protocol=3Dgit;branch=3D$%7BKBRANCH=
%7D" rel=3D"noreferrer" target=3D"_blank">http://github.com/TheMeaningf<wbr=
>ulEngineer/senic-os-linux.git;<wbr>nobranch=3D1;protocol=3Dgit;<wbr>branch=
=3D$%7BKBRANCH%7D</a>&gt;&gt;<div><div class=3D"h5"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
&quot;<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Running it with:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bitbake -v linux-senic<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 It fails with:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ERROR: linux-senic-4.13+gitAUTOINC+e4<wbr>69b21=
8af-r0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 do_kernel_configme: Could not configure senic-h=
ub-beta-standard<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ERROR: linux-senic-4.13+gitAUTOINC+e4<wbr>69b21=
8af-r0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 do_kernel_configme: Function failed: do_kernel_=
configme (log<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file is located at /home/alan/senic-o<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 s/build/tmp-glibc/work/senic_h<wbr>ub_beta-seni=
c-linux-gnueabi/li<wbr>nux-senic/4.13+gitAUTOINC+e469<wbr>b218af-r0/temp/lo=
g.do_kernel_<wbr>configme.5641)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ERROR: Logfile of failure stored in:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/alan/senic-os/build/tmp-<wbr>glibc/work/s=
enic_hub_beta-seni<wbr>c-linux-gnueabi/linux-senic/4.<wbr>13+gitAUTOINC+e46=
9b2<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 18af-r0/temp/log.do_kernel_con<wbr>figme.5641<b=
r>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Not sure when &quot;-standard&quot; got appende=
d...?<br>
<br>
<br>
=C2=A0 =C2=A0 That&#39;s just part of the localversion processing in the bb=
class, so<br>
=C2=A0 =C2=A0 no worries there.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 A more exact error seems to be:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 linux-senic-4.13+gitAUTOINC+e4<wbr>69b218af-r0 =
do_kernel_configme: +<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 configs=3D[ERROR]: no configuration queue found=
 in outdir<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 (.kernel-meta)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Could it be expecting a &quot;linux-yocto style=
&quot; with the meta branches?<br>
<br>
<br>
=C2=A0 =C2=A0 Nope. Well, you do need some sort of configuration available,=
 but it<br>
=C2=A0 =C2=A0 doesn&#39;t have to be in that format.<br>
<br>
=C2=A0 =C2=A0 That error is indicating that no configuration was found (no =
defconfig<br>
=C2=A0 =C2=A0 or fragments).<br>
<br>
=C2=A0 =C2=A0 A couple more questions, and I can probably sort this out.<br=
>
<br>
=C2=A0 =C2=A0 - what branch/release of yocto are you using ?<br>
=C2=A0 =C2=A0 - can you try just using: KBUILD_DEFCONFIG=3D&quot;senic_defc=
on<wbr>fig&quot;<br>
<br>
=C2=A0 =C2=A0 For that second one, I&#39;m wondering if the variable expans=
ion is not<br>
=C2=A0 =C2=A0 working with the machine override.<br>
<br>
=C2=A0 =C2=A0 .. and finally, the KBUILD_DEFCONFIG processing is meant to p=
ick<br>
=C2=A0 =C2=A0 up in-tree defconfigs for use in the build, so whatever you r=
eference<br>
=C2=A0 =C2=A0 must bein in arch/&lt;your arch&gt;/configs/&lt;kbuild defcon=
fig&gt; .. so make<br>
=C2=A0 =C2=A0 sure that is the case with senic_defconfig.<br>
<br>
=C2=A0 =C2=A0 You can always add the defconfig directly to the SRC_URI as w=
ell<br>
=C2=A0 =C2=A0 (i.e. copy it into your layer and call it &#39;defconfig&#39;=
 and add it<br>
=C2=A0 =C2=A0 to the SRC_URI like any other element.<br>
<br>
=C2=A0 =C2=A0 Bruce<br>
<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 On Tue, Nov 7, 2017 at 6:47 PM, Bruce Ashfield<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:bruce.ashfield@windriver.=
com" target=3D"_blank">bruce.ashfield@windriver.com</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:bruce.ashfield@win=
driver.com" target=3D"_blank">bruce.ashfield@windriv<wbr>er.com</a>&gt;<br>=
</div></div>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:bruce.ashfield@win=
driver.com" target=3D"_blank">bruce.ashfield@windriv<wbr>er.com</a><div><di=
v class=3D"h5"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:bruce.ashfield@win=
driver.com" target=3D"_blank">bruce.ashfield@windriv<wbr>er.com</a>&gt;&gt;=
&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 On 11/07/2017 08:46 AM, Ala=
n Martinovic wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Hi,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 I&#39;m tryin=
g to get yocto to build the kernel with an in-tree<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 defconfig.<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 For that I fo=
und references to the variable<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 KBUILD_DEFCON=
FIG_KMACHINE.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 However, I&#3=
9;ve been experiencing that the kernel is<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 being built with<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 some default =
defconfig, and not the in-tree one that<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 came with the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel and I =
defined with the KBUILD_DEFCONFIG_KMACHINE.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 I&#39;ve look=
ed through all yocto sources for where the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 KBUILD_DEFCON=
FIG_KMACHINE is actually used, and found<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 it only in my<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel recipe=
. So I decided to dissect my recipe.<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 What is your kernel recipe =
? Something you wrote, or something<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 from a vendor ?<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 There is a:<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 inherit kerne=
l<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 in my recipe =
for which, besides others, defines how the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 config<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 will be selec=
ted.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Looking at th=
e sources of<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe/meta/classes/kernel.bbclass exposes how<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 the kernel co=
nfiguration happens:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_do_con=
figure() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# fixes extra + in /lib/modules/2.6.37+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# $ scripts/setlocalversion . =3D&gt; +<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# $ make kernelversion =3D&gt; 2.6.37<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# $ make kernelrelease =3D&gt; 2.6.37+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0touch ${B}/.scmversion ${S}/.scmversion<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ &quot;${S}&quot; !=3D &quot;${B}&quot; ] &a=
mp;&amp; [ -f<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${S}/.config&quot; ] &amp;&amp; [ ! -f<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${B}/.c=
onfig&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mv &quot;${S}/.confi=
g&quot; &quot;${B}/.config&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Copy defconfig to .config if .config does<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 not exist.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 This allows<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# recipes to manage the .config themselves in<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 do_configure_=
prepend().<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -f &quot;${WORKDIR}/defconfig&quot; ] &amp;=
&amp; [ ! -f<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${B}/.c=
onfig&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cp &quot;${WORKDIR}/=
defconfig&quot; &quot;${B}/.config&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0${KERNEL_CONFIG_COMMAND}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 I&#39;m plann=
ing a workaround by overriding the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 do_configure in my<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 recipe<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 to select the=
 correct defconfig from the kernel. It<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 does seem<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 however<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 like the KBUI=
LD_DEFCONFIG_KMACHINE is exactly here to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 not have to do<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 the workaroun=
ds.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Anyone has ex=
periences with successfully using<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 KBUILD_DEFCON=
FIG_KMACHINE?<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Is it a speci=
fic poky feature (I&#39;m not using poky but<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 specific open<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 embedded laye=
rs and bitbake)?<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 That is a feature of kernel=
-yocto, so if your recipe is<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inheriting<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 kernel-yocto you can use wh=
at you are looking for.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 But note, in the documentat=
ion you are referencing you have<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 to replace<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 KMACHINE with your actual m=
achine .. not use the string<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 KMACHINE.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 i.e. in your recipe (or bba=
ppend)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 # for cases where the KMACH=
INE (KERNEL MACHINE) and bitbake<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 # machine match, just do th=
is:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 KMACHINE=3D$MACHINE<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 KBUILD_DEFCONFIG_${KMACHINE=
}=3D&quot;<wbr>your defconfig&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 i.e. it is just a standard =
bitbake variable with a machine<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 OVERRIDE<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 to make it specific to the =
machine you are building.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 Bruce<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Be Well,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Alan<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ref.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://www.yoctoproject.org/docs/2.=
2/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file" rel=3D"norefe=
rrer" target=3D"_blank">https://www.yoctoproject.org/d<wbr>ocs/2.2/kernel-d=
ev/kernel-dev.<wbr>html#using-an-in-tree-defconfi<wbr>g-file</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"https://www.yoctoproject.org/doc=
s/2.2/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file" rel=3D"no=
referrer" target=3D"_blank">https://www.yoctoproject.org/<wbr>docs/2.2/kern=
el-dev/kernel-dev<wbr>.html#using-an-in-tree-defconf<wbr>ig-file</a>&gt;<br=
></div></div>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;<a href=3D"https://www.yoctoproject.org/docs/2.2/kernel-dev/=
kernel-dev.html#using-an-in-tree-defconfig-file" rel=3D"noreferrer" target=
=3D"_blank">https://www.yoctoproject.org/<wbr>docs/2.2/kernel-dev/kernel-de=
v<wbr>.html#using-an-in-tree-defconf<wbr>ig-file</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"https://www.yoctoproject.org/doc=
s/2.2/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file" rel=3D"no=
referrer" target=3D"_blank">https://www.yoctoproject.org/<wbr>docs/2.2/kern=
el-dev/kernel-dev<wbr>.html#using-an-in-tree-defconf<wbr>ig-file</a>&gt;&gt=
;<br>
<br>
<br>
<br>
<br>
<br>
</blockquote>
<br>
</blockquote></div><br></div>

--f40304353a087d6cba055d8f5491--
