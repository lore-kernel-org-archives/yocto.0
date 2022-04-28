Return-Path: <khoidinhtrinh@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42504C433F5
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 21:13:21 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web08.2545.1651180391840332535
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 14:13:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YqezbIgh;
 spf=pass (domain: gmail.com, ip: 209.85.208.176,
 mailfrom: khoidinhtrinh@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 4so8236146ljw.11
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 14:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=yJ/yDl3rxeqff3NYfyPBqUVpW1CsSZqFP21tPt5Rg2M=;
        b=YqezbIghXPsmDaT+qS8R3fHW0kuDdIlg9eAkBpggCud1PGOMPoqwdAPrEyeqZLi/Y8
         zQXvIMV51l1TOSwH4llUDsHQ0jQcggDGgxW+du7e0VNsl6KIEaQZHn75YJ7qGTdQYKvA
         SMXwVV9KqFB5DUnuJ+Hb9dhVmTqpIcZW/sNw22LhZCYJUbS1Bg4zr4dVsOkPiqxjx6RQ
         CpnqG+ZLUALMh1GzujYa0vpfZObJ+ZMf8a5WgPrVGHkFAkZNLdUBiZHxxfVBkuU6kfEg
         QWfMgbyHfAVz9LEujGvGsmIz6Eknvz/o8X2zm39UBPwOHdEyJ3/ARLPZskZB2YoA8BWg
         YUCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=yJ/yDl3rxeqff3NYfyPBqUVpW1CsSZqFP21tPt5Rg2M=;
        b=VcGJ1lzcx+hIkfY8fPjdCbF2ET7xvEGCiMgqROx3iaXXhVuqLjssBRL5u8uqH+Y3go
         8/Qm04kdUb7d6iqG7WORVnoBRFWSIRbZUBjKxYvETb8h0K/xcc7VflmFJQZaUmwBuHXG
         lR2HLSUej+dpuD7rwTazfoJDuj0/usIhzg1zq2b0tWNlQGDGseau9VTDIh8IOVwyaOgv
         HQsKiagZakaSPk3Pd9NekcTmruhjNkFbIeaw36hNueW5RI0fIaafERvPFnMRLbRWJPAZ
         0tTvlu1B1BT+RBS3DugZFXcN7ncbBK2GBMersF21pdVrgZ3hwZIp2WUFisNIPO3KlkFv
         sSxw==
X-Gm-Message-State: AOAM533efEPdNu+M5Mdi8LEtM3ykYzINktRI1YSTFX90FsUpVmCAWz+X
	sy0MjZU1AWNx8FzeWsN7oCqyHDKJViQGm+kxkU87SsLExOQ=
X-Google-Smtp-Source: 
 ABdhPJysGDzTstucMoqGE0YVVRXOymVVt5xqf5cBrqhYH5vi+MdILlx5g3rzRs7BWCVZOyYKxuj9gignBKmIkVhK/pU=
X-Received: by 2002:a2e:a781:0:b0:24e:7874:c3d6 with SMTP id
 c1-20020a2ea781000000b0024e7874c3d6mr22513298ljf.84.1651180389662; Thu, 28
 Apr 2022 14:13:09 -0700 (PDT)
MIME-Version: 1.0
From: Khoi Dinh Trinh <khoidinhtrinh@gmail.com>
Date: Thu, 28 Apr 2022 14:12:46 -0700
Message-ID: 
 <CAMLPRYc-f79DsMGcr_kLuUrce81Eiybi5fW7-rr4qYgXTfoe7A@mail.gmail.com>
Subject: Question about initramfs and fitImage
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009603d605ddbd64e4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 21:13:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56948

--0000000000009603d605ddbd64e4
Content-Type: text/plain; charset="UTF-8"

Hi All,

I'm trying to build an image that uses the currently built image as the
initramfs instead of having to specify it in "INITRAMFS_IMAGE". For
example, when I run "bibake image-something", I'm hoping to use the recipe
"image-something" as the initramfs with the end goal that it's used in
creating a fit image. AFAIK, INITRAMFS_IMAGE has to be hardcoded instead of
being dynamically set to the name of the currently built recipe(which I
completely understand since the recipe being built might not necessarily be
an image) and this makes it easy to boot the wrong thing since the recipe
specified with bitbake isn't the thing being used for booting.

My workaround so far is to create my own image recipe and set it to depend
on the image being built(specifically depend on the .cpio.gz one), however,
a lot of it is duplicate of the current fit image code.

Our use case is that we use initramfs as our only rootfs storage to make
checksum at boot easier(since the final rootfs is a .cpio.gz blob) and also
to avoid any writes to rootfs to persist across reboot.

-- 
Best,
Khoi Trinh

--0000000000009603d605ddbd64e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>I&#39;m trying to bu=
ild an image that uses the currently built image as the initramfs instead o=
f having to specify it in &quot;INITRAMFS_IMAGE&quot;. For example, when I =
run &quot;bibake image-something&quot;, I&#39;m hoping to use the recipe &q=
uot;image-something&quot; as the initramfs with the end goal that it&#39;s =
used in creating a fit image. AFAIK, INITRAMFS_IMAGE has to be hardcoded in=
stead of being dynamically set to the name of the currently built recipe(wh=
ich I completely understand since the recipe being built might not necessar=
ily be an image) and this makes it easy to boot the wrong thing since the r=
ecipe specified with bitbake isn&#39;t the thing being used for booting. </=
div><div><br></div><div>My workaround so far is to create my own image reci=
pe and set it to depend on the image being built(specifically depend on the=
 .cpio.gz one), however, a lot of it is duplicate of the current fit image =
code.</div><div><br></div><div>
Our use case is that we use initramfs as our only rootfs storage to make ch=
ecksum at boot=20
easier(since the final rootfs is a .cpio.gz blob) and also to avoid any wri=
tes to rootfs to persist across reboot.

</div><div><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr">Best,<div>Khoi Trinh</div></div><=
/div></div></div>

--0000000000009603d605ddbd64e4--

