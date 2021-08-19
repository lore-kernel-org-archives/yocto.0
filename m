Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
 by mx.groups.io with SMTP id smtpd.web10.66509.1629357155668313551
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Aug 2021 00:12:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JhHeIS0Y;
 spf=pass (domain: gmail.com, ip: 209.85.219.178, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f178.google.com with SMTP id l144so10398867ybl.12
        for <yocto@lists.yoctoproject.org>; Thu, 19 Aug 2021 00:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=n/LTP4s7yDQHtZzOGUgUq+78s1l/JHa5i2hr99DjIAU=;
        b=JhHeIS0YC5Z2VvSpoy0bhy9lYY1V+BzGzEj8ziUplay98YGVRDrMLL/qlV6RRfMQkq
         Q4LgT255SRuwkz2oF6IIqlfZ0mbQJ6ak5iAeEKIUroUVEhYbq/jA/hADQ7DNXcQCl+Ft
         CYw2ZKqMRcodTjlYTnmnxUhGG/rWolcha83kHrAY5YIxKK+JjV5++tUoA7cno9K+r9D7
         Mp6I2szpWfBD4o1ZhiCLOlD/IQMfOL8aYiAk0ydxyxmwuTYiRnWhgBdC59EF9QS0WwRk
         hw6mNH9wmEOEvpV3Z/Kt0PGb7C0H9oFSY+FY2D/xyzkXFepIZB/w/gjkNo6xkniPseHt
         0h5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=n/LTP4s7yDQHtZzOGUgUq+78s1l/JHa5i2hr99DjIAU=;
        b=ctLWPppe70QP4Oe01+BEZ3se9D3mHSytHYmR0+tUvGYADZfgsFg99ETbOpCQbmIrtU
         9sNZBMTUsDIZOGkef60hR6QHmv+NPsAYD7CyhjT3BKpJONxBOg83AKQtmmGHuBMGB+R+
         cnE5QhcqR6+ZriPm42MKekUQtFC2e5fQjGJxQichWg++ksWlM/yvzcR0qotEeUI4xeb7
         eYaaj0BCHNO9pdPhFvtkhTpadsaC7Rtr9p+QmoAy8q6sweUEa59cuTZDiUFrzDxQ7SXl
         OwmCKDsWbcmptVXEbllR7luwd0XSJO6FiCgIIuY5ztncHgeA1k/binHiDHOZ0qIp3cTY
         PFaQ==
X-Gm-Message-State: AOAM532brPlPN1TFko0jTIAG1ZVLcDcBdh28xtJFYLZc3yEQ9I5Klaxs
	Z2ET68jegcF71f0MJKBQN7xbJjQTFb0FAY15gWxzKvBDsfI=
X-Google-Smtp-Source: ABdhPJzzwulG/3AuGUUgBdKpcNcsaT36uxzuRBj2QhzqoumzYLTaUU7rkGXMAjTy2V1sJx/ZPo4WvarE647Knz8YcpU=
X-Received: by 2002:a5b:f0c:: with SMTP id x12mr16498153ybr.340.1629357154714;
 Thu, 19 Aug 2021 00:12:34 -0700 (PDT)
MIME-Version: 1.0
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 19 Aug 2021 17:11:58 +1000
Message-ID: <CAA=hcWQpNV3izqZV4jbAzEb28JTnZFQbU=PwY2CJoQcpCzi41g@mail.gmail.com>
Subject: Does PACKAGE_EXCLUDE work for Hardknott?
To: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I set up PACKAGE_EXCLUDE = "python3 python3-dbus", but it still build
pyhon3 and python3-dbus, what could I be wrong here?

Thank you.

Kind regards,

- jh
