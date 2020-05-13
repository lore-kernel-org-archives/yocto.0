Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web11.363.1589346182014438240
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2020 22:03:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iqDHSN9z;
 spf=pass (domain: gmail.com, ip: 209.85.210.181, mailfrom: joel.winarske@gmail.com)
Received: by mail-pf1-f181.google.com with SMTP id y25so7481247pfn.5
        for <yocto@lists.yoctoproject.org>; Tue, 12 May 2020 22:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Pun66UP1JOPhxNjpa0u0m50nIllG85wsl1rNQBfAgTs=;
        b=iqDHSN9zJTT5/gz5+kb5ffYfQEiuacUt+MrD9cxKrFGPUqlxFadErNg2dOgBySHNd1
         y2s+Q1cbTfKCrwsr/S5mw1onNHUezz7wacma3abOd2Gy8OWVuSP7odIm5C28sLDnBv+z
         9JaFofKuRdiJaL+V/KYcGt+hfGItUuBTWtnpfWC2E2DfOe5+qHoHFjyy/QYeKc5O7CWp
         /CAnHOk9CekvDtFVvIJnFweIYelf/qqu1rX0vhVpOae0NcXHpKw4JEYOAAvT2rxV4cIi
         8lC/8gMSLuDtSXYFFe+PS215eZvVGF3DW1YqdsdK2jPLhlJEFFaklTyvfWwtoqV/VIuo
         WvMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Pun66UP1JOPhxNjpa0u0m50nIllG85wsl1rNQBfAgTs=;
        b=RkcTG8RAaioLxurIvLrcoguMkjSBWB9D2ZKsACKM0jCZ1kmUtjMPyBhCP0QyHq2rcP
         HBXyuq5kiELMBAkorz+5FUWzD4lXad3WwEbKwam6w1noSKBuyI5QN5A5j6lI+3rw3I7H
         F7f21GusEafxM7PYEJgnH0ZWY8O30u+O73q0+uN1sX1ltk8C5I49H55jmXvKgz/jxbVa
         WwsclNKCGLeCnIWjwNzbq5X6UOL1lOrS8M/Cw/u3g1PwQlcw1ohTjYeQn/tlCYcv0le1
         XiH8fVJMexTsE/iQ4IBEQfi0qprwgr+5Gzdt+BTg/3ua//YkLS3cA0ESmk+HvXnSg7ay
         G8Cw==
X-Gm-Message-State: AGi0PuYphqYWKI2hHbMmldi/vF+iCpo5EceYTom9H4RbBjavD2tzMcQY
	nt+wll7Z/bE/Krkd90FaflPRffX3bYwykMRYy4+WLWSVXkw=
X-Google-Smtp-Source: APiQypJEZUE2fU+5Gxn3Iv+wuNFnOw3GP2Cd6bQ+arZMYnxQM3IcGsXYuY8zlW4p4lNzWAmJ16jYRk119VJZYCQUP6E=
X-Received: by 2002:a62:3287:: with SMTP id y129mr25075502pfy.167.1589346181051;
 Tue, 12 May 2020 22:03:01 -0700 (PDT)
MIME-Version: 1.0
From: "Joel Winarske" <joel.winarske@gmail.com>
Date: Tue, 12 May 2020 22:02:50 -0700
Message-ID: <CABKMkP+Mr4CiHZTbgW=WN98F6j4fvA4pdUqde06nUwmX39s_dw@mail.gmail.com>
Subject: project that builds target and host
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008bfb3205a5807ea5"

--0000000000008bfb3205a5807ea5
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a project that generates a native artifact during the target build.
Both the native and target artifacts are needed for other target recipes.

What's the recommended pattern for handling this?


Thanks,
Joel

--0000000000008bfb3205a5807ea5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><br><div>I have a project that generates a n=
ative artifact during the target build.=C2=A0 Both the native and target ar=
tifacts are needed for other target recipes.<br></div><div><br></div><div>W=
hat&#39;s the recommended pattern for handling this?</div><div><br></div><d=
iv><br></div><div>Thanks,</div><div>Joel<br></div></div>

--0000000000008bfb3205a5807ea5--
