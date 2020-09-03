Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web11.3120.1599092330019301138
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Sep 2020 17:18:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UzYPnabK;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: simonkbaby@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id z23so1140659ejr.13
        for <yocto@lists.yoctoproject.org>; Wed, 02 Sep 2020 17:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=+FtS/81eJ22uLoed1X+I7sXOOMYn8lWoHXCdfCP7zfw=;
        b=UzYPnabKEG2TwVw1W7uPFiOBmkg783MhGLuco15xd1/vQB5xC1eyVoJ/gVSJGYsD3A
         pAM4WrJVifnnyR2COvBGLFfKmGrPRuBO83iSngUOAE4gfdIoPQQeQcrLQPXtz0lpZKB8
         7tr+/Z5QAyPwLmkl1BD/ergpzwxfJBDRlyy6/VVW0hVkdNy3JyeG24LgJOpdKu/Tp0TO
         6wXeo7xEpwxy7cYr5ZdkrLyWfc0kw+09Iv/VUWTExHMfzGxkjMn3/6fCblG6NPBh+WCV
         kTTa6c+u5MI34dMHkElxw8Isc/abcuyMPiY4dX3LEEiH7amAzc/0khHB9CNBzYwF7iWE
         1mew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+FtS/81eJ22uLoed1X+I7sXOOMYn8lWoHXCdfCP7zfw=;
        b=a5WkW1oQoHbr75Zg3bOUHLZJiHjyfPfJ3U5xzWWzeIZu72jUJ6Bz7/F6lsFnG8ayT0
         zzjGBPnCImJjHEYEUA0o2Xs+hQHovInST6CD/XC9UAQd/2kmiGBrjlQ5ugo6AClUInz4
         dXxS0pVlVOzmaSM/m6OFX38fj6q1WXOQ500J/GeI///jHaRDL98+FeLCJB29Fc5nZ5Za
         w6XTOoiZX66C3PKMrEU+1r5fWfUfAHVNr2ZfrWSdRN5blSmWHLB+U+BtXWigPS+ts7+M
         rjkG4SxuBEWX4cX68zhHn2cEEIuiTtac1TbfOCQPm2JEpCzUK7FUAu75JRfbpBPirAkF
         1FgA==
X-Gm-Message-State: AOAM531FfMbaqP616k/6Fdxme4fD5rd51zq2rC65+39Bt1ueP+I79S/3
	r0uD41Rqas+hz5G/4iiqaew3cyAgziSWApwf9tZEzRLla7dFvA==
X-Google-Smtp-Source: ABdhPJyqghWG0YGfEWzHbpFaklDb7wU6NW0WquoOhtUaMfbgoeEwtZPhLglZJ5uTWyqsJF6bt907PlBnPkPeGBdKPpA=
X-Received: by 2002:a17:906:fcc8:: with SMTP id qx8mr628473ejb.13.1599092328016;
 Wed, 02 Sep 2020 17:18:48 -0700 (PDT)
MIME-Version: 1.0
From: simonkbaby@gmail.com
Date: Wed, 2 Sep 2020 17:18:36 -0700
Message-ID: <CAEFUPH3A6vnmB8X-43hchgJY2juvqJp_Lhf+e1iOv2GsPzZWLA@mail.gmail.com>
Subject: Query on building applications and catch exceptions across different shared libraries
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002cb00905ae5db212"

--0000000000002cb00905ae5db212
Content-Type: text/plain; charset="UTF-8"

Hello,

I have an issue with my throw , catch code in c++.  If i throw an error
after the openssl library call, my application crashes.  If my application
wishes to throw and catch exceptions across different shared libraries do
we have any specific settings I can add in my bitbake recipe?

regards
Simon

--0000000000002cb00905ae5db212
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I have an issue with my throw , =
catch code in c++.=C2=A0 If i throw an error after the openssl library call=
, my application crashes.=C2=A0 If my application wishes to throw and catch=
 exceptions across different shared libraries do we have any specific setti=
ngs I can add in my bitbake recipe?<br></div><div><br></div><div>regards</d=
iv><div>Simon</div></div>

--0000000000002cb00905ae5db212--
