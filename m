Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web10.12669.1588950960071817505
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 May 2020 08:16:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZMYbx/sY;
 spf=pass (domain: gmail.com, ip: 209.85.222.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id 36so762609uaf.9
        for <yocto@lists.yoctoproject.org>; Fri, 08 May 2020 08:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=H2JUW4QfNSDNqRQxeK0Nc1uF8cSXiIf6V4ibCCUtnao=;
        b=ZMYbx/sYDVvgSNVHH6BY1wP7RvJ7Zyp1pGtHhao3mqbiuwEtRyuBacW47LjWbwR/um
         fSaGz3zlBsi+kv8i/bXKjHRe7HLfKZa6BSZsaAQH7FNE0sxSjhH8Vfkv/dJk4qyc+yJy
         dCSi14YzzvJMTS3HgXif+ALPQIX4OhkOBpeO5P2yLVGIFMTHfT49yFkxRLpfp9PVfULF
         g/T5D9IVwHQu0JjpyNWp92EmIR9JDAjQMNVPgIX4g6qZ28vmkhcGsxSytYYfTFnUzphg
         Is52+9mc1Qi5116ws1BELfZO44TrVjh7o03RfHeAUgJ/sNGVkLdm8WyHXMyRjyLmbkRB
         yWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=H2JUW4QfNSDNqRQxeK0Nc1uF8cSXiIf6V4ibCCUtnao=;
        b=PMh4wVKOBV46dMkW9QrjT8L4232TsRQ1ewwaeJQihcaKmjESX34qOiMP+KHewSMWr+
         Q5LgkL68hx3vUZ3hFGUicuspCgELuJUBKMmyQDORspHNCbLQo9gtAKU8ZoDbgTCOE47l
         qIAEfjz1hJftAUFOHWWF6JNBAH81iGb5Wnff8FnHKQVC+zPo+bRssRqMtHp2cGviQ+Q+
         OPPApuUminF6zdstbCA/RqdM6tCcS+NfAieS4hCmmix7B+dv2xL5+uvhJrDP2oSiViIW
         jpZibibE14SiPVQ6U6FSf5Jr54btH6nYMRihsISq2HHabotkC9fCBSR6UAF/ragrA/Za
         n5Eg==
X-Gm-Message-State: AGi0PubIXiaGSnspLtrONH+DtMhrVaZy/RJ3PSD3rR5rGcFD8FeeKdGj
	d7ZRy8uDFWu6A25HBdK6K0He9en3zdKI4WgoX2o=
X-Google-Smtp-Source: APiQypJ5F5mvV3/v4I0Cc6H2EIbrldNvkJgolHgWrkEag+FUEdYFLFmxA75lydd16qu2/Ir8ugYysJVSJrQvY0aw/qk=
X-Received: by 2002:ab0:689a:: with SMTP id t26mr2472956uar.93.1588950959111;
 Fri, 08 May 2020 08:15:59 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv-+Cgkhu2uTdCThYKU+1X2-Js+TYZOKAtpq763_1KT9Tg@mail.gmail.com>
In-Reply-To: <CA+FhBv-+Cgkhu2uTdCThYKU+1X2-Js+TYZOKAtpq763_1KT9Tg@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 8 May 2020 17:15:46 +0200
Message-ID: <CANNYZj-cQ89zKSMDx7OKsxEs0uoa7kFLTT2i0CPzu4uyK240Mg@mail.gmail.com>
Subject: Re: [yocto] pkg_postinst_ontarget not executed
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007bc10e05a5247979"

--0000000000007bc10e05a5247979
Content-Type: text/plain; charset="UTF-8"

On Fri, 8 May 2020 at 11:32, Damien LEFEVRE <lefevre.da@gmail.com> wrote:

>
> If can find the postinst script in
> /var/lib/opkg/info/test-deployment.postinst and execute it.
>
> Since test-deployment is a new package, I would have expected
> pkg_postinst_ontarget to be executed
>
> How is the first boot detected on a poky image? Is there a way to detect
> if .postinst scripts haven't been executed?
>

The scripts to be executed  are written into /etc/rpm|deb|ipk-postinsts/
and executed by
meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts script
(which is started on first boot as a service).
Then they get deleted.

Alex

--0000000000007bc10e05a5247979
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, 8 May 2020 at 11:32, Damien LEFEV=
RE &lt;<a href=3D"mailto:lefevre.da@gmail.com">lefevre.da@gmail.com</a>&gt;=
 wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><br>If can find the postinst script in =
/var/lib/opkg/info/test-deployment.postinst and execute it.<br><br>Since te=
st-deployment is a new package, I would have expected pkg_postinst_ontarget=
 to be executed<br><br>How is the first boot detected on a poky image? Is t=
here a way to detect if .postinst scripts haven&#39;t been executed?<br></d=
iv></blockquote><div><br></div><div>The scripts to be executed=C2=A0 are wr=
itten into /etc/rpm|deb|ipk-postinsts/ and executed by <br></div><div>meta/=
recipes-devtools/run-postinsts/run-postinsts/run-postinsts script (which is=
 started on first boot as a service).</div><div>Then they get deleted.</div=
><div><br></div></div><div class=3D"gmail_quote">Alex<br></div></div>

--0000000000007bc10e05a5247979--
