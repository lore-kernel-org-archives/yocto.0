Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.565.1593208037150873399
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jun 2020 14:47:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HUPuN+1W;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEF20E01D96; Fri, 26 Jun 2020 14:47:16 -0700 (PDT)
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
	*      [209.85.217.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3C02E01D92
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2020 14:47:14 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id o15so6225104vsp.12
        for <yocto@yoctoproject.org>; Fri, 26 Jun 2020 14:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=s/ZaOuACMDKhHKmKvqMgey+cIyHtXQuNmAan4LLccVs=;
        b=HUPuN+1WZ4MQav4hK4exuv3p/osptP/bsjRjreV5Ic/yJoYNrhE5W+gjWIw+7Qc5bg
         iT1SQIKPVIOfHLSy4Sf4+ogVsQMiN6B5aQWAMKfzMjMefn7xw4e7eeqiKv4G9XTxV+Uv
         U6PTUhD7acSrrFVz0L8XWwXkwRRPgRRmazZbUN51nfWY8d4YRqwTaW1q43BcYWt0VlgG
         MjVyJ4/qVXbPZ/+8+ufc+oBeQhmMxiwzvolDZZWJ1UF39CgBzM5lVLmPoXUqMtkP8gfw
         BHDgyuvphBQefHDzsXUUmn7BzuWn7+eG/mRLBLys6P9Th5j+TC2yasiozKHlUiMkqfn/
         Y3fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=s/ZaOuACMDKhHKmKvqMgey+cIyHtXQuNmAan4LLccVs=;
        b=PQZKCttTLEqlmis9FNHgWSmSPKGZXMVGv75iv60dylpV0/AsxsrpspX4v1QZFjAi8M
         e+/QixySbejdstBRECuXVDy6aYXvljH9huMateekGZrWEDscXWSaADXnuYQGu2VVJAXn
         e7W0aT6365oI6gTyviR3UOhJaosLyPydZ5qBXO/IezJsB3f9RXZ+nobaRUfFvqClLHfK
         mb6sRMCckrFc95Hp6Rild8lPaVwHHuvlWgXJVJa264O9p7uB4kwZoMx830h2Wuf6H55f
         i0aL9MNKS12362pSv5K1iLjvtplnkPIUCFFoNO0RYlL12GOwoRqSdhZEL8UNI89BjHc3
         vxEQ==
X-Gm-Message-State: AOAM532zucBvwQ/JbgliqQSsKkVlDuWfI9mhDz4env9PKbs+hZDMrnqQ
	XnDHNGpLyPgfyRMx+hzoS7Z++OL8ZII1GVJNMsw=
X-Google-Smtp-Source: ABdhPJxbpdUvUtCVF7sIUx/0MtCnn0UMbYc1fTAEphiXje+b0YxUhHfqNzJMRafDKDzH4a9rnS/zdS/m2Kc6cGEZNvw=
X-Received: by 2002:a67:c806:: with SMTP id u6mr4288601vsk.94.1593208034208;
 Fri, 26 Jun 2020 14:47:14 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2006261419350.1554442@localhost.localdomain> <a4d0acc8c9bbc53901747afff990d94803af5386.camel@linuxfoundation.org>
In-Reply-To: <a4d0acc8c9bbc53901747afff990d94803af5386.camel@linuxfoundation.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 26 Jun 2020 23:47:02 +0200
Message-ID: <CANNYZj9M9=b1mKVGghcs4ET3H910vmXu0q_d1DsLT=wP7h7Omw@mail.gmail.com>
Subject: Re: [yocto] how crippled is ruby support in YP 3.0?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000eeb14e05a903a6eb"

--000000000000eeb14e05a903a6eb
Content-Type: text/plain; charset="UTF-8"

On Fri, 26 Jun 2020 at 23:18, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> If we actually had some tests for it, we might have a much better idea.
>
> The areas of the project with good automated tests tend not to regress
> without our noticing. Areas with no tests can and do :(
>

Not only that, the only reason ruby is in core at all is that webkit needs
ruby-native. The interest in it is simply too low, but of course automated
tests are welcome.

Alex

--000000000000eeb14e05a903a6eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, 26 Jun 2020 at 23:18, Richard Pur=
die &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdi=
e@linuxfoundation.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">If we actually had some tes=
ts for it, we might have a much better idea.<br>
<br>
The areas of the project with good automated tests tend not to regress<br>
without our noticing. Areas with no tests can and do :(<br></blockquote><di=
v><br></div><div>Not only that, the only reason ruby is in core at all is t=
hat webkit needs ruby-native. The interest in it is simply too low, but of =
course automated tests are welcome.</div><div><br></div><div>Alex<br></div>=
</div></div>

--000000000000eeb14e05a903a6eb--
