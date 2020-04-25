Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com [209.85.167.68])
 by mx.groups.io with SMTP id smtpd.web11.2867.1587857086622694254
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Apr 2020 16:24:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TlcF9eCU;
 spf=pass (domain: gmail.com, ip: 209.85.167.68, mailfrom: qian.hao.developer@gmail.com)
Received: by mail-lf1-f68.google.com with SMTP id w145so10784750lff.3
        for <yocto@lists.yoctoproject.org>; Sat, 25 Apr 2020 16:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oICpyEMe+CU9pSepJabaNWk+XWSOFOd456d+r5rosXc=;
        b=TlcF9eCU/p176WjHkEdVH28RdjnnffAHOeEJOjvhrk2CGwCLwLkevHcVBL/bDLyWxN
         7TnnoW8NUTAIahMqbpv3fWAkw/kSnv6PuwFOlIeyT21XiH+aO0cPA5RbuyvX6sGfEZlx
         fVYLXZgGXCvMYv5gi/rjtC3HtSUP6rI1tQpyeMyrro7pgt9GNbd2FwS+p+dOCkf/l67T
         zB4rVew/XQwphtbz7qbsarY3lQ/H7hLZD+VlMCIGnMOQUR7MMSsbRgOFg1upYXpoOHGv
         ZobnhwuJfWyhpZjvPoiNr5XTBNX4QIFXIr92MQBc3/3idzkpOcJRKE3eVAa1lq1YxKK+
         TOSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oICpyEMe+CU9pSepJabaNWk+XWSOFOd456d+r5rosXc=;
        b=oJNWdq6vhUDSKf2J3WV7YpajiEP4bcQGF35UBJZT7ON61Au6afjF0UWw7hC5ogFSbb
         5aX+YRRoYy/DRZpxgYRgyoiD+uVwF+Q7wqv1mklhguUrM5t41kQ7NHLjQGqvX9li18zk
         LHOGBj1CilMweaYrS48T5FRhCuieIIA6b/w3LfpT67ueJ3HgHBjzbzx4i/KtAq9wnaRM
         v9jmTpRn8yjsN5ZV9bxKrsUKReHWFNxAHL0Uzu7J+DQ8sMUko/OwYMSaKGpOPSxLhc29
         LxSdH+Vpta/4HfY7upaXH2w1MW944/bsRoOXP467/dThjhjWcn9r7XI8DVsIkO0cu8OA
         grDQ==
X-Gm-Message-State: AGi0Pub88H+UCM85LFYVn0pbglsvhhQ8ibVstT1qdwJp/jHSm7KywWrP
	/TQDlWdy/MklHAwslGWdGI33260gnlpdoe8JtNg=
X-Google-Smtp-Source: APiQypJt+gvSUV+qA3175GUPKOHueiWpEHKaC/Fl+5hjJkKZ61wgH/wRTNuSh+OSd2NUb2Sj335Oa4c2sgQtvibUMLE=
X-Received: by 2002:a19:3848:: with SMTP id d8mr10568442lfj.44.1587857084786;
 Sat, 25 Apr 2020 16:24:44 -0700 (PDT)
MIME-Version: 1.0
References: <CACxpVWfYGoGiivXCeMOtoPvBYuJBqC9zu+KS3OdnB5bZoyuYyQ@mail.gmail.com>
 <60d25691239036fd72ca41c8369962b7eee4e7ed.camel@linuxfoundation.org>
In-Reply-To: <60d25691239036fd72ca41c8369962b7eee4e7ed.camel@linuxfoundation.org>
From: "Hao Qian" <qian.hao.developer@gmail.com>
Date: Sun, 26 Apr 2020 08:24:33 +0900
Message-ID: <CACxpVWfrQZ90u9gigoMMXBR_VfrDbD0=q2Lnb7fMYmgYSbRFRg@mail.gmail.com>
Subject: Re: [yocto] Can not use wildcard in SRC_URI to apply patches #yocto
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi, Richard

Thanks for replying.

Yes, it makes sense why patches not be applied by using wildcard.

Just for confirmation, it looks like more than one person made it to
use wildcard for patching as below:
https://stackoverflow.com/questions/41266742/adding-multiple-patches-to-src-uri-in-a-recipe-yocto

As you said, wildcard is not supported for patches in SRC_URI.
So, do you mean the answers and replies in above issue of
stackoverflow are wrong?
Or did I miss something?

Regards,

Qian

On Sat, Apr 25, 2020 at 11:54 PM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Sat, 2020-04-25 at 17:30 +0900, Hao Qian wrote:
> > However, if I change files' name into wildcard in SRC_URI like:
> > ===========================================
> > FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> > SRC_URI += "file://*"
> > ===========================================
> [...]
> > Could anyone tell me how to apply patches by wildcard?
>
> That isn't supported. Its hard to get determinism correct and the patch
> ordering could also be problematic.
>
> Cheers,
>
> Richard
>
