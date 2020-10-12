Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.665.1602515286849218823
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Oct 2020 08:08:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=nwUhG6hu;
 spf=softfail (domain: konsulko.com, ip: 198.145.29.25, mailfrom: paul.barker@konsulko.com)
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com [209.85.167.196])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1EFE538C115D
	for <yocto@yoctoproject.org>; Mon, 12 Oct 2020 08:08:06 -0700 (PDT)
Received: by mail-oi1-f196.google.com with SMTP id w141so19070699oia.2
        for <yocto@yoctoproject.org>; Mon, 12 Oct 2020 08:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=2Ja6TtXAWqpc7UHqoJSf+LuQE1WXPqD1NXv41Dx34B4=;
        b=nwUhG6huF3pgM+v3eUnX/J1dPZVy9Ad0qPEZgsVXSVG1bGf+JEBjWkCxA9z1SV2SiF
         KLGKuetgw17+xbyBybCcjE/qxjFe3vKP0eTUUhzIBFaor7LNH8cQ4EUraZrWzmExrj9Y
         kN9OzKOnV/kv9MlswEBkwdNkWFyAqT0zOjW20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=2Ja6TtXAWqpc7UHqoJSf+LuQE1WXPqD1NXv41Dx34B4=;
        b=KiZyZShz9pnqoA1eW0SbWqlC0SFDIn6RDngeFzKlfSKhaK8CUzXlWLW3OvYn3d4PVU
         sirXKCadgw1hxeoscWhv4zVmHcIp9V1X+cYfuaQZbPtGL2DHKYVCVY3wYdIUkVFwt26N
         V7ZPWArqD6GTLeNou8/rC/f0M2TVb2T72VSM1f6EcKsZ/9gsf7Px+N9tCdGGgxbJH/PF
         xjiwPf2aT70xzY7opIjcgkKMGLvwfpsz/XWjhrmamIesBWze7ru4FofkHDCwjxFJLddq
         3AjVzQPQz17CI4/cQlT5Ng4WrdAsOrPUzukKgu6okloJ5H0eCCjXIGuWmUaFlyA/27wN
         n3sA==
X-Gm-Message-State: AOAM530P8ZxfTF5HyxKixQasGvbBofEbSDB+3fPRbYgYZPg2QoGbeToj
	dKAvAN6Ef1H4K9I62AVyJh90BwYfxbUAJGTHADqBEtl7aIE=
X-Google-Smtp-Source: ABdhPJynHt7PKToB0bngOfigcxpJypoZXAE9jwUhcXLWCCrUYeUnpaIa/vH9fTpojs10VMvIgduS9BGAhA5WRpBwlg8=
X-Received: by 2002:aca:d946:: with SMTP id q67mr10908101oig.27.1602515285025;
 Mon, 12 Oct 2020 08:08:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAM9ZRVubA=8LS+tVtSdVZ8+hiu3+9UahCywBLHqdDLca3HScNg@mail.gmail.com>
In-Reply-To: <CAM9ZRVubA=8LS+tVtSdVZ8+hiu3+9UahCywBLHqdDLca3HScNg@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Mon, 12 Oct 2020 16:07:54 +0100
Message-ID: <CAM9ZRVtGpAJYxjeuMSduvQbV2anJEk+T-_C+Q3XvbotVLQxbKQ@mail.gmail.com>
Subject: Re: RFC: Changes to meta-kernel layer
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: Ross Burton <ross@burtonini.com>, Jon Mason <jdmason@kudzu.us>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 17 Sep 2020 at 09:43, Paul Barker <pbarker@konsulko.com> wrote:
>
> Hi folks,
>
> After a bit of a break I'm looking again at the meta-kernel layer and I'v=
e got some changes planned. I'd like to get some feedback on these from any=
one who has looked at or used the meta-kernel layer.
>
> 1) Change the name to meta-vanilla-kernel. This reflects the focus on pro=
viding a fast moving layer for vanilla kernel recipes, covering only what i=
s available on kernel.org. Other common kernel recipes (e.g. Linaro or Andr=
oid common kernels) will no longer be considered for acceptance into this l=
ayer. This clear focus should hopefully reduce some of the confusion about =
the goals of this layer.
>
> 2) The dunfell branch will no longer get new non-LTS kernel recipes. Prov=
iding non-LTS recipes on a stable branch has led to people depending on ker=
nels which are now out of their support period - I'd like to drop the recip=
es for the 5.3.y and 5.6.y kernels but users are depending on them so I'll =
have to keep them. To avoid this proliferating, only LTS kernels and the bl=
eeding edge mainline recipe will be updated on the stable branch from now o=
n.
>
> 3) Aggressively drop end-of-life kernels on the master branch.
>
> 4) Drop all non-LTS kernel recipes in the gatesgarth branch when it is cr=
eated.

I saw that meta-kernel was used in the M3 build so I'm not going to
drop recipes or rename the layer right now. I'll implement these
changes after the Yocto 3.2 release.

--=20
Paul Barker
Konsulko Group
