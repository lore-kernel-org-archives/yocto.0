Return-Path: <dbaryshkov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B044CED24C
	for <webhook@archiver.kernel.org>; Mon,  7 Oct 2024 23:25:50 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.6304.1728343539659965987
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Oct 2024 16:25:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Xh0E6BQa;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: dbaryshkov@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5366fd6fdf1so6857179e87.0
        for <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 16:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728343538; x=1728948338; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cTsIvR/FXz3v6jgc8oNGCr49BzyZ3lMnfi0zP8pRO2M=;
        b=Xh0E6BQafQ5DC9RWhhf6rttrSWRQH0RjYtF8+bBBkBc+FgLexkZLRuvmdDd+0tnNNM
         xcJwd7f/WHNNu097Fy7yk6knNEyPTg/VgV7EZO7OldaarBMrTtj+hUQGDBymgK5H2rPG
         Mb5uHmgeq4I5z2+FwqHhQBC4AwRQhZCBpdIU73uakKkJoWLeg2/hPGmvvX3NZrYHyGud
         Z3bK2iL8EI90he9WMTmEsZTU8foVurLD5hgiCmVz4Qs+T0jyqB53hMOhn209Fut99xAK
         h+qj+tdwp5cOuDHve2rKsIc/uFYM8mUKU7naoD2kJ21KJVq81a+A+TdW/CmaAbfHE0QI
         9Scw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728343538; x=1728948338;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cTsIvR/FXz3v6jgc8oNGCr49BzyZ3lMnfi0zP8pRO2M=;
        b=NiHYyW/WF6dsfJ6NlBeKLiXJn7QL6Jpi8N8DtzUXc4ONXxKM6xghkDBwAFEAmI0/a2
         UxppV9myKpoykqiUb9q5rzKrNAblynC1KrGNE4IdQD+k6XCTZZNZVOygrh6JfYIxY1EN
         JNqASHvdDuB+H+I5HnwAliHzx3is5hDjswjHkkPRfrJppSK97UOMhkcMsqyjb7VJt0sw
         VAmE/Rt0vRbh/+ZlxFTFx8EIlJuP3Kq0myzeHLNAcL6wHGpqPI6WSXbkQPIlqXLLDKFj
         Gc7901xzncWX6wHL8i6Jx8V48vjRG5dojs8SHvrFlqIF4lTweFtSmLG1+af6vpaYrSTI
         ibLQ==
X-Gm-Message-State: AOJu0YyeKf3IbzuqAeMYCVp5NqS998GBOEBfopnsYLSWvIsw1q9wQvpf
	wJX9if9/wzKhpeKIQwCLYDEZfgw3vTnJQQ+f7dH0P03Ktlf48kUHyXH29FwezLTBEXqUkNjIaYV
	8LFJhke4dQqpQzMqlQtCF31XBhGk=
X-Google-Smtp-Source: AGHT+IFD9H6hdgT2tkCvqN/aWJDcenjIiuthL/DzRbBYLIGNaXN09F6pnJo246E2adUwhCnIeCLWXI+hU8VkEAIstlI=
X-Received: by 2002:a05:6512:3c9b:b0:535:6992:f2c3 with SMTP id
 2adb3069b0e04-539ab8adf0fmr7595679e87.41.1728343537273; Mon, 07 Oct 2024
 16:25:37 -0700 (PDT)
MIME-Version: 1.0
References: <CALT56yPtvqV-nOv931v7ZTR5T+3+szG_FG6GUuDfpruQGgMBAQ@mail.gmail.com>
 <16147.1728333256445916327@lists.yoctoproject.org>
In-Reply-To: <16147.1728333256445916327@lists.yoctoproject.org>
From: Dmitry Baryshkov <dbaryshkov@gmail.com>
Date: Tue, 8 Oct 2024 01:25:26 +0200
Message-ID: <CALT56yOVpmvaS+oWDG1oJeOLOW2NbLq6TwCGwisFqh=4c95h8Q@mail.gmail.com>
Subject: Re: [yocto] Yocto Binary Distro
To: aleksandar.nikolic010@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 23:25:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63957

On Mon, 7 Oct 2024 at 22:34, Aleksandar Nikolic via
Lists.Yoctoproject.Org
<aleksandar.nikolic010=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I'll reply on the last message from Alex, but thanks Dmitry for your init=
ial message and the story how we came from =C3=85ngr=C3=B6m to what we have=
 now. Also thanks to both of you for the extensive feedback!
>
> On Mon, Oct 7, 2024 at 09:29 PM, Dmitry Baryshkov wrote:
>
> On Mon, 7 Oct 2024 at 21:27, Alexander Kanavin <alex.kanavin@gmail.com> w=
rote:
>
> On Mon, 7 Oct 2024 at 21:07, Dmitry Baryshkov <dbaryshkov@gmail.com> wrot=
e:
>
> If you ask me, pulling pre-built packages into a yocto image is in
> itself a horrible hack that goes against yocto philosophy, and I would
> not want yocto to help that or support it in any way.
>
> ...
>
> So, as much as I like OE, if you are thinking about a binary distro, I
> think you'd better use some existing purposely binary distro (like
> Debian, Armbian or something from the RPM world). If you can afford
> having package management on the device, it's not tightly resource
> constrained. And thus there is no need to go Yocto way.
>
> I think we're talking about two different things here, so just in case
> I'd clarify the difference. Point two is about using bitbake to
> somehow pull a big pile of prebuilt binary packages from the net and
> assemble a target image out of them. I don't like that at all.
>
> Ugh, no, thank you. I also hate that idea.
>
> Yep, thanks for separating these two use cases. Regarding the former one =
(pulling a bunch of prebuilt binary packages from a server and assembling a=
 target image out of them ), some coworkers want exactly this and I am tryi=
ng to persuade them not to go down that path and just build from source. IM=
HO, even though installing previously tested binaries might bring some assu=
rance for the QM team, it brings a hell lot of issues with it which are eas=
ily avoided by building from source.
>
>
> On the other hand having a yocto-based binary distro, e.g. a target
> image with package management which feels like the traditional linux
> distributions is fine with me. I'm not particularly interested in it,
> and I'm also not sure it can work well, but people are welcome to work
> on it if they find it interesting or useful.
>
> Yep, I was thinking about the yocto-with-feeds.
>
> Yes, I also think this use case makes more sense than the first one, but =
I also see it to be used during development only, so devs can install and u=
se packages faster (than rebuilding the whole image). Updating a device in =
the field with a package management system is however in my opinion a no-go=
 (from the reasons previously stated by all).

Consider using shared SSTATE, it saves you from all the rebuilds,
while keeping Yocto internals intact and sane.


--=20
With best wishes
Dmitry

