Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
 by mx.groups.io with SMTP id smtpd.web11.17591.1604518369523590862
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Nov 2020 11:32:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bJVpSxH2;
 spf=pass (domain: gmail.com, ip: 209.85.222.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f52.google.com with SMTP id 91so6381617uar.5
        for <yocto@lists.yoctoproject.org>; Wed, 04 Nov 2020 11:32:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uyx3kNPTuSak9MS9Refl6vml2s7fsE5+Db+hfUmZokg=;
        b=bJVpSxH2/BkCRuD4lLiY5Dpfd6h23WIDuDr5yeC4bZaoavMcFaLT9QqNC7Xc3cwuzE
         RpCcy0WMi9XLsabHf/NntMKaiILJoyQIGgF3ifMGkhhbzFd+MfHa+qCoXnrcvL1Xnyz+
         S8gvyiu1in5BntSy76SDkZDKdn7SH4Pk90OqAgMasuLqBKVez88eesgQi9i1MPQxyisl
         VGtsXZRJ92Q+E0Q2JQ+JwWJFRSbTTevWGnuSAumftzZs3Xh/oFirPy22/coKc6QKk8B5
         x5V5ihagnYOAmhfy04unua3xwBm3t86krAEW9yTinR2xRnsmpE3i314oVGCJ3u4d0a20
         2sqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uyx3kNPTuSak9MS9Refl6vml2s7fsE5+Db+hfUmZokg=;
        b=NGeVPuutVHZxL0A+ZoRqrogXbdY4GFHIMl7pilJ9X4tFfxzqtug+F+QbLkfZ0M7ws9
         Uo8GvrGyXHrVVqIduADuG31+/P8XzosdKWEnX7ni6c2u95s5cYQxLoC+nQ74HmEoR16j
         taE1/5S3zGxPWcEY/cTUsiRdqp6K/RzVxRmkHWrlmYoBPooQaWA79FWMmjxYnmu7Jm2y
         Ndh+lUGqZdnnrWpfmAnWzX3MDq/BmVrhA0Npvl6QZOR4KQ1QeZG6VhDUYT4DslLQwwh3
         00viUZskYr65B5yAOrKxFQfRZEvZr7EKzChk1tNCoQunNEXngFXeBcst4+IbErrfxktj
         vqLw==
X-Gm-Message-State: AOAM532Fx5Xg/acBEi6B8s5GiN1uow3toxd77DwZbvrHmYmCg+jjfvau
	xtcl9YycNAsLIxjkFYfmdPphLzXprVsNnua793E=
X-Google-Smtp-Source: ABdhPJwfFv1EH8vq56mCKKNrnWlPLVeHhJKf4WWXM80ma4H0kbicfbfj7kG+SYq9yyB8Im3w6v0FC2J9Y4/xuUv++y0=
X-Received: by 2002:ab0:20b0:: with SMTP id y16mr9648840ual.93.1604518368676;
 Wed, 04 Nov 2020 11:32:48 -0800 (PST)
MIME-Version: 1.0
References: <CAFVJ0t4U0PWpKK4-X0Tpim6Ee6yCcrJbBi_1b54KBrjwbKcOfg@mail.gmail.com>
In-Reply-To: <CAFVJ0t4U0PWpKK4-X0Tpim6Ee6yCcrJbBi_1b54KBrjwbKcOfg@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 4 Nov 2020 20:32:37 +0100
Message-ID: <CANNYZj8MKQDX-3PbThzoPOf5JE+Kq+BmcUdbxs87HOBmCWi_zg@mail.gmail.com>
Subject: Re: [yocto] Removing postinst script in bbappend
To: Jim Krantz <krantzj84@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000066909805b34d0b50"

--00000000000066909805b34d0b50
Content-Type: text/plain; charset="UTF-8"

What recipe is it and what layer is it in?

Alex

On Wed 4. Nov 2020 at 19.04, Jim Krantz <krantzj84@gmail.com> wrote:

> Hey folks,
>
> We're doing builds using Yocto 3.1 and are attempting to revise a recipe
> from another layer we don't control. The recipe we want to make alterations
> to is from an open source project, so we'd prefer to not make changes
> directly to the recipe, rather change it using a bbappend.
>
> The issue we're having is that the recipe has a pkg_postinst_ontarget
> function defined, but we have our filesystem set to read only via
> 'read-only-rootfs'. The result is a build time failure:
>
> 'The following packages could not be configured offline and rootfs is
> read-only: ['<package>']
>
> Looking at the Yocto code, it appears that this error is detected by
> checking for the presence of any files in the image rootfs/rpm-postinsts
> directory. If something is found and the rootfs is read only, then the
> error above is thrown and the build fails.
>
> We also looked at emit_pkgdata() and noted it was checking for the
> pkg_postinst/pkg_postinst_ontarget globals, so we attempted to add a task
> that set those to 'None', hoping it would result in the conditional checks
> for these resolving to 'false', however this did not seem to work either.
> I'm somewhat new to Yocto, so may have misunderstood how this code is
> applied.
>
> We've also tried simpler solutions, like implementing a blank
> pkg_postinst_ontarget_{PN} and using deltask, however this also failed.
>
> So the question I have is: is there a way for us to remove the
> pkg_postinst_ontarget_{PN} from the recipe in the original layer using a
> bbappend file in our layer, so that the read only error is not thrown?
>
> Thanks!
>
> 
>
>

--00000000000066909805b34d0b50
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">What recipe is it and what layer is it in?</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed 4. Nov 2020 at 19.04=
, Jim Krantz &lt;<a href=3D"mailto:krantzj84@gmail.com">krantzj84@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-lef=
t:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"ltr">Hey folks,<div><=
br></div><div>We&#39;re doing builds using Yocto 3.1 and are attempting to =
revise a recipe from another layer we don&#39;t control. The recipe we want=
 to make alterations to is from an open source project, so we&#39;d prefer =
to not make changes directly to the recipe, rather change it using a bbappe=
nd.=C2=A0</div><div><br></div><div>The issue we&#39;re having is that the r=
ecipe has a pkg_postinst_ontarget function defined, but we have our filesys=
tem set to read only via &#39;read-only-rootfs&#39;. The result is a build =
time failure:</div><div><br></div><div>&#39;The following packages could no=
t be configured offline and rootfs is read-only: [&#39;&lt;package&gt;&#39;=
]</div><div><br></div><div>Looking at the Yocto code, it appears that this =
error is detected by checking for the presence of any files in the image ro=
otfs/rpm-postinsts directory. If something is found and the rootfs is read =
only, then the error above is thrown and the build fails.=C2=A0</div><div><=
br></div><div>We also looked at emit_pkgdata() and noted it was checking fo=
r the pkg_postinst/pkg_postinst_ontarget globals, so we attempted to add a =
task that set those to &#39;None&#39;, hoping it would result in the condit=
ional checks for these resolving to &#39;false&#39;, however this did not s=
eem to work either. I&#39;m somewhat new to Yocto, so may have misunderstoo=
d how this code is applied.</div><div><br></div><div>We&#39;ve also tried s=
impler solutions, like implementing a blank pkg_postinst_ontarget_{PN} and =
using deltask, however this also failed.=C2=A0</div><div><br></div><div>So =
the question I have is: is there a way for us to remove the pkg_postinst_on=
target_{PN} from the recipe in the original layer using a bbappend file in =
our layer, so that the read only error is not thrown?</div><div><br></div><=
div>Thanks!</div></div>
<br>
<br>
<br>
</blockquote></div></div>

--00000000000066909805b34d0b50--
