Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.10775.1583326867996193235
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Mar 2020 05:01:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KVtftRzd;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89D54E017B8; Wed,  4 Mar 2020 05:01:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kanavin[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.51 listed in list.dnswl.org]
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1064AE01773
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2020 05:01:06 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a33so610894uad.11
        for <yocto@yoctoproject.org>; Wed, 04 Mar 2020 05:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+pcP+rBKtcuVBpUJLxqXCGskARAMIWV8I9vejmviIqs=;
        b=KVtftRzdObkUqY0jPmqH/sukrAPm9KIyOXCm1PaJLCysuYVBw/Wrd4t1N38YYF+wPb
         VsLNaIpLocxmvBq1ano9x/xBm4LSi1sVeNOFYuKm8wEoGCIWRQWpQ8jPR3bNxwL2jMak
         5J7frZJTPsCzmr9RVAnQKakRgkHkK9fn7s4QYAfzUlZU0rmVRV/VBOTLxno9Zu8EPehS
         TwEnUTVASBYOXm06e5S/mx7RkwZsVKU6WZBzyWS5xkF+Ftc3wLLtbINe207VEcBGfzxo
         t7dQCbsaUP7rUERB7XZSrupJqz/EItRrLE3e1PSfhB+Cl6YOL6ZqtI+8PGPdaTrTPChi
         /f4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+pcP+rBKtcuVBpUJLxqXCGskARAMIWV8I9vejmviIqs=;
        b=FvB3Vrzer1ufVfduqopiomWh5OZfMpRCqRmnTmZvJxprXDYIl18hDDVFrxk12zuEZX
         JuNBYV2Ibv4xWNTDmjYN+X4bA1EJ9g//dzajY36ZjlLT3v11NWvpHpEFqmDXdSD+2Z5q
         liRHDTYkfTzrHehtXqLHFJePKFNeiYqBDstGKcDNHcY34BKw6DlV36hZOMzWJt66/jsI
         thNIODdOMfCcfEVWxOT7K8Ej7fEMthWwQOn0qh5IX33UNVUYiCDiiQz+siB0y3znRzVj
         iCO0OyjDS5E3OXv4UlTzuj1RsDZGaMz6kADFyF6XG0jNii7S9MAMIBR+ZjrMtRJOmtBp
         QxkA==
X-Gm-Message-State: ANhLgQ3bKafhtVLnZnH2INSdHkBOEIyAR3u/U38usZwdLEHClx1QNq/T
	SQEOlDnNM1f2pl8t1d7cfgJ11RqzFeCXGepS7xQ=
X-Google-Smtp-Source: ADFU+vtmlnl5rbWVfIGMKtwtU6LaNOgK7DEZUGIoIKa7eswFUc/2709lk5zjVPxD9A8JDyxnGaObNO1S/J6zLcDJCiY=
X-Received: by 2002:ab0:7802:: with SMTP id x2mr1371602uaq.100.1583326866213;
 Wed, 04 Mar 2020 05:01:06 -0800 (PST)
MIME-Version: 1.0
References: <107c01d5f174$bbf566a0$33e033e0$@gmail.com>
In-Reply-To: <107c01d5f174$bbf566a0$33e033e0$@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 4 Mar 2020 14:00:54 +0100
Message-ID: <CANNYZj83rytWFgGPj6BS6R874eqa6_KCoeoMA5afgnx-_YBunw@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status WW09'20
To: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, 
	OE-core <openembedded-core@lists.openembedded.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="0000000000006c8d7305a0070368"

--0000000000006c8d7305a0070368
Content-Type: text/plain; charset="UTF-8"

On Tue, 3 Mar 2020 at 16:59, <sjolley.yp.pm@gmail.com> wrote:

> coreutils ptest blocked on libmodule-build-perl reproducibility issue
>

I sent a patch for this.

Alex

--0000000000006c8d7305a0070368
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, 3 Mar 2020 at 16:59, &lt;<a href=
=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>&gt; wrote:<=
br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div lang=3D"EN-US"><div><span style=3D"font-family:&quot;Arial&=
quot;,sans-serif">coreutils ptest blocked on libmodule-build-perl reproduci=
bility issue</span><br>
</div></div></blockquote><div><br></div><div>I sent a patch for this.</div>=
<div><br></div><div>Alex<br></div></div></div>

--0000000000006c8d7305a0070368--
