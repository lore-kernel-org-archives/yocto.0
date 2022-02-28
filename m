Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA6C433EF
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 08:25:22 +0000 (UTC)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
 [209.85.217.43])
 by mx.groups.io with SMTP id smtpd.web09.17975.1646036721091917996
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 00:25:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Glgetxky;
 spf=pass (domain: gmail.com, ip: 209.85.217.43,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f43.google.com with SMTP id t22so12130051vsa.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 00:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=KuY3gjcoTzMhM0Ref8VanAkDAHJtbUi9Iv6nc+TmI1w=;
        b=GlgetxkyQ6BBO923ISuRJXvsxzFwZzboivv8Qrb17yIS2tLbl2tj3NKXjzr7nn8Wg+
         t8OtrXpOxkdEePucnupQxaZcSdtuvjuVNIvWQQ3T4V+5caAkWW2WVIUx7Y9F/JDb8jV9
         fjeToUGnmjVUxWMsB7skj2Mu7hNTNZ5B1gWgEcDs37Teb2dYioIAK3x1VQOH8QnhmkS3
         Z9/hTGQ8qT4iqYTeB1zrcf8W78hiusprLyZ/BQGyDKmneKtXpKbwrHgOvYLpAUOloVCi
         Dx4yaxxjsBILozKhEsq2eKlxQ+Xu973K+ZAxbhs+ms7+rO4bdOUwFUqVVaLECZDddM+F
         NaOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=KuY3gjcoTzMhM0Ref8VanAkDAHJtbUi9Iv6nc+TmI1w=;
        b=t1R3cACllC6+DHmDzBJ0OfCP+y83JlN/uvQ/ay3V2eGQpv81XnJoN1UPSP5iF5wB1N
         waM43YxSbE9LlK/h4NjzYBPd2ZoKlcYmIfABa/xP855e8oBRuKnnGq/tKlyasYEEgkg/
         ReFz3dI1Pi6rQcKKzCaaUt3dE82sejW3fH3cHsn1JrBAE6HO2Xz5D5Sl+Tc8ztrgfpD9
         DDMyRah+PvAiHLNoaRrBPZ5uoU6kMe6gqSOVZb3hqhNtTl7DpNEHFG8DHpiVb9b4xFyo
         Xo8fnUR6sdoFgfbT2Fzu8VqsffjcjwjUWYAWS4OPPoMRbMlo8W4HahzWr/oVRJsTazmp
         YvPw==
X-Gm-Message-State: AOAM532fUqtw6ESR9WyYpCVWEsy4/bPgmUInebzZ8ZigYgEi5iqprAhA
	vdFFfab0ypVfZ3bQFkuzH4vJGtYNWvYWQOyK7VN2dCUe
X-Google-Smtp-Source: 
 ABdhPJyk3uIg3myhv2f/1WhI2su6yuxc9umjS0x+xCxPr6j3XzYxpqQMp6Rosn1rTLgDmTsjIoEeS1wpa+b5CO72pdg=
X-Received: by 2002:a67:e087:0:b0:31b:57fe:7ac1 with SMTP id
 f7-20020a67e087000000b0031b57fe7ac1mr7493591vsl.81.1646036720141; Mon, 28 Feb
 2022 00:25:20 -0800 (PST)
MIME-Version: 1.0
References: <16D5DD063CA1DD5B.10452@lists.yoctoproject.org>
 <CAEHHSvawoqkZbP7sKyvkonogT97j7X_A3keW=v0Hzz2jtpmVEA@mail.gmail.com>
In-Reply-To: 
 <CAEHHSvawoqkZbP7sKyvkonogT97j7X_A3keW=v0Hzz2jtpmVEA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 28 Feb 2022 09:25:08 +0100
Message-ID: 
 <CANNYZj-x3KCZw2a2eCH+bVQeN7zwPSHwCYaUB+Aea=pjjXSevQ@mail.gmail.com>
Subject: Re: [yocto] extract several source tree with devtool
To: Julien STEPHAN <jstephan@baylibre.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 08:25:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56308

You probably need to fix devtool as it is not designed to handle this,
patches welcome.

Alex

On Mon, 28 Feb 2022 at 09:11, Julien STEPHAN <jstephan@baylibre.com> wrote:
>
> Hi all,
>
> Any ideas?
>
> Thanks
> Julien
>
> Le lun. 21 f=C3=A9vr. 2022 =C3=A0 18:24, Julien STEPHAN via lists.yoctopr=
oject.org <jstephan=3Dbaylibre.com@lists.yoctoproject.org> a =C3=A9crit :
>>
>> Hi all,
>>
>> I am wondering if it is possible to extract both a git repo and a tarbal=
l using devtool modify?
>> Example:
>> I am trying to use devtool modify on tensorflow-lite recipe (https://git=
.yoctoproject.org/meta-tensorflow/tree/recipes-framework/tensorflow/tensorf=
low_2.6.1.bb). The `tensorflow.inc` file fetches the tensorflow repository =
using git, then `tensorflow_2.6.1.bb` fetches 2 tarballs. The tarballs are =
extracted inside WORKDIR then files are installed inside the do_install() f=
unction.  This is running correctly using `bitbake tensorflow`. When using =
`devtool modify tensorflow`, the tarballs are not extracted, then I get an =
error at the do_install stage: files from tarball don't exist.
>>
>> This is a general question not related to tensorflow. Any suggestions on=
 how to handle this? Either on the recipe side or on the devtool side?
>> Best
>> Julien
>>
>>
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56307): https://lists.yoctoproject.org/g/yocto/messag=
e/56307
> Mute This Topic: https://lists.yoctoproject.org/mt/89298811/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

