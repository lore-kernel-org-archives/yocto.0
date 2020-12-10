Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web11.16032.1607616562186096049
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Dec 2020 08:09:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y8ML5Z+z;
 spf=pass (domain: gmail.com, ip: 209.85.128.68, mailfrom: zmuda.w@gmail.com)
Received: by mail-wm1-f68.google.com with SMTP id g25so3045842wmh.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Dec 2020 08:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CCPfsrPqu/ZYvZk38KHFZVVR5HZ+SkVVTzHfG1XjebE=;
        b=Y8ML5Z+z4PM2gpVgT4VtrGB0st47sEryIzEyZubguvwh0a8eIUTGUOBW8NIroapmQN
         7x+QVTdI0z+I8kEXFzBxcij1UNC0PTxQY004O7v8rLO+nOQB3icxFxFJjyy0bufiMfQn
         Y2/Tn7FNiWdpYKVvq3JfDYaUjpmrtxr13ugGoGJ9SmeB+i2BgMlrf9oIAaj+484Q56V0
         JnwIV02/yXSUSJe+HsO8wn+UzkyOvsZqvb3vlV5+ol7Z/TFI1FfTOsG4cQFbb/qxR6WM
         Pokz7NfL4PLFYY723FZ4+rpkUumroaL+n7SAi9G0lhNaXqoiHtT86m3ZtwVo30riP2Kv
         bNoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CCPfsrPqu/ZYvZk38KHFZVVR5HZ+SkVVTzHfG1XjebE=;
        b=DZFUZVKE2AK9tR/a1+TSKFbv6A+mMVOSrnuY8M3QUm4hex5cNn4heKSTETU3S2hrtB
         mP0nh8exq8vTMfrPU9zfvqU3jFuQH9v91bPB0KqArOIHWZ1YqAMbxm2/uoX5W9op6lf4
         r3k1Korxn7tVUq52LV6v0RUNkiFNY9hCpsalxIPsh3WTsnti8hRnqTepw3fBI9WgKjKs
         3BtsziMpgsEAbADCjUn2MhrrMRGNYMKRc3t7d1aJDuVdm1AdQsodTMvIjNF2j3XeRv+n
         N6mTxCFNgP/xOyMj9nTW8/UsWt0eH21zeIXz9bYTIxHVR7rPXUlzAIE8ZtPZIoCLiUx+
         47VQ==
X-Gm-Message-State: AOAM530bnrfjs+cnmloATBEkw04V+fXTUXASwQfjSzvjJhgm3v+QfwZ8
	P4temSln9BfbV5ROppc+D2OG94MtvXQpwU/W3Ag=
X-Google-Smtp-Source: ABdhPJz2CzF4EDd/nFq/iDz6zsHic66D6oZpPpvwH8+nc7IYpeaZzj/TmRaxyIqdg6xWwWVn4rHmWMH5wOq+vOPKdjE=
X-Received: by 2002:a1c:5a08:: with SMTP id o8mr8978091wmb.142.1607616560548;
 Thu, 10 Dec 2020 08:09:20 -0800 (PST)
MIME-Version: 1.0
References: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
 <20201206201521.3377-6-wojciech.zmuda@huawei.com> <cffe226c642a412b90cd881122e5cfbd@intel.com>
 <7c9d12e428954c44964906065281af1e@intel.com> <CAL0FYXYP3+jXEVnYS1KaMVOQ5OPGWJh4Jo=zJgXUG-CNQEfnAA@mail.gmail.com>
 <0637042547e547ffb5f8f351afe5aeba@intel.com>
In-Reply-To: <0637042547e547ffb5f8f351afe5aeba@intel.com>
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
Date: Thu, 10 Dec 2020 17:09:09 +0100
Message-ID: <CAL0FYXYNV0vsOmsYyq8dG_959ujg146CPqHY_DSm2ftmA-Bn0A@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr][PATCH 5/5] zephyr-flash-pyocd.bbclass: support for flashing via pyocd
To: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000006d06c05b61e669d"

--00000000000006d06c05b61e669d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Naveen,

I investigated the arduino-101-ble problem and for me it's non trivial to
fix. It's not related to the same missing variable that I spotted in the
Nitrogen case, but rather there are some inconsistencies with
architecture-related variables i.e. PACKAGE_ARCHS and TUNE_xxx. I did not
find any way to fix it.

For now I pushed v3 with Nitrogen support. If I find a way to straighten
out the Arduino case, I'll push a separate patch set for that.

BTW, I also have 96boards Avenger96 support patch set ready. It depends on
one commit from the Nitrogen patch set (Cortex-M4 tune), so I'll send it
out right after Nitrogen support is merged.

Regards,
Wojciech

On Thu, 10 Dec 2020 at 08:20, Saini, Naveen Kumar <
naveen.kumar.saini@intel.com> wrote:

> Hi Wojciech,
>
>
>
> Yes, testcases are currently being verified only on qemu, so if we can
> just build testcases for now that should be sufficient. If you are able t=
o
> flash and execute tests manually on HW, that would work. Please send v3.
>
>
>
> Can you fix for arduino-101-ble  as well ?
>
>
>
> Naveen
>
>
>
> *From:* Wojciech =C5=BBmuda <zmuda.w@gmail.com>
> *Sent:* Wednesday, December 9, 2020 11:07 PM
> *To:* Saini, Naveen Kumar <naveen.kumar.saini@intel.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] [meta-zephyr][PATCH 5/5]
> zephyr-flash-pyocd.bbclass: support for flashing via pyocd
>
>
>
> Hi Naveen,
>
>
>
> I fixed the missing .hex issue and I'm ready to send v3.
>
>
>
> I also experimented with your last suggestion, i.e. building test cases
> with MACHINE=3D96b-nitrogen and I observed the following:
>
>
>
> It is possible to build when I provide IMGDEPLOYDIR variable somewhere,
> e.g. in 96b-nitrogen.conf. However, for other platforms, this variable is
> provided only in classes/zephyr-qemuboot.bbclass. I've also tried to buil=
d
> test cases for arduino-101-ble and it failed with the following reason:
>
>
>
>     Error, the PACKAGE_ARCHS variable (all any noarch
> ${PACKAGE_EXTRA_ARCHS_tune-armv6m} cortexm0-vfp arduino_101_ble) for
> DEFAULTTUNE (cortexm0) does not contain TUNE_PKGARCH (cortexm0t2-vfp).
>
>
>
> Additionally, when I provided IMGDEPLOYDIR in 96b-nitrogen.conf, I tried
> to execute test cases with -c testimage. It failed on running qemu.
>
>
>
> According to my observations, my understanding is that the test cases are
> currently designed for being verified on qemu. Do you expect the
> 96b-nitrogen support to contain automatic test cases execution on the
> hardware, or just the possibility of building? If it just the matter of
> building the .elf files (you can flash them manually), then I can push v3
> today.
>
>
>
> Best regards,
>
> Wojciech
>
>
>
>
>
> On Tue, 8 Dec 2020 at 02:47, Saini, Naveen Kumar <
> naveen.kumar.saini@intel.com> wrote:
>
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
>     MACHINE=3Dxxx bitbake yyy -c flash_usb
>
> The only supported board for now is 96Boards Nitrogen. Modify its config
> accordingly.
>
> Modify helloworld and philosopers samples with adidtional .hex output fil=
e
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
>      $ MACHINE=3Dqemu-nios2 bitbake zephyr-philosophers
>      $ runqemu qemu-nios2
>
> +Flashing
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
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
> +    $ MACHINE=3D96b_nitrogen bitbake zephyr-philosophers
> [Naveen Saini] Typo here, MACHINE=3D96b-nitrogen
> +
> +call similar command with explicit flash_usb command:
> +
> +    $ MACHINE=3D96b_nitrogen bitbake zephyr-philosophers -c flash_usb
> [Naveen Saini]  Same as above
>
> +
> +dfu-util and/or pyocd need to be installed in your system. If you
> +observe permission errors or the flashing process seem to hang, follow
> those instructions:
> +https://github.com/pyocd/pyOCD/tree/master/udev
>
>  Building and Running Zephyr Tests
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
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
> +    image =3D f"{d.getVar('DEPLOY_DIR_IMAGE')}/{d.getVar('PN')}.hex"
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
> +do_flash_usb[nostamp] =3D "1"
> +do_flash_usb[vardepsexclude] =3D "BB_ORIGENV"
> diff --git a/conf/machine/96b-nitrogen.conf
> b/conf/machine/96b-nitrogen.conf index d1905f2..998db4c 100644
> --- a/conf/machine/96b-nitrogen.conf
> +++ b/conf/machine/96b-nitrogen.conf
> @@ -4,4 +4,5 @@
>  #@DESCRIPTION: Machine configuration for 96Boards Nitrogen Board.
>
>  require conf/machine/include/nrf52832.inc
> +ZEPHYR_INHERIT_CLASSES +=3D "zephyr-flash-pyocd"
>  ARCH_96b-nitrogen =3D "arm"
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
> b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
> index 1400e72..9b77975 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
> +++ b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
> @@ -8,6 +8,7 @@ OECMAKE_SOURCEPATH =3D "${ZEPHYR_SRC_DIR}"
>
>  do_deploy () {
>      install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.elf
> ${DEPLOYDIR}/${PN}.elf
> +    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.hex
> + ${DEPLOYDIR}/${PN}.hex
>  }
> [Naveen Saini]  No *.hex file while building for MACHINE=3Dqemu-x86  Erro=
r
> log:  ...build/zephyr/zephyr.hex': No such file or directory
>
>
>  addtask deploy after do_compile
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
> b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
> index 5f7fbcb..f720999 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
> +++ b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
> @@ -8,6 +8,7 @@ OECMAKE_SOURCEPATH =3D "${ZEPHYR_SRC_DIR}"
>
>  do_deploy () {
>      install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.elf
> ${DEPLOYDIR}/${PN}.elf
> +    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.hex
> + ${DEPLOYDIR}/${PN}.hex
>  }
>
> [Naveen Saini]  No *.hex file while building for MACHINE=3Dqemu-x86  Erro=
r
> log:  ...build/zephyr/zephyr.hex': No such file or directory
>
> Could you also try to build testcases !!
> $ MACHINE=3D96b-nitrogen bitbake zephyr-kernel-test-all
>
> Build breaks with error: ......build/zephyr/zephyr.elf.elf': No such file
> or directory
>
>  addtask deploy after do_compile
> --
> 2.25.1
>
>

--00000000000006d06c05b61e669d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Naveen,</div><div><br></div><div>I investigated th=
e arduino-101-ble problem and for me it&#39;s non trivial to fix. It&#39;s =
not related to the same missing variable that I spotted in the Nitrogen cas=
e, but rather there are some inconsistencies with architecture-related vari=
ables i.e. PACKAGE_ARCHS and TUNE_xxx. I did not find any way to fix it.<br=
></div><div><br></div><div>For now I pushed v3 with Nitrogen support. If I =
find a way to straighten out the Arduino case, I&#39;ll push a separate pat=
ch set for that.</div><div><br></div><div>BTW, I also have 96boards Avenger=
96 support patch set ready. It depends on one commit from the Nitrogen patc=
h set (Cortex-M4 tune), so I&#39;ll send it out right after Nitrogen suppor=
t is merged.</div><div><br></div><div>Regards,</div><div>Wojciech<br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu, 10 Dec 2020 at 08:20, Saini, Naveen Kumar &lt;<a href=3D"mailto:nav=
een.kumar.saini@intel.com">naveen.kumar.saini@intel.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-MY">
<div class=3D"gmail-m_-4410460452699896543WordSection1">
<p class=3D"MsoNormal"><span>Hi </span>Wojciech,<u></u><u></u></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Yes, testcases are currently being verified on=
ly on qemu, so if we can just build testcases for now that should be suffic=
ient. If you are able to flash and execute tests manually on HW, that would
 work. Please send v3.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Can you fix for </span>
arduino-101-ble=C2=A0 as well ?<u></u><u></u></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Naveen<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<div style=3D"border-color:currentcolor currentcolor currentcolor blue;bord=
er-style:none none none solid;border-width:medium medium medium 1.5pt;paddi=
ng:0cm 0cm 0cm 4pt">
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0cm 0cm"=
>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Wojciech =C5=BBmuda &lt;<a href=3D"mailto:zmuda.w@gmail.com" ta=
rget=3D"_blank">zmuda.w@gmail.com</a>&gt;
<br>
<b>Sent:</b> Wednesday, December 9, 2020 11:07 PM<br>
<b>To:</b> Saini, Naveen Kumar &lt;<a href=3D"mailto:naveen.kumar.saini@int=
el.com" target=3D"_blank">naveen.kumar.saini@intel.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] [meta-zephyr][PATCH 5/5] zephyr-flash-pyocd.bbc=
lass: support for flashing via pyocd<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hi Naveen,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I fixed the missing .hex issue and I&#39;m ready to =
send v3.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I also experimented with your last suggestion, i.e. =
building test cases with MACHINE=3D96b-nitrogen and I observed the followin=
g:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">It is possible to build when I provide IMGDEPLOYDIR =
variable somewhere, e.g. in 96b-nitrogen.conf. However, for other platforms=
, this variable is provided only in classes/zephyr-qemuboot.bbclass. I&#39;=
ve also tried to build test cases for
 arduino-101-ble and it failed with the following reason:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 Error, the PACKAGE_ARCHS variable (all=
 any noarch ${PACKAGE_EXTRA_ARCHS_tune-armv6m} cortexm0-vfp arduino_101_ble=
) for DEFAULTTUNE (cortexm0) does not contain TUNE_PKGARCH (cortexm0t2-vfp)=
.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Additionally, when I provided IMGDEPLOYDIR in 96b-ni=
trogen.conf, I tried to execute test cases with -c testimage. It failed on =
running qemu.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">According to my observations, my understanding is th=
at the test cases are currently designed for being verified on qemu. Do you=
 expect the 96b-nitrogen support to contain automatic test cases execution =
on the hardware, or just the possibility
 of building? If it just the matter of building the .elf files (you can fla=
sh them manually), then I can push v3 today.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Best regards,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Wojciech<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, 8 Dec 2020 at 02:47, Saini, Naveen Kumar &lt=
;<a href=3D"mailto:naveen.kumar.saini@intel.com" target=3D"_blank">naveen.k=
umar.saini@intel.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">You have missed few of =
my comments in v2 !<br>
<br>
Regards,<br>
Naveen<br>
<br>
-----Original Message-----<br>
From: Saini, Naveen Kumar <br>
Sent: Monday, December 7, 2020 8:06 PM<br>
To: &#39;Wojciech Zmuda&#39; &lt;<a href=3D"mailto:zmuda.w@gmail.com" targe=
t=3D"_blank">zmuda.w@gmail.com</a>&gt;;
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a><br>
Cc: <a href=3D"mailto:davide.ricci@huawei.com" target=3D"_blank">davide.ric=
ci@huawei.com</a>;
<a href=3D"mailto:zbigniew.bodek@huawei.com" target=3D"_blank">zbigniew.bod=
ek@huawei.com</a>;
<a href=3D"mailto:jaroslaw.marek@huawei.com" target=3D"_blank">jaroslaw.mar=
ek@huawei.com</a>;
<a href=3D"mailto:robert.drab@huawei.com" target=3D"_blank">robert.drab@hua=
wei.com</a>; Wojciech Zmuda &lt;<a href=3D"mailto:wojciech.zmuda@huawei.com=
" target=3D"_blank">wojciech.zmuda@huawei.com</a>&gt;<br>
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
ci@huawei.com</a>;
<a href=3D"mailto:zbigniew.bodek@huawei.com" target=3D"_blank">zbigniew.bod=
ek@huawei.com</a>;
<a href=3D"mailto:jaroslaw.marek@huawei.com" target=3D"_blank">jaroslaw.mar=
ek@huawei.com</a>;
<a href=3D"mailto:robert.drab@huawei.com" target=3D"_blank">robert.drab@hua=
wei.com</a>; Wojciech Zmuda &lt;<a href=3D"mailto:wojciech.zmuda@huawei.com=
" target=3D"_blank">wojciech.zmuda@huawei.com</a>&gt;<br>
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
=C2=A0.../zephyr-kernel/<a href=3D"http://zephyr-helloworld.bb" target=3D"_=
blank">zephyr-helloworld.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 +<br>
=C2=A0.../zephyr-kernel/<a href=3D"http://zephyr-philosophers.bb" target=3D=
"_blank">zephyr-philosophers.bb</a>=C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 +<br>
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
+<a href=3D"https://github.com/pyocd/pyOCD/tree/master/udev" target=3D"_bla=
nk">https://github.com/pyocd/pyOCD/tree/master/udev</a><br>
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
ld.bb" target=3D"_blank">zephyr-helloworld.bb</a> b/recipes-kernel/zephyr-k=
ernel/<a href=3D"http://zephyr-helloworld.bb" target=3D"_blank">zephyr-hell=
oworld.bb</a><br>
index 1400e72..9b77975 100644<br>
--- a/recipes-kernel/zephyr-kernel/<a href=3D"http://zephyr-helloworld.bb" =
target=3D"_blank">zephyr-helloworld.bb</a><br>
+++ b/recipes-kernel/zephyr-kernel/<a href=3D"http://zephyr-helloworld.bb" =
target=3D"_blank">zephyr-helloworld.bb</a><br>
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
hers.bb" target=3D"_blank">zephyr-philosophers.bb</a> b/recipes-kernel/zeph=
yr-kernel/<a href=3D"http://zephyr-philosophers.bb" target=3D"_blank">zephy=
r-philosophers.bb</a><br>
index 5f7fbcb..f720999 100644<br>
--- a/recipes-kernel/zephyr-kernel/<a href=3D"http://zephyr-philosophers.bb=
" target=3D"_blank">zephyr-philosophers.bb</a><br>
+++ b/recipes-kernel/zephyr-kernel/<a href=3D"http://zephyr-philosophers.bb=
" target=3D"_blank">zephyr-philosophers.bb</a><br>
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
2.25.1<u></u><u></u></p>
</blockquote>
</div>
</div>
</div>
</div>

</blockquote></div>

--00000000000006d06c05b61e669d--
