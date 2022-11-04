Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576A1C4332F
	for <webhook@archiver.kernel.org>; Fri,  4 Nov 2022 01:41:07 +0000 (UTC)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web12.6538.1667526057676429060
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Nov 2022 18:40:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JJF7TK8w;
 spf=pass (domain: gmail.com, ip: 209.85.166.48, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f48.google.com with SMTP id z3so2826615iof.3
        for <yocto@lists.yoctoproject.org>; Thu, 03 Nov 2022 18:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tNL7Q+46d6jXjK8HAr7QqaORGNNU9fBFJgBmXQEruxQ=;
        b=JJF7TK8wbHC9NYYDWaEIOtQHklC+eacfnOo27ueNSdrqKaZ5O2L3CTYmfYOA7/ijso
         r36NV/zGc36Ulb2YnwdY8CE4zwwKESo5TiSJsLvk2a3iSZ4JULrT9gWczk9dJ5FA+z+O
         +eaLPaMUbHuAPFpE6cYhGu1ygCQbj9Wv0XrleVkB4LHRhU6sI+sVun1kyxZeKld7GIhG
         KSYbdnm9iSgJr9RZUknqPYZo9swXNx8BJ/WkwIzNJCsAv6nwYReI9P7QqNAiuXx2aD8G
         u/MQk2bJ5FPz+xY+gFrDSs4LtkjUE2gpF5dc2owzu0460i415qgZesZNKRAbDCS4QiUx
         NbbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tNL7Q+46d6jXjK8HAr7QqaORGNNU9fBFJgBmXQEruxQ=;
        b=Yr4nePPP2XQ37sSHvx/GKOu1NG8nkKknATXPzhOznKnlVtzzWpulD7js3FYXiuqq7A
         tFBdKgmSrwvecXVBFDQg/s2wVUru3QJ06xPlJCe+xcWeT2XShyX+o44iOkyn9b63eXDl
         5sob8Gss3twE2N0JlmthyBLW3OKsCG2wDlGcdF/zOm20MXiphdcMEBjMxdhhs2epn4z4
         l3v+x0P+G36XZDAnSzn+CNBxAVrqUHLFgqZO/eLBEBroRPrSfn9A2AfgiE0mIxysX4cf
         J61oD9bMbZFwiC0njOVduXR96yhjqXBel90t86BN/9GcDYe8h2QimhgyoahC5JMejpgp
         sD/g==
X-Gm-Message-State: ACrzQf0SsAXlMlRBFdFkxD9PPo/JfABrRLEBETmhicvxBVfn6Vu4xwdz
	XEeg+ObQ+6DCCZ0Q5CqNRtQqWJjyZ0gqCZL3V1c=
X-Google-Smtp-Source: AMsMyM5sH2UckOZkiwfaid6+AtfdQHzNhmu3ucC/+CHPKyykZ3B93zTExmzFGleyL2R10UbWCFILqLTNWxuccqnMdfw=
X-Received: by 2002:a05:6602:2f02:b0:6a4:5b5d:9dbb with SMTP id
 q2-20020a0566022f0200b006a45b5d9dbbmr20595733iow.32.1667526056969; Thu, 03
 Nov 2022 18:40:56 -0700 (PDT)
MIME-Version: 1.0
References: <CADW9r6MKrarTpFMGsXDm32YLM9zdWnroOFjsztd4kOzrCY3WPg@mail.gmail.com>
In-Reply-To: <CADW9r6MKrarTpFMGsXDm32YLM9zdWnroOFjsztd4kOzrCY3WPg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 3 Nov 2022 21:40:45 -0400
Message-ID: <CAHUNapR=dmk9yVTAmOAd=QGf_F61PzurH5ap0rA6itB+1kRKMg@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH] Enable wlan for tinker board (s)
To: Oleh Kuzhylnyi <o.kuzhyl@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004788f405ec9b2aca"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Nov 2022 01:41:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58483

--0000000000004788f405ec9b2aca
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 29, 2022 at 3:08 PM Oleh Kuzhylnyi <o.kuzhyl@gmail.com> wrote:

> Greetings,
>
> I have faced the issue of missing out-the-box WiFi driver for Tinker board
> machines.
> It would be great to have it.
> Turns out, the open source WiFi driver works well.
> So, my proposal, let's enable it for tinker board machine?
>
> Please, review my patch.
>

Thank you for your interest in meta-rockchip. Patches should be sent
in-line and not as attachments. The meta-rockchip top-level README has some
hints on the best way to send a patch or you could take a look at:
http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded#Sending_using_git-send-email

Thanks!


> Regards,
> Oleh Kuzhylnyi
>

--0000000000004788f405ec9b2aca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 29, 2022 at 3:08 PM Oleh =
Kuzhylnyi &lt;<a href=3D"mailto:o.kuzhyl@gmail.com">o.kuzhyl@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">Greetings,<div><br></div><div>I have faced the issue of missing=
 out-the-box WiFi driver for Tinker board machines.</div><div>It would be g=
reat to have it.</div><div>Turns out, the open source WiFi driver works wel=
l.</div><div>So, my proposal, let&#39;s enable it for tinker board machine?=
</div><div><br></div><div>Please, review my patch.</div></div></blockquote>=
<div><br></div><div></div><div>Thank you for your interest in meta-rockchip=
. Patches should be sent in-line and not as attachments. The meta-rockchip =
top-level README has some hints on the best way to send a patch or you coul=
d take a look at:</div><div><a href=3D"http://www.openembedded.org/wiki/How=
_to_submit_a_patch_to_OpenEmbedded#Sending_using_git-send-email">http://www=
.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded#Sending_using_=
git-send-email</a></div><div><br></div><div>Thanks!<br></div><div><br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><b=
r></div><div>Regards,</div><div>Oleh Kuzhylnyi</div></div>
</blockquote></div></div>

--0000000000004788f405ec9b2aca--

