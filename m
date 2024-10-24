Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A44D0BB79
	for <webhook@archiver.kernel.org>; Thu, 24 Oct 2024 09:07:16 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.10300.1729760829742496463
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Oct 2024 02:07:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=H/QAhCl6;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539fb49c64aso1124775e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 02:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729760828; x=1730365628; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M2Sjq197MEwfjW1IGimTtg2JgvAoz95+i/kd+2QK+ZE=;
        b=H/QAhCl6GENhTULllSBKLY+Wx9wBfLg2fCDGt1zrogqTNTDTqBQT39cT7Q86nNnPWD
         gxYHg5FLMPKMUltkFhhS4nN7wIPlWcP9i93+MPl6ZMslIjse1ZJI/CNjPhh9xeilTb5V
         pM6aziR8vo1PWqOrkRrUF3ZJXKrGr8UAc1RJpAumCVW475hU7R5jTo93gKRD0wTwbCet
         vZjYxGrsgyjL4eALxya4h71SmcatbBWaGXCCaG4x9C6X5nmV+MYinLqQudwOTyKTXFVq
         gVs1wplll8MC2tdAnzrHnVNjuJYnlL7IsrBdd42KiA4S74zMrzIaNZyWZGPjEGF4sFA/
         os5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729760828; x=1730365628;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M2Sjq197MEwfjW1IGimTtg2JgvAoz95+i/kd+2QK+ZE=;
        b=db/UkdxnBhWgnbv7enIayV7dskrOnluGDThpUyyQGlkqcM0tyxXZdpiF/yVGytL47v
         Ie5I8uujRFitkV9PS5Vp325F8k6tIPk1Z/745xaLj6wQlEZkVnF2yiipni0jrwxHlj1z
         WLPynoNYCMj1CErvrvT/CpHoHx0d7YdNBaZrvUV1fnMaqsMQPItNCBOC8SMrOKlNt6yL
         VH4K8zMXx9GQfX4lwk8bR3pZ0AZbrBKFXPvhlF1pybodv4ZlpvMeEFn1MsapGSvAYwLC
         QRxhtdb8PmGj0rE5syIr1zRgQMboiNTdNl9+FaKQ8qcGh3OL+gTos7eO/rJhXroFYv8w
         6+wg==
X-Gm-Message-State: AOJu0YzXeieUo5pTww5ny9zyp/6GoFtcPbjOTUNrsLF61i9SVIhBYjND
	yQUT78yX238lCiOmDNHtyb/v5xjN55kG6wNimJoTp5lzAOfP5ib0zVteRJs5Hkk3BlFlSwv5VNx
	K/BNG0ANp0xW2KFl1DtCE2anIZfO+Qw==
X-Google-Smtp-Source: AGHT+IFI38dtvgN9NxtsXrrLz/vmAMtn4DBvlbeWYuFO/JyVIsWM3WYJCWudbI+ndorf1molxs5y+/h3SP9j8pTZ4zk=
X-Received: by 2002:a05:6512:ea4:b0:539:8f68:e036 with SMTP id
 2adb3069b0e04-53b1a354088mr4521798e87.34.1729760827506; Thu, 24 Oct 2024
 02:07:07 -0700 (PDT)
MIME-Version: 1.0
References: <hr8z.1729679886163625789.9CMP@lists.yoctoproject.org>
 <17835.1729746148931815318@lists.yoctoproject.org> <CA+Kjy2wHN5=iAQd-GqMzGg2VE74wJzjsq4jn7xDUsKE0SYpaFQ@mail.gmail.com>
 <MW3PR18MB3513CC2B4CCCDE888E2391AE8B4E2@MW3PR18MB3513.namprd18.prod.outlook.com>
In-Reply-To: <MW3PR18MB3513CC2B4CCCDE888E2391AE8B4E2@MW3PR18MB3513.namprd18.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 24 Oct 2024 11:06:55 +0200
Message-ID: <CANNYZj8iQSz07gdFwB5nhyOa3EfsZ04VEjNKaEdgKZGTyuucHg@mail.gmail.com>
Subject: Re: [yocto] populate_sysroot not found in x86_64 x86_64_ubuntu-20.04 #yocto
To: yocto@lists.yoctoproject.org, jairo.mejiaaponte@belden.com
Cc: "umeshyv@gmail.com" <umeshyv@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 09:07:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64106

I think it would be good to clarify first, what is actually needed on
the target filesystem, the tarball files or their content? Installing
to /opt/tools indicates it's probably the unpacked content.

Alex

On Thu, 24 Oct 2024 at 11:00, Jairo Mejia Aponte via
lists.yoctoproject.org
<jairo.mejiaaponte=3Dbelden.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> When you are using yocto, by default unpack the compress files that you p=
ut in SRC_URI. Therefore, you will not find the .tgz in the working directo=
ry. In order to avoid that you need to specify that in the recipe.
>
> See: https://docs.yoctoproject.org/dev-manual/new-recipe.html?highlight=
=3Dunpack#fetching-code
> Files mentioned in SRC_URI whose names end in a typical archive extension=
 (e.g. .tar, .tar.gz, .tar.bz2, .zip, and so forth), are automatically extr=
acted during the do_unpack task. For another example that specifies these t=
ypes of files, see the =E2=80=9CBuilding an Autotooled Package=E2=80=9D sec=
tion.
>
> In order to avoid this, you can add to the file:// line the flag ";unpack=
=3D0". You can see this kind of behaviors if you search directly in the fol=
der of the recipe what happen after you try to bake it.
>
> # Just build again
> bitbake <name_recipe>
> .... Error
>
> # Get the WORKDIR of the recipe to know exactly what is there
> bitbake -e <name_recipe> | grep ^WORKDIR=3D | sed -n -e 's/^.*WORKDIR=3D"=
//p' | sed -n -e 's/".*$//p'
>
>
> Sincerely,
>
> Jairo R. Mejia Aponte | Embedded Software Linux Junior Engineer
>
> Netmodule | Hirschmann Automation & Control GmbH
>
> Location Eschborn | Frankfurter Str. 10-14 | 65760 Eschborn | Germany
>
> jairo.mejiaaponte@belden.com | www.netmodule.com | www.belden.com
>
> ________________________________
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on beha=
lf of umeshyv <umeshyv@gmail.com>
> Sent: 24 October 2024 7:31 AM
> To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> Subject: [EXTERNAL] Re: [yocto] populate_sysroot not found in x86_64 x86_=
64_ubuntu-20.04 #yocto
>
>
> External Message:
>
> Use caution before opening links or attachments
>
> Hi Aleksandar
>
>
> Thanks for your reply
>
>
> I removed SAVEDDIR in the recipe and replaced with WORKDIR inside do_inst=
all() and when I build, following is the error
>
> ERROR: xxx-tools-native-1.0-r0 do_install: ExecutionError('/home/xxx/xxx/=
xxx/build-xxx/tmp/work/xxx-linux/tools-native/1.0-r0/temp/run.do_install.32=
49', 1, None, None)
>
> In the log file
>
> DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_install
> | install: cannot stat '/home/xxx/xxx/xxx/build-xxx/tmp/work/xxx-linux/to=
ols-native/1.0-r0/*.tgz': No such file or directory
>
> Am I still missing anything, suggestions please
>
> Thanks
> umesh
>
>
> On Thu, 24 Oct 2024 at 06:02, Aleksandar Nikolic via Lists.Yoctoproject.O=
rg <aleksandar.nikolic010=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> On Wed, Oct 23, 2024 at 12:39 PM, umeshyv wrote:
>
> Hi
>
> I get below error for the recipe which copies .tgz files to a directory
>
> ERROR: lib32-xxxxxx-image-1.0-r0 do_prepare_recipe_sysroot: Manifest /hom=
e/x/projects/x/build-x/tmp/sstate-control/manifest-x86_64_ubuntu-20.04-sigm=
a-tools-native.populate_sysroot not found in x86_64 x86_64_ubuntu-20.04 (va=
riant '')?
>
> Here is my recipe
>
> SUMMARY =3D "Tools"
> LICENSE =3D "CLOSED"
> SAVEDDIR :=3D "${THISDIR}/files"
>
> SRC_URI =3D "file://1xx.tgz \
>            file://2xx.tgz \
>            file://3xx.tgz \
>            file://4xx.tgz"
>
> do_install() {
>         install -d ${D}/opt/tools
>         install -m 0755  ${SAVEDDIR}/*.tgz ${D}/opt/tools
> }
> FILES_${PN} +=3D "/opt/tools/*"
>
> Looking for suggestions for this error. I did trails writing do_prepare_r=
ecipe_sysroot() {} but I get same error.
>
> Please help me on this regard.
>
> Thanks
> umesh
>
>
> You are not supposed to copy those files directly from the files director=
y, as Yocto will automatically copy them to your WORKDIR with the do_fetch(=
) task. Instead try to install them from the WORKDIR directory and remove t=
his SAVEDIR variable, you don't really need that.
>
> Aleksandar
>
> ________________________________
> DISCLAIMER:
> Privileged and/or Confidential information may be contained in this messa=
ge. If you are not the addressee of this message, you may not copy, use or =
deliver this message to anyone. In such event, you should destroy the messa=
ge and kindly notify the sender by reply e-mail. It is understood that opin=
ions or conclusions that do not relate to the official business of the comp=
any are neither given nor endorsed by the company. Thank You.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64105): https://lists.yoctoproject.org/g/yocto/messag=
e/64105
> Mute This Topic: https://lists.yoctoproject.org/mt/109168052/1686489
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

