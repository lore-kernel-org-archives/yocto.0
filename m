Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E2A7E00D14; Thu,  9 Nov 2017 07:53:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f169.google.com (mail-ot0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 555FEE00D23
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 07:53:07 -0800 (PST)
Received: by mail-ot0-f169.google.com with SMTP id 18so5660339oty.9
	for <yocto@yoctoproject.org>; Thu, 09 Nov 2017 07:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qfhfFSe7FkncvEOlsMRoS5MhOkZKAccE97rAfDhuE+4=;
	b=q/4L6cEpYzSvdcT1yAA9BBg4rWrLCljqqR+8OijaODics5YpYIfHUFReFJnLghb+R9
	AVZQ645kuDo/ar0AVWAJOAaQzzYSZKl7m2/Gu9cRDMFQmuAEO3NIBYcKri7JOpweqQSi
	DyKKxVHzZVY25tpYyNkYjsVq1c0PMaUnZGZ9ZGfCI+iaPEYaXz7LlNrHsthl7P+yZq3L
	zXG/L+rzU0pFCswPBALRHMwGCascqzZtpgXYGts6nv+zgWUSRcoLBJ3B1CPBgr2WS208
	XtG0Ji2JRK36BRVQWv+a2zpEZwfCbMJSfhhHhtYbt/5yTx552XpyG3cmkGighqj7yp21
	eMYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qfhfFSe7FkncvEOlsMRoS5MhOkZKAccE97rAfDhuE+4=;
	b=jCnFlLINiPpYtHr7KOHEf3vCxu63UHmV2B5ixSM4sq2RiZkICXT04QitUCsTJIMnU2
	LPa2CM5mMsMki59NWNJfuAYzXQFmWDKJxgre59tsWQIXRE/bhM59PdeRfzXZy19RY/FA
	Q3fGSZC1xQ65KbR9Hboq4WMcet55Cw1jpRVrg+7GONbKshR8/+TweTSjqR9FwC3XPLmm
	sihpuTmiAM8f+FuOrRCWNxsSOzyBtITFOba1G2VpwDztMItorO5pvGhN71TsMlX5am1z
	ehdusSn2X/DmT9+s9D+eNvaaOEThUSjvBjO0LxR/mJ5rNSwYBak5xEQnJ31qHm9Ao9gE
	2DdQ==
X-Gm-Message-State: AJaThX5UZbjE02/jSuAS7w9l6gr0g3lne7B+rnrPw+HgC+pCwlkr88J5
	+zYNk74YeP4lXDTaZnvEpZyogA5VUFlrg4v2IvVbrw==
X-Google-Smtp-Source: AGs4zMZILT6wQEA+dRzFx32DIt6fIosoNcixhgXFJCTWZ9pJv4p3AfaJRpJ2qTLm9VbaNOArL9oBoBVmEk75uYTH34s=
X-Received: by 10.157.68.156 with SMTP id v28mr641828ote.358.1510242786424;
	Thu, 09 Nov 2017 07:53:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Thu, 9 Nov 2017 07:53:06 -0800 (PST)
In-Reply-To: <5153e880-0977-8f23-716f-5eb44954266d@windriver.com>
References: <CAOT_U5a2DJzXR2a0JCGPRRPyTY30-BmtSCwNTmt4=mYg3ZUnkw@mail.gmail.com>
	<db7a5271-522c-ea83-ae33-4d1ac3f51c7d@windriver.com>
	<CAOT_U5bj9S+LTPSVjoa0xgHnXfBdgPAbWC8K9rOt3uyv2Re_YQ@mail.gmail.com>
	<5153e880-0977-8f23-716f-5eb44954266d@windriver.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 9 Nov 2017 16:53:06 +0100
Message-ID: <CAOT_U5aiYOMwVFYYQNYS9TtCSmtLtccAUTTguxLopVcbP3ei4A@mail.gmail.com>
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
X-List-Received-Date: Thu, 09 Nov 2017 15:53:09 -0000
Content-Type: multipart/alternative; boundary="f40304353a08cf48fc055d8eccc9"

--f40304353a08cf48fc055d8eccc9
Content-Type: text/plain; charset="UTF-8"

>
>  - what branch/release of yocto are you using ?


Morty


> - can you try just using: KBUILD_DEFCONFIG="senic_defconfig"


Yup, same error.

.. and finally, the KBUILD_DEFCONFIG processing is meant to pick
> up in-tree defconfigs for use in the build, so whatever you reference
> must bein in arch/<your arch>/configs/<kbuild defconfig> .. so make
> sure that is the case with senic_defconfig.


Yup, it's in there.


You can always add the defconfig directly to the SRC_URI as well
> (i.e. copy it into your layer and call it 'defconfig' and add it
> to the SRC_URI like any other element.


Yup, am using that as a workaround .

What is the difference between do_kernel_configme and do_configure?
Not quite clear on why both exist.
I ask because I originally wanted to override do_configure as a fix,
and it seems that wouldn't have helped because it fails at
do_kernel_configme.


On Thu, Nov 9, 2017 at 3:13 PM, Bruce Ashfield <bruce.ashfield@windriver.com
> wrote:

> On 2017-11-09 8:11 AM, Alan Martinovic wrote:
>
>>     What is your kernel recipe ? Something you wrote, or something
>>     from a vendor ?
>>
>>
>> Something I inherited.
>> It does seem to have been based on linux-yocto-custom.bb <
>> http://linux-yocto-custom.bb>.
>>
>>
>> SECTION = "kernel"
>> DESCRIPTION = "Mainline Linux kernel"
>> LICENSE = "GPLv2"
>> LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
>>
>> COMPATIBLE_MACHINE = "(senic-hub-beta|senic-hub)"
>>
>> inherit kernel
>> require recipes-kernel/linux/linux-yocto.inc
>>
>> KBRANCH = "senic/4.13"
>> SRCREV = "e469b218af6fe7cb8c50c4395ae9f3204f8033ae"
>>
>> PV = "4.13+git${SRCPV}"
>> S = "${WORKDIR}/git"
>>
>> KBUILD_DEFCONFIG_senic-hub-beta="senic_defconfig"
>>
>> SRC_URI = "git://github.com/TheMeaningfulEngineer/senic-os-linux.git;
>> nobranch=1;protocol=git;branch=${KBRANCH}
>> <http://github.com/TheMeaningfulEngineer/senic-os-linux.git;nobranch=1;protocol=git;branch=$%7BKBRANCH%7D>
>> <http://github.com/TheMeaningfulEngineer/senic-os-linux.git;
>> nobranch=1;protocol=git;branch=${KBRANCH}> \
>>            "
>>
>>
>> Running it with:
>>
>> bitbake -v linux-senic
>>
>>
>> It fails with:
>>
>> ERROR: linux-senic-4.13+gitAUTOINC+e469b218af-r0 do_kernel_configme:
>> Could not configure senic-hub-beta-standard
>> ERROR: linux-senic-4.13+gitAUTOINC+e469b218af-r0 do_kernel_configme:
>> Function failed: do_kernel_configme (log file is located at
>> /home/alan/senic-o
>> s/build/tmp-glibc/work/senic_hub_beta-senic-linux-gnueabi/li
>> nux-senic/4.13+gitAUTOINC+e469b218af-r0/temp/log.do_kernel_configme.5641)
>>
>> ERROR: Logfile of failure stored in: /home/alan/senic-os/build/tmp-
>> glibc/work/senic_hub_beta-senic-linux-gnueabi/linux-senic/4.
>> 13+gitAUTOINC+e469b2
>> 18af-r0/temp/log.do_kernel_configme.5641
>>
>>
>> Not sure when "-standard" got appended...?
>>
>
> That's just part of the localversion processing in the bbclass, so
> no worries there.
>
> A more exact error seems to be:
>>
>> linux-senic-4.13+gitAUTOINC+e469b218af-r0 do_kernel_configme: +
>> configs=[ERROR]: no configuration queue found in outdir (.kernel-meta)
>>
>> Could it be expecting a "linux-yocto style" with the meta branches?
>>
>>
> Nope. Well, you do need some sort of configuration available, but it
> doesn't have to be in that format.
>
> That error is indicating that no configuration was found (no defconfig
> or fragments).
>
> A couple more questions, and I can probably sort this out.
>
> - what branch/release of yocto are you using ?
> - can you try just using: KBUILD_DEFCONFIG="senic_defconfig"
>
> For that second one, I'm wondering if the variable expansion is not
> working with the machine override.
>
> .. and finally, the KBUILD_DEFCONFIG processing is meant to pick
> up in-tree defconfigs for use in the build, so whatever you reference
> must bein in arch/<your arch>/configs/<kbuild defconfig> .. so make
> sure that is the case with senic_defconfig.
>
> You can always add the defconfig directly to the SRC_URI as well
> (i.e. copy it into your layer and call it 'defconfig' and add it
> to the SRC_URI like any other element.
>
> Bruce
>
>
>>
>>
>> On Tue, Nov 7, 2017 at 6:47 PM, Bruce Ashfield <
>> bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>>
>> wrote:
>>
>>     On 11/07/2017 08:46 AM, Alan Martinovic wrote:
>>
>>         Hi,
>>         I'm trying to get yocto to build the kernel with an in-tree
>>         defconfig.
>>         For that I found references to the variable
>>         KBUILD_DEFCONFIG_KMACHINE.
>>
>>         However, I've been experiencing that the kernel is being built
>> with
>>         some default defconfig, and not the in-tree one that came with the
>>         kernel and I defined with the KBUILD_DEFCONFIG_KMACHINE.
>>
>>         I've looked through all yocto sources for where the
>>         KBUILD_DEFCONFIG_KMACHINE is actually used, and found it only in
>> my
>>         kernel recipe. So I decided to dissect my recipe.
>>
>>
>>     What is your kernel recipe ? Something you wrote, or something
>>     from a vendor ?
>>
>>
>>
>>         There is a:
>>
>>         inherit kernel
>>
>>         in my recipe for which, besides others, defines how the kernel
>>         config
>>         will be selected.
>>         Looking at the sources of oe/meta/classes/kernel.bbclass exposes
>> how
>>         the kernel configuration happens:
>>
>>         kernel_do_configure() {
>>                   # fixes extra + in /lib/modules/2.6.37+
>>                   # $ scripts/setlocalversion . => +
>>                   # $ make kernelversion => 2.6.37
>>                   # $ make kernelrelease => 2.6.37+
>>                   touch ${B}/.scmversion ${S}/.scmversion
>>
>>                   if [ "${S}" != "${B}" ] && [ -f "${S}/.config" ] && [ !
>> -f
>>         "${B}/.config" ]; then
>>                           mv "${S}/.config" "${B}/.config"
>>                   fi
>>
>>                   # Copy defconfig to .config if .config does not exist.
>>         This allows
>>                   # recipes to manage the .config themselves in
>>         do_configure_prepend().
>>                   if [ -f "${WORKDIR}/defconfig" ] && [ ! -f
>>         "${B}/.config" ]; then
>>                           cp "${WORKDIR}/defconfig" "${B}/.config"
>>                   fi
>>
>>                   ${KERNEL_CONFIG_COMMAND}
>>         }
>>
>>
>>         I'm planning a workaround by overriding the do_configure in my
>>         recipe
>>         to select the correct defconfig from the kernel. It does seem
>>         however
>>         like the KBUILD_DEFCONFIG_KMACHINE is exactly here to not have to
>> do
>>         the workarounds.
>>
>>         Anyone has experiences with successfully using
>>         KBUILD_DEFCONFIG_KMACHINE?
>>         Is it a specific poky feature (I'm not using poky but specific
>> open
>>         embedded layers and bitbake)?
>>
>>     That is a feature of kernel-yocto, so if your recipe is inheriting
>>     kernel-yocto you can use what you are looking for.
>>
>>     But note, in the documentation you are referencing you have to replace
>>     KMACHINE with your actual machine .. not use the string KMACHINE.
>>
>>     i.e. in your recipe (or bbappend)
>>
>>     # for cases where the KMACHINE (KERNEL MACHINE) and bitbake
>>     # machine match, just do this:
>>     KMACHINE=$MACHINE
>>
>>     KBUILD_DEFCONFIG_${KMACHINE}="your defconfig"
>>
>>     i.e. it is just a standard bitbake variable with a machine OVERRIDE
>>     to make it specific to the machine you are building.
>>
>>     Bruce
>>
>>
>>
>>         Be Well,
>>         Alan
>>
>>         Ref.
>>         https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.
>> html#using-an-in-tree-defconfig-file
>>         <https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev
>> .html#using-an-in-tree-defconfig-file>
>>
>>
>>
>>
>

--f40304353a08cf48fc055d8eccc9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=C2=A0- =
what branch/release of yocto are you using ?</blockquote><div><br></div><di=
v>Morty</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">- can you try just using: KBUILD_DEFCONFIG=3D&quot;senic_defcon<wbr>fi=
g&quot;</blockquote><div><br></div><div>Yup, same error.</div><div><br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">.. and finally, the KBU=
ILD_DEFCONFIG processing is meant to pick<br>up in-tree defconfigs for use =
in the build, so whatever you reference<br>must bein in arch/&lt;your arch&=
gt;/configs/&lt;kbuild defconfig&gt; .. so make<br>sure that is the case wi=
th senic_defconfig.</blockquote><div><br></div><div>Yup, it&#39;s in there.=
</div><div><br></div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">You can always add the defconfig directly to the SRC_URI as well=
<br>(i.e. copy it into your layer and call it &#39;defconfig&#39; and add i=
t<br>to the SRC_URI like any other element.</blockquote><div><br></div><div=
>Yup, am using that as a workaround .=C2=A0</div><div><br></div><div>What i=
s the difference between=C2=A0<span style=3D"font-size:12.8px">do_kernel_co=
nfigme and do_configure?</span></div><div>Not quite clear on why both exist=
.</div><div>I ask because I originally wanted to override=C2=A0<span style=
=3D"font-size:12.8px">do_configure as a fix,</span></div><div><span style=
=3D"font-size:12.8px">and it seems that wouldn&#39;t have helped because it=
 fails at=C2=A0</span><span style=3D"font-size:12.8px">do_kernel_configme.<=
/span></div><div>=C2=A0<br></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Thu, Nov 9, 2017 at 3:13 PM, Bruce Ashfield <span dir=
=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_bla=
nk">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><span class=3D"gmail-">On 2017-11-09 8:11 =
AM, Alan Martinovic wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"gma=
il-">
=C2=A0 =C2=A0 What is your kernel recipe ? Something you wrote, or somethin=
g<br>
=C2=A0 =C2=A0 from a vendor ?<br>
<br>
<br>
Something I inherited.<br></span>
It does seem to have been based on <a href=3D"http://linux-yocto-custom.bb"=
 rel=3D"noreferrer" target=3D"_blank">linux-yocto-custom.bb</a> &lt;<a href=
=3D"http://linux-yocto-custom.bb" rel=3D"noreferrer" target=3D"_blank">http=
://linux-yocto-custom.bb</a>&gt;<wbr>.<span class=3D"gmail-"><br>
<br>
<br>
SECTION =3D &quot;kernel&quot;<br>
DESCRIPTION =3D &quot;Mainline Linux kernel&quot;<br>
LICENSE =3D &quot;GPLv2&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd7810fab74<wbr>87fb0aad327b=
76f1be7cd7&quot;<br>
<br>
COMPATIBLE_MACHINE =3D &quot;(senic-hub-beta|senic-hub)&quot;<br>
<br>
inherit kernel<br>
require recipes-kernel/linux/linux-yoc<wbr>to.inc<br>
<br>
KBRANCH =3D &quot;senic/4.13&quot;<br>
SRCREV =3D &quot;e469b218af6fe7cb8c50c4395ae9f<wbr>3204f8033ae&quot;<br>
<br>
PV =3D &quot;4.13+git${SRCPV}&quot;<br>
S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
KBUILD_DEFCONFIG_senic-hub-bet<wbr>a=3D&quot;senic_defconfig&quot;<br>
<br></span>
SRC_URI =3D &quot;git://<a href=3D"http://github.com/TheMeaningfulEngineer/=
senic-os-linux.git;nobranch=3D1;protocol=3Dgit;branch=3D$%7BKBRANCH%7D" rel=
=3D"noreferrer" target=3D"_blank">github.com/TheMeaningfu<wbr>lEngineer/sen=
ic-os-linux.git;<wbr>nobranch=3D1;protocol=3Dgit;<wbr>branch=3D${KBRANCH}</=
a> &lt;<a href=3D"http://github.com/TheMeaningfulEngineer/senic-os-linux.gi=
t;nobranch=3D1;protocol=3Dgit;branch=3D$%7BKBRANCH%7D" rel=3D"noreferrer" t=
arget=3D"_blank">http://github.com/TheMeaningf<wbr>ulEngineer/senic-os-linu=
x.git;<wbr>nobranch=3D1;protocol=3Dgit;<wbr>branch=3D${KBRANCH}</a>&gt; \<s=
pan class=3D"gmail-"><br>
=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
<br>
<br>
Running it with:<br>
<br>
bitbake -v linux-senic<br>
<br>
<br>
It fails with:<br>
<br>
ERROR: linux-senic-4.13+gitAUTOINC+e4<wbr>69b218af-r0 do_kernel_configme: C=
ould not configure senic-hub-beta-standard<br>
ERROR: linux-senic-4.13+gitAUTOINC+e4<wbr>69b218af-r0 do_kernel_configme: F=
unction failed: do_kernel_configme (log file is located at /home/alan/senic=
-o<br>
s/build/tmp-glibc/work/senic_h<wbr>ub_beta-senic-linux-gnueabi/li<wbr>nux-s=
enic/4.13+gitAUTOINC+e469<wbr>b218af-r0/temp/log.do_kernel_<wbr>configme.56=
41) <br>
ERROR: Logfile of failure stored in: /home/alan/senic-os/build/tmp-<wbr>gli=
bc/work/senic_hub_beta-seni<wbr>c-linux-gnueabi/linux-senic/4.<wbr>13+gitAU=
TOINC+e469b2<br>
18af-r0/temp/log.do_kernel_con<wbr>figme.5641<br>
<br>
<br>
Not sure when &quot;-standard&quot; got appended...?<br>
</span></blockquote>
<br>
That&#39;s just part of the localversion processing in the bbclass, so<br>
no worries there.<span class=3D"gmail-"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
A more exact error seems to be:<br>
<br>
linux-senic-4.13+gitAUTOINC+e4<wbr>69b218af-r0 do_kernel_configme: + config=
s=3D[ERROR]: no configuration queue found in outdir (.kernel-meta)<br>
<br>
Could it be expecting a &quot;linux-yocto style&quot; with the meta branche=
s?<br>
<br>
</blockquote>
<br></span>
Nope. Well, you do need some sort of configuration available, but it<br>
doesn&#39;t have to be in that format.<br>
<br>
That error is indicating that no configuration was found (no defconfig<br>
or fragments).<br>
<br>
A couple more questions, and I can probably sort this out.<br>
<br>
- what branch/release of yocto are you using ?<br>
- can you try just using: KBUILD_DEFCONFIG=3D&quot;senic_defcon<wbr>fig&quo=
t;<br>
<br>
For that second one, I&#39;m wondering if the variable expansion is not<br>
working with the machine override.<br>
<br>
.. and finally, the KBUILD_DEFCONFIG processing is meant to pick<br>
up in-tree defconfigs for use in the build, so whatever you reference<br>
must bein in arch/&lt;your arch&gt;/configs/&lt;kbuild defconfig&gt; .. so =
make<br>
sure that is the case with senic_defconfig.<br>
<br>
You can always add the defconfig directly to the SRC_URI as well<br>
(i.e. copy it into your layer and call it &#39;defconfig&#39; and add it<br=
>
to the SRC_URI like any other element.<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div><div class=3D"gmail-=
h5">
<br>
<br>
<br>
On Tue, Nov 7, 2017 at 6:47 PM, Bruce Ashfield &lt;<a href=3D"mailto:bruce.=
ashfield@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</a> =
&lt;mailto:<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank=
">bruce.ashfield@windriv<wbr>er.com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 On 11/07/2017 08:46 AM, Alan Martinovic wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Hi,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I&#39;m trying to get yocto to build the kernel=
 with an in-tree<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 defconfig.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 For that I found references to the variable<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 KBUILD_DEFCONFIG_KMACHINE.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 However, I&#39;ve been experiencing that the ke=
rnel is being built with<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 some default defconfig, and not the in-tree one=
 that came with the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel and I defined with the KBUILD_DEFCONFIG_=
KMACHINE.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I&#39;ve looked through all yocto sources for w=
here the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 KBUILD_DEFCONFIG_KMACHINE is actually used, and=
 found it only in my<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel recipe. So I decided to dissect my recip=
e.<br>
<br>
<br>
=C2=A0 =C2=A0 What is your kernel recipe ? Something you wrote, or somethin=
g<br>
=C2=A0 =C2=A0 from a vendor ?<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 There is a:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inherit kernel<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 in my recipe for which, besides others, defines=
 how the kernel<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 config<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 will be selected.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Looking at the sources of oe/meta/classes/kerne=
l.bbclass exposes how<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 the kernel configuration happens:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_do_configure() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# fixes=
 extra + in /lib/modules/2.6.37+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# $ scr=
ipts/setlocalversion . =3D&gt; +<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# $ mak=
e kernelversion =3D&gt; 2.6.37<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# $ mak=
e kernelrelease =3D&gt; 2.6.37+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0touch $=
{B}/.scmversion ${S}/.scmversion<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ &q=
uot;${S}&quot; !=3D &quot;${B}&quot; ] &amp;&amp; [ -f &quot;${S}/.config&q=
uot; ] &amp;&amp; [ ! -f<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${B}/.config&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0mv &quot;${S}/.config&quot; &quot;${B}/.config&quot;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Copy =
defconfig to .config if .config does not exist.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 This allows<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# recip=
es to manage the .config themselves in<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 do_configure_prepend().<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -f=
 &quot;${WORKDIR}/defconfig&quot; ] &amp;&amp; [ ! -f<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${B}/.config&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0cp &quot;${WORKDIR}/defconfig&quot; &quot;${B}/.config=
&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${KERNE=
L_CONFIG_COMMAND}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I&#39;m planning a workaround by overriding the=
 do_configure in my<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 recipe<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 to select the correct defconfig from the kernel=
. It does seem<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 however<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 like the KBUILD_DEFCONFIG_KMACHINE is exactly h=
ere to not have to do<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 the workarounds.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Anyone has experiences with successfully using<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 KBUILD_DEFCONFIG_KMACHINE?<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Is it a specific poky feature (I&#39;m not usin=
g poky but specific open<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 embedded layers and bitbake)?<br>
<br>
=C2=A0 =C2=A0 That is a feature of kernel-yocto, so if your recipe is inher=
iting<br>
=C2=A0 =C2=A0 kernel-yocto you can use what you are looking for.<br>
<br>
=C2=A0 =C2=A0 But note, in the documentation you are referencing you have t=
o replace<br>
=C2=A0 =C2=A0 KMACHINE with your actual machine .. not use the string KMACH=
INE.<br>
<br>
=C2=A0 =C2=A0 i.e. in your recipe (or bbappend)<br>
<br>
=C2=A0 =C2=A0 # for cases where the KMACHINE (KERNEL MACHINE) and bitbake<b=
r>
=C2=A0 =C2=A0 # machine match, just do this:<br>
=C2=A0 =C2=A0 KMACHINE=3D$MACHINE<br>
<br>
=C2=A0 =C2=A0 KBUILD_DEFCONFIG_${KMACHINE}=3D&quot;<wbr>your defconfig&quot=
;<br>
<br>
=C2=A0 =C2=A0 i.e. it is just a standard bitbake variable with a machine OV=
ERRIDE<br>
=C2=A0 =C2=A0 to make it specific to the machine you are building.<br>
<br>
=C2=A0 =C2=A0 Bruce<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Be Well,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Alan<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ref.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://www.yoctoproject.org/docs/2.=
2/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file" rel=3D"norefe=
rrer" target=3D"_blank">https://www.yoctoproject.org/d<wbr>ocs/2.2/kernel-d=
ev/kernel-dev.<wbr>html#using-an-in-tree-defconfi<wbr>g-file</a><br></div><=
/div>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"https://www.yoctoproject.org/doc=
s/2.2/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file" rel=3D"no=
referrer" target=3D"_blank">https://www.yoctoproject.org/<wbr>docs/2.2/kern=
el-dev/kernel-dev<wbr>.html#using-an-in-tree-defconf<wbr>ig-file</a>&gt;<br=
>
<br>
<br>
<br>
</blockquote>
<br>
</blockquote></div><br></div></div>

--f40304353a08cf48fc055d8eccc9--
