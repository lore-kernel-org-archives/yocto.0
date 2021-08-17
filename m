Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
 by mx.groups.io with SMTP id smtpd.web09.35383.1629177676247262298
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Aug 2021 22:21:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20161025 header.b=gWw3pYJ2;
 spf=pass (domain: google.com, ip: 209.85.210.42, mailfrom: ztai@google.com)
Received: by mail-ot1-f42.google.com with SMTP id l36-20020a0568302b24b0290517526ce5e3so16261425otv.11
        for <yocto@lists.yoctoproject.org>; Mon, 16 Aug 2021 22:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=H6A1U6RxHUV3jpMVM8ELHnHdqZ23l0xJqgii5grKwQE=;
        b=gWw3pYJ2RgfwJXWQQ+wxYn1fYNzC0xk27ZvWJUzZPMlrQJxZi96OigxyXW9XqKOfCi
         pc9nLalkRl04iIUK/BPVCG4nQ2gUqZQJxnTPBqxdgFeFjqRKvryHMaE7SDEHfp3lbXpd
         WDz5hpSsMW52xdX71IlQnSDbYj0bHTiptovrQsfJawOT+nS9PrTgUhNcXfqVD3LJ5N2X
         k2CpMKlWGE7MCajxRlmdm1CoT3dzICW1AMyXJRfO6Plc1jFxfn1x7xYp+iaFvRA1tUqn
         AcnWi0SlJsNv0X0wKeeEfxFlvhm+5LnYthqBusOioh19mcLSZNzyl3jdUzVLqmU/QF3p
         iCgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=H6A1U6RxHUV3jpMVM8ELHnHdqZ23l0xJqgii5grKwQE=;
        b=FkWGx31dr2uoLiIzabGU+sIN3MsFpN+G5Q2TT2CsKa+bonXUgrFwLVgKuyOb/SDiXK
         7MibPp5f98ChsowZJoMX2j7ovCmb6EOc6ZP+bYnsH4SKBc/jQDdwOEg7s3eeEzjELubz
         39bvq4tBeSOYbEiExIiL/oEvNJGh41RWjj0Q5Eo072fanl0fYM/Z4FkA3texurFtOHOh
         LzA1C0yj017XiYx2byzS1BFCiSeRFrlThD3mTTqdQ5esQHY0/RGhyUBbJ4JyEAhxcS3g
         auPJv/1QesZuBgbpKhfu44USs8PGF9JYEYEvBfQ/XltM8mf7XLNfZzFIRfAuGexfXzcY
         Pm8w==
X-Gm-Message-State: AOAM532JlpVNyD7wWLy0ie4tL3HA2NA3hbuNnmI8z4kziX4FRow7TQFn
	G6M5otudy7/FrZgxoRwkFQahF0Z4dwYEB6vvtti4dQtaTb8vJA==
X-Google-Smtp-Source: ABdhPJx7R/R9x/M7ovJ1GMzdqmw3KDDJtSDjkihS/HR/VUy5LYy5cPYU4O/eSF2FvWesVTpdjK2NznmF/dFbj/2DZtQ=
X-Received: by 2002:a9d:738a:: with SMTP id j10mr1217255otk.115.1629177675015;
 Mon, 16 Aug 2021 22:21:15 -0700 (PDT)
MIME-Version: 1.0
From: "Zhenfei Tai" <ztai@google.com>
Date: Mon, 16 Aug 2021 22:21:03 -0700
Message-ID: <CAMXw96NuEK--uffp9JQhWAA6wU-Pk7DSKNhn6Si=mwhUc=zE_g@mail.gmail.com>
Subject: Can't parse unset of variables with override
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000098d81705c9ba7cc6"

--00000000000098d81705c9ba7cc6
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm not sure if this has been brought up already. After the syntax change
from underscore to colon, I noticed the error when using unset on variables
with override. Could someone confirm if this is expected?

# in bbappend
unset SRCREV:xyz

# in build log
ERROR: ParseError at /../abc%.bbappend:3: unparsed line: 'unset SRCREV:xyz

Thanks,
Zhenfei

--00000000000098d81705c9ba7cc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m not sure if this has been b=
rought up already. After the syntax change from underscore to colon, I noti=
ced the error when using unset on variables with override. Could someone co=
nfirm if this is expected?</div><div><pre style=3D"white-space:pre-wrap;fon=
t-family:WorkAroundWebKitAndMozilla,monospace;line-height:1.5;border-radius=
:2px;overflow-x:auto;padding:8px 16px;color:rgb(32,33,36);font-size:13px;le=
tter-spacing:0.185714px"><code style=3D"font-family:WorkAroundWebKitAndMozi=
lla,monospace;border-radius:2px;padding:0px;line-height:1.5"># in bbappend
unset SRCREV:xyz

# in build log
ERROR: ParseError at /../abc%.bbappend:3: unparsed line: &#39;unset SRCREV:=
xyz</code></pre></div><div>Thanks,<br></div><div>Zhenfei</div></div>

--00000000000098d81705c9ba7cc6--
