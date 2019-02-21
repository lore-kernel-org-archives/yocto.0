Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16ACDE00BB7; Wed, 20 Feb 2019 17:48:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C263E00B81
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 17:48:03 -0800 (PST)
Received: by mail-qt1-f182.google.com with SMTP id j36so29727293qta.7
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 17:48:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=fsqwAA5fh8ZNE05/fxp9XAjwK2PhofG6eEaEo8p8cJ4=;
	b=SIILyXVTPjY8xB+L8A0LmHociXtO8kRxH5Pr6/vPD8xgejaF/xtMZkQZch5qzMRn7i
	C5g+4l3m0a+is1iAnFvIko6GjqQvTe9plsXem9k/9j1iIy7XM03yIsmMx5VvB5IER6bR
	o1oHX+9Zol+4nRENndOqIRrYYX4+5a68FoLidlEgTxSMaQhtQrETnUiNSO7fa61xGMBq
	IZ1Sq854hH+490uEnEmaGxQ8Nk+4Dt99WdB+lBog9w2XBoBTWO9UEJHpAmF1yPhkS2HO
	NN2L7BRVE8QzWLVS+wrtqlTORpU6qv3Xq7kM8X10bizPLkei+ttCm1GFq/QMLDE76xam
	Q7IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=fsqwAA5fh8ZNE05/fxp9XAjwK2PhofG6eEaEo8p8cJ4=;
	b=aj0VOuYdzgou7NTiu7W5f3VUyTbXuj0Y7YMdDZLzJYZXKx8sm07hHi8qP3HY868gOu
	XAtmz4W15Bb1y/PV/gk9yVqn0xkl3gDE0+SDNkYD+YdAorVKZR8iNGF11ZeC2ZPQxi49
	94I5+6SsxfHWd/Jk/s91fNzNM59xrHKKkrpvkLWFG/10evBk5HDTzS0w2EC50+MFU06K
	4Jw3VZukirH4Z/ur/ifEn4FQaPJdKgJukvufpAiZuUC7gKd5/k0p8ACpfTG9wdV6oA4E
	X90kUPjFmL3VcHCtQjHibmwntbia9fLpmukMV0cRsk/HpY538ztSbWugf86vv+WWU1TC
	QAXQ==
X-Gm-Message-State: AHQUAuamVlGyte71JNVQYkU7HnxGXT9pNpaJEAQDdHsyBbbuKckqrluL
	oddKr2umsKOgldn1tYd7NErOYpBpVQiqKsnVanQ=
X-Google-Smtp-Source: AHgI3Ibyw1Nzf/wJOnK6mnHWMYwE0H+aqI+/IGENb0Dg9ph6MOgcYHy+S+Pqv5vBgeWgkgPk/m5aI7C7zVLmFG4p4jg=
X-Received: by 2002:a0c:b660:: with SMTP id q32mr12050784qvf.50.1550713682117; 
	Wed, 20 Feb 2019 17:48:02 -0800 (PST)
MIME-Version: 1.0
References: <CAHXEV+mfcxpGekquU2NFxLcmtw1gTAtp9eR3FYsXfdURW9YyfQ@mail.gmail.com>
In-Reply-To: <CAHXEV+mfcxpGekquU2NFxLcmtw1gTAtp9eR3FYsXfdURW9YyfQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 20 Feb 2019 17:47:50 -0800
Message-ID: <CAMKF1spCBhPyoABJ180svZq2Wgd1QE5Pu2b_VtCHvzp7QuMAEQ@mail.gmail.com>
To: =?UTF-8?B?Sm/Do28gR29uw6dhbHZlcw==?= <joao.jfgoncalves@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: qemu segmentation fault on gobject-introspection
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
X-List-Received-Date: Thu, 21 Feb 2019 01:48:04 -0000
Content-Type: multipart/alternative; boundary="0000000000002bcf7405825daae6"

--0000000000002bcf7405825daae6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 20, 2019 at 3:51 PM Jo=C3=A3o Gon=C3=A7alves <joao.jfgoncalves@=
gmail.com>
wrote:

> Hello,
> when trying to migrate my build to master branch of oe layers I got this
> qemu segmentation fault during gobject-introspection.
> Does anyone have any clue on this?
>

This error means qemu is crashing while running some user mode application.
I am also seeing these errors on qemuarm but since qemuarm is moving away
from armv5te to armv7 I did not pay much attention to it


>
> Thank you,
> Jo=C3=A3o Gon=C3=A7alves
>
> | qemu: uncaught target signal 11 (Segmentation fault) - core dumped
> | Segmentation fault (core dumped)
> | If the above error message is about missing .so libraries, then setting
> up GIR_EXTRA_LIBS_PATH in the recipe should help.
> | (typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
> | Command
> '['/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-l=
inux-gnueabi/gobject-introspection/1.58.3-r0/build/g-ir-scanner-qemuwrapper=
',
> '/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-lin=
ux-gnueabi/gobject-introspection/1.58.3-r0/build/tmp-introspect5euoldbk/GLi=
b-2.0',
> '--introspect-dump=3D/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2=
hf-neon-angstrom-linux-gnueabi/gobject-introspection/1.58.3-r0/build/tmp-in=
trospect5euoldbk/functions.txt,/home/joao/poky_imx6/build/tmp-glibc/work/co=
rtexa9t2hf-neon-angstrom-linux-gnueabi/gobject-introspection/1.58.3-r0/buil=
d/tmp-introspect5euoldbk/dump.xml']'
> returned non-zero exit status 1.
> | ninja: build stopped: subcommand failed.
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-linu=
x-gnueabi/gobject-introspection/1.58.3-r0/temp/log.do_compile.20894)
> ERROR: Task
> (/home/joao/poky_imx6/poky/meta/recipes-gnome/gobject-introspection/gobje=
ct-introspection_1.58.3.bb:do_compile)
> failed with exit code '1'
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000002bcf7405825daae6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Feb 20, 2019 at 3:51 PM Jo=C3=A3o Gon=C3=A7alves &l=
t;<a href=3D"mailto:joao.jfgoncalves@gmail.com">joao.jfgoncalves@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div>Hello,=C2=A0</div><div>when trying to m=
igrate my build to master branch of oe=C2=A0layers I got this qemu=C2=A0seg=
mentation fault during=C2=A0gobject-introspection.</div><div>Does anyone ha=
ve any clue on this?</div></div></div></div></blockquote><div dir=3D"auto">=
<br></div><div dir=3D"auto">This error means qemu is crashing while running=
 some user mode application. I am also seeing these errors on qemuarm but s=
ince qemuarm is moving away from armv5te to armv7 I did not pay much attent=
ion to it=C2=A0</div><div dir=3D"auto">=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div></div><div><=
br></div><div>Thank you,</div><div>Jo=C3=A3o Gon=C3=A7alves</div><div><br><=
/div><div>| qemu: uncaught target signal 11 (Segmentation fault) - core dum=
ped</div><div>| Segmentation fault (core dumped)</div><div>| If the above e=
rror message is about missing .so libraries, then setting up GIR_EXTRA_LIBS=
_PATH in the recipe should help.</div><div>| (typically like this: GIR_EXTR=
A_LIBS_PATH=3D&quot;${B}/something/.libs&quot; )</div><div>| Command &#39;[=
&#39;/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-l=
inux-gnueabi/gobject-introspection/1.58.3-r0/build/g-ir-scanner-qemuwrapper=
&#39;, &#39;/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-ang=
strom-linux-gnueabi/gobject-introspection/1.58.3-r0/build/tmp-introspect5eu=
oldbk/GLib-2.0&#39;, &#39;--introspect-dump=3D/home/joao/poky_imx6/build/tm=
p-glibc/work/cortexa9t2hf-neon-angstrom-linux-gnueabi/gobject-introspection=
/1.58.3-r0/build/tmp-introspect5euoldbk/functions.txt,/home/joao/poky_imx6/=
build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-linux-gnueabi/gobject-intro=
spection/1.58.3-r0/build/tmp-introspect5euoldbk/dump.xml&#39;]&#39; returne=
d non-zero exit status 1.</div><div>| ninja: build stopped: subcommand fail=
ed.</div><div>| WARNING: exit code 1 from a shell command.</div><div>| ERRO=
R: Function failed: do_compile (log file is located at /home/joao/poky_imx6=
/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-linux-gnueabi/gobject-intr=
ospection/1.58.3-r0/temp/log.do_compile.20894)</div><div>ERROR: Task (/home=
/joao/poky_imx6/poky/meta/recipes-gnome/gobject-introspection/gobject-intro=
spection_1.58.3.bb:do_compile) failed with exit code &#39;1&#39;</div></div=
></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--0000000000002bcf7405825daae6--
