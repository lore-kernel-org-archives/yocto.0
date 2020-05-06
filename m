Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web12.1506.1588775517509826828
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 May 2020 07:31:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=COlwaOBE;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id g2so1120899vsb.4
        for <yocto@lists.yoctoproject.org>; Wed, 06 May 2020 07:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=68qc/1lP6fa8OHejbLjGjb6ea7ru7z6FNPYPMO1EadQ=;
        b=COlwaOBEZVaBmL/CnVtmhuCY66l8E+/vcZQ7V5Cz6IEt2OvAOh4SgaSoIOUamZ5Gc1
         Q5jo3sLMTrDZmFLTHbSjUnPY4RhyX6tgyDqKTLv3TTRuOtgFDAvmwefdf67pfoLtjOs+
         3VB8D6lQLyuHOTsWDGOfv4K2EGqg0YICYuD69EJbz8jDnFSDz73MVL89hB9SY1mYirN3
         l9NBrIY4RHrqjIMHnP4kayeES8MXem9yIiArt38EvbuNHzTDxQk+G3Hs0v3PtP+8ceuw
         MBe9KF4yS/bZigslR/EZ+fi9DZOYx2YSR/uQlRYgbM1lbXL7ihc/GKaJH3V0F+7iBi3y
         Xwfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=68qc/1lP6fa8OHejbLjGjb6ea7ru7z6FNPYPMO1EadQ=;
        b=XqTLCargT03IUZzUtXQpy61xeleAQuzimw7eE/KN7GZNPPvBkXiOxlRFvc5NpGJwKS
         lGl4Pl+b4ECHxSEddeNZoQy0j6A47YRMEXI57G7D9uFoHVmDra9i/jMtGMeK766bXXLa
         4pOPnHwxnqrNimc7fw2hcfF+0tbAsjIF897olgLtnfF6mhTcrpSXEEvZIwXB4jwQE4+b
         SA4bdgncsFfu75Rz6aywF6N6h9x6aATJzW5nrX0E2R56TImDF5sW97H8ddBiPlWseRVZ
         9OfKcEfvcCVQUzhe1X8Fggk/WKA/Rgk9NR7mFCjwOfJEapKFW4h6RA5tHTAgmxfZRMKZ
         lvWA==
X-Gm-Message-State: AGi0PuajR51/52cdvXOtGomn3wF6rwAheSFq6kHkSLFiNAAw4kwqBkpG
	0hMOa/cF1syiB3ykGaeI023wrDzRy07ynx3Z2+H+WN3M
X-Google-Smtp-Source: APiQypIoe+hYQX8uhJLvzdRv2k875RtwAUXRtKMOF9OOHRgVNre1F5gGXQkoSlwmEN/P7e7XD6P4DeLhjVlVk02ZpfE=
X-Received: by 2002:a67:7d10:: with SMTP id y16mr8169439vsc.23.1588775516451;
 Wed, 06 May 2020 07:31:56 -0700 (PDT)
MIME-Version: 1.0
References: <pJCb.1588774782754186556.GQSZ@lists.yoctoproject.org>
In-Reply-To: <pJCb.1588774782754186556.GQSZ@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 6 May 2020 16:31:45 +0200
Message-ID: <CANNYZj_oH6mzFvk0w-vOe8GpEcV56MCyfyiDwkB7bRgp_nTK2A@mail.gmail.com>
Subject: Re: [yocto] Autoupdate of versions in specific recipes #yocto
To: yocto@lists.yoctoproject.org, 
	oliver westermann <oliver.westermann@cognex.com>
Content-Type: multipart/alternative; boundary="000000000000493d6b05a4fba0c9"

--000000000000493d6b05a4fba0c9
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 May 2020 at 16:19, Oliver Westermann <oliver.westermann@cognex.com>
wrote:

> My goal would be to set a flag in recipes where I would like updates and
> than trigger "bitbake update-recipes". Bitbake would parse all recipes,
> check for the flag. If the flag is set, check SRC_URI (git url + branch),
> update SRCREV and in the end output a summary similar to git submodule
> summary (changed commits + changelog / git log --oneline). I feel a lot of
> the plumbing exists (eg from the fetcher supporting AUTOREV).
>

I think you might find auto upgrade helper useful:
http://git.yoctoproject.org/cgit/cgit.cgi/auto-upgrade-helper/tree/README

It's built on top of 'devtool upgrade' and 'devtool check-upgrade-status',
so you can use those directly in some kind of custom script as well.

Alex

--000000000000493d6b05a4fba0c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, 6 May 2020 at 16:19, Oliver Weste=
rmann &lt;<a href=3D"mailto:oliver.westermann@cognex.com">oliver.westermann=
@cognex.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">My goal would be to set a flag in rec=
ipes where I would like updates and than trigger &quot;bitbake update-recip=
es&quot;. Bitbake would parse all recipes, check for the flag. If the flag =
is set, check=C2=A0SRC_URI (git url + branch), update SRCREV and in the end=
 output a summary similar to git submodule summary (changed commits + chang=
elog / git log --oneline). I feel a lot of the plumbing exists (eg from the=
 fetcher supporting AUTOREV).<br></blockquote><div><br></div><div>I think y=
ou might find auto upgrade helper useful:</div><div><a href=3D"http://git.y=
octoproject.org/cgit/cgit.cgi/auto-upgrade-helper/tree/README">http://git.y=
octoproject.org/cgit/cgit.cgi/auto-upgrade-helper/tree/README</a></div><div=
><br></div><div>It&#39;s built on top of &#39;devtool upgrade&#39; and &#39=
;devtool check-upgrade-status&#39;, so you can use those directly in some k=
ind of custom script as well.</div><div><br></div><div>Alex<br></div><div><=
br> </div></div></div>

--000000000000493d6b05a4fba0c9--
