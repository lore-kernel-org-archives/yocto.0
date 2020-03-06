Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.998.1583531631799330346
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Mar 2020 13:53:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cWbEjLHF;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33EDEE017E0; Fri,  6 Mar 2020 13:53:51 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D52BFE017DB
	for <yocto@yoctoproject.org>; Fri,  6 Mar 2020 13:53:48 -0800 (PST)
Received: by mail-vs1-f51.google.com with SMTP id k188so2524524vsc.8
        for <yocto@yoctoproject.org>; Fri, 06 Mar 2020 13:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4wY4ewjBrJDFUgzfE1T4/ERxn3lEpfkBkuf0g0qecbc=;
        b=cWbEjLHFri26XnLISXkCXQAXGVgAyQWb6+OIXdzqjaGFH4ZuuLgZJmVJLHnSuggfxC
         5hxbm9bFWoBv7eNX07Pb0t9Su4KWj0VNl031jdBLhfW1KXRc8qFI2BuFO2pEC9446x9W
         PxsgTqwljMiAWZ2EmjdTs8Ebs6IBhoDZC8Ztt19jkPs/zQKtxOcujzgzYsXWcQOPirhr
         60rh9mWBeRS7ArGbiHZHVvSfGjyv8AmHwRSM6VlpoxYLNfCJ6Npqsd8xw4sDtJxOCCuW
         aW6cWvn81zomIHD086nhzYky123fsnlwUBzoyUYi+/XQCc2t+q39rGKPIuIZVnvuTjWt
         kT/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4wY4ewjBrJDFUgzfE1T4/ERxn3lEpfkBkuf0g0qecbc=;
        b=JhujzE9nCdGHx8ZJtGAlwaeBuVcepVXR719+Qc3cw0QS/9ofvqrZsCwFgP0us4YgdG
         DNV0s+6IQ+j9UXb+7IwO7EQXdBgP/pLpldiEwc+NbUHJYN4buPD6UAOPOYXMMW1UJQdc
         u4B6D2Rvh0yiJ/xdKr75Pc3XUn/jz8EBlXmi0cUQaAV81rksh90tjXfoAAQIaIYKrLvc
         rIOh9aqiqh49JS3+tYWfcAwclT8Q9wb5Zv4waYfEDHHJ+c5+RuoPukWNgCyxQshRhvhS
         TSV6fQBeuO9nt0u/hIO/QzguOn+ipw78oX8mCo26K9KddeWPm97pEAVdS5YZrmhxMkPf
         is+A==
X-Gm-Message-State: ANhLgQ2zTm0iTeiWsu43kkIPYCKM9cM7Adbw0tYsEQ+Y9w4x1N9TKvVZ
	K78+ETFmkzZ0T/G6eQbYOTf4BCq8WZJubbpwSlM=
X-Google-Smtp-Source: ADFU+vtYrU8+fT/hFsOL9qE3Zo3sZyWsayPOV61ZUs6kzsZDeClCe8Xr/ggOx7CgsZ46cLN1AXoN3Lvi3uydoC1MCt0=
X-Received: by 2002:a05:6102:503:: with SMTP id l3mr3613236vsa.94.1583531628211;
 Fri, 06 Mar 2020 13:53:48 -0800 (PST)
MIME-Version: 1.0
References: <107c01d5f174$bbf566a0$33e033e0$@gmail.com> <CANNYZj83rytWFgGPj6BS6R874eqa6_KCoeoMA5afgnx-_YBunw@mail.gmail.com>
 <efd0caee261782a0b8d752c728c25be23f69cbae.camel@linuxfoundation.org>
In-Reply-To: <efd0caee261782a0b8d752c728c25be23f69cbae.camel@linuxfoundation.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 6 Mar 2020 22:53:37 +0100
Message-ID: <CANNYZj_Q72+SDFEeq68d214wt+Ft4NA0gUYHEYsdCmzkv+b_pw@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status WW09'20
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Stephen K Jolley <sjolley.yp.pm@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>, 
	OE-core <openembedded-core@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="00000000000030b20d05a036b03e"

--00000000000030b20d05a036b03e
Content-Type: text/plain; charset="UTF-8"

On Wed, 4 Mar 2020 at 23:42, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

>
> Just FYI I think there may also be a couple of other packages coreutils
> pulls in and they may also have reproducibility issues (gettext-ptest,
> glibc-locale-* and procps*).
>

Patch for gettext also sent :) glibc-locale and procps I could not
reproduce :-/

Alex

--00000000000030b20d05a036b03e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, 4 Mar 2020 at 23:42, Richard Purd=
ie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie=
@linuxfoundation.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><br>
Just FYI I think there may also be a couple of other packages coreutils<br>
pulls in and they may also have reproducibility issues (gettext-ptest,<br>
glibc-locale-* and procps*).<br></blockquote><div><br></div><div>Patch for =
gettext also sent :) glibc-locale and procps I could not reproduce :-/</div=
><div><br></div><div>Alex<br></div><div><br></div></div></div>

--00000000000030b20d05a036b03e--
