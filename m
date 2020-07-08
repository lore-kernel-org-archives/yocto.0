Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web12.10411.1594214488561633480
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jul 2020 06:21:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y5t8YU/2;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id dr13so50536138ejc.3
        for <yocto@lists.yoctoproject.org>; Wed, 08 Jul 2020 06:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sGPnTKY/8rOm7FaKYRFprWqE9/xJm+M+sTJ6Cqng/Eg=;
        b=Y5t8YU/2pmEafKYsea5kkf39X8IqqhCRpff4mtntkYkS7/3emLObMpxJNL4DHo8C8C
         LlMKUj8GJJEl8Bb2ToTgMM6BoKDEwJHUQny/IPIK15TRWkLRCJ2nCpM2ZdPsBGqCL2kZ
         2dU37NZDqobPHVFu9GxAD8/7/4BQaUXSp1BvFo8/ctlUqHWa2Bg52LaPh1xyicXCj19l
         yVAEkQbhgd8+bmfAKcRGm/TAKS6eDnSzIv4JS/PUw+t6+0sw/j+E2d7F0Krxutw9nQUt
         /Y1O9zL+Jv1k3WIfTiK7i7dBP9Eq47Ynz38txezviOUu5WBrxG/7+qP1tq01N2Ob5yXs
         FmDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sGPnTKY/8rOm7FaKYRFprWqE9/xJm+M+sTJ6Cqng/Eg=;
        b=NA8wDQ4ZvB3e2JfL1UqG+0NjCvgwVLSd5lzh1DJntcIBrvVtklbQEKYvXC8z2U+wy8
         5mml4yYZjkN8PP/T2fG7/WW3ZEEu3+zkua509MJTWH73yg8dyO+T845ipqRhVUhfDp9O
         KrVxqkgXuMIuHioU8rz7tfR3vzabL+nJNFTunIkXNrEC9o8E8K0DUrc+gFcPw+1plWOL
         cg1QFZWiUOKnNRpdc4ZX6fKBiyY0Ul94yF3tLIWgk50CfutA25TogXobAVRKhvtjwep4
         TfWzS+7lIvFQxR8heuA9afozyaY5+Mn+qqnQAnI0lwGK6ALoWll0dKbWoAIs3eVdI/xU
         R/qg==
X-Gm-Message-State: AOAM5312AQQY7vCNa5kpc+X5VIWWa6PjQVrCk4UzRlwiseYu9Ws/4JeV
	PKdB9hGm/TWKjDrbheSFLuyj2mzSrHqQpygQH2E=
X-Google-Smtp-Source: ABdhPJzkVKXslPMr9SB+aT8X5O888YfAWJ4q0i74PuGYvF3pli6pGr44wRYhlf7gI/I+XrU7OCS+MRjFqSeFEWlFqYI=
X-Received: by 2002:a17:906:c142:: with SMTP id dp2mr54175482ejc.541.1594214486992;
 Wed, 08 Jul 2020 06:21:26 -0700 (PDT)
MIME-Version: 1.0
References: <66c69152-4aaa-fdee-2e02-9bd9b8763cbe@guy-morand.ch>
In-Reply-To: <66c69152-4aaa-fdee-2e02-9bd9b8763cbe@guy-morand.ch>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Wed, 8 Jul 2020 15:21:16 +0200
Message-ID: <CA+chaQeGQ4VA1E9OURT7_4r8+N06DA+-X_v6FUH9U0jbB_GEXg@mail.gmail.com>
Subject: Re: [yocto] Broken dunfell branch
To: Guy Morand <guy@guy-morand.ch>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000316b8005a9edfc05"

--000000000000316b8005a9edfc05
Content-Type: text/plain; charset="UTF-8"

This 0001-mtd-utils-Fix-return-value-of-ubiformat.patch patch was recently
backported to dunfell in
https://git.openembedded.org/openembedded-core/commit/?h=dunfell&id=3ee98b6c9ddd1dd0825245ca672236b7befb9859

check with "bitbake -e mtd-utils" to see which other layer in your build
adds the same patch or changes SRCREV to newer commit which already
contains the same change from upstream.

On Wed, Jul 8, 2020 at 3:15 PM Guy Morand <guy@guy-morand.ch> wrote:

> Hallo Yocto deveopers!
>
> For our daily release, we build from the latest dunfell branch. I would
> like to thank and congratulate you because we have been doing so for
> over a year and the build never broke because of poky/OE meta layers!
>
> However, we recently got some errors:
>
> ERROR: mtd-utils-2.1.1-r0 do_patch: Command Error: 'quilt --quiltrc
> /mnt/sdb/buildAgent/work/8161e17a85bb6b69/build/tmp/work/armv7vet2hf-neon-scewo-linux-gnueabi/mtd-utils/2.1.1-r0/recipe-sysroot-native/etc/quiltrc
>
> push' exited with 0  Output:
> Applying patch 0001-mtd-utils-Fix-return-value-of-ubiformat.patch
> patching file ubi-utils/ubiformat.c
> Hunk #1 FAILED at 550.
> Hunk #2 FAILED at 643.
> Hunk #3 FAILED at 669.
> 3 out of 3 hunks FAILED -- rejects in file ubi-utils/ubiformat.c
> Patch 0001-mtd-utils-Fix-return-value-of-ubiformat.patch can be
> reverse-applied
> ERROR: Logfile of failure stored in:
>
> /mnt/sdb/buildAgent/work/8161e17a85bb6b69/build/tmp/work/armv7vet2hf-neon-scewo-linux-gnueabi/mtd-utils/2.1.1-r0/temp/log.do_patch.23641
> ERROR: Task
>
> (/mnt/sdb/buildAgent/work/8161e17a85bb6b69/meta-layers/poky/meta/recipes-devtools/mtd/mtd-utils_git.bb:do_patch)
>
> failed with exit code '1'
>
> It seems the faulty commit is:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=dunfell&id=994783b52e5c0a97000b8b643c8fd80d81069097
>
> For now I simply build from the previous commit and everything is fine.
> Not sure if someone already noticed that or if there is something wrong
> with my setup?
>
> Best regards,
>
> Guy Morand
> 
>

--000000000000316b8005a9edfc05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This 0001-mtd-utils-Fix-return-value-of-ubiformat.patch pa=
tch was recently backported to dunfell in<div><a href=3D"https://git.openem=
bedded.org/openembedded-core/commit/?h=3Ddunfell&amp;id=3D3ee98b6c9ddd1dd08=
25245ca672236b7befb9859">https://git.openembedded.org/openembedded-core/com=
mit/?h=3Ddunfell&amp;id=3D3ee98b6c9ddd1dd0825245ca672236b7befb9859</a><br><=
/div><div><br></div><div>check with &quot;bitbake -e mtd-utils&quot; to see=
 which other layer in your build adds the same patch or changes SRCREV to n=
ewer commit=C2=A0which=C2=A0already contains the same change from upstream.=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Jul 8, 2020 at 3:15 PM Guy Morand &lt;<a href=3D"mailto:guy@g=
uy-morand.ch">guy@guy-morand.ch</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Hallo Yocto deveopers!<br>
<br>
For our daily release, we build from the latest dunfell branch. I would <b=
r>
like to thank and congratulate you because we have been doing so for <br>
over a year and the build never broke because of poky/OE meta layers!<br>
<br>
However, we recently got some errors:<br>
<br>
ERROR: mtd-utils-2.1.1-r0 do_patch: Command Error: &#39;quilt --quiltrc <b=
r>
/mnt/sdb/buildAgent/work/8161e17a85bb6b69/build/tmp/work/armv7vet2hf-neon-=
scewo-linux-gnueabi/mtd-utils/2.1.1-r0/recipe-sysroot-native/etc/quiltrc <b=
r>
push&#39; exited with 0=C2=A0 Output:<br>
Applying patch 0001-mtd-utils-Fix-return-value-of-ubiformat.patch<br>
patching file ubi-utils/ubiformat.c<br>
Hunk #1 FAILED at 550.<br>
Hunk #2 FAILED at 643.<br>
Hunk #3 FAILED at 669.<br>
3 out of 3 hunks FAILED -- rejects in file ubi-utils/ubiformat.c<br>
Patch 0001-mtd-utils-Fix-return-value-of-ubiformat.patch can be <br>
reverse-applied<br>
ERROR: Logfile of failure stored in: <br>
/mnt/sdb/buildAgent/work/8161e17a85bb6b69/build/tmp/work/armv7vet2hf-neon-=
scewo-linux-gnueabi/mtd-utils/2.1.1-r0/temp/log.do_patch.23641<br>
ERROR: Task <br>
(/mnt/sdb/buildAgent/work/8161e17a85bb6b69/meta-layers/poky/meta/recipes-d=
evtools/mtd/mtd-utils_git.bb:do_patch) <br>
failed with exit code &#39;1&#39;<br>
<br>
It seems the faulty commit is:<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Ddunf=
ell&amp;id=3D994783b52e5c0a97000b8b643c8fd80d81069097" rel=3D"noreferrer" t=
arget=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=
=3Ddunfell&amp;id=3D994783b52e5c0a97000b8b643c8fd80d81069097</a><br>
<br>
For now I simply build from the previous commit and everything is fine. <b=
r>
Not sure if someone already noticed that or if there is something wrong <b=
r>
with my setup?<br>
<br>
Best regards,<br>
<br>
Guy Morand<br>
<br>
</blockquote></div>

--000000000000316b8005a9edfc05--
