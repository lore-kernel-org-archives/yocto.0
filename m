Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
 by mx.groups.io with SMTP id smtpd.web10.6397.1607422575596756199
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Dec 2020 02:16:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lwGE4wUP;
 spf=pass (domain: gmail.com, ip: 209.85.221.66, mailfrom: zmuda.w@gmail.com)
Received: by mail-wr1-f66.google.com with SMTP id t4so15624260wrr.12
        for <yocto@lists.yoctoproject.org>; Tue, 08 Dec 2020 02:16:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zqKfYQEeoQUBb8ufdIyGdLUnDUossdA3fpiWpgBi4to=;
        b=lwGE4wUPmy0yjmBs/Dxz1IdA/Fw9UzJEB8AcDKfvv1CejlxEKHJdWkYmn2g5B6Mpek
         HXMITHzYD7zi//UgExMKc7w7n3YKVIeCPDE4ti9VblHWftbppVTHKVLTWObR+Z2OaFac
         3TVgcbKfpGZgWzL8f3JXwL8dMUxvoob9++H+ZbNtAYeScyaGpDwoqSbGsI5D9Beh9R8o
         9fm4Hr3NV1KXtV3m7gAemXpLy8KyKWdxqI4vXoB+jGRkC1sj0nlmuob4WsR02qeZZpJr
         mkHE/+zF3v8OevFmFFTa1vV1fVT05IhVdCU5tazV32IO6unbyzET18sxQfmQy9ymiIO/
         6amw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zqKfYQEeoQUBb8ufdIyGdLUnDUossdA3fpiWpgBi4to=;
        b=e1OrVXgX8PARfLxdyxL216RvyqMjLZI22/4iCeyOUGt+k5qbU8kX9KLhvTGIL4xgbw
         c+9kX7vq0vK2nLkrJOoAqEdNOU6g5tkBrDd9AT87SUzuadScb6ZJHy8Zzkql8g3vsEb8
         6sYUoZ31EsDbI9g5hR878f0xsvvdCg4BvNZQ1yh6Ak5t9tCAag+AL7H/ShNH/iRd6WYC
         hrQX8tezdNtEXmcn5Xtt8nFv1oQ5KtMKgdH3YjfQvYuWgq8zqum94ZZEi++de/KP8DUl
         twTkDtOVc7FJqi09OXHF6CImnpJCat5cnBSwL0EQ4d5DX27QjgJH3L1X+GKoFvO4Q9pe
         N76g==
X-Gm-Message-State: AOAM532yhOSYBQfycCNAMieq6gMPVmaba46NeB8PDWAvGxloUsaNpg8L
	EJiU4VrcV2dnWe1v04/oK2OrFjcXlTUmwseycco=
X-Google-Smtp-Source: ABdhPJz/cqyMVgABnODrR9yrvkwtAZ7IumjC4kQAtquQO1c74sAFoiOQRRSGQ0+GUHqEyeVvUuT1Uh8TjD7Av0E0vM4=
X-Received: by 2002:a5d:4408:: with SMTP id z8mr24747966wrq.204.1607422574081;
 Tue, 08 Dec 2020 02:16:14 -0800 (PST)
MIME-Version: 1.0
References: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
 <20201206201521.3377-6-wojciech.zmuda@huawei.com> <cffe226c642a412b90cd881122e5cfbd@intel.com>
 <7c9d12e428954c44964906065281af1e@intel.com>
In-Reply-To: <7c9d12e428954c44964906065281af1e@intel.com>
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
Date: Tue, 8 Dec 2020 11:16:03 +0100
Message-ID: <CAL0FYXbSPDyc5Ee2PjPpSovCq6tn9o71zFRTgh9hVFfVeTGkXg@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr][PATCH 5/5] zephyr-flash-pyocd.bbclass: support for flashing via pyocd
To: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000883aef05b5f13b46"

--000000000000883aef05b5f13b46
Content-Type: text/plain; charset="UTF-8"

Hi Naveen,

You're right, I'm sorry. I didn't notice the rest of your comments. I'll
take care of it and will push v3 today with the rest of the changes.

Best regards,
Wojciech

On Tue, 8 Dec 2020 at 02:47, Saini, Naveen Kumar <
naveen.kumar.saini@intel.com> wrote:

> You have missed few of my comments in v2 !
>
> Regards,
> Naveen
>
> -----Original Message-----
> From: Saini, Naveen Kumar
> Sent: Monday, December 7, 2020 8:06 PM
> To: 'Wojciech Zmuda' <zmuda.w@gmail.com>; yocto@lists.yoctoproject.org
> Cc: davide.ricci@huawei.com; zbigniew.bodek@huawei.com;
> jaroslaw.marek@huawei.com; robert.drab@huawei.com; Wojciech Zmuda <
> wojciech.zmuda@huawei.com>
> Subject: RE: [yocto] [meta-zephyr][PATCH 5/5] zephyr-flash-pyocd.bbclass:
> support for flashing via pyocd
>
> Thanks for the patches.  Please find my comments below.
>
> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Wojciech Zmuda
> Sent: Monday, December 7, 2020 4:15 AM
> To: yocto@lists.yoctoproject.org
> Cc: davide.ricci@huawei.com; zbigniew.bodek@huawei.com;
> jaroslaw.marek@huawei.com; robert.drab@huawei.com; Wojciech Zmuda <
> wojciech.zmuda@huawei.com>
> Subject: [yocto] [meta-zephyr][PATCH 5/5] zephyr-flash-pyocd.bbclass:
> support for flashing via pyocd
>
> Flash boards supported via pyocd:
>
>     MACHINE=xxx bitbake yyy -c flash_usb
>
> The only supported board for now is 96Boards Nitrogen. Modify its config
> accordingly.
>
> Modify helloworld and philosopers samples with adidtional .hex output file
> deployment, as this format is required by pyocd.
>
> Describe the feature in README.
>
> Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
> ---
>  README.txt                                    | 23 +++++++++++++++++++
>  classes/zephyr-flash-pyocd.bbclass            | 17 ++++++++++++++
>  conf/machine/96b-nitrogen.conf                |  1 +
>  .../zephyr-kernel/zephyr-helloworld.bb        |  1 +
>  .../zephyr-kernel/zephyr-philosophers.bb      |  1 +
>  5 files changed, 43 insertions(+)
>  create mode 100644 classes/zephyr-flash-pyocd.bbclass
>
> diff --git a/README.txt b/README.txt
> index 6463339..4366764 100644
> --- a/README.txt
> +++ b/README.txt
> @@ -43,6 +43,29 @@ The same sample, for Nios2 image:
>      $ MACHINE=qemu-nios2 bitbake zephyr-philosophers
>      $ runqemu qemu-nios2
>
> +Flashing
> +=================================
> +
> +You can flash Zephyr samples to boards. Currently, the following
> +MACHINEs are supported:
> + * DFU:
> +  - arduino_101_sss
> +  - arduino_101
> +  - arduino_101_ble
> + * pyocd:
> +  - 96b_nitrogen
> +
> +To flash the example you built with command e.g.
> +
> +    $ MACHINE=96b_nitrogen bitbake zephyr-philosophers
> [Naveen Saini] Typo here, MACHINE=96b-nitrogen
> +
> +call similar command with explicit flash_usb command:
> +
> +    $ MACHINE=96b_nitrogen bitbake zephyr-philosophers -c flash_usb
> [Naveen Saini]  Same as above
>
> +
> +dfu-util and/or pyocd need to be installed in your system. If you
> +observe permission errors or the flashing process seem to hang, follow
> those instructions:
> +https://github.com/pyocd/pyOCD/tree/master/udev
>
>  Building and Running Zephyr Tests
>  =================================
> diff --git a/classes/zephyr-flash-pyocd.bbclass
> b/classes/zephyr-flash-pyocd.bbclass
> new file mode 100644
> index 0000000..aafe9e7
> --- /dev/null
> +++ b/classes/zephyr-flash-pyocd.bbclass
> @@ -0,0 +1,17 @@
> +
> +python do_flash_usb() {
> +    from pyocd.core.helpers import ConnectHelper
> +    from pyocd.flash.file_programmer import FileProgrammer
> +
> +    image = f"{d.getVar('DEPLOY_DIR_IMAGE')}/{d.getVar('PN')}.hex"
> +    bb.plain(f"Attempting to flash {image} to board
> + {d.getVar('BOARD')}")
> +
> +    with ConnectHelper.session_with_chosen_probe() as session:
> +        FileProgrammer(session).program(image)
> +        session.board.target.reset()
> +}
> +
> +addtask do_flash_usb
> +
> +do_flash_usb[nostamp] = "1"
> +do_flash_usb[vardepsexclude] = "BB_ORIGENV"
> diff --git a/conf/machine/96b-nitrogen.conf
> b/conf/machine/96b-nitrogen.conf index d1905f2..998db4c 100644
> --- a/conf/machine/96b-nitrogen.conf
> +++ b/conf/machine/96b-nitrogen.conf
> @@ -4,4 +4,5 @@
>  #@DESCRIPTION: Machine configuration for 96Boards Nitrogen Board.
>
>  require conf/machine/include/nrf52832.inc
> +ZEPHYR_INHERIT_CLASSES += "zephyr-flash-pyocd"
>  ARCH_96b-nitrogen = "arm"
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
> b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
> index 1400e72..9b77975 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
> +++ b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
> @@ -8,6 +8,7 @@ OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
>
>  do_deploy () {
>      install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.elf
> ${DEPLOYDIR}/${PN}.elf
> +    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.hex
> + ${DEPLOYDIR}/${PN}.hex
>  }
> [Naveen Saini]  No *.hex file while building for MACHINE=qemu-x86  Error
> log:  ...build/zephyr/zephyr.hex': No such file or directory
>
>
>  addtask deploy after do_compile
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
> b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
> index 5f7fbcb..f720999 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
> +++ b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
> @@ -8,6 +8,7 @@ OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
>
>  do_deploy () {
>      install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.elf
> ${DEPLOYDIR}/${PN}.elf
> +    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.hex
> + ${DEPLOYDIR}/${PN}.hex
>  }
>
> [Naveen Saini]  No *.hex file while building for MACHINE=qemu-x86  Error
> log:  ...build/zephyr/zephyr.hex': No such file or directory
>
> Could you also try to build testcases !!
> $ MACHINE=96b-nitrogen bitbake zephyr-kernel-test-all
>
> Build breaks with error: ......build/zephyr/zephyr.elf.elf': No such file
> or directory
>
>  addtask deploy after do_compile
> --
> 2.25.1
>
>

--000000000000883aef05b5f13b46
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Naveen,</div><div><br></div><div>You&#39;re right,=
 I&#39;m sorry. I didn&#39;t notice the rest of your comments. I&#39;ll tak=
e care of it and will push v3 today with the rest of the changes.</div><div=
><br></div><div>Best regards,</div><div>Wojciech<br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 8 Dec 202=
0 at 02:47, Saini, Naveen Kumar &lt;<a href=3D"mailto:naveen.kumar.saini@in=
tel.com">naveen.kumar.saini@intel.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">You have missed few of my comments in =
v2 !<br>
<br>
Regards,<br>
Naveen<br>
<br>
-----Original Message-----<br>
From: Saini, Naveen Kumar <br>
Sent: Monday, December 7, 2020 8:06 PM<br>
To: &#39;Wojciech Zmuda&#39; &lt;<a href=3D"mailto:zmuda.w@gmail.com" targe=
t=3D"_blank">zmuda.w@gmail.com</a>&gt;; <a href=3D"mailto:yocto@lists.yocto=
project.org" target=3D"_blank">yocto@lists.yoctoproject.org</a><br>
Cc: <a href=3D"mailto:davide.ricci@huawei.com" target=3D"_blank">davide.ric=
ci@huawei.com</a>; <a href=3D"mailto:zbigniew.bodek@huawei.com" target=3D"_=
blank">zbigniew.bodek@huawei.com</a>; <a href=3D"mailto:jaroslaw.marek@huaw=
ei.com" target=3D"_blank">jaroslaw.marek@huawei.com</a>; <a href=3D"mailto:=
robert.drab@huawei.com" target=3D"_blank">robert.drab@huawei.com</a>; Wojci=
ech Zmuda &lt;<a href=3D"mailto:wojciech.zmuda@huawei.com" target=3D"_blank=
">wojciech.zmuda@huawei.com</a>&gt;<br>
Subject: RE: [yocto] [meta-zephyr][PATCH 5/5] zephyr-flash-pyocd.bbclass: s=
upport for flashing via pyocd<br>
<br>
Thanks for the patches.=C2=A0 Please find my comments below.<br>
<br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yoc=
to@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoprojec=
t.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; On Behalf Of =
Wojciech Zmuda<br>
Sent: Monday, December 7, 2020 4:15 AM<br>
To: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto=
@lists.yoctoproject.org</a><br>
Cc: <a href=3D"mailto:davide.ricci@huawei.com" target=3D"_blank">davide.ric=
ci@huawei.com</a>; <a href=3D"mailto:zbigniew.bodek@huawei.com" target=3D"_=
blank">zbigniew.bodek@huawei.com</a>; <a href=3D"mailto:jaroslaw.marek@huaw=
ei.com" target=3D"_blank">jaroslaw.marek@huawei.com</a>; <a href=3D"mailto:=
robert.drab@huawei.com" target=3D"_blank">robert.drab@huawei.com</a>; Wojci=
ech Zmuda &lt;<a href=3D"mailto:wojciech.zmuda@huawei.com" target=3D"_blank=
">wojciech.zmuda@huawei.com</a>&gt;<br>
Subject: [yocto] [meta-zephyr][PATCH 5/5] zephyr-flash-pyocd.bbclass: suppo=
rt for flashing via pyocd<br>
<br>
Flash boards supported via pyocd:<br>
<br>
=C2=A0 =C2=A0 MACHINE=3Dxxx bitbake yyy -c flash_usb<br>
<br>
The only supported board for now is 96Boards Nitrogen. Modify its config ac=
cordingly.<br>
<br>
Modify helloworld and philosopers samples with adidtional .hex output file =
deployment, as this format is required by pyocd.<br>
<br>
Describe the feature in README.<br>
<br>
Signed-off-by: Wojciech Zmuda &lt;<a href=3D"mailto:wojciech.zmuda@huawei.c=
om" target=3D"_blank">wojciech.zmuda@huawei.com</a>&gt;<br>
---<br>
=C2=A0README.txt=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 23 +++=
++++++++++++++++<br>
=C2=A0classes/zephyr-flash-pyocd.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | 17 ++++++++++++++<br>
=C2=A0conf/machine/96b-nitrogen.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 1 +<br>
=C2=A0.../zephyr-kernel/<a href=3D"http://zephyr-helloworld.bb" rel=3D"nore=
ferrer" target=3D"_blank">zephyr-helloworld.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 1 +<br>
=C2=A0.../zephyr-kernel/<a href=3D"http://zephyr-philosophers.bb" rel=3D"no=
referrer" target=3D"_blank">zephyr-philosophers.bb</a>=C2=A0 =C2=A0 =C2=A0 =
|=C2=A0 1 +<br>
=C2=A05 files changed, 43 insertions(+)<br>
=C2=A0create mode 100644 classes/zephyr-flash-pyocd.bbclass<br>
<br>
diff --git a/README.txt b/README.txt<br>
index 6463339..4366764 100644<br>
--- a/README.txt<br>
+++ b/README.txt<br>
@@ -43,6 +43,29 @@ The same sample, for Nios2 image:<br>
=C2=A0 =C2=A0 =C2=A0$ MACHINE=3Dqemu-nios2 bitbake zephyr-philosophers<br>
=C2=A0 =C2=A0 =C2=A0$ runqemu qemu-nios2<br>
<br>
+Flashing<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
+<br>
+You can flash Zephyr samples to boards. Currently, the following <br>
+MACHINEs are supported:<br>
+ * DFU:<br>
+=C2=A0 - arduino_101_sss<br>
+=C2=A0 - arduino_101<br>
+=C2=A0 - arduino_101_ble<br>
+ * pyocd:<br>
+=C2=A0 - 96b_nitrogen<br>
+<br>
+To flash the example you built with command e.g.<br>
+<br>
+=C2=A0 =C2=A0 $ MACHINE=3D96b_nitrogen bitbake zephyr-philosophers<br>
[Naveen Saini] Typo here, MACHINE=3D96b-nitrogen<br>
+<br>
+call similar command with explicit flash_usb command:<br>
+<br>
+=C2=A0 =C2=A0 $ MACHINE=3D96b_nitrogen bitbake zephyr-philosophers -c flas=
h_usb<br>
[Naveen Saini]=C2=A0 Same as above<br>
<br>
+<br>
+dfu-util and/or pyocd need to be installed in your system. If you <br>
+observe permission errors or the flashing process seem to hang, follow tho=
se instructions:<br>
+<a href=3D"https://github.com/pyocd/pyOCD/tree/master/udev" rel=3D"norefer=
rer" target=3D"_blank">https://github.com/pyocd/pyOCD/tree/master/udev</a><=
br>
<br>
=C2=A0Building and Running Zephyr Tests<br>
=C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
diff --git a/classes/zephyr-flash-pyocd.bbclass b/classes/zephyr-flash-pyoc=
d.bbclass<br>
new file mode 100644<br>
index 0000000..aafe9e7<br>
--- /dev/null<br>
+++ b/classes/zephyr-flash-pyocd.bbclass<br>
@@ -0,0 +1,17 @@<br>
+<br>
+python do_flash_usb() {<br>
+=C2=A0 =C2=A0 from pyocd.core.helpers import ConnectHelper<br>
+=C2=A0 =C2=A0 from pyocd.flash.file_programmer import FileProgrammer<br>
+<br>
+=C2=A0 =C2=A0 image =3D f&quot;{d.getVar(&#39;DEPLOY_DIR_IMAGE&#39;)}/{d.g=
etVar(&#39;PN&#39;)}.hex&quot;<br>
+=C2=A0 =C2=A0 bb.plain(f&quot;Attempting to flash {image} to board<br>
+ {d.getVar(&#39;BOARD&#39;)}&quot;)<br>
+<br>
+=C2=A0 =C2=A0 with ConnectHelper.session_with_chosen_probe() as session:<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 FileProgrammer(session).program(image)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 session.board.target.reset()<br>
+}<br>
+<br>
+addtask do_flash_usb<br>
+<br>
+do_flash_usb[nostamp] =3D &quot;1&quot;<br>
+do_flash_usb[vardepsexclude] =3D &quot;BB_ORIGENV&quot;<br>
diff --git a/conf/machine/96b-nitrogen.conf b/conf/machine/96b-nitrogen.con=
f index d1905f2..998db4c 100644<br>
--- a/conf/machine/96b-nitrogen.conf<br>
+++ b/conf/machine/96b-nitrogen.conf<br>
@@ -4,4 +4,5 @@<br>
=C2=A0#@DESCRIPTION: Machine configuration for 96Boards Nitrogen Board.<br>
<br>
=C2=A0require conf/machine/include/nrf52832.inc<br>
+ZEPHYR_INHERIT_CLASSES +=3D &quot;zephyr-flash-pyocd&quot;<br>
=C2=A0ARCH_96b-nitrogen =3D &quot;arm&quot;<br>
diff --git a/recipes-kernel/zephyr-kernel/<a href=3D"http://zephyr-hellowor=
ld.bb" rel=3D"noreferrer" target=3D"_blank">zephyr-helloworld.bb</a> b/reci=
pes-kernel/zephyr-kernel/<a href=3D"http://zephyr-helloworld.bb" rel=3D"nor=
eferrer" target=3D"_blank">zephyr-helloworld.bb</a><br>
index 1400e72..9b77975 100644<br>
--- a/recipes-kernel/zephyr-kernel/<a href=3D"http://zephyr-helloworld.bb" =
rel=3D"noreferrer" target=3D"_blank">zephyr-helloworld.bb</a><br>
+++ b/recipes-kernel/zephyr-kernel/<a href=3D"http://zephyr-helloworld.bb" =
rel=3D"noreferrer" target=3D"_blank">zephyr-helloworld.bb</a><br>
@@ -8,6 +8,7 @@ OECMAKE_SOURCEPATH =3D &quot;${ZEPHYR_SRC_DIR}&quot;<br>
<br>
=C2=A0do_deploy () {<br>
=C2=A0 =C2=A0 =C2=A0install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.elf ${DEPL=
OYDIR}/${PN}.elf<br>
+=C2=A0 =C2=A0 install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.hex<br>
+ ${DEPLOYDIR}/${PN}.hex<br>
=C2=A0}<br>
[Naveen Saini]=C2=A0 No *.hex file while building for MACHINE=3Dqemu-x86=C2=
=A0 Error log:=C2=A0 ...build/zephyr/zephyr.hex&#39;: No such file or direc=
tory<br>
<br>
<br>
=C2=A0addtask deploy after do_compile<br>
diff --git a/recipes-kernel/zephyr-kernel/<a href=3D"http://zephyr-philosop=
hers.bb" rel=3D"noreferrer" target=3D"_blank">zephyr-philosophers.bb</a> b/=
recipes-kernel/zephyr-kernel/<a href=3D"http://zephyr-philosophers.bb" rel=
=3D"noreferrer" target=3D"_blank">zephyr-philosophers.bb</a><br>
index 5f7fbcb..f720999 100644<br>
--- a/recipes-kernel/zephyr-kernel/<a href=3D"http://zephyr-philosophers.bb=
" rel=3D"noreferrer" target=3D"_blank">zephyr-philosophers.bb</a><br>
+++ b/recipes-kernel/zephyr-kernel/<a href=3D"http://zephyr-philosophers.bb=
" rel=3D"noreferrer" target=3D"_blank">zephyr-philosophers.bb</a><br>
@@ -8,6 +8,7 @@ OECMAKE_SOURCEPATH =3D &quot;${ZEPHYR_SRC_DIR}&quot;<br>
<br>
=C2=A0do_deploy () {<br>
=C2=A0 =C2=A0 =C2=A0install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.elf ${DEPL=
OYDIR}/${PN}.elf<br>
+=C2=A0 =C2=A0 install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.hex<br>
+ ${DEPLOYDIR}/${PN}.hex<br>
=C2=A0}<br>
<br>
[Naveen Saini]=C2=A0 No *.hex file while building for MACHINE=3Dqemu-x86=C2=
=A0 Error log:=C2=A0 ...build/zephyr/zephyr.hex&#39;: No such file or direc=
tory<br>
<br>
Could you also try to build testcases !!<br>
$ MACHINE=3D96b-nitrogen bitbake zephyr-kernel-test-all<br>
<br>
Build breaks with error: ......build/zephyr/zephyr.elf.elf&#39;: No such fi=
le or directory<br>
<br>
=C2=A0addtask deploy after do_compile<br>
--<br>
2.25.1<br>
<br>
</blockquote></div>

--000000000000883aef05b5f13b46--
