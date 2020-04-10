Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4634.1586501776787239625
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Apr 2020 23:56:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nyZ55rH2;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7036E0199E; Thu,  9 Apr 2020 23:56:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9D0AE01959
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2020 23:56:14 -0700 (PDT)
Received: by mail-ed1-f47.google.com with SMTP id e5so1307916edq.5
        for <yocto@yoctoproject.org>; Thu, 09 Apr 2020 23:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=yP/+jDPuPpm2+BnKJXWP29C84kw2w70TSUK6Hx/Gw5A=;
        b=nyZ55rH2pppHF64O4grinZQ8SpJ1RdyrRqRr6Y7RuayoGrGKDtVPe8QxEnM5cVFeZB
         xDndzYckAbVLtYra2eTp+8s0VvpkSKXbKrg223YR8i87wKmX860ZjR9o05Z/pRhqbUoU
         X6nkLOIwr+94JXW3Y5ybaEeiiLZfibdavUvKS2zJprZsgXQQtwirJzDLd/ZntTWuzPZf
         2BxSD8HvDZ9w/I24B0NJiqlRaYAQhQRgbpzeVKibGqpwOvKj3f4HT8Ohdms6qVPNoNOj
         UWpU4BS76D0R9v22GlxeHGL3f7g6nnPamz4Cecd+jzcb4Sv9qJV5h+oNua8EiYcm+jKM
         LphA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=yP/+jDPuPpm2+BnKJXWP29C84kw2w70TSUK6Hx/Gw5A=;
        b=jU1tqlvCSJ7DfH9ShR3ZUdhQAJliyEggElq0ILpLzDL3IuEzWPJVLgf4ggQc2RhXvQ
         8u0ULfPh5fH/3kzTIXCC9UygdJkiGIsITvETNGz1+qB0194aRyJlvaDXqyAAyp3hUuGB
         yp+JQBP/HNKUbNO6vVqbmS97uxRJDGOzroP7egnnbrU0ix3BBOTaVqdEb1TF697JJVSb
         2FAWfdFg9PfIJs+nmNQbkWY8xXXISOhIPgtbzL9dX71Ksoa1KLepydYMxxerdxRhysjv
         DV+arxQZMn4mdSgWnowrUtDB+Pr25kF2RGORsP2ncIFznzC2gomJY4yWUHfFwf/n3fLo
         cLyw==
X-Gm-Message-State: AGi0PuZdoEX89H0cqySeRO9fMlBZIdmJ+CvWlw9cAHMYajsa9MSQNe8i
	sQ+PuYRTmQzNaWyfQNEUgx/uPV/p9wUXAmCByaudgxood07Mow==
X-Google-Smtp-Source: APiQypLA/0HWODjQTQ6QipDd6SBhQ9VJwLMFPZ4tieYskrWqYksul6OreBDlWcYLuzVNOh0B/mvniZWN8cLQYCe1nSk=
X-Received: by 2002:a17:906:951:: with SMTP id j17mr2669246ejd.33.1586501773066;
 Thu, 09 Apr 2020 23:56:13 -0700 (PDT)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Fri, 10 Apr 2020 08:56:02 +0200
Message-ID: <CAAfyv35mccyzb9fqtjpvmExtz-zZQ6a5Xk5mcn7k1pUJx+T7WQ@mail.gmail.com>
Subject: meta-intel: Override SERIAL_CONSOLES variable
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

in meta-intel in machine configuration SERIAL_CONSOLES are defined as
: SERIAL_CONSOLES = "115200;ttyS0 115200;ttyS1 115200;ttyS2"

I would like to remove content of this variable (as on my target
system I get always this in journalctl):

Apr 06 11:12:54 intel-corei7-64 systemd[1]:
serial-getty@ttyS2.service: Succeeded. Apr 06 11:12:54 intel-corei7-64
systemd[1]: serial-getty@ttyS1.service: Succeeded. Apr 06 11:12:54
intel-corei7-64 systemd[1]: serial-getty@ttyS2.service: Service has no
hold-off time (RestartSec=0), scheduling restart. Apr 06 11:12:54
intel-corei7-64 systemd[1]: serial-getty@ttyS2.service: Scheduled
restart job, restart counter is at 62. Apr 06 11:12:54 intel-corei7-64
systemd[1]: serial-getty@ttyS1.service: Service has no hold-off time
(RestartSec=0), scheduling restart. Apr 06 11:12:54 intel-corei7-64
systemd[1]: serial-getty@ttyS1.service: Scheduled restart job, restart
counter is at 62. Apr 06 11:12:54 intel-corei7-64 systemd[1]: Stopped
Serial Getty on ttyS1. Apr 06 11:12:54 intel-corei7-64 systemd[1]:
Started Serial Getty on ttyS1. Apr 06 11:12:54 intel-corei7-64
systemd[1]: Stopped Serial Getty on ttyS2. Apr 06 11:12:54
intel-corei7-64 systemd[1]: Started Serial Getty on ttyS2.

so I do in local.conf:
SERIAL_CONSOLES_remove = "115200;ttyS0 115200;ttyS1 115200;ttyS2"

but then I get issue when building systemd-serialgetty:
 sed: -e expression #1, char 13: unterminated `s' command

because variable looks like this:
SERIAL_CONSOLES="  " when check with bitbake -e

Is there some other way how to achieve this? Thanks.

BR,

marek
-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
