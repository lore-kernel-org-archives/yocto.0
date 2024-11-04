Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67662D1BDEF
	for <webhook@archiver.kernel.org>; Mon,  4 Nov 2024 20:19:44 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web11.467.1730751576861253737
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Nov 2024 12:19:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZKxu1CQc;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fb57f97d75so47384541fa.2
        for <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 12:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730751575; x=1731356375; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zRyPeREVO3T9wB0OLW2YD5OJaOTAlQsIQJS47zoJuRM=;
        b=ZKxu1CQcKaltOd7OlCUhLuQU0WUC3+GTTNXx0ZphQdBynzJB8CBh7d3Ya0GGZsCU5b
         aM7yBrSdC05Aj9jiiXnfhk3HO3TzBMecLs2o1OcYXz0xJrFBNcEzQb+SFbOqXtsxiI1U
         L6iaRIiKbZFtOHDMeVpaWxTqWcmgNFf65PocrIrU19y2NrfIe2QL/PzHb/PgxdNh/tS8
         MNT1P4MCKdH9g/RisABr3OzihCbj/a2S9fqyKoUzzbL+9mDE4RXFHBjPQ/x/aiOH/9KY
         kj/gHnTrx1hYs3HpCdJvuWy0jTetdgTvY9ejvRvUPM8cYCSCKYtxfM7+jlQCFyqHCkSM
         dIYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730751575; x=1731356375;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zRyPeREVO3T9wB0OLW2YD5OJaOTAlQsIQJS47zoJuRM=;
        b=Bnbnvhn1UhNVCkhrkRbgPBrh1DgX5fa8RRyugPwcB5M8yg+0NKj93nk3Pn0nwoQcmI
         2ObTTTy2ReGUUzRbGcgV3Tfz0YXLxnZ3RNQFTcXSMRvKUPZf9j4OwtkApdBdKpxp9RV0
         xq9ZqNdP9LvURtYuKQ6j94HQmRjQLsG/Lny70szl8WvYWL8NktyxtcCDWrwfFxwIpybz
         T6amJLlKId4ZFqr/Vp7RUwwcikGJjcVqD+Nha02KJ5y4REYYRhaedl9PmYY38QdqEtrJ
         D1bo8DJjO6vRyPTvyr1KFsASAJjv4A7vi3jX0fdKLUcqUxkRdSiNyMSe8KiWsZuQiU97
         1NDw==
X-Gm-Message-State: AOJu0YwhlTTZ4JvtNitrqrrqzGtKZIA+6pU5tOxl5FVKA3lAMtuGL7hb
	okNRh/ZQ9yOkQL63lotvXR8QTIIAe/QS6ljrnfwo+QHviaTfG2P4oR/MyfLgX4pV+taboMvVghQ
	cZF89Rlw+c38eFVY+zgKYul0yghc=
X-Google-Smtp-Source: AGHT+IFca4MCd9wVsOLN6MHE1BsEzXghQ6Y04t7h6ICtDJ+aDsPxJxF7m/o5lHWwcBd60Bo2sswqFSrbAO3Y+YOwMOs=
X-Received: by 2002:a05:651c:2111:b0:2fb:5d8a:4cd3 with SMTP id
 38308e7fff4ca-2fcbddead1emr159021161fa.0.1730751574566; Mon, 04 Nov 2024
 12:19:34 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj-81+zMMgT0cbjcP5OdR5rjBMaZeJKJMvcQwxdjBiE=hA@mail.gmail.com>
 <32414.1730750017778983201@lists.yoctoproject.org>
In-Reply-To: <32414.1730750017778983201@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 4 Nov 2024 21:19:22 +0100
Message-ID: <CANNYZj96yv8kFZ4anUJQC4=5-c+zGbZkuECpmEP9bN-XXad0fQ@mail.gmail.com>
Subject: Re: [yocto] Set global variable based on recipes versions
To: sidali.teir@cysec.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 20:19:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64218

On Mon, 4 Nov 2024 at 20:53, Sid-Ali via Lists.Yoctoproject.Org
<sidali.teir=cysec.com@lists.yoctoproject.org> wrote:
> Yes you are absolutely right, I would need the variable that contains list of the versions (in my example: VAR = "1.1 1.2 1.3") for the installed packages and not for the included recipes.
> If I understood correctly, you are suggesting this:
>
> in distro or config file:
> PKGS_INSTALL = "pkg-1.1 pkg-1.2 pkg-1.3"
> PKGS_VER = "${@some python code to get the versions in a list for PKGS_INSTALL variable}"
>
> in my image recipe:
> IMAGE_INSTALL:append = " ${PKGS_INSTALL}"

I'm not sure what PKGS_VER is for, but anyway, no not quite. I wasn't
proposing python code at all, just a static list that gets updated
through an external script (that goes over filenames in a layer tree
and forms a list).

You might be able to write a python function that does the same, and
call it in SOME_VAR = "${@...}" but I'm not sure it'll work.

Alex

