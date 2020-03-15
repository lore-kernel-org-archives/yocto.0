Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
 by mx.groups.io with SMTP id smtpd.web12.44266.1584288145467721220
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Mar 2020 09:02:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kW9sANGg;
 spf=pass (domain: gmail.com, ip: 209.85.222.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f47.google.com with SMTP id o16so5549020uap.6
        for <yocto@lists.yoctoproject.org>; Sun, 15 Mar 2020 09:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VwD/d3y71lgRn3+EpejWmwFQs6P+acloPE9/8N4ASQ8=;
        b=kW9sANGg6mpV6t6/tTV0KSBDvKkwFffbrz/XWRvwrsXJCxZHxudVKCZX7e/UadNf4G
         rqSWJW6gl/2VvbHvK7LcvTEnTU+aSosYcxNvQXfpMu0KFSvwnwdcekQF0HEOHEYVInpt
         +jS0w1+qVgLoexKpCIe1CMu3Jq2tILvYj6uM65QvIvBg0jFpnezE8Ql5aiycjXv/af8h
         1lJVRg0cXShCL1UlAwFZ+fJOuN51PPTXNWvNzPzOFQBd7/W6J4ME9Rm7J4woyrK43y93
         5OgE+1oaNkQe6CrxC9TUWh33RxlkA3t1GvoGs2yD5KU6JkzdSyx+sFnMv8BBOK5lUmWw
         /hyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VwD/d3y71lgRn3+EpejWmwFQs6P+acloPE9/8N4ASQ8=;
        b=XCCIYnefg5+UXxOZQ1XVESv0NA7xca8TZNtLRgllZllkY9OkVz6MeYPt+R3Ovy23oX
         qa1/82nA+T4m8duBneeOt8vW/1IjihHpK7+TiI15sobpC8b2yI7iLDr80opyp0pJpzfd
         4NbT9TiRQDHPt6x23m2xfo0DOzhT360qxMpCcOyg4oNT9G/h2BBehBIl4aRSDb4seLt/
         6o0JiffathmDpgT2RiaujHBot+KqBSZXo8/G/ntsPPbxOOQvpFRRA/XyNUkxFdJc8wD8
         cPgXC/Txo+c6cLIwb2kWrUrPaWrbqMw6voparvC0kMLaxJizZcVaw1DQIVwMzT0l+YAQ
         0kCA==
X-Gm-Message-State: ANhLgQ0t1VeS+UA5iUiCKU8CDpqRpKajlUy/qMV6NgWilKNK/csPDpWf
	gZvGtUuKzGACmEifnW/jGOwsjIiVsmJHuFIkf2Q=
X-Google-Smtp-Source: ADFU+vurz63nqdCpfuo3Vnh+GglByLqkq9HWlc1RsJgHrl+Zqxuz9gQMgKEXrwm1cW3m/AziFN2CpDoijdcY1fL8Bto=
X-Received: by 2002:ab0:7456:: with SMTP id p22mr6184882uaq.93.1584288144632;
 Sun, 15 Mar 2020 09:02:24 -0700 (PDT)
MIME-Version: 1.0
References: <cb73c40e-6eed-d626-513d-c1012a0f9f32@googlemail.com>
 <20200313162915.GM1578@denix.org> <ec9fb315-af0f-8d9b-18aa-43640e6a7df7@googlemail.com>
In-Reply-To: <ec9fb315-af0f-8d9b-18aa-43640e6a7df7@googlemail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 15 Mar 2020 17:02:13 +0100
Message-ID: <CANNYZj_==0Xsvp+_6YnkPDUSGOFKJE7orEQNubaTr_giG+qv4Q@mail.gmail.com>
Subject: Re: [yocto] git fetcher: does not execute git fetch --tags or similar when HEAD has not changed
To: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Cc: Denys Dmytriyenko <denis@denix.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000152fce05a0e6d424"

--000000000000152fce05a0e6d424
Content-Type: text/plain; charset="UTF-8"

On Sun, 15 Mar 2020 at 15:04, Matthias Schoepfer via Lists.Yoctoproject.Org
<matthias.schoepfer=googlemail.com@lists.yoctoproject.org> wrote:

> 2) It allows for very convenient bump of versions. We develop a product,
> so, version bumps are on daily or weekly basis. All that is needed is to
> rename the .bb file. No need to edit SRCREV.
>

You can trivially script SRCREV updates ('devtool upgrade'/'devtool
finish'). The disadvantage of using tags is that you lose reproducibility,
as tags can be moved or deleted, and so I wouldn't encourage this practice.

Alex

--000000000000152fce05a0e6d424
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, 15 Mar 2020 at 15:04, Matthias Sc=
hoepfer via <a href=3D"http://Lists.Yoctoproject.Org">Lists.Yoctoproject.Or=
g</a> &lt;matthias.schoepfer=3D<a href=3D"mailto:googlemail.com@lists.yocto=
project.org">googlemail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div>=
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">2) It allows for very convenient bump of versions. We develop a product, =
<br>
so, version bumps are on daily or weekly basis. All that is needed is to <b=
r>
rename the .bb file. No need to edit SRCREV.<br></blockquote><div><br></div=
><div>You can trivially script SRCREV updates (&#39;devtool upgrade&#39;/&#=
39;devtool finish&#39;). The disadvantage of using tags is that you lose re=
producibility, as tags can be moved or deleted, and so I wouldn&#39;t encou=
rage this practice.</div><div><br></div><div>Alex<br></div></div></div>

--000000000000152fce05a0e6d424--
