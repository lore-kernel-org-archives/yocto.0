Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8019C38A02
	for <webhook@archiver.kernel.org>; Fri, 28 Oct 2022 12:45:06 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web09.5790.1666961104498203011
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Oct 2022 05:45:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ikRcsDNo;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: jpewhacker@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id j14so8175411ljh.12
        for <yocto@lists.yoctoproject.org>; Fri, 28 Oct 2022 05:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=09t7l++ma8JRpNBVEutUr+eVyMsSja5hT6RqctLkazI=;
        b=ikRcsDNosrZZhkRudFpRTkTpldyegdcZX0zBUTxPZJ+Xx7xltPjBL47/OmYn2tPldN
         6eImeOHMY8JiffZ8kwEPu5P6JFAgJKT6diubVtzG8kMEG3AuAXB2yoapbQPAFOu8uRTP
         YK5mAcPU8B0JLlHahJhM99RZlZDdRNSTRxeqz861mU4sXNuRofF6ZiT4bWml7a9SQoXS
         sN5pojYxrhT9TKth8vMStvaaXIo6pYo8wVruumU+g8RFd32NEQPxoWOw+jbKXklbJe4z
         yq4jHReUn2Il4Uu5f/GlQuxi5CD2X1GzEjLUdWtBCb4vYSZh1IXH89TaP/kWSYFeg3pB
         EOzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=09t7l++ma8JRpNBVEutUr+eVyMsSja5hT6RqctLkazI=;
        b=b5jTofS54F+KeTM5x1jSIBlf6MyV5tjCNq9n3657+cPg9vhjRFDGWV8xL/2odf//vz
         aBW6RCV5yOh6uvG412J1mQqR3BxkLhjL2+HNv2oN4jjKVzsBIOKGJo6PAU23zSE0Gxyz
         AdtSlqbAcGojukwOP9FhK+N7jMqnGDj8a/qbMh3APUtnY8Sf7asDoNDF9Fw9nmEulBQa
         P3zksbt2ABbvV3zpu0uw8L4Xy7Q0WCa6oFe9qaQ9vYcJmV8l7Wirl4sF55B85xSe2RHj
         QKSqeBSRDcg4tOmpR2HXNwOOIBXXAo9QLhAgAiVg/fAblGX+uXnmBHRWPfD7itOURDDr
         fJBw==
X-Gm-Message-State: ACrzQf1ebXhPWQcUD4LiZoHlWHDheu7nZkHvn9Sg8SNr7jpf0IoaDPY2
	Csl7mmyd0GWMp16A7U9h72p43DBMNAZfoqvhkx3XgBl+
X-Google-Smtp-Source: AMsMyM5eKADDKyo9dCjgYBdAh4f3cYXXVS85zPMK3qCJc9YP1RfdBdMumDG9XyneoD7DTIV/wOucLer9l+WjMustH2o=
X-Received: by 2002:aa7:dc06:0:b0:461:b683:5fba with SMTP id
 b6-20020aa7dc06000000b00461b6835fbamr25368765edu.72.1666961092083; Fri, 28
 Oct 2022 05:44:52 -0700 (PDT)
MIME-Version: 1.0
References: <20221024060230.946830-1-muhammad_hamza@mentor.com> <426f6c96ddb74076a281a02249c6e125@mentor.com>
In-Reply-To: <426f6c96ddb74076a281a02249c6e125@mentor.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Fri, 28 Oct 2022 07:44:40 -0500
Message-ID: <CAJdd5GaZ0x=SefGPAqPfOtF1G3rAHMSXBgemtEUe-v0rF_DM1A@mail.gmail.com>
Subject: Re: [meta-mingw][kirkstone][PATCH] toolchain-scripts-mingw32.bbclass:
 Remove trailing slash in SDKROOT
To: "Hamza, Muhammad" <Muhammad_Hamza@mentor.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Oct 2022 12:45:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58431

Ya, I queued it in master-next. Let me run it through the AB then we
can merge it

On Fri, Oct 28, 2022 at 7:00 AM Hamza, Muhammad
<Muhammad_Hamza@mentor.com> wrote:
>
> Hi,
> Any update on this?
>
> -----Original Message-----
> From: Hamza, Muhammad <Muhammad_Hamza@mentor.com>
> Sent: Monday, October 24, 2022 11:03 AM
> To: yocto@lists.yoctoproject.org
> Cc: jpewhacker@gmail.com; Hamza, Muhammad <Muhammad_Hamza@mentor.com>
> Subject: [meta-mingw][kirkstone][PATCH] toolchain-scripts-mingw32.bbclass=
: Remove trailing slash in SDKROOT
>
> Modify toolchain-scripts-mingw32.bbclass to add a check in environment-se=
tup script which removes trailing slash in path of SDKROOT.
> This is needed to avoid multiple adjacent slashes in paths which are prod=
uced by appending to SDKROOT.
> In reference to https://learn.microsoft.com/en-us/windows/win32/fileio/na=
ming-a-file?redirectedfrom=3DMSDN
> naming convention used for paths and disk drives in windows should use a =
single backslash. Even though in some cases windows ignores double slashes =
in paths and it might work but it isn't documented as a right naming conven=
tion and does fail in some cases eg. dir command cannot interpret double sl=
ashes and fails.
>
> For example if my SDK is located in D: drive, the environment setup scrip=
ts sets "SDKROOT=3DD:\" and hence SDKTARGETSYSROOT gets set as "SDKTARGETSY=
SROOT=3DD:\\sysroots\armv8a-oe-linux"
> The introduced check removes additional slash in SDKROOT to set it as "SD=
KROOT=3DD:" so all other variables using SDKROOT get set without additional=
 slash.
>
> Signed-off-by: Muhammad Hamza <muhammad_hamza@mentor.com>
> ---
>  classes/toolchain-scripts-mingw32.bbclass | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/classes/toolchain-scripts-mingw32.bbclass b/classes/toolchai=
n-scripts-mingw32.bbclass
> index d96cb40..8cb426a 100644
> --- a/classes/toolchain-scripts-mingw32.bbclass
> +++ b/classes/toolchain-scripts-mingw32.bbclass
> @@ -12,6 +12,7 @@ toolchain_create_sdk_env_script:sdkmingw32 () {
>         touch $script
>         # Be sure to use the 'short' path, so we can have deeper director=
ies.
>         echo 'set SDKROOT=3D%~sdp0%' >> $script
> +       echo 'IF %SDKROOT:~-1%=3D=3D\ set SDKROOT=3D%SDKROOT:~0,-1%' >> $=
script
>
>         # Convert to mingw32 subpaths
>         sysroot=3D'%SDKROOT%'${sysroot##${SDKPATH}}
> --
> 2.25.1
>

