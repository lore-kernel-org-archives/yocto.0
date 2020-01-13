Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.39581.1578930996978575459
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jan 2020 07:56:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SNW67NBC;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: maillinglists18@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4736E0130B; Mon, 13 Jan 2020 07:37:40 -0800 (PST)
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
	*      (maillinglists18[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.44 listed in list.dnswl.org]
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B339E011DB
	for <yocto@yoctoproject.org>; Mon, 13 Jan 2020 07:37:40 -0800 (PST)
Received: by mail-lf1-f44.google.com with SMTP id r14so7193060lfm.5
        for <yocto@yoctoproject.org>; Mon, 13 Jan 2020 07:37:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=F2apfdQbwbKQIryMaSouPVPSHGYr3Nst6vl+hmBZDek=;
        b=SNW67NBCjRSHsA+Y1/TcmXbD8U6pVJNuKmrO/td59OhbMb6fk4whVbnqurRv2JsZ22
         rjAWri+LbQZsUnLDy0xUw4BGAMPSzPMQZjW7WL0aPwny7O3y4vQZeBeBTpwWmXoFLs0A
         9WqPkEsrMid+lIBp1vAIJv+QF5PodxGaqKxG3nHAS2UZ0HxqbGcGRwqI1nH7ePZIL8vo
         L2kxAFQsPFuq/tFTGQ2YrBLS/h4Elb/bAd0BeeAK/o/dgQuDCSSCUHVS9Xj6uonZvvti
         WZwb0y0If2xb5MEtivOPGZfRmF0fxnikmW/yyQWGpx0tzAm3J9g2iTqGyBPPujNh0ELE
         BUqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=F2apfdQbwbKQIryMaSouPVPSHGYr3Nst6vl+hmBZDek=;
        b=SCKNLl3Hg0EMmEneN5fuozd0F1iDSmttYU59qU4xGFIoFzD9ykrpPMqsn7ZTjB99VM
         WqVXHQqScM/y8S8VfJYtum6o8YHPIEJlNU6b/ez9cpbv7TvHW5aLcyDcgJtnfL0csCZ0
         eEQCk1sA7QqKMJaGSjYTgFuNrVjvwYiCbDcgKrf2PEf0RlWQrhN5Us2ImmA0vthW1q8j
         n+gnp4F8z6N/gjnRXWngadx4LwBrD0yec+QSxFQUoE/ayVF5sRqBfwUvIziNj8/E9iwF
         FfMHzXbH7qvXBIopc0gNgJRwSDFtIrT3unalj/89YRwOSShveRHrtkWO/kZ7UA/6/Dwo
         MLKw==
X-Gm-Message-State: APjAAAVUvQ0+M0z3FwjSrQTbXiem4j2uIjSAGrzdchk9K9q1lV7ITkW7
	VZnLd5PYbLL0Cmu4sjVeylO6HsFxH6iMDP8021+iAw==
X-Google-Smtp-Source: APXvYqybbTyUKT87m28I9ufBVZ2ET23J0e0XFOlCv4Uud/fErf8vwj0KhpU0mZ6Us/xLhydDuPlQUxBxzairsSXweuo=
X-Received: by 2002:a05:6512:488:: with SMTP id v8mr10626108lfq.173.1578929859121;
 Mon, 13 Jan 2020 07:37:39 -0800 (PST)
MIME-Version: 1.0
From: "Teemu K." <maillinglists18@gmail.com>
Date: Mon, 13 Jan 2020 17:37:29 +0200
Message-ID: <CAAmVmrptcat5-BZa4f=ntcsZYgH=Rn3Xt9zK6K=1ykXZwOwcig@mail.gmail.com>
Subject: Root login not working with Warrior
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I have Yocto image that was originally made with Thud - version of
Yocto. It was working fine and I was able to login as root via serial
console.

Then I updated Yocto to Warrior and now for some reason when I try to
login as root via serial console it says 'login incorrect' when I
enter 'root' as a user and press enter. It doesn't even ask any
passwords before saying that. I tried enabling debug-tweaks and still
the same. Can't login as a root.

I have another user that I can login just fine and with sudo I can
also use root access. I just can't login as root.

I looked through /etc/passwd and /etc/shadow and they looked okay. Has
something changed in Warrior regarding this? I tried googling, but
didn't find anything.

-Teemu K.
