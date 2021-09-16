Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
 by mx.groups.io with SMTP id smtpd.web10.156.1631809412006562598
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 09:23:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VwZrcVqN;
 spf=pass (domain: gmail.com, ip: 209.85.221.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f170.google.com with SMTP id f18so2562650vka.12
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 09:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r4+JXOYlC5MURBouwqygew88CRBzh/gOBZbO8FYyBKM=;
        b=VwZrcVqNdNxlHIUwLhCgavEwy0hHzlJgPsBhWxU3FHh31rZtTptDlIyeJtty1Vbteg
         PZA2L7iYi433HRQy3ERbmipswU6+uLBybRZV4fMwlRO1AB8NddQJQkYS6d1PTiAdswhj
         6IbTa/aUN9cecy6LZ2FIF9PlWxyEzNBsUuO83WJ2fm9wJ5zj2pkQry3oKyl18flcv0hf
         lZ/oNuOwLDweyAcvmzGiOZfDbpsL5mNjeGmwLDScQzpCpd6ZWbVuBRUyuvy/Jp4LpxUp
         IUL6p1JhbIrl9cR9f4zong9O5JkeaLtfVq/Lm8zzafQJt/Fjj/SghRCFlk6i/CP72s0D
         k3gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r4+JXOYlC5MURBouwqygew88CRBzh/gOBZbO8FYyBKM=;
        b=R51Lf/aZ3vt89HBsu+NI4IIDv3tT6ka7HgzLXHKo/yHObYixjONNGLkb8040rTozh0
         xDQxCM6f62C02oEb1e8CIMQfTY4zve4HNebZDHezYjkhBC73GWP4tZu7Q5ZQKYgYIB//
         CppdBEACprxWPI7H1dEh8fuWVlILIkZh4LIU1u7+eWvDxq4sc4EDW88oddsjAaRAY3VZ
         hXeAFJn7CCLcO+pYVjy2MYpcsOB/pKRd9jMFMFGoP0MWILENtopSUw1XHaAbS9xbtMBI
         eYy7JkY8zQt8FF05UCmJDzm+7hmxf5dAlxwqaiLsoHA4TKV5VQDJy649Lpw9V00Vb42z
         aF9g==
X-Gm-Message-State: AOAM532baOxQ4QgdJ4Rza5HBGgBcivr16uiqS8hOEzKUf80IoYpb8zDs
	i49Q4GBfpJnMRJyhExfUZTbLwyAFF1hMQpCqrFs=
X-Google-Smtp-Source: ABdhPJxYuMeXBAu4IyEcWIjSv+Cfle3sSWl6wfAuIC7eOjHrXzoDBk89cq1QQskh2lg3YuRinMpVCwYbVoaagkNw1KI=
X-Received: by 2002:a1f:a046:: with SMTP id j67mr4601769vke.15.1631809411050;
 Thu, 16 Sep 2021 09:23:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210916124617.72791-1-alex@linutronix.de> <20210916124617.72791-3-alex@linutronix.de>
 <dd6912eaba2712a99b0674a9ddd7c7aa83ab783d.camel@linuxfoundation.org>
In-Reply-To: <dd6912eaba2712a99b0674a9ddd7c7aa83ab783d.camel@linuxfoundation.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 16 Sep 2021 18:23:19 +0200
Message-ID: <CANNYZj-L5+LA9s3yqiS8mbAY2EgrSj0PXANKu3e4Gvfsscfkuw@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner][PATCH 3/3] utils.c: add system data collection when a test gets stuck.
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Anibal Limon <anibal.limon@linaro.org>
Content-Type: multipart/alternative; boundary="00000000000049702e05cc1f3c9e"

--00000000000049702e05cc1f3c9e
Content-Type: text/plain; charset="UTF-8"

Cheers, will add now.

Also, dmesg will be collected and archived through a separate channel, and
regardless of whether something is stuck or not :)
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=akanavin/package-version-updates&id=71141340d1adcbacbed9109fd2b98b212da132f0
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/commit/?h=contrib/akanavin/misc-fixes&id=19b88d68cf556cf5f9af50f5f3bacbd8b4180b4f

Alex

On Thu, 16 Sept 2021 at 18:18, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Thu, 2021-09-16 at 14:46 +0200, Alexander Kanavin wrote:
> > Currently, ptest-runner simply kills the offending test without further
> ado,
> > which is not at all helpful when trying to figure out why it happens
> > (especially if such hangs are intermittent and rare). There's now a
> script
> > that gets executed before killing the test, so ideas on what to have in
> it
> > are welcome.
> >
> > Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> > ---
> >  Makefile                         |  2 +-
> >  ptest-runner-collect-system-data |  5 +++++
> >  utils.c                          | 24 ++++++++++++++++++++++++
> >  3 files changed, 30 insertions(+), 1 deletion(-)
> >  create mode 100755 ptest-runner-collect-system-data
> >
> > diff --git a/Makefile b/Makefile
> > index a6372de..168cf5a 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -43,7 +43,7 @@ $(TEST_EXECUTABLE): $(TEST_OBJECTS)
> >       $(CC) $(LDFLAGS) $(TEST_OBJECTS) -o $@ $(TEST_LIBSTATIC)
> $(TEST_LDFLAGS)
> >
> >  check: $(TEST_EXECUTABLE)
> > -     ./$(TEST_EXECUTABLE) -d $(TEST_DATA)
> > +     PATH=.:$(PATH) ./$(TEST_EXECUTABLE) -d $(TEST_DATA)
> >
> >  .c.o:
> >       $(CC) $(CFLAGS) -c $< -o $@
> > diff --git a/ptest-runner-collect-system-data
> b/ptest-runner-collect-system-data
> > new file mode 100755
> > index 0000000..5bfeaf3
> > --- /dev/null
> > +++ b/ptest-runner-collect-system-data
> > @@ -0,0 +1,5 @@
> > +#!/bin/sh
> > +# Other ideas on what to do when a ptest gets stuck welcome.
> > +pstree -a -l
> > +df
> > +free
>
> It is great to see this. I'd suggest dmesg in here since we've seen
> components
> of tests segfault before (e.g. lttng-relayd in lttng-tools).
>
> Cheers,
>
> Richard
>
>
>

--00000000000049702e05cc1f3c9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Cheers, will add now.<br></div><div><br></div><div>Al=
so, dmesg will be collected and archived through a separate channel, and re=
gardless of whether something is stuck or not :)<br></div><div><a href=3D"h=
ttp://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dakanavin/=
package-version-updates&amp;id=3D71141340d1adcbacbed9109fd2b98b212da132f0">=
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dakanavin=
/package-version-updates&amp;id=3D71141340d1adcbacbed9109fd2b98b212da132f0<=
/a></div><div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/yocto-au=
tobuilder-helper/commit/?h=3Dcontrib/akanavin/misc-fixes&amp;id=3D19b88d68c=
f556cf5f9af50f5f3bacbd8b4180b4f">http://git.yoctoproject.org/cgit/cgit.cgi/=
yocto-autobuilder-helper/commit/?h=3Dcontrib/akanavin/misc-fixes&amp;id=3D1=
9b88d68cf556cf5f9af50f5f3bacbd8b4180b4f</a></div><div><br></div><div>Alex<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, 16 Sept 2021 at 18:18, Richard Purdie &lt;<a href=3D"mailto=
:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On T=
hu, 2021-09-16 at 14:46 +0200, Alexander Kanavin wrote:<br>
&gt; Currently, ptest-runner simply kills the offending test without furthe=
r ado,<br>
&gt; which is not at all helpful when trying to figure out why it happens<b=
r>
&gt; (especially if such hangs are intermittent and rare). There&#39;s now =
a script<br>
&gt; that gets executed before killing the test, so ideas on what to have i=
n it<br>
&gt; are welcome.<br>
&gt; <br>
&gt; Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex@linutronix=
.de" target=3D"_blank">alex@linutronix.de</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 2 +-<br>
&gt;=C2=A0 ptest-runner-collect-system-data |=C2=A0 5 +++++<br>
&gt;=C2=A0 utils.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 24 ++++++++++++++++++++++++<br>
&gt;=C2=A0 3 files changed, 30 insertions(+), 1 deletion(-)<br>
&gt;=C2=A0 create mode 100755 ptest-runner-collect-system-data<br>
&gt; <br>
&gt; diff --git a/Makefile b/Makefile<br>
&gt; index a6372de..168cf5a 100644<br>
&gt; --- a/Makefile<br>
&gt; +++ b/Makefile<br>
&gt; @@ -43,7 +43,7 @@ $(TEST_EXECUTABLE): $(TEST_OBJECTS)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0$(CC) $(LDFLAGS) $(TEST_OBJECTS) -o $@ $(TES=
T_LIBSTATIC) $(TEST_LDFLAGS)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 check: $(TEST_EXECUTABLE)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0./$(TEST_EXECUTABLE) -d $(TEST_DATA)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0PATH=3D.:$(PATH) ./$(TEST_EXECUTABLE) -d $(TEST_D=
ATA)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 .c.o:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0$(CC) $(CFLAGS) -c $&lt; -o $@<br>
&gt; diff --git a/ptest-runner-collect-system-data b/ptest-runner-collect-s=
ystem-data<br>
&gt; new file mode 100755<br>
&gt; index 0000000..5bfeaf3<br>
&gt; --- /dev/null<br>
&gt; +++ b/ptest-runner-collect-system-data<br>
&gt; @@ -0,0 +1,5 @@<br>
&gt; +#!/bin/sh<br>
&gt; +# Other ideas on what to do when a ptest gets stuck welcome.<br>
&gt; +pstree -a -l<br>
&gt; +df<br>
&gt; +free<br>
<br>
It is great to see this. I&#39;d suggest dmesg in here since we&#39;ve seen=
 components<br>
of tests segfault before (e.g. lttng-relayd in lttng-tools).<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
</blockquote></div>

--00000000000049702e05cc1f3c9e--
