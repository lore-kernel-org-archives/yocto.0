Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
 by mx.groups.io with SMTP id smtpd.web11.15700.1595325818151006308
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 03:03:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@globallogic.com header.s=google header.b=JzTMGoVk;
 spf=pass (domain: globallogic.com, ip: 209.85.222.196, mailfrom: oleksandr.s.popovych@globallogic.com)
Received: by mail-qk1-f196.google.com with SMTP id z15so11882587qki.10
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2020 03:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=globallogic.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kNkkZSgx/cCW3gCGu/K1QHkzqXtJG2PA9tbRt9usq/c=;
        b=JzTMGoVk/g3PJerKcbCC32O/x9BWW7w1wemcxpRLOG4Mg0n6AjCyJIKH8QY/SutBg9
         vhvWBz6FVHFYriRi3kLjdA5y9tRuvSLzkJKeZ1zO7LTmRaZvb0hfm2efp/4XcVyH9/IC
         hRtaRQPapEOtNn/fdGgc/fgkJrrqlNQ5mBX/uH3hCpZrxgJXkR17kj+KjhUrMDYHcC06
         IWW1ln4eZu2ZA7Me5mm9tzJHyQJybIYIDbRoEWJdFEbANAJlFn80yKTIqNjFdZw0zjWJ
         CvtDcek9U0HeIrlqjdk+7xOIKfhlrKYgGq5agC4Krjo3JKdZlI8GPlrOM0KmsLvhsRhz
         0BeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kNkkZSgx/cCW3gCGu/K1QHkzqXtJG2PA9tbRt9usq/c=;
        b=C1VO7MKMMQOiEjRyyK0N3OJydJuG3Te+1tj9t5+TfUVFzpkuOQ7fMNmqJS2UcUhoMR
         tBkmI7KNpjGscZd0r835ETkOIHO1OhkZB9alPsh0rwwgsUUa+J9pMN9kDN24Dk0UWPRq
         HG1xpGdSryOUZW27E7g9cXfLoaRYoqayZsK/PeXr2zkhyxQR8EVd3W9rD3tiv6WzozuT
         4nt7lM11ols+/AA/KYM0mRiqwK4i3A8ITCwAMiZaLRZH+P3f67FkLzZPscw2eMxRF3yJ
         7OAnAY/z25RnF9eKsP+JMTvtDyhN3q4zz/+0R0E6bxlBzuW/7iTi4sACeodWU36WPBIk
         ER5Q==
X-Gm-Message-State: AOAM533FT0VLTpRtm3Nt2zwZpH3gUCAsi6qjmwlXiJoaCErTxkaiQnlJ
	UIBaNpssCBMNBMch5/nd00hVC5yw8pKF1/0r1LUGFw==
X-Google-Smtp-Source: ABdhPJxqhVVIppeSJX00jD2LGPtnLS9FHr47ucXjqn4m6ESPt+r6RaCWdPcQag+iiD4Xin+RP82hbFoGClgMgtzz3Yc=
X-Received: by 2002:a05:620a:144d:: with SMTP id i13mr19990281qkl.207.1595325817286;
 Tue, 21 Jul 2020 03:03:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200718160325.18297-1-oleksandr.s.popovych@globallogic.com> <CAJdd5GZtu8Noxd4Cp1ezLuTzwo3bjmHCkt5YJ4hFVC5B_vkB1w@mail.gmail.com>
In-Reply-To: <CAJdd5GZtu8Noxd4Cp1ezLuTzwo3bjmHCkt5YJ4hFVC5B_vkB1w@mail.gmail.com>
From: "Oleksandr" <oleksandr.s.popovych@globallogic.com>
Date: Tue, 21 Jul 2020 13:03:26 +0300
Message-ID: <CAKqUGW9P90s1Dg=OfUiFR4B54xq9tH6Ej1cZzHxTOnb2=MjWsw@mail.gmail.com>
Subject: Re: [meta-mingw][PATCH] expat: Switch platform to Windows in CMake toolchain file
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello Joshua,

On Mon, Jul 20, 2020 at 8:47 PM Joshua Watt <jpewhacker@gmail.com> wrote:
>
> Hmm, this seems like the kind of thing that should be set for all
> mingw32 builds....
>

Do you mean "set for all CMake-based recipes by default"? Maybe this is a better
option than adding the same function manually.

But then next question appears:
Should this be done by duplicating already existing "cmake.bbclass"
file to "meta-mingw"
layer and making changes there, or creating new class that inherits
"cmake.bbclass" and
adds necessary changes?
If there is a better way to achieve this goal, I`ll be glad to check it out.

Thanks for your attention.
