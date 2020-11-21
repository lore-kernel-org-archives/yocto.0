Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web08.3731.1605947719181973150
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 00:35:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NmpJry1X;
 spf=pass (domain: gmail.com, ip: 209.85.215.177, mailfrom: chuckwolber@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id t21so9499336pgl.3
        for <yocto@lists.yoctoproject.org>; Sat, 21 Nov 2020 00:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bgPa5yJfUm23FDDWOZfmWW3kPR0okWYWg5m3Afiqh8w=;
        b=NmpJry1XXhCOe1kFpvt1/HewiM2Fm23Bf5s6T+VrL7sPxIOa8nR+0UNuB1sbXKlwAf
         3ZoLhPeoAX8xomJlW1eziPQSLz1OdeI9qvnMLjDR8po/eJKNHLY9KnCH1N8DYiKuuVR7
         ircYaWsTP9ieUtUpX5l1Q1FcQt3aeqEfZYG3I64H9jsaYFLsZ3r+xRhTkb8Rxb9Oel7B
         hYwgU375Fnw1fAZfujr8WBIs/v7jqP5bTZ0FdqyqUsGr8j7yziMyWC60E1NLKwUeNflN
         98bC/f2hZVwmp1oBKSaBzaCbtZ7Wh4K9F75ylGT2EMdI+Di9e/d9We17TuvDuknNmWGs
         JrAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bgPa5yJfUm23FDDWOZfmWW3kPR0okWYWg5m3Afiqh8w=;
        b=mkyExmI/c1SabYgiWOdsyxxlsyTRYirOL1dVT1KYr88kuV6hPfviKhWaxX+6B9Vhar
         /xWvhCtVjQC27hnMAPveEKLqfjZrBnBW1NfSXqI4k3GK3yyZ65dvj0UpgdSh2TJSXg65
         8Piwve16wUwL9hJhhurikPX8CxBt98dj9PGc/SdzTF5OzcpgCYmPd+SvNUkt+2B5AIaw
         5u6O5JcC0kyOzwV8veM+WI9FYU8UIdB4T8BU6V271jbZ5K4zdmFPAgGjCQ2KfywgoIu/
         ff+WVgFsvfjMFxr+o8tCd2Ui7RG9IvzlRseGTW8nqR6mXbvT0/wY9Gj8mwU1HRsVyOzD
         H2lA==
X-Gm-Message-State: AOAM533ZxnTQZ9IV33sjhnNR0xP4ZTZBuL/Dq1F9vd/BgcdmB7r2K01b
	twy4pO0ZVpHd7Y2nIrkAy46T6XD9HKNcDbBGt7E=
X-Google-Smtp-Source: ABdhPJwpTTyI2uk5/Zg+OWRIUF6skscp7PhB8me82X1xkEeGp0NhLr5SJdAr74pD0sLp7REG7oMMD1YhuWi2DQSZv00=
X-Received: by 2002:a17:90a:fe02:: with SMTP id ck2mr13123224pjb.111.1605947718480;
 Sat, 21 Nov 2020 00:35:18 -0800 (PST)
MIME-Version: 1.0
References: <SGGF.1605926973795518137.Lv2i@lists.yoctoproject.org> <CAB=6tBTXBc+77Eh0hDKGLtWDzU+PwFr1HRAeica-4ckftO33GQ@mail.gmail.com>
In-Reply-To: <CAB=6tBTXBc+77Eh0hDKGLtWDzU+PwFr1HRAeica-4ckftO33GQ@mail.gmail.com>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Sat, 21 Nov 2020 00:35:07 -0800
Message-ID: <CAB=6tBRZoRMzAtHGaT5T+_8QEK9EaeUa-KbckvrYvQQmiJiAgw@mail.gmail.com>
Subject: Re: [yocto] Best convention for FILES variable
To: rustyhowell@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000049b8e705b499d7c2"

--00000000000049b8e705b499d7c2
Content-Type: text/plain; charset="UTF-8"

On Sat, Nov 21, 2020 at 12:21 AM Chuck Wolber <chuckwolber@gmail.com> wrote:

%< SNIP %<


> And finally, I have adjusted to using the following pattern, and found
> that it has improved maintainability a great deal. It applies to DEPENDS
> and RDEPENDS as well. Yes, it is a bit tedious, but the benefits far
> outweigh the cost (IMHO).
>
> FILES_fooz += " lib/foozlib.so"
> FILES_fooz += " /usr/lib/foozlib-2.so"
> FILES_fooz += " /usr/bin/fooz"
> FILES_fooz += " /bin/fooz"
> FILES_fooz += " /usr/share/fooz"
>
> This pattern is invaluable when you start accumulating a lot of recipes. A
> recursive grep (grep -r) across a directory tree, will immediately tell you
> that (for example), /bin/fooz is file in the fooz package and it is
> referenced in the fooz_1.3.2.bb recipe.
>


I forgot one other benefit. When a change is made to a recipe that uses
that pattern, the (Git) commit diff is a lot clearer and easier to
understand.

Think of it this way... Use your pattern, but imagine there are a lot more
entries in your list. A change to the middle of that list is going to
result in a diff that is hard to determine if it is a FILE_fooz entry or a
DEPENDS_${PN} entry. Prefixing with the directive keeps your Git history a
lot clearer.

..Ch:W..

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--00000000000049b8e705b499d7c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 21, 2020 at 12:21 AM Chuc=
k Wolber &lt;<a href=3D"mailto:chuckwolber@gmail.com">chuckwolber@gmail.com=
</a>&gt; wrote:<br></div><div><br></div><div>%&lt; SNIP %&lt;<br></div><div=
>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div><div>And finally, I have adjusted to using the following pattern,=
 and found that it has improved maintainability a great deal. It applies to=
 DEPENDS and RDEPENDS as well. Yes, it is a bit tedious, but the benefits f=
ar outweigh the cost (IMHO).<br></div><div><br></div><div>FILES_fooz +=3D &=
quot; lib/foozlib.so&quot;</div><div>FILES_fooz +=3D &quot; /usr/lib/foozli=
b-2.so&quot;</div><div>FILES_fooz +=3D &quot; /usr/bin/fooz&quot;</div><div=
>FILES_fooz +=3D &quot; /bin/fooz&quot;</div><div>FILES_fooz +=3D &quot; /u=
sr/share/fooz&quot;</div><div><br></div><div>This pattern is invaluable whe=
n you start accumulating a lot of recipes. A recursive grep (grep -r) acros=
s a directory tree, will immediately tell you that (for example), /bin/fooz=
 is file in the fooz package and it is referenced in the <a href=3D"http://=
fooz_1.3.2.bb" target=3D"_blank">fooz_1.3.2.bb</a> recipe.<br></div></div><=
/div></blockquote><div><br></div><div><br></div><div>I forgot one other ben=
efit. When a change is made to a recipe that uses that pattern, the (Git) c=
ommit diff is a lot clearer and easier to understand.</div><div><br></div><=
div>Think of it this way... Use your pattern, but imagine there are a lot m=
ore entries in your list. A change to the middle of that list is going to r=
esult in a diff that is hard to determine if it is a FILE_fooz entry or a D=
EPENDS_${PN} entry. Prefixing with the directive keeps your Git history a l=
ot clearer.<br></div><div>=C2=A0</div><div>..Ch:W..<br></div><div><br></div=
></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><=
div><b><span style=3D"font-family:monospace">&quot;Perfection must be reach=
ed by degrees; she requires the slow hand of time.&quot; - Voltaire</span><=
/b></div></div></div></div>

--00000000000049b8e705b499d7c2--
