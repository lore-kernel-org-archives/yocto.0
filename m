Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web11.5046.1614666302600912220
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Mar 2021 22:25:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Na5Elos2;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: d.extc.sachin@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id w1so14052605qto.2;
        Mon, 01 Mar 2021 22:25:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=VpI+UTmT/yQWS8Fy2U9epxiZiERZiJISDWucpl5+V74=;
        b=Na5Elos224BU53+mLWxrntexwyCI3NV/J37pSjRvBj38ySD6lhFvsKoEoZXYeXL2gB
         KiFtGH8V0HMW+rNwNtAIk38M2sWJGKOem2qVo2AOdx914JSO9wXvGymkQemmNrZghNcG
         a2zje2t1LQiRmyvFeQyYaeMDmk8qll4o8PErLVLxkVWwLo5YRM8DUbxcQc/inSg8nonP
         GhJyCbuQDoQ9ZilnD7FyJswf53RdTuGyljTNae7/i69+7egjWEP11Q3rG+cyq3upZu1e
         ytHhE4bHe1MZWjRHRTLOXJEuQf6sJVy4WaQfQWFXEKGgwgvdo9ET23WY0xXT8SwAtpvs
         q6BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=VpI+UTmT/yQWS8Fy2U9epxiZiERZiJISDWucpl5+V74=;
        b=uevhogEKfcHFmFD97cuDISjnpdxwadvK/gEb8fMKIzgGEooPEB6G4w9AK0RVQQ/VYp
         YLMdpCkVRyKR+UnVOybobzxUfCyVAy67/FvE0PHWH61S47Fr9vCZjKDGAk1WwY4i7vNN
         WGeRemRS5+0LmkcJbU5W8vZKJzJE3E3IbDwo4n9v8K2PQpnWvp+MgDRug0VnPSAlwPIK
         xkD4K3RhifGUu43skRS6sZTwpz4zz8XWgC1VrEpX60MQUV/qzdvKGCYT/Hv0F/CHp32q
         M8FZDR40LlpOf5bkuoqa/VZXopsO9WJD+/bN/LM1LHSVdCT93+jo6KqYRNg/0DdpMeAq
         62Dw==
X-Gm-Message-State: AOAM5301/WsV36e0x4A/tZlhyO9rqYLlH/+FIWZvhLPD4LzRi28ytG4V
	m0YmmgYL6AV3+5N3CuRKybNaUxMsh9R9178mnLyWj1AxAWkNHg==
X-Google-Smtp-Source: ABdhPJzK4woRtpPBNMROXoE9bftXw9QGDcHvyHc0EaKOpmimUH3hwHXCDiBrLo4TdzL3XVGYFPZjhbEv2GDNaLkjKbA=
X-Received: by 2002:aed:3104:: with SMTP id 4mr10316595qtg.341.1614666301388;
 Mon, 01 Mar 2021 22:25:01 -0800 (PST)
MIME-Version: 1.0
From: d.extc.sachin@gmail.com
Date: Tue, 2 Mar 2021 11:54:48 +0530
Message-ID: <CA+xLv6Tp6odDDfXdCh29khA4H04+uuC=8SJSAtshm8rmQ1zJ3A@mail.gmail.com>
Subject: yocto meta intel dual boot with windows 8.1
To: meta-intel@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000533a5605bc87cb80"

--000000000000533a5605bc87cb80
Content-Type: text/plain; charset="UTF-8"

Hi

I am new to yoctoproject and have a system with intel architecture and
embedded OS based on windows 8.1 installed. But now I want to make a dual
boot system with yocto. I have around 100 GB free space when checked in
disk management.

So here's what I did downloaded poky repo and meta-intel sub repo. appended
the following at the end of my local.conf file

MACHINE = "intel-corei7-64"
MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
PREFERRED_VERSION_grub ?= "2.0"
WKS_FILE = "image-installer.wks.in"
IMAGE_FSTYPES_append = " ext4"
IMAGE_TYPEDEP_wic = "ext4"
INITRD_IMAGE_LIVE="core-image-minimal-initramfs"
do_image_wic[depends] += "${INITRD_IMAGE_LIVE}:do_image_complete"
do_rootfs[depends] += "virtual/kernel:do_deploy"
IMAGE_BOOT_FILES_append = "\
      ${KERNEL_IMAGETYPE} \
  microcode.cpio \
  ${IMGDEPLOYDIR}/${IMAGE_BASENAME}-${MACHINE}.ext4;rootfs.img \
  ${@bb.utils.contains('EFI_PROVIDER', 'grub-efi',
'grub-efi-bootx64.efi;EFI/BOOT/bootx64.efi', '', d)} \
  ${@bb.utils.contains('EFI_PROVIDER', 'grub-efi',
'${IMAGE_ROOTFS}/boot/EFI/BOOT/grub.cfg;EFI/BOOT/grub.cfg', '', d)} \
  ${@bb.utils.contains('EFI_PROVIDER', 'systemd-boot',
'systemd-bootx64.efi;EFI/BOOT/bootx64.efi', '', d)} \
  ${@bb.utils.contains('EFI_PROVIDER', 'systemd-boot',
'${IMAGE_ROOTFS}/boot/loader/loader.conf;loader/loader.conf ', '', d)}
\
  ${@bb.utils.contains('EFI_PROVIDER', 'systemd-boot',
'${IMAGE_ROOTFS}/boot/loader/entries/boot.conf;loader/entries/boot.conf',
'', d)} "

So with the above config I build a sato image using bitbake command and got
a .wic image file. But when I try to install the image on my system I could
see 2 options

install
reboot to firmware settings.

when I selected the first option to install it only asks to install on sda,
that means it will erase my entire disk and install only yocto.

So how can I achieve something like we do in standard linux distribution
where we are able to install it on a specific partition/free space
available. Is there any configuration I need to change/add?

Thanks

--000000000000533a5605bc87cb80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<div><br></div><div><p style=3D"margin-top:0px;margin-ri=
ght:0px;margin-left:0px;padding:0px;border:0px;font-variant-numeric:inherit=
;font-variant-east-asian:inherit;font-stretch:inherit;line-height:inherit;f=
ont-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:=
15px;vertical-align:baseline;box-sizing:inherit;clear:both;color:rgb(36,39,=
41)">I am new to yoctoproject and have a system with intel architecture and=
 embedded OS based on windows 8.1 installed. But now I want to make a dual =
boot system with yocto. I have around 100 GB free space when checked in dis=
k management.</p><p style=3D"margin-top:0px;margin-right:0px;margin-left:0p=
x;padding:0px;border:0px;font-variant-numeric:inherit;font-variant-east-asi=
an:inherit;font-stretch:inherit;line-height:inherit;font-family:Arial,&quot=
;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:15px;vertical-align:ba=
seline;box-sizing:inherit;clear:both;color:rgb(36,39,41)">So here&#39;s wha=
t I did downloaded poky repo and meta-intel sub repo. appended the followin=
g at the end of my local.conf file</p><pre style=3D"margin-top:0px;padding:=
12px;border:0px;font-variant-numeric:inherit;font-variant-east-asian:inheri=
t;font-stretch:inherit;line-height:1.30769;font-family:Consolas,Menlo,Monac=
o,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans =
Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,mon=
ospace,sans-serif;font-size:13px;vertical-align:baseline;box-sizing:inherit=
;width:auto;max-height:600px;overflow:auto;border-radius:5px"><code style=
=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inher=
it;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family=
:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quo=
t;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;=
Courier New&quot;,monospace,sans-serif;vertical-align:baseline;box-sizing:i=
nherit;background-color:transparent;white-space:inherit;border-radius:0px">=
MACHINE =3D &quot;intel-corei7-64&quot;
MACHINE_ESSENTIAL_EXTRA_RDEPENDS =3D &quot;grub&quot;
PREFERRED_VERSION_grub ?=3D &quot;2.0&quot;
WKS_FILE =3D &quot;<a href=3D"http://image-installer.wks.in">image-installe=
r.wks.in</a>&quot;
IMAGE_FSTYPES_append =3D &quot; ext4&quot;
IMAGE_TYPEDEP_wic =3D &quot;ext4&quot;
INITRD_IMAGE_LIVE=3D&quot;core-image-minimal-initramfs&quot;
do_image_wic[depends] +=3D &quot;${INITRD_IMAGE_LIVE}:do_image_complete&quo=
t;
do_rootfs[depends] +=3D &quot;virtual/kernel:do_deploy&quot;
IMAGE_BOOT_FILES_append =3D &quot;\
      ${KERNEL_IMAGETYPE} \
  microcode.cpio \
  ${IMGDEPLOYDIR}/${IMAGE_BASENAME}-${MACHINE}.ext4;rootfs.img \
  ${@bb.utils.contains(&#39;EFI_PROVIDER&#39;, &#39;grub-efi&#39;, &#39;gru=
b-efi-bootx64.efi;EFI/BOOT/bootx64.efi&#39;, &#39;&#39;, d)} \
  ${@bb.utils.contains(&#39;EFI_PROVIDER&#39;, &#39;grub-efi&#39;, &#39;${I=
MAGE_ROOTFS}/boot/EFI/BOOT/grub.cfg;EFI/BOOT/grub.cfg&#39;, &#39;&#39;, d)}=
 \
  ${@bb.utils.contains(&#39;EFI_PROVIDER&#39;, &#39;systemd-boot&#39;, &#39=
;systemd-bootx64.efi;EFI/BOOT/bootx64.efi&#39;, &#39;&#39;, d)} \
  ${@bb.utils.contains(&#39;EFI_PROVIDER&#39;, &#39;systemd-boot&#39;, &#39=
;${IMAGE_ROOTFS}/boot/loader/loader.conf;loader/loader.conf &#39;, &#39;&#3=
9;, d)} \
  ${@bb.utils.contains(&#39;EFI_PROVIDER&#39;, &#39;systemd-boot&#39;, &#39=
;${IMAGE_ROOTFS}/boot/loader/entries/boot.conf;loader/entries/boot.conf&#39=
;, &#39;&#39;, d)} &quot;
</code></pre><p style=3D"margin-top:0px;margin-right:0px;margin-left:0px;pa=
dding:0px;border:0px;font-variant-numeric:inherit;font-variant-east-asian:i=
nherit;font-stretch:inherit;line-height:inherit;font-family:Arial,&quot;Hel=
vetica Neue&quot;,Helvetica,sans-serif;font-size:15px;vertical-align:baseli=
ne;box-sizing:inherit;clear:both;color:rgb(36,39,41)">So with the above con=
fig I build a sato image using bitbake command and got a .wic image file. B=
ut when I try to install the image on my system I could see 2 options</p><p=
re style=3D"margin-top:0px;padding:12px;border:0px;font-variant-numeric:inh=
erit;font-variant-east-asian:inherit;font-stretch:inherit;line-height:1.307=
69;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liber=
ation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mon=
o&quot;,&quot;Courier New&quot;,monospace,sans-serif;font-size:13px;vertica=
l-align:baseline;box-sizing:inherit;width:auto;max-height:600px;overflow:au=
to;border-radius:5px"><code style=3D"margin:0px;padding:0px;border:0px;font=
-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inheri=
t;line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Consol=
e&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bits=
tream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;ver=
tical-align:baseline;box-sizing:inherit;background-color:transparent;white-=
space:inherit;border-radius:0px">install
reboot to firmware settings.
</code></pre><p style=3D"margin-top:0px;margin-right:0px;margin-left:0px;pa=
dding:0px;border:0px;font-variant-numeric:inherit;font-variant-east-asian:i=
nherit;font-stretch:inherit;line-height:inherit;font-family:Arial,&quot;Hel=
vetica Neue&quot;,Helvetica,sans-serif;font-size:15px;vertical-align:baseli=
ne;box-sizing:inherit;clear:both;color:rgb(36,39,41)">when I selected the f=
irst option to install it only asks to install on sda, that means it will e=
rase my entire disk and install only yocto.</p><p style=3D"margin-top:0px;m=
argin-right:0px;margin-left:0px;padding:0px;border:0px;font-variant-numeric=
:inherit;font-variant-east-asian:inherit;font-stretch:inherit;line-height:i=
nherit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;fo=
nt-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;color:rg=
b(36,39,41)">So how can I achieve something like we do in standard linux di=
stribution where we are able to install it on a specific partition/free spa=
ce available. Is there any configuration I need to change/add?</p><p style=
=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inherit;font-var=
iant-east-asian:inherit;font-stretch:inherit;line-height:inherit;font-famil=
y:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:15px;vert=
ical-align:baseline;box-sizing:inherit;clear:both;color:rgb(36,39,41)">Than=
ks</p></div></div>

--000000000000533a5605bc87cb80--
