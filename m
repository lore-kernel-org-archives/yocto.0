Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.11042.1581432322970101022
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 06:45:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=a47BU9ou;
 spf=softfail (domain: burtonini.com, ip: 140.211.169.56, mailfrom: ross@burtonini.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDD83E01672; Tue, 11 Feb 2020 06:45:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30590E00C62
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 06:45:22 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id a13so11853109ljm.10
        for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 06:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4W9COY/yPVGDrO6AIzMYnVzKYboFOguhUHGlBDg3S6E=;
        b=a47BU9ounfrx2PVCXiRn270zAwuca3nz9wNF+s5tp7OKKskV/EnYVWs1x9wP8A+w3a
         ghVMr6/uEIUHU1LcsmcIaNvxho043cpZZQcGSJ2fUeGj3sUWVYYSEpZk6ee6VMKA2zkp
         8cXE79pQpYZ8SIVV8ms98Rqs7lH/NRk9kha4L97jUAl3Mg0rMcBQg9RTbmsllySZFhV6
         Yv226VWeip9uGxSviI3B2+3SSMoio0rbfKasNqkxIg/E6jCtKWjNlTOpzoQZ6maiSCSF
         u/aUmHPTVLZEcG57LvAGBiDhczLNOoe8/7X3UPGgDXLfAgFVkIcaHXvVk0u5KpMhuHBT
         O4FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4W9COY/yPVGDrO6AIzMYnVzKYboFOguhUHGlBDg3S6E=;
        b=Gwpt0sbG9ckE/UOtP+1ZNeUpvceNSgjn5jxJXxw2yRBbdZCsstpwPgoellypNrIjZp
         mdJhcMabzZcSEOwMl8uq5j6d6bzVTclqkAaYMZpHMbqqZPbRCSwux+S7N8IwMy9x53DA
         tmsl9Wp+k/MOzsGoMRYW5QQmygMrjjn1GHa4RUtRxCYfnM6KHbr//5xHHHxAB59P1Nqv
         jToMzG+9PvB8sK3OCYzHtXyr5QvoolIlBn/bfwlB6eMmEW1wJOwp9CSEo2f9WgRWpveq
         jsTnz8LuRjyuPdW4qVvdITw9y77DXzhS4Ls7IiKJlk44fseZuB3e/SvsFmPBvllzDs8s
         TVmQ==
X-Gm-Message-State: APjAAAXCz24l1QzeS2d6AtoH96TP3BYqrcQFkvxqKJGCQf1nixhIhreC
	x6zNf58aMj1TjpocKwQ0+0FVhdTxjygtz6KIwrnWOA==
X-Google-Smtp-Source: APXvYqz9QK/TYA88q+GndNcofiospF0V4F+Lb7TgB1O8atS+w0lZO60ZAAg6Is/VU7exQk2igh9WPiiWAAMKTpzqTf0=
X-Received: by 2002:a2e:5854:: with SMTP id x20mr4179672ljd.287.1581432321240;
 Tue, 11 Feb 2020 06:45:21 -0800 (PST)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2002110549500.33214@localhost.localdomain>
 <CAAnfSTvunnEShgi4_jn9vxVbvmjO0FfnbW-9exww9XQd6PE9Lw@mail.gmail.com>
 <alpine.LFD.2.21.2002110932160.42474@localhost.localdomain>
 <CAAnfSTtbBpgHCeDYnSYjYi+NPqTr_pXFz6_83QZ94YgcwLrR+Q@mail.gmail.com> <alpine.LFD.2.21.2002110937170.42658@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2002110937170.42658@localhost.localdomain>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 11 Feb 2020 14:45:09 +0000
Message-ID: <CAAnfSTvfGf_XxF1k-3x9pHhcFbYG4MzzpyPNoWOkT82tquTnXg@mail.gmail.com>
Subject: Re: [yocto] reviving an old suggestion about YP docs markup
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Ah gotcha.  My docbook-fu is somewhat hazy.

Yes, seems sensible.

Ross

On Tue, 11 Feb 2020 at 14:43, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
> On Tue, 11 Feb 2020, Ross Burton wrote:
>
> > My problem with <firstterm> is that you need to keep on reviewing to
> > verify it is the first usage.  Better to post-process that, surely.
>
>   but that's not the way it's normally used ... <firstterm> doesn't
> necessarily mean the physically first time a term is used, it's more
> typically used to identify where the term is formally introduced and
> explained to the reader.
>
>   for example, there's nothing wrong with using, say, "BSP layer"
> early in a manual as part of a list of YP components or something, but
> <firstterm> would be used when the manual finally got around to
> explaining the term. that's why <firstterm> is frequently used for
> index generation; because that's where the reader should go for the
> *explanation* of the term, not just its first physical occurrence.
>
> rday
