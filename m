Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B353E00AC5; Mon,  5 Nov 2018 14:22:21 -0800 (PST)
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
	*      [209.85.210.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24F61E00A6B
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 14:22:20 -0800 (PST)
Received: by mail-ot1-f65.google.com with SMTP id z33so9493732otz.11
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2018 14:22:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Gag3B74+YU8w15mfPj7HCQgBl2I/DIEDRUG5cE0d8aQ=;
	b=bQtxUf7ula4kufBodKK6iYXt3pmb6Dx/1PB2oJeh9n/vFZvXSlGB4eqqbBCpx2wUye
	aK7TUhcfEdSlKbTOXCSTj7V/vBMbJhT/zLVTFiwejFaOAVHaBsBco/yVKKaKIi5ot0Wz
	56Gqh4xfbgm0/1tkhZBhgudwSLJ00FuihW9lYRNzkhA8ddtPysOY8/8GJcIbhm0R5YpC
	9L0893Dj3zvQXPAis8YdbRqEzLKzNvVALtQsaZqdcIwyw4BHZWMEGLeFZ0u5oRyvLWfO
	b3Ph4ilVOG5vt+QCFk+bX6BPfdGUf3dUFMmSPMhIleOmQTA/vCTu0DenlxCxxz+dvzbW
	+Tsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Gag3B74+YU8w15mfPj7HCQgBl2I/DIEDRUG5cE0d8aQ=;
	b=pkvFEIpJRa+vFcFC/shPOUt6vKzgiEpVtiWmHgloCg55xQFiY9u+ArqENBj7X/HhrL
	Sr1vkTogeRLs1tTawD6Wl3Z79I0jltvUSS/hy4ueNf7kHq38u1C9nTw2pxM5CqpfnbBm
	rXNNFiVzSqegHalmCwdVlRhBge6NhAlgnF7kxXucD8fjJaFPxQXoQNZoToE+cjE+6FYl
	OIvzLlMdIDLXowB8CbxR1/MjRG3rg6EFlRXpXtoSZAdU82Olzi9YezscMr40F2GGV15o
	rnsDrHSIj6Hr7/JkiKP8rnAQxkRTvGHvffNQRADMrez2Boxc1cnktUMXG+mr8DtgOrtr
	+Qxg==
X-Gm-Message-State: AGRZ1gIKHcH+JeMEZY9l+32UQKlBD7zUt7kqddKB21hSfD67mRWfntjJ
	/iYvlXYcmBrXtcQ54vDJpIl7GzEL3KSnt2gkfHAFsXBg
X-Google-Smtp-Source: AJdET5e+4Z8Rqf7VeDWijkE10jDkViaJjDdxaOfwaf3+Nps11ve1y5AK9gbCf7G9WeXi6qz9WfJLdlYHleBtd0+naEw=
X-Received: by 2002:a9d:2e0a:: with SMTP id q10mr15308031otb.176.1541456540146;
	Mon, 05 Nov 2018 14:22:20 -0800 (PST)
MIME-Version: 1.0
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Mon, 5 Nov 2018 23:22:09 +0100
Message-ID: <CACKFPN13i-2bd=jPNusxZvUURza7KD4pXbJa4WDSyZM_jEq1FA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [yocto-docs][PATCH] Added info for ovfm
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
X-List-Received-Date: Mon, 05 Nov 2018 22:22:21 -0000
Content-Type: multipart/alternative; boundary="0000000000008320d50579f25152"

--0000000000008320d50579f25152
Content-Type: text/plain; charset="UTF-8"

Hi all, since I don't have permission to push, I'm sending the patch by
email.
This is the commit message and patch

Added description of the ovmf option in runqemu

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

index 4e7b5de4e..365b5c577 100644
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


Regards,
Dimitris

--0000000000008320d50579f25152
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi all, since I don&#39;=
t have permission to push, I&#39;m sending the patch by email.<div>This is =
the commit message and patch</div><div><br></div><div><div>Added descriptio=
n of the ovmf option in runqemu</div><div><br></div><div>The current docume=
ntation doesn&#39;t have any info for the ovmf option.</div><div>In case yo=
u build a QEMU image with the grub-efi bootloader, then the</div><div>qemu =
image needs the ovmf firmware to boot. Therefore, when using the</div><div>=
runqemu script you need to pass the ovmf option. I believe this is</div><di=
v>needed as without this info there&#39;s no hint how to boot a UEFI image.=
</div><div><br></div><div>I&#39;ve added a sample example with the other ex=
isting ones and the option</div><div>in the dev-manual-qemu.xml. I&#39;ve a=
lso linked the grub-efi to the class,</div><div>so it&#39;s linked in the m=
ega-manual. I&#39;ve build the documentation:</div><div><br></div><div>$ ma=
ke DOC=3Dmega-manual</div><div><br></div><div>and tested the edit and that =
the link works.</div></div><div><br></div><div><div>index 4e7b5de4e..365b5c=
577 100644</div><div>@@ -508,6 +508,7 @@</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 runqemu tmp/deploy/images/qemux86/&amp;lt;qemuboot.conf&amp;gt;</div><d=
iv>=C2=A0 =C2=A0 =C2=A0 =C2=A0 runqemu qemux86-64 core-image-sato ext4</div=
><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 runqemu qemux86-64 wic-image-minimal wic<=
/div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0runqemu qemux86-64 core-image-minimal=
 wic ovmf</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 runqemu path/to/bzImage-qem=
ux86.bin path/to/nfsrootdir/ serial</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 r=
unqemu qemux86 iso/hddimg/wic.vmdk/wic.qcow2/wic.vdi/ramfs/cpio.gz...</div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 runqemu qemux86 qemuparams=3D&quot;-m 256&=
quot;</div><div>@@ -678,6 +679,12 @@ qemux86&quot; or &quot;qemux86-64&quot=
;.</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0&lt;filename&gt;publicvnc&lt;/filename&gt;:</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Enable=
s a VNC server open to all hosts.</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;&lt;/listitem&gt;=
</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &lt;listitem&gt;&lt;para&gt;</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;ovmf&lt;/filename=
&gt;:</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Enables support for UEFI within QEMU. This option can be used=
 with the</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &lt;link linkend=3D&#39;ref-classes-grub-efi&#39;&gt;&lt;=
filename&gt;grub-efi&lt;/filename&gt;&lt;/link&gt;</div><div>+=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 class.</div><div>+=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/=
para&gt;&lt;/listitem&gt;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&lt;/itemizedlist&gt;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;/para&gt;</div><div>=C2=A0 =C2=A0 =C2=A0&lt;/section&gt;</div></div>=
<div><br></div><div><br></div><div>Regards,</div><div>Dimitris</div></div><=
/div></div>

--0000000000008320d50579f25152--
