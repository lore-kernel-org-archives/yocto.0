Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.2368.1620261726657900848
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 17:42:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IOU57VUX;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: chuckwolber@gmail.com)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 050B338C0625
	for <yocto@yoctoproject.org>; Thu,  6 May 2021 00:42:06 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id n16so2377432plf.7
        for <yocto@yoctoproject.org>; Wed, 05 May 2021 17:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=cNypAAAMI3B9BujZlQGSm+waJmYFnzpPWBMn3baWf+0=;
        b=IOU57VUXqI4TJPakrnyg3Ua2NnnVnpxyLL/OF2k+lDAOZ8+S2crNeR4QZ1ZUxxvFLe
         ALK5y+FNX0V2lJs2wzD5T9dS8FdTwz+euFQjr19p/5wKjzxLn3GCWKRLcvJc5iY4oicF
         ZJmf+GAktQ0urDc0aviLdr/tcpvItVV6B4b6bXFnIESPhO1KmLGhRVYhOLwcJWwKleUe
         W9/Lrm0X74kLc1YEanfHEJJYOSQ9hRoIYrV9/AM6AN7zRfUTVpBr+HR0nuORRvHAoB/U
         FtAh07zL/bNJvQIhL3A/xlVLGFt/yc2ygABlt8XkjLK+tzMVEaieRKGM2OWcHmP3WVq5
         KZjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=cNypAAAMI3B9BujZlQGSm+waJmYFnzpPWBMn3baWf+0=;
        b=uSVs9PP8q6NpPEUiPFi+dzf98bBcGbaLCdvIj/StA1Vlc5kjW6U5tCzdIJAM8qdufn
         WOhzwvQcVOJfkw8jQnOw8gJP/ugdXaUiS7M3Pcxqp6UzQuC277E5cZ4yhlLxsqOPatMc
         XsaZXXvdKgFE7pj28XtcdNesz5pevTY1m3z3fsJCD2qwZ0fEsf+VyH42zZaC2UjOWMGH
         U5UzgM3FaVhkTVlBx4iaT5aNxVjT3wweNqPfZVg7gbWHBBSuisTKz2LfDbUacGXwwJjY
         qA0zo6R91r48s/BoMmzwr176yVoAt/hvwmJeIl7/DMnoGOm5rn+rHhcMv6KtOOIqgFKk
         As4A==
X-Gm-Message-State: AOAM531eo/BqT/TBeetQ2LDvOrZOE9iuo1gzXMz4kilNM53jiPwwS1Ni
	xhFojOKF79ttNHEjz9vDsAByz2v+KD7mrmLC2BsashFyMVk=
X-Google-Smtp-Source: ABdhPJwzzUFgUfjfGyspQC7RMb3deNBscTNyttBdal3A+vAtT4ekYxU1fgiIoAdnuOeh/wxDFs0gd7/mDsaud1OtMUA=
X-Received: by 2002:a17:902:7888:b029:ee:cea7:6ff0 with SMTP id
 q8-20020a1709027888b02900eecea76ff0mr1839185pll.16.1620261725070; Wed, 05 May
 2021 17:42:05 -0700 (PDT)
MIME-Version: 1.0
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Wed, 5 May 2021 17:41:53 -0700
Message-ID: <CAB=6tBTGiMBH+g-uy3sr1jKA-j1EkSDt0B+8DLb4_iMSaMax6Q@mail.gmail.com>
Subject: Recipe Grep'ing
To: Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000090e72405c19e9462"

--00000000000090e72405c19e9462
Content-Type: text/plain; charset="UTF-8"

I was pondering putting some work in to a fairly large patch set aimed at
making recipes easier to grep through, and wanted to get some feedback
before I put time and effort into it.

I have often found that the following pattern cleanly describes the "what"
and the "why" when grep'ing through recipes to search for things:

FOO += "item1"
FOO += "item2"

Whereas this pattern gives us the "what", but not the "why":

FOO = "item1 \
             item2 \
            "

After discussing this with Richard Purdie on IRC, I also understand that
the latter pattern benefits some forms of build output. In addition, for
SRC_URI, the "why" is normally fairly obvious from context clues.

So, is there any interest in accepting a patch set of that nature for Yocto
and OE repositories? If so, what variables and situations should be
considered "off limits" to a change like that?

..Ch:W..


-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--00000000000090e72405c19e9462
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I was pondering putting some work in to a fairly larg=
e patch set aimed at making recipes easier to grep through, and wanted to g=
et some feedback before I put time and effort into it.<br></div><div><br>I =
have often found that the following pattern cleanly describes the &quot;wha=
t&quot; and the &quot;why&quot; when grep&#39;ing through recipes to search=
 for things:</div><div><br></div><div>FOO +=3D &quot;item1&quot;</div><div>=
FOO +=3D &quot;item2&quot;</div><div><br></div><div>Whereas this pattern gi=
ves us the &quot;what&quot;, but not the &quot;why&quot;:</div><div><br></d=
iv><div>FOO =3D &quot;item1 \</div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 item2 \</div><div>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;</div><div><br></=
div><div>After discussing this with Richard Purdie on IRC, I also understan=
d that the latter pattern benefits some forms of build output. In addition,=
 for SRC_URI, the &quot;why&quot; is normally fairly obvious from context c=
lues.<br></div><div><br></div><div>So, is there any interest in accepting a=
 patch set of that nature for Yocto and OE repositories? If so, what variab=
les and situations should be considered &quot;off limits&quot; to a change =
like that?</div><div><br></div><div>..Ch:W..<br></div><div><br></div><br>--=
 <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_sig=
nature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospace">&quo=
t;Perfection must be reached by degrees; she requires the slow hand of time=
.&quot; - Voltaire</span></b></div></div></div></div>

--00000000000090e72405c19e9462--
