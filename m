Return-Path: <glmeocci@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7398EC32772
	for <webhook@archiver.kernel.org>; Tue, 23 Aug 2022 09:16:10 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.29234.1661246165164917198
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Aug 2022 02:16:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XHwhrm19;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: glmeocci@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id l8so1298459lfc.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 23 Aug 2022 02:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=44si5CXy4/g1LfQGsT2qTaT71+1KOde1SgEPijVAnhs=;
        b=XHwhrm19IPb3+SU3BDYxTrAde6ofRqMasRki+vOyqWMLnWN7PKSoj2hSeRXYKwYjUS
         T0J1qpJW5CJ5NTjLhvrxQAXhtwmRfmA06nOW0h4QQKgzbDiNU5iVu6/HhJDj7bkoQ41c
         ZaFHEoRkemThKTcyCO8m6dsmg8vt9khGijb/lMyMqjTzqmLDXUpGMkl1RbvN6qhMjf7d
         NFNJauJxMIXNrtYRd+G3STwxocOn9J7CChT5Mlkl2RWnjS/w1hCeamd79lVuS1eSadY5
         nQv4gjPVC8C9YmQzO2RKjD/ljl0vmmBI5so1Cfp4BjTqoZnBNhu9ejuBr1+02BTukgxF
         t6Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=44si5CXy4/g1LfQGsT2qTaT71+1KOde1SgEPijVAnhs=;
        b=32oAe8cOYuEd41o52cGXpOrnm7YWw/iRKlhvDpGcXhc2tPghweQvg5+ctdv3aBHRuC
         J8b6iU51FEoxVFmXcXHeZDS1zH2idjntcEqHdsOlwSxJmEWYR0QuGzwUyvoNoGZSh/Rm
         YrvIAgFYC7hpjD0e4ntxtrqADqhw5Rs6T7n9ZQVHSnQdpc02f4y6EwtrL96BYknZxFqI
         y9HVjdt8THXxgT+kCL9X+UCAAEKdtSt1N1jnO+QL2n7VBK1f7tltQzONt9CAjrpyAkaa
         Xi4bNMbGwyqaa6UFGlsO6Bwv4EjWcZrwr51YE37LKFkMBwhSwAQ127DgVggGBIDtliUh
         n8Bg==
X-Gm-Message-State: ACgBeo0E1dk2b9r9nzzJtQoonCSBF9SyRdY38+T/PcPbExx0Ii+H5hoL
	pya9Rf2E0MFT4ocet2z1NLkExp4fTpoNhKueveNArHLI
X-Google-Smtp-Source: 
 AA6agR49Udmpf147TV44b7Kw898CfAEcX+fLVcKlwMzQyeU3S62Bud/rY+IO8gYad2eisqt96Db1pFZm+ZCP83kXeLc=
X-Received: by 2002:a05:6512:6d6:b0:492:b3df:a71 with SMTP id
 u22-20020a05651206d600b00492b3df0a71mr9131942lff.117.1661246162816; Tue, 23
 Aug 2022 02:16:02 -0700 (PDT)
MIME-Version: 1.0
From: Gian Lorenzo Meocci <glmeocci@gmail.com>
Date: Tue, 23 Aug 2022 11:15:51 +0200
Message-ID: 
 <CAAPjnHWkR4hgtmX_Jf99+yW5yGR4bSGibrauVdsmOy=4TKO4hA@mail.gmail.com>
Subject: Boot QCOW2 image on ARM64 with EFI
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006b546805e6e5037b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Aug 2022 09:16:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57883

--0000000000006b546805e6e5037b
Content-Type: text/plain; charset="UTF-8"

Hi,

Is there a tutorial or some example that explains how to generate a
wic.qcow2 image that is able to boot using UEFI on qemu/UTM (on Mac M1) ?

thanks

-- 
GL
https://www.meocci.it <https://meox.github.io>

--0000000000006b546805e6e5037b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Is there a tutorial or s=
ome example that explains how to generate a wic.qcow2 image that is able to=
 boot using UEFI on qemu/UTM (on Mac M1) ?</div><div><br></div><div>thanks<=
br></div><div><br>-- <br><div dir=3D"ltr" data-smartmail=3D"gmail_signature=
"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>GL<br><a href=3D"https://meox=
.github.io" target=3D"_blank">https://www.meocci.it</a><br></div></div></di=
v></div></div></div></div>

--0000000000006b546805e6e5037b--

