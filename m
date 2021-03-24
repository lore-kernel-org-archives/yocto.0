Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.754.1616610647839598213
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 11:30:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=wG+QLVx8;
 spf=softfail (domain: linaro.org, ip: 198.145.29.25, mailfrom: anibal.limon@linaro.org)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B4DFA38C081C
	for <yocto@yoctoproject.org>; Wed, 24 Mar 2021 18:30:46 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id 12so13428633wmf.5
        for <yocto@yoctoproject.org>; Wed, 24 Mar 2021 11:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HHEvnsCJNTxXkgnGMJ9VrGSKCPwQzLkBrkRNUQgrXx4=;
        b=wG+QLVx8Uh+gVWJqpQsdYK3JvxixU4QzIuAj51wDw9q7LxcQqiz5ZsEZ8TXzuB+3ZN
         X03tO5rACcHjgfdViuc/QhRd+OQGkLe7hhaw3kadLZL4l7PYplKgMy48lBAovvCgY4mj
         G4y1TCPcz9+JseT6vPfKHIm+EKAq+IB7RYpF9/F6VPrMEh8AFPZDM6WYs7UH+9+tCdej
         w2neBjHCumxci0k1+h92RF7r35nUugfdsFD8wYBgEnSVj4LFoGgYPnHvsrzvAXwwdGPY
         w8GdNcVNv6etoYK4BjVujB2pWksfAI4KBi54WxO3kgBbJp7qEu/Dv1Q8KiODh3gsFs63
         DJuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HHEvnsCJNTxXkgnGMJ9VrGSKCPwQzLkBrkRNUQgrXx4=;
        b=lF/jGY732Szyt4bwV/0a2/mk09nj2Yno/vommpTMrMEfm7TOg9UxjpOlIqE7XgozdB
         wN1FltUhbO+HQYz+29V2o7cjDo3VrekFaU1UrhlKM1n5pY7v0Z+s99U1lauUa7Dteh2v
         SOG4LP+XJRbI/YXycrI62HCVW1VYVT7wvUZnyffUoYKcEKE51BKV4DyyUkDxFKmU562o
         qA6ci4P2W8YL1XTn8snMZ3JQKi/Vp1bvyMnM7pFWSKkpZs3Z7p/QsYodjTLIlOaC6qaz
         yLVZ1VuqeJSf5qWwOFxf+PDAtid4CDoEvKGbeDUpimAl2LKqE0BB2jGuWvMN46b65IUf
         EnXQ==
X-Gm-Message-State: AOAM5315gX9BmchP/AdZzZ/RZvA1R9YXGshq4taxmraPyGDp6tNaQU8u
	VPM9A8CKdPbHGG8O2BsBoy/3d4d7c0xBV/ZrpWDA8w==
X-Google-Smtp-Source: ABdhPJz7+JLvVmcgrxz66ez/hyxTlRanXZDvKFs3/fp+gY4RGLJSO4PwqTdF00AYjKOPDlmwxcyvPaeh6FyD8PRkTqQ=
X-Received: by 2002:a1c:6745:: with SMTP id b66mr4291254wmc.114.1616610645185;
 Wed, 24 Mar 2021 11:30:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210323021038.1049654-1-anibal.limon@linaro.org>
 <20210323021038.1049654-4-anibal.limon@linaro.org> <29a34816-abe7-e267-2f62-44bb891fcf78@windriver.com>
In-Reply-To: <29a34816-abe7-e267-2f62-44bb891fcf78@windriver.com>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Wed, 24 Mar 2021 12:30:34 -0600
Message-ID: <CA+_AqitfyYi4C0AKPa5RZT2nWgt-ufpO2UyJTThMT_0nM66VLQ@mail.gmail.com>
Subject: Re: [ptest-runner][PATCH 4/4] utils.c: wait_child reimplement timeout using alarm
To: Yi Fan Yu <yifan.yu@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, "MacLeod, Randy" <Randy.MacLeod@windriver.com>, 
	Nicolas Dechesne <nicolas.dechesne@linaro.org>
Content-Type: multipart/alternative; boundary="0000000000003f492205be4c7f09"

--0000000000003f492205be4c7f09
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 24 Mar 2021 at 09:56, Yi Fan Yu <yifan.yu@windriver.com> wrote:

> On 3/22/21 10:10 PM, An=C3=ADbal Lim=C3=B3n wrote:
> > Since we are using threads to read from child, no complex logic is
> > needed for handle timeouts use alarm(2).
> TY for the patches.
>
> This would change its behaviour to timeout exactly at X seconds.
>
> New behaviour: if test exceeds X seconds, gets killed.
> Old behaviour: if test exceeds X seconds with no output, get killed. If
> output is detected X-1 seconds, the timeout timer resets.
> so a program could take 2X seconds and not get killed
>

Yeah, thanks for remind me the old behavior, some years and I forget about
it, I will fix it and put certain comments about that.


>
>
> Comment about the other patches:
>
> We don't even need an extra thread because before the wait_for_child had
> to do 2 things:
>
> * read a pipe and output that pipe to stdout (child_reader does that)
> * check for timeout (sigalarm takes care of that now)
>
>
>
> last thing, can you push this to a branch (let's say) master-next, so I
> can test it with a full ptest run.
>

I pushed to dev branch,

http://git.yoctoproject.org/cgit/cgit.cgi/ptest-runner2/log/?h=3Ddev

Regards,
Anibal


>
> yifan
>

--0000000000003f492205be4c7f09
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 24 Mar 2021 at 09:56, Yi Fan =
Yu &lt;<a href=3D"mailto:yifan.yu@windriver.com">yifan.yu@windriver.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 3=
/22/21 10:10 PM, An=C3=ADbal Lim=C3=B3n wrote:<br>
&gt; Since we are using threads to read from child, no complex logic is<br>
&gt; needed for handle timeouts use alarm(2).<br>
TY for the patches.<br>
<br>
This would change its behaviour to timeout exactly at X seconds.<br>
<br>
New behaviour: if test exceeds X seconds, gets killed.<br>
Old behaviour: if test exceeds X seconds with no output, get killed. If <br=
>
output is detected X-1 seconds, the timeout timer resets.<br>
so a program could take 2X seconds and not get killed<br></blockquote><div>=
<br></div><div>Yeah, thanks for remind me the old behavior, some years and =
I forget about it, I will fix it and put certain comments about that.</div>=
<div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
Comment about the other patches:<br>
<br>
We don&#39;t even need an extra thread because before the wait_for_child ha=
d <br>
to do 2 things:<br>
<br>
* read a pipe and output that pipe to stdout (child_reader does that)<br>
* check for timeout (sigalarm takes care of that now)<br>
<br>
<br>
<br>
last thing, can you push this to a branch (let&#39;s say) master-next, so I=
 <br>
can test it with a full ptest run.<br></blockquote><div><br></div><div>I pu=
shed to dev branch,</div><div><br></div><div><a href=3D"http://git.yoctopro=
ject.org/cgit/cgit.cgi/ptest-runner2/log/?h=3Ddev">http://git.yoctoproject.=
org/cgit/cgit.cgi/ptest-runner2/log/?h=3Ddev</a><br></div><div><br></div><d=
iv>Regards,</div><div>Anibal</div><div>=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
<br>
yifan<br>
</blockquote></div></div>

--0000000000003f492205be4c7f09--
