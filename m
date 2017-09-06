Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9A5FE00A9C; Wed,  6 Sep 2017 08:01:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 511FAE0091D
	for <yocto@yoctoproject.org>; Wed,  6 Sep 2017 08:01:05 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id p6so10911050itb.1
	for <yocto@yoctoproject.org>; Wed, 06 Sep 2017 08:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=QrhgWklxMjsnnD5aZU+qYO0e+uFg6M4HrTnjRyTMED8=;
	b=EejNWUhgclPL5c5RWxXLhStmUfGnKqmpGRZjcseMkX0/OeIR3PmkhHGgcO3T1vs9qK
	twSuXsESv1zo9tgt/wSzyhtzXGxkmz7DxxiMxFWx3AizDAu3B4zMj35yBau57gq1ZAqU
	l/Ns54wgn74ZN8v31YigaHjHys9k0HvfI0vRZBrCuI7ztsqJfFrI6V589L8ZREoXc3am
	N4VNlB5CVMFoLZuSsyQwUVA+P8t5SFThLPY4ELOKwDlAv7Y7aeHd+qULXl5as5B3L2xV
	k8hNU/aAcyeYWDNpkvM1JptVqWk1uMEmsDGw8Ki5NAbe4CCKFfp1KXBFnfIrIZfGhriv
	WLOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=QrhgWklxMjsnnD5aZU+qYO0e+uFg6M4HrTnjRyTMED8=;
	b=foN3eUQKuTJnOA13/JCKDqTaeRrFnbwTaGWQ2OGR4X67vEdmLxgAeluSf3gnuhqxgy
	1CCaIhUPNeZfT/CvukcUpXMEBxgORRtXv1VbxFNLhBuefoVgx3lF1kAW1yTMBt9Ih/li
	T6hkI+WNIiAhw0Hd8x9M1n14J5Czu2yZ26ln9bk5P9iWWibD8SqkqA5rnKOAANaR39QP
	FQJf3S6XyEu5QpA9JHK9uxiIU5X84LZSUdBJI7QyQVP+aMpf7vURqHRv38n08YnhOIXr
	7by48aCyg6D9ZkWdO9lnFX4CLEdCwra11F6euth1+TrYamkAzzI5Dg/4o9tuIPU3vUS8
	uXRw==
X-Gm-Message-State: AHPjjUiaztSbsxPUbR3DM4+8dcFyYHhcB/O1yVZchgJuh5s5tOkUOsCP
	Zh1kzTeZljP50ORPuhRyIfP/o93aCA==
X-Google-Smtp-Source: ADKCNb4BpJmWGGume+k70AFArsfFVb3Bjm4T/XynvtWVDwMhSEFB66VHtvN2FRbuR5xUDe5ElN8UamWlBrReRRTI+qA=
X-Received: by 10.36.28.201 with SMTP id c192mr9390itc.81.1504710065154; Wed,
	06 Sep 2017 08:01:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.22.3 with HTTP; Wed, 6 Sep 2017 08:00:44 -0700 (PDT)
In-Reply-To: <59dff5cc-490c-f100-bdab-3e6dc552a496@sgl.com>
References: <59dff5cc-490c-f100-bdab-3e6dc552a496@sgl.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Wed, 6 Sep 2017 17:00:44 +0200
Message-ID: <CAB2nKc9mst-yWiCWY4pn-o=WztcM2-Mc7jqg_-7gt0ubtXfBtQ@mail.gmail.com>
To: Fan Zhang <fzhang@sgl.com>, yocto@yoctoproject.org
Subject: Re: Building out of tree module into kernel image
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
X-List-Received-Date: Wed, 06 Sep 2017 15:01:07 -0000
Content-Type: multipart/alternative; boundary="001a1144b80cec6e4d0558869c95"

--001a1144b80cec6e4d0558869c95
Content-Type: text/plain; charset="UTF-8"

Hi,

Where did you put MACHINE_ESSENTIAL_EXTRA_RDEPENDS  instruction?
Did you try to rename axidma.bb to kernel-module-axidma.bb ?

Best Regards,
Vincent

2017-09-06 16:13 GMT+02:00 Fan Zhang <fzhang@sgl.com>:

> Hi,
>
> I've followed the Yocto manual here: http://www.yoctoproject.org/
> docs/1.6.1/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules
> to include an out of tree module, named axidma. I can build this module
> alone by
>
> bitbake axidma
>
> and get the .ko file in build/tmp/work/my_machine/axidma directory, but
> when I build my custom image, and include this module by
>
> MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "kernel-module-axidma"
>
> I got an error that says "*Computing transaction...error: Can't install
> packagegroup-core-boot-1.0-r17@microzed_zynq7: no package provides
> kernel-module-axidma*". All the other variables mentioned in the manual
> doesn't compile the module either. They just doesn't stop the image from
> building.
>
> After googling for a few days, it seems every thread I found stucked at
> different stage of this problem, some advance further than me, but from my
> very limited knowledge about bitbake, out of tree modules should be
> included into the build by module.bbclass, which has do_configuration,
> do_compile and do _install in that class. So it is quite puzzling why this
> is not working.
>
> Any pointer is greatly appreciated. Thanks. Below are the configurations
> for my module:
>
> My axidma folder structure is this
>
>
> *axidma (a directory under recipes-sgl directory) *
>
>
> *    - files (directory) *
>
> *            - COPYING*
>
> *            - dma_proxy.c*
>
> *            - dma_proxy.h*
>
>
> *            - Makefile *
>
> *    - axidma.bb <http://axidma.bb>*
>
> The bb files in axidma directory is added to BBFILES in layer.conf by
>
> *BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \*
> *    ${LAYERDIR}/recipes-*/*/*.bbappend"*
>
> axidma.bb file looks like this:
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *SUMMARY = "Example of how to build an external Linux kernel module"
> LICENSE = "GPLv2" LIC_FILES_CHKSUM =
> "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e" inherit module PR =
> "r0" PV = "0.1" SRC_URI = "file://Makefile \            file://dma_proxy.c
> \            file://dma_proxy.h \            file://COPYING \           " S
> = "${WORKDIR}" # The inherit of module.bbclass will automatically name
> module packages with # "kernel-module-" prefix as required by the oe-core
> build environment.*
>
> Makefile looks like this:
>
> *obj-m := dma_proxy.o*
>
> *SRC := $(shell pwd)*
>
> *all:*
> *    $(MAKE) -C $(KERNEL_SRC) M=$(SRC)*
>
> *modules_install:*
> *    $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install*
>
> *clean:*
> *    rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c*
> *    rm -f Module.markers Module.symvers modules.order*
> *    rm -rf .tmp_versions Modules.symvers*
>
> Fan Zhang
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1144b80cec6e4d0558869c95
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>Where did you put MACHINE_ESS=
ENTIAL_EXTRA_<wbr>RDEPENDS =C2=A0instruction?<br><div class=3D"gmail_extra"=
>Did you try to rename=C2=A0<a href=3D"http://axidma.bb/" target=3D"_blank"=
>axidma.bb</a>=C2=A0to <a href=3D"http://kernel-module-axidma.bb">kernel-mo=
dule-axidma.bb</a> ?</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Best Regards,=C2=A0</div><div class=3D"gmail_extra">Vincen=
t</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-09-06=
 16:13 GMT+02:00 Fan Zhang <span dir=3D"ltr">&lt;<a href=3D"mailto:fzhang@s=
gl.com" target=3D"_blank">fzhang@sgl.com</a>&gt;</span>:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
 =20

   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Hi,</p>
    <p>I&#39;ve followed the Yocto manual here:
<a class=3D"gmail-m_3278242207135345267moz-txt-link-freetext" href=3D"http:=
//www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html#incorporating-=
out-of-tree-modules" target=3D"_blank">http://www.yoctoproject.org/<wbr>doc=
s/1.6.1/kernel-dev/kernel-<wbr>dev.html#incorporating-out-of-<wbr>tree-modu=
les</a>
      to include an out of tree module, named axidma. I can build this
      module alone by</p>
    <p>bitbake axidma<br>
    </p>
    <p>and get the .ko file in build/tmp/work/my_machine/<wbr>axidma
      directory, but when I build my custom image, and include this
      module by <br>
    </p>
    <p>MACHINE_ESSENTIAL_EXTRA_<wbr>RDEPENDS +=3D &quot;kernel-module-axidm=
a&quot;</p>
    <p>I got an error that says &quot;<i>Computing transaction...error: Can=
&#39;t
        install packagegroup-core-boot-1.0-<wbr>r17@microzed_zynq7: no
        package provides kernel-module-axidma</i>&quot;. All the other
      variables mentioned in the manual doesn&#39;t compile the module
      either. They just doesn&#39;t stop the image from building. <br>
    </p>
    <p>After googling for a few days, it seems every thread I found
      stucked at different stage of this problem, some advance further
      than me, but from my very limited knowledge about bitbake, out of
      tree modules should be included into the build by module.bbclass,
      which has do_configuration, do_compile and do _install in that
      class. So it is quite puzzling why this is not working. <br>
    </p>
    <p>Any pointer is greatly appreciated. Thanks. Below are the
      configurations for my module:</p>
    <blockquote>
      <p>My axidma folder structure is this</p>
      <blockquote>
        <p><font size=3D"-1"><i>axidma (a directory under recipes-sgl
              directory)<br>
            </i></font></p>
        <p><font size=3D"-1"><i>=C2=A0=C2=A0=C2=A0 - files (directory) <br>
            </i></font></p>
        <p><font size=3D"-1"><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 - COPYING</i></font></p>
        <p><font size=3D"-1"><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 - dma_proxy.c</i></font></p>
        <p><font size=3D"-1"><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 - dma_proxy.h</i></font></p>
        <p><font size=3D"-1"><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 - Makefile<br>
            </i></font></p>
        <p><font size=3D"-1"><i>=C2=A0=C2=A0=C2=A0 - <a href=3D"http://axid=
ma.bb" target=3D"_blank">axidma.bb</a></i></font></p>
      </blockquote>
      <p>The bb files in axidma directory is added to BBFILES in
        layer.conf by<br>
      </p>
      <blockquote>
        <p><font size=3D"-1"><i>BBFILES +=3D &quot;${LAYERDIR}/recipes-*/*/=
*.bb \</i><i><br>
            </i><i>=C2=A0=C2=A0=C2=A0 ${LAYERDIR}/recipes-*/*/*.<wbr>bbappe=
nd&quot;</i></font><br>
        </p>
      </blockquote>
      <p><a href=3D"http://axidma.bb" target=3D"_blank">axidma.bb</a> file =
looks like this:</p>
      <blockquote>
        <p><i><font size=3D"-1">SUMMARY =3D &quot;Example of how to build a=
n
              external Linux kernel module&quot;<br>
              LICENSE =3D &quot;GPLv2&quot;<br>
              LIC_FILES_CHKSUM =3D
              <a class=3D"gmail-m_3278242207135345267moz-txt-link-rfc2396E"=
>&quot;file://COPYING;md5=3D<wbr>12f884d2ae1ff87c09e5b7ccc2c4ca<wbr>7e&quot=
;</a><br>
              <br>
              inherit module<br>
              PR =3D &quot;r0&quot;<br>
              PV =3D &quot;0.1&quot;<br>
              SRC_URI =3D &quot;<a class=3D"gmail-m_3278242207135345267moz-=
txt-link-freetext">file://Makefile</a> \<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
<a class=3D"gmail-m_3278242207135345267moz-txt-link-freetext">file://dma_pr=
oxy.c</a> \<br>
              =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 <a class=
=3D"gmail-m_3278242207135345267moz-txt-link-freetext">file://dma_proxy.h</a=
> \<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
<a class=3D"gmail-m_3278242207135345267moz-txt-link-freetext">file://COPYIN=
G</a> \<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;=
<br>
              <br>
              S =3D &quot;${WORKDIR}&quot;<br>
              <br>
              # The inherit of module.bbclass will automatically name
              module packages with<br>
              # &quot;kernel-module-&quot; prefix as required by the oe-cor=
e build
              environment.</font></i></p>
      </blockquote>
      <p>Makefile looks like this: <br>
      </p>
      <blockquote>
        <p><font size=3D"-1"><i>obj-m :=3D dma_proxy.o</i><i><br>
            </i><i><br>
            </i><i>SRC :=3D $(shell pwd)</i><i><br>
            </i><i><br>
            </i><i>all:</i><i><br>
            </i><i>=C2=A0=C2=A0=C2=A0 $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC)</=
i><i><br>
            </i><i><br>
            </i><i>modules_install:</i><i><br>
            </i><i>=C2=A0=C2=A0=C2=A0 $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) m=
odules_install</i><i><br>
            </i><i><br>
            </i><i>clean:</i><i><br>
            </i><i>=C2=A0=C2=A0=C2=A0 rm -f *.o *~ core .depend .*.cmd *.ko=
 *.mod.c</i><i><br>
            </i><i>=C2=A0=C2=A0=C2=A0 rm -f Module.markers Module.symvers m=
odules.order</i><i><br>
            </i><i>=C2=A0=C2=A0=C2=A0 rm -rf .tmp_versions Modules.symvers<=
/i></font><span class=3D"gmail-HOEnZb"><font color=3D"#888888"><br>
        </font></span></p><span class=3D"gmail-HOEnZb"><font color=3D"#8888=
88">
      </font></span></blockquote><span class=3D"gmail-HOEnZb"><font color=
=3D"#888888">
    </font></span></blockquote><span class=3D"gmail-HOEnZb"><font color=3D"=
#888888">
    <p>Fan Zhang<br>
    </p>
    <p><br>
    </p>
  </font></span></div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div></div>

--001a1144b80cec6e4d0558869c95--
