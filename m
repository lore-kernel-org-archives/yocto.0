Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34E31C43334
	for <webhook@archiver.kernel.org>; Wed, 13 Jul 2022 15:09:37 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web10.23100.1657724973429413740
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 08:09:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Y/c82r8Y;
 spf=pass (domain: gmail.com, ip: 209.85.160.170,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id a21so10855367qtw.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 08:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RBhSyO2sDA4fTA8eHmNFGE08ijtl96ZGjHm2D2U/jnU=;
        b=Y/c82r8Y8NuYawEhMKxw6ZD+a5jgXe71goktLfIKbrR06Hy/xya95itM41VJ+LiQu8
         Wbjv1xkIqXQ6uxvzvnuvcqB1ozlHYvIcCzaaz0nFqOhObG+aQs6i5a8yqIJV+aXlTvX7
         96Mw3z3vCJsXRtqBE6irpuee3P/ZTW8UEACyvcxy9SRLf841bkyo+tyU6L6bAQCYgZiT
         iu/0rdz+H3lHjTAOjYs5uU4nhuY4OZ13gUoTIwYnU/FZg1BghB4tZlpYumaoMFpby/zz
         +sbMKmb2NTAp58nql28pwUVku+dQyF6iv/FmAdPwN2Cw8rf5Ade5HeTfBKJHKkj8yvET
         Ferw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RBhSyO2sDA4fTA8eHmNFGE08ijtl96ZGjHm2D2U/jnU=;
        b=OkEjB7/ogVmGvDBkkqUd8sOMUUIwwjFt3b7R7p5noBEAoRF/8OKOLdx+qDcVLv/3N3
         fGZy2/m8UZnQKKYRNAdxQRAq1A+brIqnbePxjtejSmmAbDf+lJl44FSO5xE0TgDE57jD
         6NMgyRcDEhDVxfhSHODzx0ptvN60cXN45CwkmmJxuW7WAVyAkdRKhMN/PkH7BunTRbZH
         cR+fXBVaixJW5M/D+YcUb5DnbotTgU2M9BxEFkORTuYt3N3t82JtcX0v7/iRpdlKt1tP
         rRWHfA4Uw7G7PuS1dKKxGkF/e5cp6/7kJCpMce6tgu9vEfTEZje/ROrTMnjniUjqCcph
         478w==
X-Gm-Message-State: AJIora9ioPv4mG03vUZJPzVoV6cKQmRWiDdcN5/3hEv6Whyp1EBPJojI
	6b6OwwzWyQfWwjxR6UcJUKiGZ/G8WOgTACuFsZE=
X-Google-Smtp-Source: 
 AGRyM1s2YhKKlgxDaQwIgTnHgk4Vx/svN2qsJ89e9giGeTnMRYBAN9xWFb87L3oSqfZIUotoR3ETOwWeXTR3w5XcOr0=
X-Received: by 2002:a05:622a:13ce:b0:31a:b4ce:1679 with SMTP id
 p14-20020a05622a13ce00b0031ab4ce1679mr3450685qtk.330.1657724972345; Wed, 13
 Jul 2022 08:09:32 -0700 (PDT)
MIME-Version: 1.0
References: <WNRU.1657719600812851842.KCIA@lists.yoctoproject.org>
In-Reply-To: <WNRU.1657719600812851842.KCIA@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 13 Jul 2022 16:09:21 +0100
Message-ID: 
 <CAMKF1sqM9wPTKcv8F5JJ2qMNr-fG_TrcrZ_FJCFsYUDXfntUjA@mail.gmail.com>
Subject: Re: [yocto] How to get name of output packages during build #yocto
 #bitbake
To: simonblack.it@yahoo.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001cafbb05e3b12c62"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Jul 2022 15:09:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57524

--0000000000001cafbb05e3b12c62
Content-Type: text/plain; charset="UTF-8"

Bitbake -g recipe

Might emit what you want in some form

On Wed, Jul 13, 2022 at 2:40 PM simonblack.it via lists.yoctoproject.org <
simonblack.it=yahoo.com@lists.yoctoproject.org> wrote:

> Hi,
>
> Does yocto store all packages name that will be built from a recipe in a
> variable?
>
> BR,
> Simon
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57523):
> https://lists.yoctoproject.org/g/yocto/message/57523
> Mute This Topic: https://lists.yoctoproject.org/mt/92357520/1997914
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000001cafbb05e3b12c62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Bitbake -g recipe=C2=A0</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">Might emit what you want in some form=C2=A0</div><div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, J=
ul 13, 2022 at 2:40 PM <a href=3D"http://simonblack.it">simonblack.it</a> v=
ia <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt=
;<a href=3D"http://simonblack.it">simonblack.it</a>=3D<a href=3D"mailto:yah=
oo.com@lists.yoctoproject.org">yahoo.com@lists.yoctoproject.org</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">Hi,<br><br>Does yocto store all=
 packages name that will be built from a recipe in a variable?<br><br>BR,<b=
r>Simon
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#57523): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57523" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57523</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92357520/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/92357520/1997914</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/bitbake</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000001cafbb05e3b12c62--

