Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1597.1585006258362639712
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 16:30:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=U/ezww0W;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: karthik.poduval@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2268E018C1; Mon, 23 Mar 2020 16:30:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (karthik.poduval[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com [209.85.222.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A73E6E018BF
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2020 16:30:56 -0700 (PDT)
Received: by mail-ua1-f66.google.com with SMTP id y17so1847657uap.13
        for <yocto@yoctoproject.org>; Mon, 23 Mar 2020 16:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r979bEb++Vnrm931XhYdCcKqq1bmTdjxOsglfy7U0ZY=;
        b=U/ezww0WGjzTDaxHKzRea2R0qy+atnAEO5bMJOlFtfxcPSdJwDqBT9QdJLBm0bKnAo
         pqTbp2XThExq6eSwfTa+/uVbES4+qxI7qkg6uVl5qBDTc7mowuzyEPsuqSF1IVuXVoPS
         n0TqaOVPorufqprEXwjB7W8l+k6jbf1wab+ph4z07KLbtNY2ZMlwibZUYDQ0O2rvguNO
         seIdngsWEJa5gkSD1v41yYGmP/O/iKcWTh3jjcneY6cQbc8C6X8V7bH6IluSf5ziphCN
         CMtuwoAwDeP0CDQfc6wlwPqAGe5fDCkogSfxtXB8twjfLbfMaSnTpb3SKkZUBVlxfCY0
         Ek5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r979bEb++Vnrm931XhYdCcKqq1bmTdjxOsglfy7U0ZY=;
        b=j1ANQzDlj2bF1kRc7tIg/BpRO+uok7XEguutaX/EtTXcBaY9+HC5P0NHxPFeMdGNlN
         EEnboz5zKcfMIJ12ixqw2b4sGjYYhVjoeI5UB0sYN90EYUOAiuRcKJ4zhGi1Tji50StZ
         +l3LmlazXA/BRv0yBPtTZq3Jz/aCbcneSlLPN4WxRcHlcpsZRPer8IM75lqFD6mH1FQM
         sFj+W4w9Zklugwjob8v9DBoKZ77aFfsie8OULbTJDQC96og9i6jI1IOZERjrnPtU4UmH
         kgYx6yTqVy5egd0NM5j74y3yt/WKOSHuieEHgSdWG/4oNprernLN+V7fmhFdU9rHAPAl
         Lmxg==
X-Gm-Message-State: ANhLgQ3/WJxqP21e7202iNKcaa/Y5bybstq0wUhd8OoSkmdeuJQb4C4/
	/p2tkekDeaRqIDggDzwZ4WSEvLoN2FZxL1E13dE=
X-Google-Smtp-Source: ADFU+vstxsPvorjKAT6U+o3RAGifwg5+PqZjpKinhOfF1aCTWIYf2XmNduKxkrg8Ka9ALhessbhllDJFYf2q7PfqZ0k=
X-Received: by 2002:ab0:49e4:: with SMTP id f33mr15317024uad.86.1585006255517;
 Mon, 23 Mar 2020 16:30:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP0Ok8cBje8vofUwqo2ac5moA7Yj3OiJNO9DDbJJXxCJUsEtA@mail.gmail.com>
 <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com>
 <CAFP0Ok9cSbcFzYELJ+D65aw4hMGXegfK=qr4Ay79wsJO2TPLHA@mail.gmail.com>
 <CAHUNapRTV8SgnDfhPGY5G8kaFyK9g=qK2GG7vOPkmmuj-Ugv7Q@mail.gmail.com>
 <20200323111421.GA20231@xn--80adja5bqm.su> <CAOf5uwmWFFZr5QvWp6kQazzU1YkmcmdxNEBZp_9WXwm0dOvJyg@mail.gmail.com>
 <20200323214537.GA24482@linux-uys3> <CAOf5uw=4XW=7rm5WdGUYbGoiv7M24NdwSOMYW65BqkFvvQSx6w@mail.gmail.com>
In-Reply-To: <CAOf5uw=4XW=7rm5WdGUYbGoiv7M24NdwSOMYW65BqkFvvQSx6w@mail.gmail.com>
From: "Karthik Poduval" <karthik.poduval@gmail.com>
Date: Mon, 23 Mar 2020 16:30:43 -0700
Message-ID: <CAFP0Ok-N3nTtZhOoYZ=F=F1MGgZ5h4c5ooy2yHgr5akshd5uOw@mail.gmail.com>
Subject: Re: [yocto] yocto on tinkerbaord using meta-rockchip
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Cc: Trevor Woerner <twoerner@gmail.com>, Sergey Bostandzhyan <jin@mediatomb.cc>, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Thanks for the tip Joshua,

Like you suggested it was power supply related, I am able to boot the
board now with a 3A power supply.

Hi Tever,

Yes I have my console connected to UART2 and it seems to work fine for
the yocto build. For the tinkerOS image neither UART1 or UART2 had a
console output but the board booted successfully over HDMI (I didn't
test it any further).

Appreciate all the help everyone.

--
Regards,
Karthik Poduval

On Mon, Mar 23, 2020 at 2:48 PM Michael Nazzareno Trimarchi
<michael@amarulasolutions.com> wrote:
>
> Hi
>
> On Mon, Mar 23, 2020 at 10:45 PM Trevor Woerner <twoerner@gmail.com> wrote:
> >
> > On Mon 2020-03-23 @ 10:31:05 PM, Michael Nazzareno Trimarchi wrote:
> > > What about the status of qt layer using panfrost? and mainline
> >
> > Thanks to JPEW, mesa with panfrost is enabled/working with relevant boards.
> > I've tested it, running, on both the rock-pi-4 and tinkerboard (so it *should*
> > be working with your vyasa-rk3288 board too, although I haven't run-tested it
> > lately). Therefore most anything sitting on top of mesa *should* work.
> >
> > Of course... the panfrost project is a "work-in-progress", so there are
> > probably some cases that might not work.
>
> Technically I can include meta-qt and build on top of mesa using
> wayland and some
> mainline kernel. I'm working right now on tinker-s board and figure
> out to move legacy
> project on mainline solution.  I will try to compile it and give a try
>
> Michael
>
> >
> > Best regards,
> >         Trevor
>
>
>
> --
> | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
> | COO  -  Founder                                      Cruquiuskade 47 |
> | +31(0)851119172                                 Amsterdam 1018 AM NL |
> |                  [`as] http://www.amarulasolutions.com               |



-- 
Regards,
Karthik Poduval
