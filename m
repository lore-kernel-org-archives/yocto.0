Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
 by mx.groups.io with SMTP id smtpd.web12.25003.1595192250828164004
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jul 2020 13:57:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=JnlGmVKf;
 spf=pass (domain: assonance.org, ip: 209.85.161.48, mailfrom: aaron@assonance.org)
Received: by mail-oo1-f48.google.com with SMTP id x2so2820691oog.5
        for <yocto@lists.yoctoproject.org>; Sun, 19 Jul 2020 13:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8mkkyKygFDOXaIvI+VtGHvbcbOqB94E+UpNB7SaGe/E=;
        b=JnlGmVKfx3+Vq6SvCC7uNDi4w1xYh/dgYtd2bPEHQXidMqD7VZdvEGGRwCnVxJP1c2
         qtqCzVj3vYBKqfoQzb8hPre6RZNdeIH6C2a82TYNmnqPwDSSWtJ/iy0BYgZYwOdcQA0h
         T9FUfdWyD51p+jz+FhyT7diWDlRl6M3Ta9Vhzqa2vKYNj94a1vnm1jTJI7/8rKSY23tO
         jeN2F7bzPrbYmcEAgNs1IO46Y828g8CJMPsADE42Kbmc18yUbX+7zhTDD+TrOVgj+Atr
         OoXaNUz7DASytA/RcVTo9HcHva0HUPOUULD8tDj09ykkMT99NsgzsdPkGro+FASwRGs9
         qeuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8mkkyKygFDOXaIvI+VtGHvbcbOqB94E+UpNB7SaGe/E=;
        b=Mo901xDV8nb7oeLNJKkhJgaWeo2q00aO//5dxKY2wbKJXDaxArzUT5QC7vxM9JVc9F
         fCa3oFWt0FNnEdryx5uWYvCHsbxXXMxIJ8OgaLA+2lLJd6RBCjnXnn6Z3CL9LKxIFQ4C
         1z1rNb00DSVFQvfJK8qY3qIclln4gKL7ZrwXmyZ+Ie+aVuhxghRQxIpJ/olLDzzXz8C0
         Y9+mRMfXgqLIGgsIp7X82UfhlWgb1ROdvLB8tfaOTWD4LG15KVWmliKiHU4UNLKcf0e6
         zI+EcH7b1d34p0dHE51+v5RHNmWCy1StoEc06weX2h6ZaOGbe9GYclxCnGkKCQz37GTf
         o+Ng==
X-Gm-Message-State: AOAM532g7beHYmntKYaAA+aBzmHnQmt6/2MNrGZtzIGr4hrKznTmFGXH
	mxKhSPSynNY9R8DltizEGiajt2OqjoeeLrC/7ikczQ==
X-Google-Smtp-Source: ABdhPJxkkJRaiWRv9j5cWteVLN0clxt+v0fI5qnBtUwYK7h9u1HeNQmxy23jk7TUSIs1/g8dKX1jLfVIEDy+B4IFuGQ=
X-Received: by 2002:a4a:3c44:: with SMTP id p4mr17094658oof.39.1595192250002;
 Sun, 19 Jul 2020 13:57:30 -0700 (PDT)
MIME-Version: 1.0
References: <DgWj.1595017061230733737.ILXN@lists.yoctoproject.org> <9292.1595017405791806988@lists.yoctoproject.org>
In-Reply-To: <9292.1595017405791806988@lists.yoctoproject.org>
From: "Joel A Cohen" <aaron@assonance.org>
Date: Sun, 19 Jul 2020 16:57:19 -0400
Message-ID: <CAFSZm+hn6=QvhpYHrN4pMqA3fhsjen9pc4fPLdBUr5YrLmrR9w@mail.gmail.com>
Subject: Re: [yocto] Adding libgpiod to Yocto Warrior 4.19.35 image?
To: Scott Whitney <sdw@inea.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000069018e05aad1a34c"

--00000000000069018e05aad1a34c
Content-Type: text/plain; charset="UTF-8"

You would need to add libgpiod-dev, presumably, to get the build
requirements.

On Fri, Jul 17, 2020 at 4:23 PM Scott Whitney <sdw@inea.com> wrote:

> I should also note that gpioinfo and other tools from libgpiod run as
> expected on the target, and that /usr/lib has libgpiod.so.2
> (libgpiod.so.2.1.1) in it.
> I would also like the header file to be put into the image so that I can
> build/run executables using libgpiod on the target.
> 
>

--00000000000069018e05aad1a34c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">You would need to add libgpiod-dev, presumably, to g=
et the build requirements.</div></div><div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 17, 2020 at 4:23 PM Scott =
Whitney &lt;<a href=3D"mailto:sdw@inea.com">sdw@inea.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-c=
olor:rgb(204,204,204)">I should also note that gpioinfo and other tools fro=
m libgpiod run as expected on the target, and that /usr/lib has libgpiod.so=
.2 (libgpiod.so.2.1.1) in it.<br>
I would also like the header file to be put into the image so that I can b=
uild/run executables using libgpiod on the target.<br>
<br>
</blockquote></div></div>

--00000000000069018e05aad1a34c--
