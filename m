Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web10.6390.1628066355134771564
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 01:39:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hwic2vAd;
 spf=pass (domain: gmail.com, ip: 209.85.219.174, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f174.google.com with SMTP id m193so2862593ybf.9
        for <yocto@lists.yoctoproject.org>; Wed, 04 Aug 2021 01:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=xLnz6wHCuiaHGiESvPsfgzQPy1VcOcMAUJFSdEWyOTs=;
        b=Hwic2vAd8b2z8Y3PCBJ5F/AwkNzvrX4/RysjF5jvC2z6K0KAPdT0miO88MEbDqABnY
         rDqEocyRY336XYY/fp9T/f5RLq7IPfOlkFzrDwalMVVcgMeVCy66SXM8m63Yb/+5KK2O
         Zq5YfbgmP1HrqA4dhFdW6T2FV7tJt/6D9mdyXSGVHdjHAFF3pSS1+Y8veZOA7EaHZ3Zu
         Me+gHS6yOs4op1hes0wEa/JUwn7p/o/T36pF7Ph/19Xtnm2IUkXxriXLm14EePhKQ6AX
         Jj+VT3apnicJyp+6o4tqXkwm0U9lqgwDdaojcso/8Hr3bjS2havweK+0KLj0dDh8lFzK
         ZnRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=xLnz6wHCuiaHGiESvPsfgzQPy1VcOcMAUJFSdEWyOTs=;
        b=ob4es+vbKkxZlmTUC+eDWOa78XM66iggoy+QhDj22Y7Wi4GfwtKkhAjvop7H3pO86G
         6eQQickazeCrCbYQE6VeJ6lQXHbweLIVB61r2Gay+LqYNbDiYZAxN2eyOmZSkOFh4/th
         m1AXPp1p2VH2DXjgfbdGbBbF/Y327Et+J/KsmCqafBNUM+0FEtwnA8OOzACg6z3Pj5uk
         o6OyWVeI9q7A68PlvQwDj2NrXEwKJrws5ZZKvhUyWKrsYY1/5VqHGRFqglAulyydWP/6
         4v3VheElw9IFUbtD7Gya3hVoIe7S6OKHLls2B1qRZkSaC6GrdfFuNqPpHO8FFhcpk8DN
         b4Rg==
X-Gm-Message-State: AOAM530myw+UjZq+ZHbeOEJC5Hl7+qkMSbDIT/7Knan8DpzC3nONhM/Q
	zYWacB9xmIJnMN7qsfxMfj0PYJg7ZZYveVgsxZA4nZ4843M=
X-Google-Smtp-Source: ABdhPJyr4w/iIEH89kIb1LF3xQF7uBNNyYSUpzsi+mI2x2SgUlCACy6/yfj1Hcf5iJOBsFZ883soGEUsJDJuQhhoA9Q=
X-Received: by 2002:a25:ac18:: with SMTP id w24mr35760688ybi.289.1628066354278;
 Wed, 04 Aug 2021 01:39:14 -0700 (PDT)
MIME-Version: 1.0
From: "JH" <jupiter.hce@gmail.com>
Date: Wed, 4 Aug 2021 18:38:38 +1000
Message-ID: <CAA=hcWQGUvCofTbwCLA+M2ONFamdZvjWufb7Hy+Zkv5GX0uJfQ@mail.gmail.com>
Subject: RTC issue
To: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I built Yocto iMX6ULL image on Zeus kernel 4.19, but I have following
RTC errors:

[ 3494.446265] rtc rtc0: Timeout trying to get valid LPSRT Counter read
[ 4190.088406] rtc rtc0: Timeout trying to get valid LPSRT Counter read
[ 4885.740595] rtc rtc0: Timeout trying to get valid LPSRT Counter read

I measured iMX6ULL RTC_XTALI and RTC_XTALO signals connecting to a
32.768 kHz 90 k=CE=A9 ESR crystal, all good, not sure if it is caused by
kernel or Yocto build.

Someone suggested that I should remove the external RTC, the rationale
is that Linux is not really a real time OS, there is no battery for
supporting RTC. Appreciate your comments.

My apology if it is an off topic.

Thank you.

Kind regards,

- jupiter
