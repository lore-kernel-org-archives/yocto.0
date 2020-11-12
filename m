Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
 by mx.groups.io with SMTP id smtpd.web12.9357.1605207975164969245
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 11:06:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=LMuNBG/a;
 spf=pass (domain: konsulko.com, ip: 209.85.210.51, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f51.google.com with SMTP id 79so6639277otc.7
        for <yocto@lists.yoctoproject.org>; Thu, 12 Nov 2020 11:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kbZp07N5FTItQTHAd4RGFxahAFSqwsWCxGRYfEpTBeA=;
        b=LMuNBG/aSAO604PQqp9YTKeEOe0J5eHf4j7YJNKTEUyogwk+zl4dr8NVjp94VbwvYn
         elKAMJ4NgQWMe9gvB2YsUbUAiJ+D4Uu7c/S+0037vxYxqxaNmtV2f6Do5BdHyosJla9m
         +UL1QPPD8XMBoXcobHJsqoItrce28BUFVx92Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kbZp07N5FTItQTHAd4RGFxahAFSqwsWCxGRYfEpTBeA=;
        b=BkwyCpqeLjAj0Nyt266xKCOWEF3zkHW9coiGAPRFM0EOmEp1/MOkABacp3/BUZURgn
         Dw2+JXoMAqAXp5aB3Gu0qio1NangVQL/zittrThFHsRu4zAyAZRkK7rXiYrWsSVuablk
         KwkP23SPA+iGph3iC+CehF8yDK51Y3GNI6Mvl+XT5IlAKvFtCcwbBQPZTmxg7XPVgdaM
         TrTrPu7p5wc88JvvIT5VRIANwe1hwdUzG+AjUNMABKEMd82YkVdqYyJu7jtafyc1drDj
         s2fyLYOi1mT/lKrzcNUA4JregWioV2UaUkgaX91zQ6GA7uhiqGQ/iJrHOc/FW9bD4/j3
         VBFg==
X-Gm-Message-State: AOAM5336UX63pBbHDlWXZUQ9NnxY1YwyJoaiuLBRAtW7ZSp5sSOm/NDn
	+BOBmOtRmYbf3aw8IkXgJd42M5nnfPELD4Qq06WtmA==
X-Google-Smtp-Source: ABdhPJw37k4+TZNRrWLHYwlNcEohYWhZWTO7aWgn6FxcXg7Y8p8D3Hl4DYKCcNjZT27SZqdjePKmNHBxUA2pB+Gt9s4=
X-Received: by 2002:a05:6830:22d2:: with SMTP id q18mr427467otc.305.1605207974517;
 Thu, 12 Nov 2020 11:06:14 -0800 (PST)
MIME-Version: 1.0
References: <CAHT06YjaEtppudHeR9HazY7MHD3JeL2JdjBUnSneDLNEGRyQGQ@mail.gmail.com>
In-Reply-To: <CAHT06YjaEtppudHeR9HazY7MHD3JeL2JdjBUnSneDLNEGRyQGQ@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 12 Nov 2020 19:06:04 +0000
Message-ID: <CAM9ZRVukaYtm+Cp9su9uB=1CY+cb6V_H20XsBZuwhJ-pgeECng@mail.gmail.com>
Subject: Re: [yocto] Patch files before recipe is parsed
To: Paul Adams <paul.adams@evogro.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 12 Nov 2020 at 17:14, Paul Adams <paul.adams@evogro.com> wrote:
>
> There is a problem with the Yocto recipe for Python 3 in warrior. It
> is missing ntpath in the list of core modules listed in
> python3-manifest.json.
>
> Since warrior is EOL, I was hoping to fix this by patching the
> python3-manifest.json file but it doesn't work. I think the reason is
> that the manifest file is read by an anonymous function in the recipe,
> which I understand is executed during recipe parsing (which I assume
> happens before the patches are applied).
>
> I know the patch is being applied correctly because the content of
> python3-manifest.json file is correct when I inspect it in  the
> build/tmp/work... directory.
>
> My question is whether there is any method in bitbake to apply patches
> early enough to fix this issue?

There's nothing in bitbake to support this. If you need to carry
patches against an EOL branch then you can either create a local fork
of poky or use a setup tool like kas (https://github.com/siemens/kas)
which can apply patches when checking out layers.

The better alternative would be to upgrade to a supported branch if
you can though.

Thanks,

-- 
Paul Barker
Konsulko Group
