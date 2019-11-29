Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.2341.1575065678470841455
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2019 14:14:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=p4+n2ckw;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F408FE010C9; Fri, 29 Nov 2019 14:14:37 -0800 (PST)
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
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D428FE00F08
	for <yocto@yoctoproject.org>; Fri, 29 Nov 2019 14:14:36 -0800 (PST)
Received: by mail-il1-f178.google.com with SMTP id z12so18631410iln.11
        for <yocto@yoctoproject.org>; Fri, 29 Nov 2019 14:14:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=v+j/yc/AaQN8xeZUO2/Cvixu0ufS890jOx3kRtnupuo=;
        b=p4+n2ckwdobQcpbCjcl8kTkawJCYMwif+7nBiZgipw/+s7y5v/nfh9IiQvAxo3JGXO
         1ucC/H4FuCA9qP2MnAknQ5vUH46S93T3sOYpaomytTtLI4xlftxD8Ag7jdkQR5RYyiNq
         13tNnmW0anaFeQGP2T+CnPEKUZ3WbHcyOycbG6GJ9owztHuwICENZo/FD6WTkMH/x+hy
         FnFvZM+EkaEcrX5Si1OirazpVB3eFwAuAqn3T9qJRL6XjiG3SNVKoypL9AdkyNH/5QT6
         FUK8NBaU9eV7KaeF+cWhzwwYol1kwcKGDgGbt/tWdXmF18vdVa6WowgOrhKnezb6ZA4e
         9Jkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=v+j/yc/AaQN8xeZUO2/Cvixu0ufS890jOx3kRtnupuo=;
        b=hZ2L9th+LSyF5FwGsCFD4jtlu39j9BLr3MkrfcheNChWWZO0S8eGKlE+iyDa6l0XoR
         WCJyz+Rxan6OIHREEiJMnQajY6nicAX8/+yWy1lnraYc1E/mYhFifLmOqSByLHejZPjh
         O0tyr3JxGSB6B2/dQYf5RrrZgAWzutMd+Bc0K7DwkefqG/qfsoADyFuiKRo2q9qsfHmz
         1beauv6W/VC2kS+EAkwJwFawABO7Dsvmrj0rfYq+p0aZ4hhVBq9RuoKSFwysw5pTueza
         jeTk//Kztpdh7S4lkCdf21s4x6eu7LWNMyfKSNNk07qb4eu0RTUbtK0nWOrzKjt15qrx
         ACfQ==
X-Gm-Message-State: APjAAAVITs2xf4Bps8ik2qQeNhCgYufL5qjfxduI6W1xx1jG+mpWPezu
	9di0LyUT6rnerJicAKjOEvGdRhWhuBwJ4smV0tRnJg==
X-Google-Smtp-Source: APXvYqzMSj8/cY6mNTgnH9lRTNJPIJT7Zrpig1S6PeX0/IGP0AzYcfNfzP1w7AVMD+YD4r0lkqnprxlDgLoBrXIK+rA=
X-Received: by 2002:a92:5855:: with SMTP id m82mr3128633ilb.302.1575065676007;
 Fri, 29 Nov 2019 14:14:36 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f24e:0:0:0:0:0 with HTTP; Fri, 29 Nov 2019 14:14:35
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Sat, 30 Nov 2019 09:14:35 +1100
Message-ID: <CAA=hcWRqZ_TNNgfNcPR_Sg0h+coP8FGw6kWZPJ-bdjQy28n5Zg@mail.gmail.com>
Subject: How does metadata include in an image recipe work?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I have two images recipes, one is included in another image recipe:

$ ls recipes-core/images

ex-image1.bb ex-image2.bb

$ cat recipes-core/images/ex-image2.bb

include ex-image1.bb
......

My understanding that the metadata "include" is to include all image
files defined in the included recipe as well, but when I run bitbake
ex-image2, it only built ex-image2 image, it did not built images
defined in ex-image1.bb.

What could I be missing here? How could I build an image to include
all image files included in another image.bb?

Thank you.

Kind regards,

- jh
