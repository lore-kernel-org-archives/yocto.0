Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1763.1590048064269683403
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 May 2020 01:01:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vN9C13Rc;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AA1FE01BCF; Thu, 21 May 2020 01:01:03 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.44 listed in list.dnswl.org]
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51EF1E01B6B
	for <yocto@yoctoproject.org>; Thu, 21 May 2020 01:01:02 -0700 (PDT)
Received: by mail-ed1-f44.google.com with SMTP id s19so5980896edt.12
        for <yocto@yoctoproject.org>; Thu, 21 May 2020 01:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=qzXOlH4mrdmte7BUdffahPu2WCldUALf2nZFREK06as=;
        b=vN9C13RcYr2e1A1W1XTqMGgJ1o8JcIGaD/cKGQd8gFl0On31jGhyi7edQcsiGoB29e
         2yics0vPYFX4RZG8rQMjtvP5twVoXiIL4bh8ie+6EZc71ruFTNOH03x9WWh02wgF/UO7
         CEWuu9wW+n8MClFj9d/C3lyM6xefeaWP3iavCykqgoU1+SFAX27F6pVuFvjAd/iyZaQJ
         pSSMByxOT003Q7JA89GHQ9wbnYPdap0w/ZfBaLoT2A6LrEmc9I6s+jgLs7NZuiOSVuUy
         jD1VnA0J+MAGxMtOvk48px0KxKQW1sHumeTebsprVtkX8izfizITXaHpaBNJDeOUH0OE
         Sg7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=qzXOlH4mrdmte7BUdffahPu2WCldUALf2nZFREK06as=;
        b=UJnVpIqwOgfhzjpS2GKoAOQvD69ME1akgUJqNrXp6E/chp8hIEUHHBGQRpmHxFWS53
         YTbppOAPvVd3sOqHyy5+vMp47qOriHFG6BRUNhsKqlOKqP/aWq58ZIt5Q1fGulfs+hkO
         zjrzCUUEIqkcrn7oXUYAzqVkOx5Igr/AqxBysD3NulIdDBAiR+GtMNqug+eh2uU9JxhU
         BQr8sIVEwJHib/e77zk9t+snxjsFo1T/D/EJ99LrHDoO/Y4IytjheE1r53xEDdmnuTW8
         ZsGLs75vBwuQPFOvrd6KvEfLPZP/EL9cESYzpxhr7e63PfcD5Qri7xhYYgGH1gjZrr/c
         ff4g==
X-Gm-Message-State: AOAM530Cw9gSyWjmvm+g3sfVIUhfrJ9wqaWfzl+IEyoWGwDQhaMl38JZ
	//GFl89xVh9cnaCyUJoZucJrIOYdSfv0KHwFUTKZ7EmR
X-Google-Smtp-Source: ABdhPJwhLKfG6yO5wt0EPkTQiKs6378Icfh+7rhPYObv79ukon2Jkp0oWW2m4TP0HKQg5Rwp5f+VbBxQ5mzznS7jPdE=
X-Received: by 2002:aa7:d44a:: with SMTP id q10mr6997130edr.386.1590048061365;
 Thu, 21 May 2020 01:01:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:3344:0:0:0:0:0 with HTTP; Thu, 21 May 2020 01:01:00
 -0700 (PDT)
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 21 May 2020 18:01:00 +1000
Message-ID: <CAA=hcWRURPWfCSPoSa4PZoHSOpqBEesKGnDPT-_mjY=bRXpd0Q@mail.gmail.com>
Subject: Does OE / Yocto support dts file remove device node /delete-node/?
To: openembedded-core@lists.openembedded.org
Cc: Yocto discussion list <yocto@yoctoproject.org>, meta-freescale@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a following statement to remove a node in a DTS file:

&gpmi {
    /delete-node/ fsl,use-minimum-ecc;
};

I can build it correctly in OpenWRT build, but I cannot built it
correctly in OE / Yocto (Zeus), it did not remove the node
fsl,use-minimum-ecc. The u-boot is appended from meta-freescale
u-boot-imx_2018.03.bb. Any workarounds to fix that problem?

Thank you.

Kind regards,

- jh

-- 
"A man can fail many times, but he isn't a failure until he begins to
blame somebody else."
-- John Burroughs
