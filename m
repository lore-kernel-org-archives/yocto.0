Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79433E00D48; Thu,  9 Nov 2017 05:11:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f177.google.com (mail-ot0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42B21E00D43
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 05:11:33 -0800 (PST)
Received: by mail-ot0-f177.google.com with SMTP id j29so1790615oth.13
	for <yocto@yoctoproject.org>; Thu, 09 Nov 2017 05:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Njw6iDXtC2r8V7bpX4EINp39VznSySiODdmywJ1B8Q0=;
	b=j1FKl5uosA1zvHDxdjjTt3MZQhQOSIeiLAkjIxtialXGZN/6AWjJJ8qLwPz+YiKG/1
	kpdAw4DOfTv7YWOe1BWktuQPFH1ZFSQ6+LG/dal6PFZ/cyXD+YBVC0rr4bC+p9c+1tTB
	w/nWBM0NExayUEw2KEu297EPAQVg6PcVFHj6L6JuWZsf4NmyUKC72f0rf7mEHuPRiksY
	bEyijW/KN4WLIv9IfOvuAKr+Un4duxf9vo3P4Lwiz9ERAMQIVaQHH1lIMlOaWkju6apC
	g11HvTsZq91OqVuaLKwhM+8S23gzHIEklKCV557lULlvdoUQYkkzypAnBEvAxd6EsaWd
	9ZWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Njw6iDXtC2r8V7bpX4EINp39VznSySiODdmywJ1B8Q0=;
	b=J3y+9glH4X/DA2rCGC+Byy9MI4WscpnYixIJENLsh2jNisXXzMdqMp2WbVhiN69quH
	bEkqz5U/Lv7ClP0qysLvPkmKoDHX7pCzGkVl0mpM4I+TTpl1gznnkepMiQvHWYjUM7rn
	IEuSELg4kEXb9yOBbrCQF3n5CNYKYYNpNANR8yDBA+2t5Ql6mrs2HLOPtqpVeZrSdtTf
	dXizlgBlmfg1ItQRNO1JEvb1L0XWr93VKQ0xUFLfoOzW2V6mKiNh0AQ+NQB8NGLITH0D
	9t3l7V/rDoFEULxM/EHLaVmrETVWNXstkBCLOD8/14x24JhymdeVoCEG5+eG9fECyBNi
	0JPw==
X-Gm-Message-State: AJaThX6Ud5ZeXe2Z+HxuLoMr0thyMyzdoPCjd0FMCh415q8zqh4yyXyW
	gZ93x3+swZaYPQ565EwthjnH71jj7GTJEZveU7LGfePL
X-Google-Smtp-Source: AGs4zMYyoTGS9A24KMTNotVyr4d/qJGAWv55wFVY4ZiEBDZdf7CiE5PqDlsLnPU1/Wmgz/S7WGzQdj9ra3NTOUQNbac=
X-Received: by 10.157.12.3 with SMTP id 3mr265336otr.422.1510233093156; Thu,
	09 Nov 2017 05:11:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Thu, 9 Nov 2017 05:11:32 -0800 (PST)
In-Reply-To: <db7a5271-522c-ea83-ae33-4d1ac3f51c7d@windriver.com>
References: <CAOT_U5a2DJzXR2a0JCGPRRPyTY30-BmtSCwNTmt4=mYg3ZUnkw@mail.gmail.com>
	<db7a5271-522c-ea83-ae33-4d1ac3f51c7d@windriver.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 9 Nov 2017 14:11:32 +0100
Message-ID: <CAOT_U5bj9S+LTPSVjoa0xgHnXfBdgPAbWC8K9rOt3uyv2Re_YQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 09 Nov 2017 13:11:35 -0000
Content-Type: multipart/alternative; boundary="94eb2c04daa20bc993055d8c8b8c"

--94eb2c04daa20bc993055d8c8b8c
Content-Type: text/plain; charset="UTF-8"

>
> What is your kernel recipe ? Something you wrote, or something
> from a vendor ?


Something I inherited.
It does seem to have been based on linux-yocto-custom.bb.


SECTION = "kernel"
DESCRIPTION = "Mainline Linux kernel"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

COMPATIBLE_MACHINE = "(senic-hub-beta|senic-hub)"

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

KBRANCH = "senic/4.13"
SRCREV = "e469b218af6fe7cb8c50c4395ae9f3204f8033ae"

PV = "4.13+git${SRCPV}"
S = "${WORKDIR}/git"

KBUILD_DEFCONFIG_senic-hub-beta="senic_defconfig"

SRC_URI = "git://
github.com/TheMeaningfulEngineer/senic-os-linux.git;nobranch=1;protocol=git;branch=${KBRANCH}
\
          "


Running it with:

bitbake -v linux-senic


It fails with:

ERROR: linux-senic-4.13+gitAUTOINC+e469b218af-r0 do_kernel_configme: Could
not configure senic-hub-beta-standard
ERROR: linux-senic-4.13+gitAUTOINC+e469b218af-r0 do_kernel_configme:
Function failed: do_kernel_configme (log file is located at
/home/alan/senic-o
s/build/tmp-glibc/work/senic_hub_beta-senic-linux-gnueabi/linux-senic/4.13+gitAUTOINC+e469b218af-r0/temp/log.do_kernel_configme.5641)

ERROR: Logfile of failure stored in:
/home/alan/senic-os/build/tmp-glibc/work/senic_hub_beta-senic-linux-gnueabi/linux-senic/4.13+gitAUTOINC+e469b2
18af-r0/temp/log.do_kernel_configme.5641


Not sure when "-standard" got appended...?
A more exact error seems to be:

linux-senic-4.13+gitAUTOINC+e469b218af-r0 do_kernel_configme: +
configs=[ERROR]: no configuration queue found in outdir (.kernel-meta)


Could it be expecting a "linux-yocto style" with the meta branches?




On Tue, Nov 7, 2017 at 6:47 PM, Bruce Ashfield <bruce.ashfield@windriver.com
> wrote:

> On 11/07/2017 08:46 AM, Alan Martinovic wrote:
>
>> Hi,
>> I'm trying to get yocto to build the kernel with an in-tree defconfig.
>> For that I found references to the variable KBUILD_DEFCONFIG_KMACHINE.
>>
>> However, I've been experiencing that the kernel is being built with
>> some default defconfig, and not the in-tree one that came with the
>> kernel and I defined with the KBUILD_DEFCONFIG_KMACHINE.
>>
>> I've looked through all yocto sources for where the
>> KBUILD_DEFCONFIG_KMACHINE is actually used, and found it only in my
>> kernel recipe. So I decided to dissect my recipe.
>>
>
> What is your kernel recipe ? Something you wrote, or something
> from a vendor ?
>
>
>
>> There is a:
>>
>> inherit kernel
>>
>> in my recipe for which, besides others, defines how the kernel config
>> will be selected.
>> Looking at the sources of oe/meta/classes/kernel.bbclass exposes how
>> the kernel configuration happens:
>>
>> kernel_do_configure() {
>>          # fixes extra + in /lib/modules/2.6.37+
>>          # $ scripts/setlocalversion . => +
>>          # $ make kernelversion => 2.6.37
>>          # $ make kernelrelease => 2.6.37+
>>          touch ${B}/.scmversion ${S}/.scmversion
>>
>>          if [ "${S}" != "${B}" ] && [ -f "${S}/.config" ] && [ ! -f
>> "${B}/.config" ]; then
>>                  mv "${S}/.config" "${B}/.config"
>>          fi
>>
>>          # Copy defconfig to .config if .config does not exist. This
>> allows
>>          # recipes to manage the .config themselves in
>> do_configure_prepend().
>>          if [ -f "${WORKDIR}/defconfig" ] && [ ! -f "${B}/.config" ]; then
>>                  cp "${WORKDIR}/defconfig" "${B}/.config"
>>          fi
>>
>>          ${KERNEL_CONFIG_COMMAND}
>> }
>>
>>
>> I'm planning a workaround by overriding the do_configure in my recipe
>> to select the correct defconfig from the kernel. It does seem however
>> like the KBUILD_DEFCONFIG_KMACHINE is exactly here to not have to do
>> the workarounds.
>>
>> Anyone has experiences with successfully using KBUILD_DEFCONFIG_KMACHINE?
>> Is it a specific poky feature (I'm not using poky but specific open
>> embedded layers and bitbake)?
>>
> That is a feature of kernel-yocto, so if your recipe is inheriting
> kernel-yocto you can use what you are looking for.
>
> But note, in the documentation you are referencing you have to replace
> KMACHINE with your actual machine .. not use the string KMACHINE.
>
> i.e. in your recipe (or bbappend)
>
> # for cases where the KMACHINE (KERNEL MACHINE) and bitbake
> # machine match, just do this:
> KMACHINE=$MACHINE
>
> KBUILD_DEFCONFIG_${KMACHINE}="your defconfig"
>
> i.e. it is just a standard bitbake variable with a machine OVERRIDE
> to make it specific to the machine you are building.
>
> Bruce
>
>
>
>> Be Well,
>> Alan
>>
>> Ref.
>> https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.
>> html#using-an-in-tree-defconfig-file
>>
>>
>

--94eb2c04daa20bc993055d8c8b8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span st=
yle=3D"font-size:12.8px">What is your kernel recipe ? Something you wrote, =
or something<br></span><span style=3D"font-size:12.8px">from a vendor ?</sp=
an></blockquote><div><br></div><div>Something I inherited.</div><div>It doe=
s seem to have been based on=C2=A0<a href=3D"http://linux-yocto-custom.bb">=
linux-yocto-custom.bb</a>.</div><div><br></div><div><br></div><div><div>SEC=
TION =3D &quot;kernel&quot;</div><div>DESCRIPTION =3D &quot;Mainline Linux =
kernel&quot;</div><div>LICENSE =3D &quot;GPLv2&quot;</div><div>LIC_FILES_CH=
KSUM =3D &quot;file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7&quot;<=
/div><div><br></div><div>COMPATIBLE_MACHINE =3D &quot;(senic-hub-beta|senic=
-hub)&quot;</div><div><br></div><div>inherit kernel</div><div>require recip=
es-kernel/linux/linux-yocto.inc</div><div><br></div><div>KBRANCH =3D &quot;=
senic/4.13&quot;</div><div>SRCREV =3D &quot;e469b218af6fe7cb8c50c4395ae9f32=
04f8033ae&quot;</div><div><br></div><div>PV =3D &quot;4.13+git${SRCPV}&quot=
;</div><div>S =3D &quot;${WORKDIR}/git&quot;</div><div><br></div><div>KBUIL=
D_DEFCONFIG_senic-hub-beta=3D&quot;senic_defconfig&quot;</div><div><br></di=
v><div>SRC_URI =3D &quot;git://<a href=3D"http://github.com/TheMeaningfulEn=
gineer/senic-os-linux.git;nobranch=3D1;protocol=3Dgit;branch=3D${KBRANCH}">=
github.com/TheMeaningfulEngineer/senic-os-linux.git;nobranch=3D1;protocol=
=3Dgit;branch=3D${KBRANCH}</a> \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &quot;</div></div><div><br></div><div><br></div><div>Running it with:<b=
r></div><div><br></div><div>bitbake -v linux-senic<br></div><div><br></div>=
<div><br></div><div>It fails with:</div><div><br></div><div><div>ERROR: lin=
ux-senic-4.13+gitAUTOINC+e469b218af-r0 do_kernel_configme: Could not config=
ure senic-hub-beta-standard=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0</div><div>ERROR: linux-senic-4.13+gitAUTOINC+e469b218af-r0 do_kernel_co=
nfigme: Function failed: do_kernel_configme (log file is located at /home/a=
lan/senic-o</div><div>s/build/tmp-glibc/work/senic_hub_beta-senic-linux-gnu=
eabi/linux-senic/4.13+gitAUTOINC+e469b218af-r0/temp/log.do_kernel_configme.=
5641)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>ERROR=
: Logfile of failure stored in: /home/alan/senic-os/build/tmp-glibc/work/se=
nic_hub_beta-senic-linux-gnueabi/linux-senic/4.13+gitAUTOINC+e469b2</div><d=
iv>18af-r0/temp/log.do_kernel_configme.5641</div></div><div><br></div><div>=
<br></div><div>Not sure when &quot;-standard&quot; got appended...?</div><d=
iv>A more exact error seems to be:</div><div><div><br></div><div>linux-seni=
c-4.13+gitAUTOINC+e469b218af-r0 do_kernel_configme: + configs=3D[ERROR]: no=
 configuration queue found in outdir (.kernel-meta)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0</div></div><div><br></div><div>Could it be expecti=
ng a &quot;linux-yocto style&quot; with the meta branches?</div><div><br></=
div><div><span style=3D"font-size:12.8px"><br></span></div><div><span style=
=3D"font-size:12.8px"><br></span></div><div style=3D"font-size:12.8px"><div=
 class=3D"gmail-adm"><div id=3D"gmail-q_15f97ae6795d3452_2" class=3D"gmail-=
ajR gmail-h4"></div></div></div></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Tue, Nov 7, 2017 at 6:47 PM, Bruce Ashfield <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_b=
lank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><span class=3D"">On 11/07/2017 08:46 AM, Alan Martinovic wr=
ote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
I&#39;m trying to get yocto to build the kernel with an in-tree defconfig.<=
br>
For that I found references to the variable KBUILD_DEFCONFIG_KMACHINE.<br>
<br>
However, I&#39;ve been experiencing that the kernel is being built with<br>
some default defconfig, and not the in-tree one that came with the<br>
kernel and I defined with the KBUILD_DEFCONFIG_KMACHINE.<br>
<br>
I&#39;ve looked through all yocto sources for where the<br>
KBUILD_DEFCONFIG_KMACHINE is actually used, and found it only in my<br>
kernel recipe. So I decided to dissect my recipe.<br>
</blockquote>
<br></span>
What is your kernel recipe ? Something you wrote, or something<br>
from a vendor ?<div><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
There is a:<br>
<br>
inherit kernel<br>
<br>
in my recipe for which, besides others, defines how the kernel config<br>
will be selected.<br>
Looking at the sources of oe/meta/classes/kernel.bbclass exposes how<br>
the kernel configuration happens:<br>
<br>
kernel_do_configure() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# fixes extra + in /lib/modules/2.6.37+<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# $ scripts/setlocalversion . =3D&gt; +<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# $ make kernelversion =3D&gt; 2.6.37<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# $ make kernelrelease =3D&gt; 2.6.37+<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0touch ${B}/.scmversion ${S}/.scmversion<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ &quot;${S}&quot; !=3D &quot;${B}&quo=
t; ] &amp;&amp; [ -f &quot;${S}/.config&quot; ] &amp;&amp; [ ! -f<br>
&quot;${B}/.config&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mv &quot;${S}=
/.config&quot; &quot;${B}/.config&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Copy defconfig to .config if .config do=
es not exist. This allows<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# recipes to manage the .config themselve=
s in do_configure_prepend().<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -f &quot;${WORKDIR}/defconfig&quot; =
] &amp;&amp; [ ! -f &quot;${B}/.config&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cp &quot;${WO=
RKDIR}/defconfig&quot; &quot;${B}/.config&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${KERNEL_CONFIG_COMMAND}<br>
}<br>
<br>
<br>
I&#39;m planning a workaround by overriding the do_configure in my recipe<b=
r>
to select the correct defconfig from the kernel. It does seem however<br>
like the KBUILD_DEFCONFIG_KMACHINE is exactly here to not have to do<br>
the workarounds.<br>
<br>
Anyone has experiences with successfully using KBUILD_DEFCONFIG_KMACHINE?<b=
r>
Is it a specific poky feature (I&#39;m not using poky but specific open<br>
embedded layers and bitbake)?<br>
</blockquote></div></div>
That is a feature of kernel-yocto, so if your recipe is inheriting<br>
kernel-yocto you can use what you are looking for.<br>
<br>
But note, in the documentation you are referencing you have to replace<br>
KMACHINE with your actual machine .. not use the string KMACHINE.<br>
<br>
i.e. in your recipe (or bbappend)<br>
<br>
# for cases where the KMACHINE (KERNEL MACHINE) and bitbake<br>
# machine match, just do this:<br>
KMACHINE=3D$MACHINE<br>
<br>
KBUILD_DEFCONFIG_${KMACHINE}=3D&quot;<wbr>your defconfig&quot;<br>
<br>
i.e. it is just a standard bitbake variable with a machine OVERRIDE<br>
to make it specific to the machine you are building.<span class=3D"HOEnZb">=
<font color=3D"#888888"><br>
<br>
Bruce</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Be Well,<br>
Alan<br>
<br>
Ref.<br>
<a href=3D"https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.html=
#using-an-in-tree-defconfig-file" rel=3D"noreferrer" target=3D"_blank">http=
s://www.yoctoproject.org/d<wbr>ocs/2.2/kernel-dev/kernel-dev.<wbr>html#usin=
g-an-in-tree-defconfi<wbr>g-file</a><br>
<br>
</blockquote>
<br>
</div></div></blockquote></div><br></div>

--94eb2c04daa20bc993055d8c8b8c--
