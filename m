Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35EC9C54E76
	for <webhook@archiver.kernel.org>; Tue, 17 Jan 2023 18:39:46 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.205338.1673980781864384202
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Jan 2023 10:39:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MG4zRafi;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id b3so48378159lfv.2
        for <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 10:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8Q92NkBdWp5VnpsrQROVnD/fw1fDE4rFS4jDZExLtvw=;
        b=MG4zRafiy+RudYpds6EUm4DmtUT4OaoSWdqeb6j84wCBTyBKJGMIPYzQZYz+kf6dVS
         c8fTl8ui2RkpWS8YsxijsV+c2mfxO2ZY57vyb6E+9tvbnwyFDFUzcTQUfKoVwdSc/PJJ
         pGIG33tA0BlypnDNClnSFk0NabR7QQljjhMfiIeasj/ZKAKjmrblzMCRCnhpvrbCC7tV
         VUBgEwyx+ZaE86KGwBvNu52+zBouFE3zzkSel2lNElxp7zIjfECFN5psR0nEtl3Dr28+
         huA4ZdIveS6ULL7L2yv7sQJZ01JGxg+lzj+HastchIW0pq0MkZx82HXf+tYHPaUOS0CY
         ik/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Q92NkBdWp5VnpsrQROVnD/fw1fDE4rFS4jDZExLtvw=;
        b=5NevruoiD8oGVxOSJaObeN8JSvUrVkPjFQXobc9953t/ExWn+ltqyYQ87DAhjsMe6p
         3E2emhwAW6DncF9N+ZbwYkRmOlQAQlNvonjKAH4G0YhzH8VEPMmvHMhihbkATMrt5LS4
         ib8TZABWMfAVbo87EKK6YW3CUiXL9p6qsdCwAsjDpoz7+MgZSE9yPwJumCrVuHwFZFcF
         3NeMRM6hDDGPECWVrlXWVMag0L1BvmJWTe4dGTz1/znEgLAXayLIoo5U2VF4rtE3AiYI
         k1csNszjqLrq+dLCvD+6UOoEe/SRL16Dc7cDw9aOTH6DPyhHNCZtSVmdZXx9YqDkzMOg
         PScw==
X-Gm-Message-State: AFqh2kpZk0weUV7J3mCWaFd3WDl+AxIahBzq9Uw64DnNNcfVxNevlxfm
	H/4ZDJg5gylmOtp9eDsNG9mqnePxjVle9BgWV/g=
X-Google-Smtp-Source: AMrXdXvf5Mf0DfmvBwpfS7aYsxBQoQRHM/tJum2KpU+Y4T0w5I7+dc/ueHXKQQ7lehYInMZLEBTrQ290Cr0nCSROz4Q=
X-Received: by 2002:a05:6512:3ca1:b0:4cc:7ecb:32af with SMTP id
 h33-20020a0565123ca100b004cc7ecb32afmr328791lfv.393.1673980779888; Tue, 17
 Jan 2023 10:39:39 -0800 (PST)
MIME-Version: 1.0
References: <UJ70.1673979468308754075.EgUP@lists.yoctoproject.org>
In-Reply-To: <UJ70.1673979468308754075.EgUP@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 17 Jan 2023 19:39:29 +0100
Message-ID: <CANNYZj90RhVw_EKkOZcz1vsz+DjcihwWKtrMygt+F1t6PqsaMw@mail.gmail.com>
Subject: Re: [yocto] Possible to replace gcc-runtime libraries & libgcc #gplv3
 #yocto #llvm
To: William Huang <whuang8933@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bf024a05f27a0526"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 18:39:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59008

--000000000000bf024a05f27a0526
Content-Type: text/plain; charset="UTF-8"

The GCC exception frees you from having to fulfil the terms of gpl3 in
almost all cases. Links with details are easily obtainable with google
search.

Alex

On Tue 17. Jan 2023 at 19.17, William Huang <whuang8933@gmail.com> wrote:

> Hello all,
> I'm in the process of generating an image without GPLv3 software. I have
> removed everything but the gcc-runtime and libgcc libraries. These are
> gpl-3.0 with GCC exception. I'm not sure how feasible it is to remove these
> or replace them with llvm replacements. Just wondering if anyone had been
> down this path before and if you can share your experience that would be
> great!
>
> Thanks
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59007):
> https://lists.yoctoproject.org/g/yocto/message/59007
> Mute This Topic: https://lists.yoctoproject.org/mt/96336692/1686489
> Mute #gplv3:https://lists.yoctoproject.org/g/yocto/mutehashtag/gplv3
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #llvm:https://lists.yoctoproject.org/g/yocto/mutehashtag/llvm
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000bf024a05f27a0526
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">The GCC exception frees you from having to fulfil the ter=
ms of gpl3 in almost all cases. Links with details are easily obtainable wi=
th google search.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</=
div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Tue 17. Jan 2023 at 19.17, William Huang &lt;<a href=3D"mailto:whuang=
8933@gmail.com">whuang8933@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204=
)">Hello all,<br>I&#39;m in the process of generating an image without GPLv=
3 software. I have removed everything but the gcc-runtime and libgcc librar=
ies. These are gpl-3.0 with GCC exception. I&#39;m not sure how feasible it=
 is to remove these or replace them with llvm replacements. Just wondering =
if anyone had been down this path before and if you can share your experien=
ce that would be great!<br><br>Thanks
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59007): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59007" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59007</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96336692/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/96336692/1686489</a><br>
Mute #gplv3:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/g=
plv3" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/gplv3</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Mute #llvm:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/ll=
vm" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/mutehashtag/llvm</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000bf024a05f27a0526--

