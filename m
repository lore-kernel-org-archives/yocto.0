Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com [209.85.167.193])
 by mx.groups.io with SMTP id smtpd.web11.8565.1602059656445355418
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Oct 2020 01:34:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=WzP5sGGK;
 spf=pass (domain: konsulko.com, ip: 209.85.167.193, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f193.google.com with SMTP id 26so1597334ois.5
        for <yocto@lists.yoctoproject.org>; Wed, 07 Oct 2020 01:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sRoR/ZetFuExo6dSeZ0Ru4rU0iDbtioxqjjMGz7tKcQ=;
        b=WzP5sGGK8nM7IlvGsYcN66PwKQKk2NqqQt9mvWQ+kny4e+/wu6LBFWow+ijkVylAjf
         CAxmaaOLYdWZ987TGxVGnukr7b77oDZqRlnepy9nnzJ0A/75j4vXHrKqWIYU2StRpIZV
         PX+3B/FQ66v31sBgh+Yg+KjbfFXsQloQXGSTc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sRoR/ZetFuExo6dSeZ0Ru4rU0iDbtioxqjjMGz7tKcQ=;
        b=oihSLswJUxar1UMppY85HRu+MaikcgiTDj2k+uUXBkE3g6wzelzTK3oMHcrRlsZzCF
         8VGUHYxFp/AT8Grf9hle3DQ/HcuGeNWYyBkV+1vq14NuXJCSkV1dmWH4oluwqpf8cTZJ
         8fIVqkzHH9E/WezW2l8Zz5W6eNTVeKI/XBPXvW9+prorsIg6Ua5hl0ILnNfjfag36JMr
         n/fKC4R0tlMoEksgvxuI3IQrjWt8WhXqSod9dCA6drTj4wfh7Vq8ijLGonMSauDEfc3m
         5ljjeg6w3xhlDxQK5SpKwkPraJy6i7+rX2qzmvqYib5rlvmfv0GqlUbfa4m0RGpcBqvS
         NhxQ==
X-Gm-Message-State: AOAM532bsMOez/z3WJyhxdOikJtfDrrKjJcz/QDKOjwba1J6WORFruLa
	jSwnauYvzhZ0kbho0k9S7UALGI3uCl2HXSMewtOjdg==
X-Google-Smtp-Source: ABdhPJwx5Aq1tPV1OZbcr+IcUJ80Rkxn9JokC2ioElkc+rSNkinrsvorPkDNLo8IHqvLXnBPXpBru1C2ZczEoymGgO4=
X-Received: by 2002:aca:3e08:: with SMTP id l8mr1224162oia.152.1602059655742;
 Wed, 07 Oct 2020 01:34:15 -0700 (PDT)
MIME-Version: 1.0
References: <9pqx.1602059374076294998.H2RR@lists.yoctoproject.org>
In-Reply-To: <9pqx.1602059374076294998.H2RR@lists.yoctoproject.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Wed, 7 Oct 2020 09:34:05 +0100
Message-ID: <CAM9ZRVtfC7BBtSC0YoBX3VzM8RmYQZp1LDSp7FA5ZUmSAmE-OA@mail.gmail.com>
Subject: Re: [yocto] Only index.html is cloned in private repo clone recipe #yocto
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 7 Oct 2020 at 09:29, Bel Hadj Salem Talel <bhstalel@gmail.com> wrote:
>
> Hello All,
>
> I have a private git repo which is in a local gitlab server.
> Here is the local repo domain: http://gitlab.tools.comp.local/comp/sense/sense_frontend
> I already saved the git credentials (username and password) , and I created this recipe:
>
> LICENSE = "CLOSED"
> SRCURL = "http://gitlab.tools.comp.local/comp/sense/sense_frontend"
> SRCBRANCH = "master"
> SRCPROTO = "https"
> # Define the source for this recipe
> SRC_URI += "${SRCURL};protocol=${SRCPROTO};branch=${SRCBRANCH}"
> SRC_URI[md5sum] = "1becf51a6312d09f0c1c22120efd499c"
> SRC_URI[sha256sum] = "142e3af77b6851b614d07012abce145ce2526b8d0d95e7a94cff62f0e6432d26"
>
> When I do do_fetch and do_unpack I only see the index.html file of the repo is downloaded.
> What is the problem ?
> How can I solve this?

SRC_URI should start with "git://" to do a git clone. The "protocol"
field can then be set to http, https or ssh if needed, I see you've
already got that set to https after expansion so you should just need
to change your SRCURL value.

Thanks,

-- 
Paul Barker
Konsulko Group
