Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD43EC54E65
	for <webhook@archiver.kernel.org>; Wed, 21 May 2025 10:32:47 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web10.7969.1747823563149986897
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 May 2025 03:32:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TZ1RCtjK;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6f8b10b807fso71310676d6.1
        for <yocto@lists.yoctoproject.org>; Wed, 21 May 2025 03:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747823562; x=1748428362; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vS+iEf9riqS7Dn3WR4uflvClzse4Movu+lKG0G8KecA=;
        b=TZ1RCtjKvisG4YCf4x7XnSlERWWnL0F8B+uof96FFJI7KiHPfY4NgBsx89rEeHQxy6
         +FO476t+7/KLPETvbD+1dGnD2TSQ2wLzAenN7nHoum0M3n2vW3imfogKoxWGzQpEL6cT
         K8g04Z5v12GywtvBMVrifIoHMsUnT4DgPbt5+lamWQ07ApTUABSeO5JE7j7lG+cBX/+g
         Nu8f+5ZxroKYj2y3bJQ4v75dJuAC1aDjsMblWoZvyq9lz3nSrixkBEDQ68U+Ep/r9Bvo
         jTNlWl2oqd3pegIU1Nsn72zb96BSksZtkmtI4I4t9MxtD2H1gtMSC+4aNEvRfvGZlrXZ
         x0Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747823562; x=1748428362;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vS+iEf9riqS7Dn3WR4uflvClzse4Movu+lKG0G8KecA=;
        b=Dlq1CXzFt4lpJ9KYPbjm/s0Sd7C4iUEfQhjuydU3wwDi/VUhPvU+PAW8GgUd/+KMs0
         oDmI3eepmMaQCAg7Zkbb908zxceNQBDGPVSdOyRaWM3h6wyZGfomtIuAPNfD3U84TDzo
         L27mfkrtpAvAefd67Ux2JLYzTjhS4Kg86wZFesyYd5ZN2I7btvj0foRgEr1ezb44TGNs
         bsWzgUvZ1o32zXQrwSwzBgCtMf5TAlxxACmjUjxmENyQIAeSl5wKzj6hM5Tec0TfB7wV
         S/3VdS0/fP6c1vkLNUTGcffK3Uzf1iaQVekjJAImIVEr0aJmeNvf8kGjPu2KErLZRHbB
         Pg9Q==
X-Gm-Message-State: AOJu0YzosQIhvScPqKin/Czj3IR6BmkwWNoQAIfgHR6xJVuZOPJLRdUX
	iCPey5XVKmPgYy1KrEnORBW8gC8MkAlJ4o+eHI8TrkArRjrVBsIbUdeWKQbg+JZffaaPn7t4yJ/
	+uz8FewV9qZDoFMmSCdmsr7cpcylFrPdovw==
X-Gm-Gg: ASbGnctc+SM2SAVoSmAfI2aVa7UcjzXwSEgWxP1FFfmSG9Q7l3dZ6TczvsWZeV7om0e
	LIqjojyGkUC8Fo6ckVvbhQJCE/+NPETMHGtENu2Ft7UPPhGArlhauGR/j8/hss8ZdIO9lSA+NEx
	/R6CivNokPE+V5JN+VQsS9w9Rd+JPedjElZw==
X-Google-Smtp-Source: AGHT+IGAAxG7dapxnIVZ9DwAqwd7C1PLVJLnTczv+RLT2ezdzXmnnAB2WziDRJfqVrm1URXXRCwewMMMy9z4Ya5tSHI=
X-Received: by 2002:a05:6214:2a83:b0:6e6:9ce0:da9d with SMTP id
 6a1803df08f44-6f8b08d5181mr318929386d6.27.1747823562064; Wed, 21 May 2025
 03:32:42 -0700 (PDT)
MIME-Version: 1.0
References: <urlO.1747823018739136306.ditq@lists.yoctoproject.org>
In-Reply-To: <urlO.1747823018739136306.ditq@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 21 May 2025 12:32:31 +0200
X-Gm-Features: AX0GCFtN4AvnvGaxkgR8794jDAeB7zeILZRec3-oCq8GoiscX5MuA66c4rg7B3M
Message-ID: <CANNYZj-+kZUPy23+7onssTXf8t_L6FAcUReAg4nMLCwGZbrmBw@mail.gmail.com>
Subject: Re: [yocto] meson upgrade issue dunfell (0.53 I want to upgrade 0.63)
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 May 2025 10:32:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65384

You're better off updating to a yocto release that is
- currently supported
- has a recent enough meson.

Alex

On Wed, 21 May 2025 at 12:23, sateesh m via lists.yoctoproject.org
<sateesh0457=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi team,
>
>
>
> I want to upgrade meson version 0.53.2 to 0.63 in my yocto build. I am cu=
rrently using 3.1 dunfell.
>
> Facing below expansion issue. Can anyone know this issue can help me to f=
ix this issue.
>
> ERROR: ExpansionError during parsing /home/p_60123/hdd/NC/poky/../meta-cv=
e-patch/recipes-extended/meson/meson_0.63.3.bb
> Traceback (most recent call last):
>   File "Var <install_templates>", line 1, in <module>
>   File "/home/p_60123/hdd/NC/poky/../meta-cve-patch/classes/meson-routine=
s.bbclass", line 10, in meson_array(var=3D'BUILD_READELF', d=3D<bb.data_sma=
rt.DataSmart object at 0x7ff52c2f1c50>):
>      def meson_array(var, d):
> >    items =3D d.getVar(var).split()
>          return repr(items[0] if len(items) =3D=3D 1 else items)
> bb.data_smart.ExpansionError: Failure expanding variable install_template=
s, expression was     install -d /home/p_60123/hdd/NC/build-pony/tmp/work/x=
86_64-linux/meson-native/0.63.3-r0/image/home/p_60123/hdd/NC/build-pony/tmp=
/work/x86_64-linux/meson-native/0.63.3-r0/recipe-sysroot-native/usr/share/m=
eson
>
>
>
>     cat >/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-nati=
ve/0.63.3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/mes=
on-native/0.63.3-r0/recipe-sysroot-native/usr/share/meson/meson.native.temp=
late <<EOF
> [binaries]
> c =3D ${@meson_array('BUILD_CC', d)}
> cpp =3D ${@meson_array('BUILD_CXX', d)}
> ar =3D ${@meson_array('BUILD_AR', d)}
> nm =3D ${@meson_array('BUILD_NM', d)}
> strip =3D ${@meson_array('BUILD_STRIP', d)}
> readelf =3D ${@meson_array('BUILD_READELF', d)}
> pkgconfig =3D 'pkg-config-native'
>
> [built-in options]
> c_args =3D ['-isystem@{OECORE_NATIVE_SYSROOT}/usr/include' , ${@var_list2=
str('BUILD_OPTIMIZATION', d)}]
> c_link_args =3D ${@generate_native_link_template(d)}
> cpp_args =3D ['-isystem@{OECORE_NATIVE_SYSROOT}/usr/include' , ${@var_lis=
t2str('BUILD_OPTIMIZATION', d)}]
> cpp_link_args =3D ${@generate_native_link_template(d)}
> [properties]
> sys_root =3D '@OECORE_NATIVE_SYSROOT'
> EOF
>
>
>
>     cat >/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-nati=
ve/0.63.3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/mes=
on-native/0.63.3-r0/recipe-sysroot-native/usr/share/meson/meson.cross.templ=
ate <<EOF
> [binaries]
> c =3D @CC
> cpp =3D @CXX
> ar =3D @AR
> nm =3D @NM
> strip =3D @STRIP
> pkgconfig =3D 'pkg-config'
>
>
>
> [built-in options]
> c_args =3D @CFLAGS
> c_link_args =3D @LDFLAGS
> cpp_args =3D @CPPFLAGS
> cpp_link_args =3D @LDFLAGS
>
>
>
> [properties]
> needs_exe_wrapper =3D true
> sys_root =3D @OECORE_TARGET_SYSROOT
>
>
>
> [host_machine]
> system =3D '$host_system'
> cpu_family =3D '$host_cpu_family'
> cpu =3D '$host_cpu'
> endian =3D '$host_endian'
> EOF
> which triggered exception AttributeError: 'NoneType' object has no attrib=
ute 'split'
>
>
>
>
>
> Summary: There were 3 WARNING messages shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
>
> Thanks & Regards,
>
> Sateesh
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65383): https://lists.yoctoproject.org/g/yocto/messag=
e/65383
> Mute This Topic: https://lists.yoctoproject.org/mt/113226670/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

