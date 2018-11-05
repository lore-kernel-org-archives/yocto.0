Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DBDBE00AD1; Mon,  5 Nov 2018 14:24:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F7F2E00A9B
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 14:24:39 -0800 (PST)
Received: by mail-ot1-f67.google.com with SMTP id n46so5371680otb.9
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2018 14:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=insC5XJW3Tqw6+R+A8S1GeI6tsV35L2DwNV05igAdyU=;
	b=c/J/mH5fi1JPPO8w3XQS7Ry7c/yTXFXo6vJkfp7PhGC5O21O5z1rmqVBPFIeXrerAL
	B5pD3yv/Y0+8FtIiWLhEjIBOQqg0s4Nb/tsxdg9bQNiNxvPHyKoMatGixYtuU6dFOnu5
	IUM1lB/NkbkelFWtLyGjAupbDFL5hIRCzHC3ETQ3BMKAECAvWEqX+yCBYZia9K06jSfV
	2XPhGUQXiCBHEnLFV9hTLyJs6JAZynppgd+WG+9khVCyg1nkV2zsSUnvR+ve4BHS+1DJ
	cjfpx7x2VCyHGUzlEdR/zaM74k8iLoiyq5vilPyASt4EZ8qpEX/jrB+qiYz3YqrLJ5Wf
	5RUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=insC5XJW3Tqw6+R+A8S1GeI6tsV35L2DwNV05igAdyU=;
	b=iCJNXWI4FLlwbygdicAOahO+nrqhBK/apja74PMMkeznvvrJ64twcy/WKNBgy/9Pir
	9ynjwYQOs7VRKUX59mgffNE7CyB7tMafZa7So3u3s+KgMnhngWqFGM0Lmk5RmX4T331h
	rjujTDXOdtG8fdPrNCGnx7/WOMFr19/YyIVo3/66DUMAUUjrQmgRbZiVMlcmeEY7rStI
	RxKVefSve7xRyP02YaISPGy0Cib2IWJll37QXt/zqA2zS7S52vr7qVPH7Gn0TldHjZQf
	Pf+kIIxsxwB4WqNUzalnTyTctMZd6fJBbgqEQidXzBpQcqNtP54ruhfn3OL0ukZdhdJP
	HN1A==
X-Gm-Message-State: AGRZ1gJuyqR6N1UFBY8YBVwTej/36g6LXc61vNUmFShzPJYM5Hb4tYHW
	inRoUq2Dq+D2kGYrEIIPUnux+Cy/bj+pIi6oQMBNuJzv
X-Google-Smtp-Source: AJdET5dD9hMdEeaGxRUajHDgmF80+3tpeGCAV803t4sOAxrCyOoRjHFTamaY7B2bDZVGYr+U2uqeL2b+KQkB+vZdmu4=
X-Received: by 2002:a9d:5a6:: with SMTP id 35mr13951508otd.221.1541456679102; 
	Mon, 05 Nov 2018 14:24:39 -0800 (PST)
MIME-Version: 1.0
References: <CACKFPN13i-2bd=jPNusxZvUURza7KD4pXbJa4WDSyZM_jEq1FA@mail.gmail.com>
In-Reply-To: <CACKFPN13i-2bd=jPNusxZvUURza7KD4pXbJa4WDSyZM_jEq1FA@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Mon, 5 Nov 2018 23:24:28 +0100
Message-ID: <CACKFPN26EOG6pjD4WYCWR8CWmjkHoQ2xLWPJmvA4rCQS=dc7jQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [yocto-docs][PATCH] Added info for ovfm
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
X-List-Received-Date: Mon, 05 Nov 2018 22:24:41 -0000
Content-Type: multipart/alternative; boundary="000000000000cb74fc0579f25932"

--000000000000cb74fc0579f25932
Content-Type: text/plain; charset="UTF-8"

I've forgot to format...

From 89711eb7143bd832fb150442b9ca63fdf80d53fb Mon Sep 17 00:00:00 2001
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Mon, 5 Nov 2018 23:18:25 +0100
Subject: [PATCH] Added description of the ovmf option in runqemu

The current documentation doesn't have any info for the ovmf option.
In case you build a QEMU image with the grub-efi bootloader, then the
qemu image needs the ovmf firmware to boot. Therefore, when using the
runqemu script you need to pass the ovmf option. I believe this is
needed as without this info there's no hint how to boot a UEFI image.

I've added a sample example with the other existing ones and the option
in the dev-manual-qemu.xml. I've also linked the grub-efi to the class,
so it's linked in the mega-manual. I've build the documentation:

$ make DOC=mega-manual

and tested the edit and that the link works.
---
 documentation/dev-manual/dev-manual-qemu.xml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/documentation/dev-manual/dev-manual-qemu.xml
b/documentation/dev-manual/dev-manual-qemu.xml
index 4e7b5de4e..365b5c577 100644
--- a/documentation/dev-manual/dev-manual-qemu.xml
+++ b/documentation/dev-manual/dev-manual-qemu.xml
@@ -508,6 +508,7 @@
        runqemu tmp/deploy/images/qemux86/&lt;qemuboot.conf&gt;
        runqemu qemux86-64 core-image-sato ext4
        runqemu qemux86-64 wic-image-minimal wic
+       runqemu qemux86-64 core-image-minimal wic ovmf
        runqemu path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial
        runqemu qemux86
iso/hddimg/wic.vmdk/wic.qcow2/wic.vdi/ramfs/cpio.gz...
        runqemu qemux86 qemuparams="-m 256"
@@ -678,6 +679,12 @@ qemux86" or "qemux86-64".
                     <filename>publicvnc</filename>:
                     Enables a VNC server open to all hosts.
                     </para></listitem>
+                    <listitem><para>
+                    <filename>ovmf</filename>:
+                    Enables support for UEFI within QEMU. This option can
be used with the
+                    <link
linkend='ref-classes-grub-efi'><filename>grub-efi</filename></link>
+                    class.
+                    </para></listitem>
             </itemizedlist>
         </para>
     </section>
-- 

On Mon, Nov 5, 2018 at 11:22 PM Dimitris Tassopoulos <dimtass@gmail.com>
wrote:

> Hi all, since I don't have permission to push, I'm sending the patch by
> email.
> This is the commit message and patch
>
> Added description of the ovmf option in runqemu
>
> The current documentation doesn't have any info for the ovmf option.
> In case you build a QEMU image with the grub-efi bootloader, then the
> qemu image needs the ovmf firmware to boot. Therefore, when using the
> runqemu script you need to pass the ovmf option. I believe this is
> needed as without this info there's no hint how to boot a UEFI image.
>
> I've added a sample example with the other existing ones and the option
> in the dev-manual-qemu.xml. I've also linked the grub-efi to the class,
> so it's linked in the mega-manual. I've build the documentation:
>
> $ make DOC=mega-manual
>
> and tested the edit and that the link works.
>
> index 4e7b5de4e..365b5c577 100644
> @@ -508,6 +508,7 @@
>         runqemu tmp/deploy/images/qemux86/&lt;qemuboot.conf&gt;
>         runqemu qemux86-64 core-image-sato ext4
>         runqemu qemux86-64 wic-image-minimal wic
> +       runqemu qemux86-64 core-image-minimal wic ovmf
>         runqemu path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial
>         runqemu qemux86
> iso/hddimg/wic.vmdk/wic.qcow2/wic.vdi/ramfs/cpio.gz...
>         runqemu qemux86 qemuparams="-m 256"
> @@ -678,6 +679,12 @@ qemux86" or "qemux86-64".
>                      <filename>publicvnc</filename>:
>                      Enables a VNC server open to all hosts.
>                      </para></listitem>
> +                    <listitem><para>
> +                    <filename>ovmf</filename>:
> +                    Enables support for UEFI within QEMU. This option can
> be used with the
> +                    <link
> linkend='ref-classes-grub-efi'><filename>grub-efi</filename></link>
> +                    class.
> +                    </para></listitem>
>              </itemizedlist>
>          </para>
>      </section>
>
>
> Regards,
> Dimitris
>

--000000000000cb74fc0579f25932
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I&#39;ve forgot to format...<div><br></di=
v><div><div>From 89711eb7143bd832fb150442b9ca63fdf80d53fb Mon Sep 17 00:00:=
00 2001</div><div>From: Dimitris Tassopoulos &lt;<a href=3D"mailto:dimtass@=
gmail.com">dimtass@gmail.com</a>&gt;</div><div>Date: Mon, 5 Nov 2018 23:18:=
25 +0100</div><div>Subject: [PATCH] Added description of the ovmf option in=
 runqemu</div><div><br></div><div>The current documentation doesn&#39;t hav=
e any info for the ovmf option.</div><div>In case you build a QEMU image wi=
th the grub-efi bootloader, then the</div><div>qemu image needs the ovmf fi=
rmware to boot. Therefore, when using the</div><div>runqemu script you need=
 to pass the ovmf option. I believe this is</div><div>needed as without thi=
s info there&#39;s no hint how to boot a UEFI image.</div><div><br></div><d=
iv>I&#39;ve added a sample example with the other existing ones and the opt=
ion</div><div>in the dev-manual-qemu.xml. I&#39;ve also linked the grub-efi=
 to the class,</div><div>so it&#39;s linked in the mega-manual. I&#39;ve bu=
ild the documentation:</div><div><br></div><div>$ make DOC=3Dmega-manual</d=
iv><div><br></div><div>and tested the edit and that the link works.</div><d=
iv>---</div><div>=C2=A0documentation/dev-manual/dev-manual-qemu.xml | 7 +++=
++++</div><div>=C2=A01 file changed, 7 insertions(+)</div><div><br></div><d=
iv>diff --git a/documentation/dev-manual/dev-manual-qemu.xml b/documentatio=
n/dev-manual/dev-manual-qemu.xml</div><div>index 4e7b5de4e..365b5c577 10064=
4</div><div>--- a/documentation/dev-manual/dev-manual-qemu.xml</div><div>++=
+ b/documentation/dev-manual/dev-manual-qemu.xml</div><div>@@ -508,6 +508,7=
 @@</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 runqemu tmp/deploy/images/qemux86=
/&amp;lt;qemuboot.conf&amp;gt;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 runqem=
u qemux86-64 core-image-sato ext4</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 run=
qemu qemux86-64 wic-image-minimal wic</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=
=A0runqemu qemux86-64 core-image-minimal wic ovmf</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 runqemu path/to/bzImage-qemux86.bin path/to/nfsrootdir/ seria=
l</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 runqemu qemux86 iso/hddimg/wic.vmdk=
/wic.qcow2/wic.vdi/ramfs/cpio.gz...</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 r=
unqemu qemux86 qemuparams=3D&quot;-m 256&quot;</div><div>@@ -678,6 +679,12 =
@@ qemux86&quot; or &quot;qemux86-64&quot;.</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;filename&gt;publ=
icvnc&lt;/filename&gt;:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Enables a VNC server open to all hosts.<=
/div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&lt;/para&gt;&lt;/listitem&gt;</div><div>+=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&lt;para&=
gt;</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;filename&gt;ovmf&lt;/filename&gt;:</div><div>+=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Enables support for=
 UEFI within QEMU. This option can be used with the</div><div>+=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;link linken=
d=3D&#39;ref-classes-grub-efi&#39;&gt;&lt;filename&gt;grub-efi&lt;/filename=
&gt;&lt;/link&gt;</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 class.</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;&lt;/listitem&gt;</div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/itemizedlist&gt;<=
/div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;</div><div>=C2=A0 =
=C2=A0 =C2=A0&lt;/section&gt;</div><div>--=C2=A0</div></div></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Nov 5, 2018 at 11:22 P=
M Dimitris Tassopoulos &lt;<a href=3D"mailto:dimtass@gmail.com">dimtass@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr"><div dir=3D"ltr"><div dir=3D"ltr">Hi all, since I don&#39;t have permis=
sion to push, I&#39;m sending the patch by email.<div>This is the commit me=
ssage and patch</div><div><br></div><div><div>Added description of the ovmf=
 option in runqemu</div><div><br></div><div>The current documentation doesn=
&#39;t have any info for the ovmf option.</div><div>In case you build a QEM=
U image with the grub-efi bootloader, then the</div><div>qemu image needs t=
he ovmf firmware to boot. Therefore, when using the</div><div>runqemu scrip=
t you need to pass the ovmf option. I believe this is</div><div>needed as w=
ithout this info there&#39;s no hint how to boot a UEFI image.</div><div><b=
r></div><div>I&#39;ve added a sample example with the other existing ones a=
nd the option</div><div>in the dev-manual-qemu.xml. I&#39;ve also linked th=
e grub-efi to the class,</div><div>so it&#39;s linked in the mega-manual. I=
&#39;ve build the documentation:</div><div><br></div><div>$ make DOC=3Dmega=
-manual</div><div><br></div><div>and tested the edit and that the link work=
s.</div></div><div><br></div><div><div>index 4e7b5de4e..365b5c577 100644</d=
iv><div>@@ -508,6 +508,7 @@</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 runqemu t=
mp/deploy/images/qemux86/&amp;lt;qemuboot.conf&amp;gt;</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 runqemu qemux86-64 core-image-sato ext4</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 runqemu qemux86-64 wic-image-minimal wic</div><div>+=
=C2=A0 =C2=A0 =C2=A0 =C2=A0runqemu qemux86-64 core-image-minimal wic ovmf</=
div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 runqemu path/to/bzImage-qemux86.bin pa=
th/to/nfsrootdir/ serial</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 runqemu qemu=
x86 iso/hddimg/wic.vmdk/wic.qcow2/wic.vdi/ramfs/cpio.gz...</div><div>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 runqemu qemux86 qemuparams=3D&quot;-m 256&quot;</div>=
<div>@@ -678,6 +679,12 @@ qemux86&quot; or &quot;qemux86-64&quot;.</div><di=
v>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;filename&gt;publicvnc&lt;/filename&gt;:</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Enables a VNC se=
rver open to all hosts.</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;&lt;/listitem&gt;</div><div=
>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt=
;listitem&gt;&lt;para&gt;</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;ovmf&lt;/filename&gt;:</div=
><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Enables support for UEFI within QEMU. This option can be used with the<=
/div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &lt;link linkend=3D&#39;ref-classes-grub-efi&#39;&gt;&lt;filename&gt=
;grub-efi&lt;/filename&gt;&lt;/link&gt;</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 class.</div><div>+=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;&l=
t;/listitem&gt;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&=
lt;/itemizedlist&gt;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&=
gt;</div><div>=C2=A0 =C2=A0 =C2=A0&lt;/section&gt;</div></div><div><br></di=
v><div><br></div><div>Regards,</div><div>Dimitris</div></div></div></div>
</blockquote></div>

--000000000000cb74fc0579f25932--
