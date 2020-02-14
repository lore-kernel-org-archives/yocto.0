Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web12.6262.1581687032372754588
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 05:30:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gi+TNpB8;
 spf=pass (domain: gmail.com, ip: 209.85.221.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f176.google.com with SMTP id i78so2592043vke.0
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2020 05:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HQMGvJwaUvf8Dy6T9/YIDgqJNMf68sIeQvvGH7Uqsgc=;
        b=gi+TNpB8a17h6OqmXmR/Y0iFAQGAmohSIJwWAEzlvhx7RG6t8xkQT5rRvntDJWyTo1
         VNo5SnJzb4U+uDUjMvMZecGz9XilXvRllVy45P8B9rDxG0meyU4SlYQRoPWO9MB1AeeJ
         33gi3gqsR4RN7NIIxtBApe0bn/YGmHY1mAvsd1DPJrF56+54U4JgexC7/OEZoHPn3PTV
         SXq8uUPtYI4X7+qbNpRV2Cdev6viWxaFwe4IQx0EJDJDJFJ7Uf4yfPBZ60KyC5LzmmAp
         cKqGXgMe1EQWiRLzNL+5x+Zc2FSPb1BfyQPf1T1XOsiPUR15uVnwPTHXQGdl3vUjaEY6
         hKbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HQMGvJwaUvf8Dy6T9/YIDgqJNMf68sIeQvvGH7Uqsgc=;
        b=Du35HF9VpbDWwEskjMvY8pEiLFUTowIxodiP8/v7HnXK2ZW7CEUwrxp4oeS4fIP3bp
         msTV9YD6YyvkqD7GEQO0giKPajlBR1h7AitIpoYiBvt/pCQBpfyZfLbBHblaPeRzmCta
         fJZctQjGIHeH2mH3hSwZJlnC+mBTibLKrhIhl14NjOw9ziW7v+uwsCGisM7XlC77w+2p
         CQt+eoeJMO8TvZwFyCcNJt2nAlTPitKQ00Rl0/Em4QYFNhkpg+jGLf5sj9+DKgBdlsgU
         HIbhHSF1GlaQkHN9VxigM46XuYTX8U8WMhSbDV8I0+2FdQkNtE0sxoDxNhJ+397j29Fl
         3YXg==
X-Gm-Message-State: APjAAAVBxL/yMnp1L8tU4Q7Pusp9H9xf0f2KJREoK85c97Yli8HvOuXh
	K22gF4JZRFCc9d0SS3MmuRYsGZ/SxCJhf8p7+Tc=
X-Google-Smtp-Source: APXvYqzfATnKiulwsf8XjMad9Qbv1rWXuG7sNcLwa/VU2Aq1vpTl9QriYQwjogBYo4wLubxSb5HPuyj1Tu2QguTwCZQ=
X-Received: by 2002:ac5:cdcd:: with SMTP id u13mr1726861vkn.0.1581687031420;
 Fri, 14 Feb 2020 05:30:31 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj8TgCiE8uWM9Y=5ryNdx6u-GmG=+tqLBZC=qjjhpe+moA@mail.gmail.com>
 <15890.1581686263188474979@lists.yoctoproject.org>
In-Reply-To: <15890.1581686263188474979@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 14 Feb 2020 14:30:58 +0100
Message-ID: <CANNYZj8Muj3Rnf9VXfiRJqhdpOsJdFQKQdP2GscBNnmX4cUu9Q@mail.gmail.com>
Subject: Re: [yocto] Incrementally building constantly changing application source in a workflow-friendly way with #yocto
To: Pieter Smith <smipi01@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a75afd059e893551"

--000000000000a75afd059e893551
Content-Type: text/plain; charset="UTF-8"

Can you issue a 'bitbake-dumpsig -t fetch recipename'

(writing from memory, so exact syntax may vary).

This should show what goes into the task signature for the fetcher, and all
individual files in src should be in it. I'm fairly sure I saw this on the
recent master branch.

Alex

On Fri, 14 Feb 2020 at 14:17, Pieter Smith <smipi01@gmail.com> wrote:

> Once `my-application` is built, changes to the contents of `src` does not
> result in a rebuild for `bitbake my-application`. The contents of `src`
> also isn't synched to the $WORKDIR. 
>

--000000000000a75afd059e893551
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can you issue a &#39;bitbake-dumpsig -t fetch recipename&#=
39;=C2=A0<div><br></div><div>(writing from memory, so exact syntax may vary=
).</div><div><br></div><div>This should show what goes into the task signat=
ure for the fetcher, and all individual files in src should be in it. I&#39=
;m fairly sure I saw this on the recent master branch.</div><div><br></div>=
<div>Alex</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, 14 Feb 2020 at 14:17, Pieter Smith &lt;<a href=3D"=
mailto:smipi01@gmail.com">smipi01@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wi=
dth:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-=
left:1ex">Once `my-application` is built, changes to the contents of `src` =
does not result in a rebuild for `bitbake my-application`. The contents of =
`src` also isn&#39;t synched to the $WORKDIR.
<br>
</blockquote></div>

--000000000000a75afd059e893551--
