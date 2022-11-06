Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06C35C4332F
	for <webhook@archiver.kernel.org>; Sun,  6 Nov 2022 08:14:50 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.14431.1667722478755050978
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 01:14:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fYq9kpyB;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id z24so11986514ljn.4
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 01:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ltc23xb8tc5sWlHiL1hmKHoGg8PvIbmTfyfhFMlU8Rg=;
        b=fYq9kpyBYAX3BzuJM6vt7GgTiD9Brk+urFmDfa3iX3ImlPQmlLlteJjN5JD9e2ZvCP
         +lar3rl3RuzJhDYYc+uAnvqJStJgmSJEW9tlSnKZiGz/JmWSDbTNKnHrL9pxTuGtjF4d
         bdaGybXs1NUPhKCc5WghzM7l+/Yv2IrjvNP3jQt0e4vVvhaIGAKM/pfGK9gipKBrQQdO
         OrZ5r+HanheUVAF6QU5nYu79If6DKU02wbZ7ND/wd1IgZccsN1nEyejIlLp4FoBtMvi0
         FTypssTbW8OhixlUkKb17STcLrb0AEdCIOvbH93g/sjgb4LRv5NA1dgsYXlamny6neKW
         qCbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ltc23xb8tc5sWlHiL1hmKHoGg8PvIbmTfyfhFMlU8Rg=;
        b=uXzSUyYv9oqawufZxSoAd2ikgV1nKJIGbZNXTGsUIT+OF34WbOD20TtW61bXA60Bpz
         wsey5mqE7+D6fgtrHgPx+hOLDzQELAyym2v+3NeZ48CKxjPa4EsLUuVRFQ0J28OKl3dJ
         EOPLbrFtHxJWkPnnCtdcb4TLZRQavoIngeIxqMrfF209q2akRNbcHd2pyfJYFEQOzmZu
         hE0O4lhv9Gf1W+2UzXO35XbFC/2k1856S185rAxkOyOE7m9+p1odULG9mABF/15o55/u
         AchpZExq76iXdgAZdSZZQjO0TxqBX55sM7b8KcKzrcoe/DYMes9tu2bCszx2wnzum8ez
         1FCg==
X-Gm-Message-State: ACrzQf3vW6qnmUMMEY5d+Gchy4O9ySUJJ4SWue5VHErYtgUwNXmsL5Ei
	43u0jPv/GgfVnjXSz3IOjaGuYCYfM6Ka7kofNSE=
X-Google-Smtp-Source: AMsMyM4GxY4bBXUaBskW4AHUcQYPezIj/c6v5/0mnSklxhB0VP3o9DWnH0X1BRu863rDpqqckmKPkRXXsnJ4EwFGWNU=
X-Received: by 2002:a05:651c:23a5:b0:26d:d196:d04 with SMTP id
 bk37-20020a05651c23a500b0026dd1960d04mr4180842ljb.403.1667722476638; Sun, 06
 Nov 2022 01:14:36 -0700 (PDT)
MIME-Version: 1.0
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
In-Reply-To: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 6 Nov 2022 09:14:25 +0100
Message-ID: <CANNYZj-szasy1+wcY3J0G_B2hwNxupSHs4dnj98q4w3H8CcV0Q@mail.gmail.com>
Subject: Re: [yocto] undefined reference problem persists
To: Mistyron <ron.eggler@mistywest.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000cdd68405ecc8e53a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 08:14:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58493

--000000000000cdd68405ecc8e53a
Content-Type: text/plain; charset="UTF-8"

It may help if you show the complete logs for configure and compile ,
otherwise there is not enough information in your message to diagnose the
issue.

Alex

On Sun 6. Nov 2022 at 8.45, Mistyron <ron.eggler@mistywest.com> wrote:

> Hi,
>
> I'm working with dunfell and want to compile and install the drivers for
> the Laird LWB5+ module (available from
> https://github.com/LairdCP/meta-laird-cp).
> I have included the path to the layer in meta-laird-cp-pre-3.4 in my
> `bblayers.conf` and since I need the networkmanager and with information
> from their support team (don't trust the README apparently), I've added
> `lrd-networkmanager-sterling` to the `IMAGE_INSTALL` list in
> `sample-image-cp-lwb5plus.bb`. When I invoke `$ bitbake
> sample-image-cp-lwb5plus`, I keep getting:
>
>      |
> /usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-network-manager-10.4.0.10/src/nmcli/common.c:904:
>
> undefined reference to `rl_echo_signal_char'
>
> even though I've added `readline` to the `DEPENDS` list. Why is this? I
> expected the `rl_echo_signal_char` dependency to be resolved, any hints?
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58492):
> https://lists.yoctoproject.org/g/yocto/message/58492
> Mute This Topic: https://lists.yoctoproject.org/mt/94840876/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000cdd68405ecc8e53a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It may help if you show the complete logs for configure a=
nd compile , otherwise there is not enough information in your message to d=
iagnose the issue.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex<=
/div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Sun 6. Nov 2022 at 8.45, Mistyron &lt;<a href=3D"mailto:ron.eggler@m=
istywest.com">ron.eggler@mistywest.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1=
px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,2=
04)">Hi,<br>
<br>
I&#39;m working with dunfell and want to compile and install the drivers fo=
r <br>
the Laird LWB5+ module (available from <br>
<a href=3D"https://github.com/LairdCP/meta-laird-cp" rel=3D"noreferrer" tar=
get=3D"_blank">https://github.com/LairdCP/meta-laird-cp</a>).<br>
I have included the path to the layer in meta-laird-cp-pre-3.4 in my <br>
`bblayers.conf` and since I need the networkmanager and with information <b=
r>
from their support team (don&#39;t trust the README apparently), I&#39;ve a=
dded <br>
`lrd-networkmanager-sterling` to the `IMAGE_INSTALL` list in <br>
`<a href=3D"http://sample-image-cp-lwb5plus.bb" rel=3D"noreferrer" target=
=3D"_blank">sample-image-cp-lwb5plus.bb</a>`. When I invoke `$ bitbake <br>
sample-image-cp-lwb5plus`, I keep getting:<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0 | <br>
/usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-networ=
k-manager-10.4.0.10/src/nmcli/common.c:904: <br>
undefined reference to `rl_echo_signal_char&#39;<br>
<br>
even though I&#39;ve added `readline` to the `DEPENDS` list. Why is this? I=
 <br>
expected the `rl_echo_signal_char` dependency to be resolved, any hints?<br=
>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58492): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58492" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58492</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94840876/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/94840876/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000cdd68405ecc8e53a--

