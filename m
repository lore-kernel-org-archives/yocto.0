Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5246.1594190180127928839
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 23:36:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Teq1qWNc;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: martin.jansa@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB810E01DE2; Tue,  7 Jul 2020 23:36:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25269E01DE2
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2020 23:36:19 -0700 (PDT)
Received: by mail-ej1-f54.google.com with SMTP id l12so49107624ejn.10
        for <yocto@yoctoproject.org>; Tue, 07 Jul 2020 23:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FRmTvurgDCssA055TvjvrRt8CunZ8M0mLab1ytB4BFg=;
        b=Teq1qWNc1bE3DVxXrCPTZlLSpFd7EfYM6gZsxL0J3WpifrpJRpLIAzZCgnG7VnNJjJ
         62iuk/8YwS4MbwJiZqAkLJeXiN5M48/ekIQqdLI2pWOJOOmSMzXQ4Lq3BJ+DsmLnhcmq
         qNeSgHdrxUfTWheBGIfQv7GJdoNNzKw3nYR/8vaCn9eZgl06aArTjV0UfOjX85bwd2f/
         1Ycat0Y0IH6PP3B896vbpf5F8LgHQNruW0JBSYijyZANqoTjyGVgFqTQ1Dun7Ai3Io1F
         efkmUXOc1a0WEosCGTbUYCCZjjWF70I5M+j83Iv1q8hXNRM6wzO7HmeniyqSddl9XWdc
         wlTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FRmTvurgDCssA055TvjvrRt8CunZ8M0mLab1ytB4BFg=;
        b=dsKxuskfZTPjzfz+U7LkoFmttyM6NH0KqEAIw8Vm1Bff+nR/cAwQtp4gK7QUbSej+v
         t/BXNClZRluxZ2jvW1P9TjasDdGCQ0BLTMef5EYuRY+Wc2zEwOPkuZBMqgnbB/p3fzQn
         U9u24HV5K3tsxnrU0DXd5sLDcGtjBYLGNFHkLvG3PxCMTG+qo4FRZcyt4vpi/zVhngpv
         YpUC8Rxamq01J7ffnvPiMeEq4K28CDQzWW9U5J1CsOckbNchRkdpEXjZMUzoRjs5Uzj5
         FYC0SRLtdlCjphYFepyYrNVsfViUfD9xqxpJr3xj8Vpv6suSeVhoE5SLcKgFSazLRD4B
         hZFA==
X-Gm-Message-State: AOAM531uxegtpeC6gSxCLEeupiS5VZ0NILVDNFtYRlv28Q3dJ9unM2p4
	XUa1N0qcsKSUztueHkEWuQkshPam8qMnRXGi/GSxV/93
X-Google-Smtp-Source: ABdhPJwvzhCrEgTcv6YJFganYeikTtDmvyRTgD4Te7sKKuaJ27QXOqy8ncYfU/NBhrfODMn8JnideFdy6oEFZVGCfGg=
X-Received: by 2002:a17:906:4341:: with SMTP id z1mr44342149ejm.392.1594190178325;
 Tue, 07 Jul 2020 23:36:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAOf5uwnAymAOBo+BpJ_zrunMmG8-TmqRyvXsAr+SnLqGNi6E=w@mail.gmail.com>
In-Reply-To: <CAOf5uwnAymAOBo+BpJ_zrunMmG8-TmqRyvXsAr+SnLqGNi6E=w@mail.gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Wed, 8 Jul 2020 08:36:07 +0200
Message-ID: <CA+chaQcu4hZAG8mjgLhi_0=1hfqy6Gbt5acwvaEy3kz3VHQn0A@mail.gmail.com>
Subject: Re: [yocto] iso-codes project
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000048996105a9e85325"

--00000000000048996105a9e85325
Content-Type: text/plain; charset="UTF-8"

Hi,

it's know issue already fixed in master, see
https://lists.openembedded.org/g/openembedded-architecture/message/1108
thud is pretty much out of support and probably won't be fixed there, you
should be able to easily fix it from .bbappend in one of your layers.

Regards,

On Wed, Jul 8, 2020 at 7:57 AM Michael Nazzareno Trimarchi <
michael@amarulasolutions.com> wrote:

> Hi all
>
> anyone has problem on iso-codes in thud. Seems that project was
> changed and not possible to download with the actual configuration
>
> Michael
>
> --
> | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
> | COO  -  Founder                                      Cruquiuskade 47 |
> | +31(0)851119172                                 Amsterdam 1018 AM NL |
> |                  [`as] http://www.amarulasolutions.com               |
> 
>

--00000000000048996105a9e85325
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>it&#39;s know issue already fixed i=
n master, see</div><div><a href=3D"https://lists.openembedded.org/g/openemb=
edded-architecture/message/1108">https://lists.openembedded.org/g/openembed=
ded-architecture/message/1108</a><br></div><div>thud is pretty much out of =
support and probably won&#39;t be fixed there, you should be able to easily=
 fix it from .bbappend in one of your layers.</div><div><br></div><div>Rega=
rds,</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Wed, Jul 8, 2020 at 7:57 AM Michael Nazzareno Trimarchi &lt;<a=
 href=3D"mailto:michael@amarulasolutions.com">michael@amarulasolutions.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i all<br>
<br>
anyone has problem on iso-codes in thud. Seems that project was<br>
changed and not possible to download with the actual configuration<br>
<br>
Michael<br>
<br>
-- <br>
| Michael Nazzareno Trimarchi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Amarula Solutions BV |<br>
| COO=C2=A0 -=C2=A0 Founder=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 Cruquiuskade 47 |<br>
| +31(0)851119172=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Amsterdam 10=
18 AM NL |<br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [`as] <a h=
ref=3D"http://www.amarulasolutions.com" rel=3D"noreferrer" target=3D"_blank=
">http://www.amarulasolutions.com</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0|<br>
<br>
</blockquote></div>

--00000000000048996105a9e85325--
