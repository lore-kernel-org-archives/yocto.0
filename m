Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
 by mx.groups.io with SMTP id smtpd.web08.19547.1618237536620373392
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Apr 2021 07:25:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fko2OQGU;
 spf=pass (domain: gmail.com, ip: 209.85.221.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f181.google.com with SMTP id f11so2886515vkl.9
        for <yocto@lists.yoctoproject.org>; Mon, 12 Apr 2021 07:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BjnBr66mZLY6Rb9zVFj6wjQ3nxbtAPyHrsc9iKkhEoM=;
        b=Fko2OQGULH2vulLRlo+0cadEDp84v2xh9xhMXCWxyMepHaOZtNoQVzkKujwrFj/0WS
         uK0A/T4u17I2IFAoLIOe6WIyTUqUy/wCWN56UJ69SUE3iko34UJeJj7vQ9Nf+Q+UzsRq
         ygcTM3GL4d/OJlYA+i4X2mEbWh0JNCGN28v/zjOn54LHwGXbeuFV7NRoJzx/T9/vL8mV
         AKtvwUzFCvonMihVr6qs0IR4mTpPEN49FQ9MCfu/kQSBAhQG3VIesNwx2lfgX3UmJXou
         Ah86IX0zDkEUObsM099hu5GLvQSIO5dLSqsJykjZ+T3KLxOeerMQjS2Edz1x4Bg4tgKO
         A3tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BjnBr66mZLY6Rb9zVFj6wjQ3nxbtAPyHrsc9iKkhEoM=;
        b=s/pPP4P0NW3sXRo7BPBV8IoNPt8H7HbVWlWi3728zXH1RVtKHWukJJHpduuKbsA+Zh
         u2H4W5ZwELkqZ2/zA8G3oSqnbzRuiZwDd6/XI66yzOSzQtn5MkGEOeogMp1JPprzp0m6
         dpxiDi3NqHMk8oPW/fc+qPlNL+U1WMUowoXC00EPtD7znZOObENC1dW9v6Kb+5bXOawy
         EUPd3dU0mLBWsIqp0EpU95hVUu+bGJLb7C2eTEntC4CjV/ce77ixoRaYfUeBa2z0b8Gc
         uXaoYRQ/O4u8EGQL+mI9TIrVnfeNzFo7rJAQhAqOhZASoQ9Y3xTma3LbH5iA4hOZ2bAj
         yQQQ==
X-Gm-Message-State: AOAM532YMu4W7G3mfwkQLk7D5cHyooOZ0GUAW+7+uWv8h0LE6EBUfg4z
	mqwfB4QXBOU7psISVSYtVY3Df9uGgVa7w/jrEJc=
X-Google-Smtp-Source: ABdhPJxmYDyqtA0jOKsE5g7J/EYWD+bdwN3XF05ZKXwgAJyCZCJVz0Pelr9UP9zamzC1q7GSFbWIQUQ/hZk85ll9QFk=
X-Received: by 2002:a1f:4551:: with SMTP id s78mr19998001vka.7.1618237475852;
 Mon, 12 Apr 2021 07:24:35 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9xvzTtg-zaZk+X9W0R9FL-O+g-6eFURFbaeJu0TUGbOA@mail.gmail.com>
 <7847.1618236117006142456@lists.yoctoproject.org>
In-Reply-To: <7847.1618236117006142456@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 12 Apr 2021 16:24:24 +0200
Message-ID: <CANNYZj8CN=yOMCQG02wErhYtr415xO=H9QT+ptN+t517+0KHTQ@mail.gmail.com>
Subject: Re: [yocto] #golang: go fetches dependencies in compile phase
To: Juergen Landwehr <juergen.landwehr@gmx.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e9144405bfc745fb"

--000000000000e9144405bfc745fb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'd suggest you place that tarball into some artefact storage, and have it
listed in SRC_URI. Then the standard Yocto mechanism for fetching,
checksumming, caching and unpacking tarballs kicks in, so you only need to
make sure the tree is set up correctly after unpacking, maybe with some
simple post-processing.

Alex

On Mon, 12 Apr 2021 at 16:02, Juergen Landwehr <juergen.landwehr@gmx.de>
wrote:

> Hi Alex,
>
> OK, understood.
>
> If the "local download cache path" is well-known (this is not by any
> chance $DL_DIR?), then we could create a tar from the vendor directory
> (which is created when you call "go mod vendor" and contains all the
> downloaded dependencies) and put this tar file into the download cache.
>
> Before actually calling "go mod vendor", we would first check, if there =
is
> a tar file for the vendor directory in the download cache and if so simp=
ly
> unpack the tar.
>
> Does this make sense, or am I too naive and this is just nonsense?
>
> J=C3=BCrgen
>=20
>
>

--000000000000e9144405bfc745fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;d suggest you place that tarball into some arte=
fact storage, and have it listed in SRC_URI. Then the standard Yocto mechan=
ism for fetching, checksumming, caching and unpacking tarballs kicks in, so=
 you only need to make sure the tree is set up correctly after unpacking, m=
aybe with some simple post-processing.</div><div><br></div><div>Alex<br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Mon, 12 Apr 2021 at 16:02, Juergen Landwehr &lt;<a href=3D"mailto:jue=
rgen.landwehr@gmx.de">juergen.landwehr@gmx.de</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Hi Alex, <br><br>OK, understoo=
d. <br><br>If the &quot;local download cache path&quot; is well-known (this=
 is not by any chance $DL_DIR?), then we could create a tar from the vendor=
 directory (which is created when you call &quot;go mod vendor&quot; and co=
ntains all the downloaded dependencies) and put this tar file into the down=
load cache.<br><br>Before actually calling &quot;go mod vendor&quot;, we wo=
uld first check, if there is a tar file for the vendor directory in the dow=
nload cache and if so simply unpack the tar.<br><br>Does this make sense, o=
r am I too naive and this is just nonsense?<br><br>J=C3=BCrgen
<br>
<br>
<br>
</blockquote></div>

--000000000000e9144405bfc745fb--
