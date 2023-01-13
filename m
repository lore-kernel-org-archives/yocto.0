Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0755C3DA78
	for <webhook@archiver.kernel.org>; Fri, 13 Jan 2023 17:08:56 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
 by mx.groups.io with SMTP id smtpd.web10.93613.1673629732895484899
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Jan 2023 09:08:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lz4XwSEZ;
 spf=pass (domain: gmail.com, ip: 209.85.210.54, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f54.google.com with SMTP id r2-20020a9d7cc2000000b006718a7f7fbaso12565082otn.2
        for <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 09:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WfOdPVDOIWOqm1PimOS+yuekVrMZYUPOvXQgKhSukF0=;
        b=lz4XwSEZaOGXmiP7qKACdc7Ait7XyO7stpxoEN82YF8hAaaiNkX9Ru69ahk19LhNeJ
         4Azs1D11Yxx8PD+ANnLC9j7Jfqcg8pm2OsD7H/bu7EPGfeIBJmoNQym3m55srhvE9arC
         D3qMooJ+CEkgBl+k+DUzQaNO6lulu6t10ei10BwDAS3j6yHx039SimFlnb5HMFCdVyVO
         ZOQ1b0yrTSlHeNpcQGlW0Cv8a3YDjKla6mU4pnSs/p7v1MO8jKQbVAT90MtWxfCRdiQj
         Ucvjzj0qunPfZ1fJWxTxx4pdN0fEFLlOmWOEvtiQ3spHyJ7nMc9Xn+/oS8Cj8mrOnotw
         8KSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WfOdPVDOIWOqm1PimOS+yuekVrMZYUPOvXQgKhSukF0=;
        b=Ck9ADHa1ZCNVdyeKuBo4izjuK8Vet2qJD72X8PtwvOGfEKPvJh9Ac2ltDcA2w5R2Ge
         Lr1S/DuGlz6n8uNzso1GDfb64ggBUIl/Ln9j8lKJbZTdhsiz1tHp5DzbncPlBatPh+Ia
         fMwLv+xIR+5KxmTzS3OFHNdVSkEt+U3U8xaw5dK7h+FalwHj+rXgEqajOiOyBveubROn
         zeKh2UWEVEKRra8+BQdyr6yuGOfPtEFapbqFzmqrBZmsZrFQRr/NMIBLLCWoYFQTOr6F
         tlQ5JO3UU0hvkgzx4LmmgNbv4m1ynVQXpKXbHcDnvVTnLmrc7yRpyvX5fBDtuAEtjmyw
         +uJQ==
X-Gm-Message-State: AFqh2krqFIB7CSCA/uUzSDY/iZy9wKP8xU3hwO95pheF4bQyos7m4cWC
	D8vP6rHtHQSzw41hWJngSNYj4U9Jtr8QwVfuP5IXbBTO2+w=
X-Google-Smtp-Source: AMrXdXsoep88EF/VBFTnY8UUoROP5hsY0bnDhd/FDmxmeTYRG8KSEUGxBMnQloNLcrfx4rvKaczhmtPX1MmDV2nnb4w=
X-Received: by 2002:a9d:1984:0:b0:670:9d62:667f with SMTP id
 k4-20020a9d1984000000b006709d62667fmr4925350otk.111.1673629731960; Fri, 13
 Jan 2023 09:08:51 -0800 (PST)
MIME-Version: 1.0
References: <AM0P195MB07545A4FB9E737CA1BC980CBC5C29@AM0P195MB0754.EURP195.PROD.OUTLOOK.COM>
In-Reply-To: <AM0P195MB07545A4FB9E737CA1BC980CBC5C29@AM0P195MB0754.EURP195.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 13 Jan 2023 09:08:26 -0800
Message-ID: <CAMKF1src+p3JmFbsjjZiMt-_B=3vL1S1_E2fMgrnageYmrt-EQ@mail.gmail.com>
Subject: Re: [yocto] meta-selinux: ERROR: nothing provides coreutils needed by packagegroup-core-selinux
To: Kamal Kishor <kamal.kishor@vestel.com.hk>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 17:08:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58979

On Fri, Jan 13, 2023 at 6:32 AM Kamal Kishor <kamal.kishor@vestel.com.hk> w=
rote:
>
> Hi,
> I was trying to integrate meta-selinux layer with thud branch on our exis=
ting yocto build. I followed all the steps which are mentioned in README an=
d SElinux-FAQ but I am facing an error in do_rootfs step.
> The error is shown below:
>
> ERROR: custom-base-image-1.0-r0 do_rootfs: Unable to install packages. Co=
mmand '/mnt/EVC-TI-06.03.00.106/tisdk/build/arago-tmp-external-arm-toolchai=
n/work/am437x_hs_evm-linux-gnueabi/custom-base-image/1.0-r0/recipe-sysroot-=
native/usr/bin/opkg --volatile-cache -f /mnt/EVC-TI-06.03.00.106/tisdk/buil=
d/arago-tmp-external-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custom-=
base-image/1.0-r0/opkg.conf -t /mnt/EVC-TI-06.03.00.106/tisdk/build/arago-t=
mp-external-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custom-base-imag=
e/1.0-r0/temp/ipktemp/ -o /mnt/EVC-TI-06.03.00.106/tisdk/build/arago-tmp-ex=
ternal-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custom-base-image/1.0=
-r0/rootfs  --force_postinstall    install agentv3-evc10 base-passwd czmq d=
ropbear e2fsprogs-resize2fs eichrecht gattlib gosuncn-cm ifmetric kernel-mo=
dule-mt7663 kernel-module-mt7668 kernel-module-mt7668-bt libmodbus5 libtcti=
-device-dev libtcti-device-staticdev libtcti-device0 libtcti-socket-dev lib=
tcti-socket-staticdev libtcti-socket0 libtss2 libtss2-dev libtss2-staticdev=
 libwebsockets19 midmeter modbustcp ocpp-evc10 openssh-sftp-server opkg ost=
ree packagegroup-arago-base packagegroup-arago-base-tisdk packagegroup-arag=
o-console packagegroup-arago-qte packagegroup-arago-tisdk-connectivity pack=
agegroup-arago-tisdk-crypto packagegroup-arago-tisdk-graphics packagegroup-=
core-boot packagegroup-core-selinux parted procps psplash pybluez python3-a=
ws-iot-device-sdk-python python3-bcrypt python3-flask python3-flask-login p=
ython3-flask-restful python3-flask-sqlalchemy python3-marshmallow python3-m=
odbus-tk python3-pycryptodome python3-pyjwt python3-pyserial python3-pyzmq =
python3-requests python3-sqlalchemy quectel-cm resourcemgr rest-webasto res=
tv2 run-postinsts shadow smartcharge tpm2.0-tools tzdata ui-evc10 uidreader=
 webconfigv3 wpa zeromq' returned 1:
> Collected errors:
>  * Solver encountered 1 problem(s):
>  * Problem 1/1:
>  *   - nothing provides coreutils needed by packagegroup-core-selinux-1.0=
-r0.armv7at2hf-neon

Does your distro policy inhibit GPL-3.0 ? if so then the error is right.

>  *
>  * Solution 1:
>  *   - do not ask to install a package providing packagegroup-core-selinu=
x
>
>
>
> ERROR: custom-base-image-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in: /mnt/EVC-TI-06.03.00.106/tisdk/build=
/arago-tmp-external-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custom-b=
ase-image/1.0-r0/temp/log.do_rootfs.21704
> ERROR: Task (/mnt/EVC-TI-06.03.00.106/tisdk/sources/meta-custom/recipes-c=
ore/images/custom-base-image.bb:do_rootfs) failed with exit code '1'
>
>
> To avoid the error, I added RDEPENDS_packagegroup-core-selinux_remove =3D=
 "coreutils" to local.conf. After that the build is successfull.
> But I am not sure if this will break selinux functionality. Please provid=
e me with some insights on this.

If your distro does not want coreutils then you may have to look
through other options to get selinux working. I am not sure if
upstream meta-security tests this option
by default.

>
> Attached here is the log file for your reference. Please let me know if y=
ou need any information from me.
>
> Thanks & Regards
> Kamal Pandey
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58975): https://lists.yoctoproject.org/g/yocto/messag=
e/58975
> Mute This Topic: https://lists.yoctoproject.org/mt/96246573/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

