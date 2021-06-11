Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web11.101.1623430221080485755
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jun 2021 09:50:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KMbOSAus;
 spf=pass (domain: gmail.com, ip: 209.85.217.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id 68so4117191vsu.6
        for <yocto@lists.yoctoproject.org>; Fri, 11 Jun 2021 09:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XYCmeNhb9qso7YhB2ABkuH1wWEMvL08Oa4Q0Sb26beU=;
        b=KMbOSAusNIfbWjn9LYQE+IbHqS2K3u0rsG2z3wPMKz8HTjMkuhM0aywO0iDD/5laOb
         UMOMgQ3QpHADNkVgVNSSoiAzo0P9jXX/vgE/sOJt9YLe1HRZ/fmBOncIatQbAOYD028F
         LLzD+8TPKKhVzBadZjBTKy3B+ShTqyDOyrxyP1qhTjDs6KYEdF56k4yFKYvdK9fSd8iQ
         HZy3xsxuO2sQ3fr/JMy4Gsuvk+x3ZBxyIN5hK6d2kg8fsV6VkVbEmexJOx9waGUAxpSP
         rRiqMcO2u5tNzLBXuKeVUYQm9b7/i3no4hXOjHEAUSc+etCRcER7uPkViL8lzGzx/fMj
         Qt2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XYCmeNhb9qso7YhB2ABkuH1wWEMvL08Oa4Q0Sb26beU=;
        b=tCQwnTkZkLpVXdpBI3l7W6/wRe8r+ZDdFL4nZyG6JGTxiJp/3coN0NA0konKCoRC7P
         s3V9Hfnpd5uAYolw0Gjc/i+UEAKEGt6LHuSx1wTqCjzb8KVnEq/U6CVRfAZZ1q1O2tGi
         mcN7Gdj24BqGSvy6ocdO+7qKJ9/WDzyRmPucLtUDNkonosbLjcgGftYE8MQkGUXuojY9
         A0L2+XMNkj0Q4XNsx0SLz9pV6MECSp9iXwF/sxxObKaAzNnMBUZ/586ibqA3+OuS9rt0
         Q8Niw35pk80UyLkJ+Mw17pXLrWggZ5enw0NT8fi9odUyjKjADy6l970pob532pM8pToS
         XcgA==
X-Gm-Message-State: AOAM53113lXucssDTzyRX49DyG6dyhFOlQ6kefD8DufQv6eS+6/l0N/W
	B7HFUHpkpFhw8eL2DW1qmW1cv7pi4UDNXiy+2/w=
X-Google-Smtp-Source: ABdhPJw62xkzpoK988sJJhlWfZzwv/7QpLfclWUuZfrQLolLnR/0nvN0/0iw35yqPDmc2Uy2qStO3WxZ9sxUu8OWIdE=
X-Received: by 2002:a05:6102:23dc:: with SMTP id x28mr11269578vsr.31.1623430220230;
 Fri, 11 Jun 2021 09:50:20 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9r_eZ8ZHEo801viRNuBekefmvKuqtLfKsKTQncw+uw-w@mail.gmail.com>
 <9176.1623407260794777165@lists.yoctoproject.org>
In-Reply-To: <9176.1623407260794777165@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 11 Jun 2021 18:50:09 +0200
Message-ID: <CANNYZj8S7mtgudxKEirgTxkSFP-hRgatRhYPmu+1beQY=2ksrw@mail.gmail.com>
Subject: Re: [yocto] [meta-java] icedtea7 fetching error
To: stefano.fiore84@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000098351805c4804d37"

--00000000000098351805c4804d37
Content-Type: text/plain; charset="UTF-8"

I have reconfigured our build system to use an internal server via bbappend:

ICEDTEA_HG_URL = "https://internal.artifact.server/icedtea/"

placed all the tarballs there according to expected locations, and it works
just fine.

Alex

On Fri, 11 Jun 2021 at 12:44, <stefano.fiore84@gmail.com> wrote:

> I have also the tarball but the build will fail later in the configure
> phase stating:
> icedtea7 "Invalid OpenJDK source zip specified".
>
> Is there something more I can try ?
>
> 
>
>

--00000000000098351805c4804d37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have reconfigured our build system to use an intern=
al server via bbappend:</div><div><br></div><div>ICEDTEA_HG_URL =3D &quot;<=
a href=3D"https://internal.artifact.server/icedtea/">https://internal.artif=
act.server/icedtea/</a>&quot;</div><div><br></div><div>placed all the tarba=
lls there according to expected locations, and it works just fine.</div><di=
v><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, 11 Jun 2021 at 12:44, &lt;<a href=3D=
"mailto:stefano.fiore84@gmail.com">stefano.fiore84@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>I have also =
the tarball but the build will fail later in the configure phase stating:<b=
r>icedtea7 &quot;Invalid OpenJDK source zip specified&quot;.</p>
<p>Is there something more I can try ?</p>
<br>
<br>
<br>
</blockquote></div>

--00000000000098351805c4804d37--
