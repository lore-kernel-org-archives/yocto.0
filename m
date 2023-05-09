Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CB89C77B75
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:12:04 +0000 (UTC)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
 by mx.groups.io with SMTP id smtpd.web11.40596.1683655920408563608
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:12:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=RLyrqqqM;
 spf=pass (domain: gmail.com, ip: 209.85.222.48, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-77d46c7dd10so32199534241.0
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 11:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683655919; x=1686247919;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RHYltzG+b6232AFXMomAYGuCqCxgc+1Kawv/KQvSbx8=;
        b=RLyrqqqMvb26cl44azVffPCalGGXU7+Y33TsH5rqo2/9+GAGNL5BLVv28Vb/B+QswQ
         A/B81psGL8kykyRa6wOBnjgU4oNI/ehuR7jPZIgYIwHHYGktP05Pz3/6dDCZPiYSpuLy
         vPtIlgq7Qba8sEMC5OEwliACuEifgX8W4HLTrDoDZcGuff8JTFleXrYvFsxd4XSRUjDT
         VoS+TOSaGvUPrIwUtgddme7utA83mcpXshIgQu/k2SZxYU+3VfLo4TjJIBqKl4BhgCgr
         o9E+b16RWsA8BtE3Dg4GPBDZa3YrB6m8NohF1mGtyKIGQKb45YajKiht9RJopRraM/MP
         8Xcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683655919; x=1686247919;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RHYltzG+b6232AFXMomAYGuCqCxgc+1Kawv/KQvSbx8=;
        b=C3kzHQ9SDsRHFh+NNBqiZG4odtSf1FC0UKI9DwvG8Aw8dk6H706hacTqJYDbEXIVWu
         n6VFMCngkfl9yYcghV9xKeEDUEQRwiF9kwjJIe+cQBMaHW2X+dHszalGZ6MHvejh/rS2
         40XlTWAzuQpxlggPYAAqrxqZAUgtbI8EVjrc9aEpcfPTcVwb9715jShkG3NUCilvo8Yu
         ATu16asjfjS/diXkNL5qvlfwbuwKpg4xsUu3VQ0Q8DIZMjlHQyKrUo2BL45GPjFoaaQz
         FZS2EuuROFlTf3GEAO8CMg9fpriQYa5SPILkeWh7hPsF4W/QdMTmWti0s0ELcgUFXvve
         6rzw==
X-Gm-Message-State: AC+VfDyk2RGc/8u3xI34IyjH1wXeXgAkftCu8z35A2AcP0NEBUJFQ8QW
	EVjxfeoDiO70JZbpzyefIdrbxud63DmbQJUqKCA=
X-Google-Smtp-Source: ACHHUZ7ePK6hsfXky0BAZGWP96FD534aHuCOr5zf04OYTiVNVxrz9EmFet7gv6InZ2bPOjMm33rfzHXPXq3nxfJ0jVs=
X-Received: by 2002:a05:6102:1484:b0:430:b1f:56dc with SMTP id
 d4-20020a056102148400b004300b1f56dcmr4973575vsv.1.1683655919364; Tue, 09 May
 2023 11:11:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230509175457.1038298-1-stefanb@linux.ibm.com>
In-Reply-To: <20230509175457.1038298-1-stefanb@linux.ibm.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Tue, 9 May 2023 19:11:48 +0100
Message-ID: <CANPvuRnZzw0Tdr=i6VzNW3wNAPnDwo6kPGmh52M0nOWmOO7OWw@mail.gmail.com>
Subject: Re: [meta-security][PATCH 0/2] Drop a kernel patch and a kernel
 config option
To: Stefan Berger <stefanb@linux.ibm.com>
Cc: yocto@lists.yoctoproject.org, akuster808@gmail.com
Content-Type: multipart/alternative; boundary="000000000000ff6db405fb46b0c7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:12:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59940

--000000000000ff6db405fb46b0c7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

Stefan Berger <stefanb@linux.ibm.com> escreveu no dia ter=C3=A7a, 9/05/2023=
 =C3=A0(s)
18:55:

> This PR removes a kernel patch related to overlayfs and IMA appraisal fil=
e
> change
> notifictions and a squashfs xattr kernel config option.
>
>    Stefan
>
> Stefan Berger (2):
>   linux: overlayfs: Drop kernel patch resolving a file change
>     notification issue
>   ima: Drop kernel config option CONFIG_SQUASHFS_XATTR=3Dy from ima.cfg
>
>  ...Increment-iversion-upon-file-changes.patch | 42 -------------------
>  .../recipes-kernel/linux/linux/ima.cfg        |  1 -
>  .../recipes-kernel/linux/linux_ima.inc        |  1 -
>

Unfortunately this is not enough because in the full patchset you are
overriding the do_configure task
on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is
included in every recipe that follies the
pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).

This breaks many recipes like linux-firmware and maybe others.
The root cause of the issue is now on f4f7624d2e but because this patch is
too evasive, maybe everything has to be reversed.
I am now building with the full patchset revert and so far the build is
looking good.

Jose


>  3 files changed, 44 deletions(-)
>  delete mode 100644
> meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upo=
n-file-changes.patch
>
> --
> 2.34.1
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000ff6db405fb46b0c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Stefan,</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">Stefan Berger &lt;<a href=3D"mailto:stefanb=
@linux.ibm.com">stefanb@linux.ibm.com</a>&gt; escreveu no dia ter=C3=A7a, 9=
/05/2023 =C3=A0(s) 18:55:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">This PR removes a kernel patch related to overlayfs and IMA appr=
aisal file change<br>
notifictions and a squashfs xattr kernel config option.<br>
<br>
=C2=A0 =C2=A0Stefan<br>
<br>
Stefan Berger (2):<br>
=C2=A0 linux: overlayfs: Drop kernel patch resolving a file change<br>
=C2=A0 =C2=A0 notification issue<br>
=C2=A0 ima: Drop kernel config option CONFIG_SQUASHFS_XATTR=3Dy from ima.cf=
g<br>
<br>
=C2=A0...Increment-iversion-upon-file-changes.patch | 42 ------------------=
-<br>
=C2=A0.../recipes-kernel/linux/linux/ima.cfg=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 1 -<br>
=C2=A0.../recipes-kernel/linux/linux_ima.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 1 -<br></blockquote><div><br>Unfortunately=C2=A0this is not enough=
=C2=A0because in the full patchset you are overriding the do_configure task=
</div><div>on meta-integrity/recipes-kernel/linux/linux_ima.inc and this fi=
le is included in every recipe that follies=C2=A0the<br></div><div>pattern =
starting by linux- (recipes-kernel/linux/linux-%.bbappend).</div><div><br><=
/div><div>This breaks=C2=A0many recipes like=C2=A0linux-firmware and maybe =
others.</div><div>The root cause of the issue is now on=C2=A0f4f7624d2e but=
 because this patch is too evasive, maybe everything has to be reversed.</d=
iv><div>I am now building with the full patchset=C2=A0revert and so far the=
 build is looking good.<br><br>Jose<br>=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
=C2=A03 files changed, 44 deletions(-)<br>
=C2=A0delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ovl=
-Increment-iversion-upon-file-changes.patch<br>
<br>
-- <br>
2.34.1<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000ff6db405fb46b0c7--

