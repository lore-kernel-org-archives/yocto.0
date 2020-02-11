Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.10717.1581430906418998711
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 06:21:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=HxaFIf5N;
 spf=none, err=permanent DNS error (domain: burtonini.com, ip: 140.211.169.56, mailfrom: ross@burtonini.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E07AEE01626; Tue, 11 Feb 2020 06:21:45 -0800 (PST)
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
	*      [209.85.208.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E212E00C62
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 06:21:45 -0800 (PST)
Received: by mail-lj1-f182.google.com with SMTP id r19so11809525ljg.3
        for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 06:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N97lRs8rAxGnoiMB0ovbAHLqnl2neC1XBYKphlDlnsc=;
        b=HxaFIf5NvS2rInBXvR/5ah2wxG0zpGNZP2oW2yMUEdESCD5u3IYM8fKFP7W40U/0B8
         B3Li4DJZLZjlLrmAF1MZsY/6II7b/xGUfs2Og6Cljj0tCVoin0DDWEAoMHAxkA5rbYhk
         hpvt3NBlt9ce+vg3Tw4v1ZiPp6BXRSqxomOYJru/fTaCBgTlu5or8q/28KjHm5KGDLAt
         bo/LqIj+fHlVHIZEhPDhG4aqrReasWRNc80OjY1BCCOaCSbIyRHb1Wexdam/zubgl9m+
         imy74iyW1r1BYnGj2O7izO1bIMkR7sFCp1YC5aqe8k0GsgFi55vt4j++p8HVZ3sNDSXH
         5BQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N97lRs8rAxGnoiMB0ovbAHLqnl2neC1XBYKphlDlnsc=;
        b=U6OjTUvKeNUL4ySDrueVtRNqahrlhxHzCbvqZ1MGOq5OEqtkAVvgnSJhVCFachc37Y
         sKiFKHVptQF+M7ef7kHo1cB9pjB+jlo4AA0/27kV1j8zOwCzWoZt5i5xA8c50grIc2cO
         Tvh1nA1JKZmlDtVwtrdpZMN7h+kEHIzQcuOSzxw4kPexB8QftXSMczN1z3Pg82cNsSWd
         1/A39X6dI9BwlFRlHwDMi5hX7uQa9NCsjDd/zrrM8II0uroQC5N2qTEzk4/FjjQWByJL
         EfXFgRIu9hj3gU47YH72i8fr5ePVpqeayvWq3EHIHdCaVz4Od0DRgAa1aSiwSOqtVCyt
         J9tA==
X-Gm-Message-State: APjAAAU+C/T8dX0yrzu85AL7cLveSsCFLiZ0o/7D2d46X3IuxJ5jVrMN
	TRcoO/SrHzOgf1aq00aLFvVYpf6xYX5ROP9PNv+WRtsCPOtlrQ==
X-Google-Smtp-Source: APXvYqxkDuYGH7DqTPsymKAcJhafc17MTDG7TedS5UMuby9RMbtOLs1dHu1QsJmb1jqKTQaZgFd/U2PpSZLCcvapS7M=
X-Received: by 2002:a2e:a0d0:: with SMTP id f16mr4393499ljm.130.1581430904111;
 Tue, 11 Feb 2020 06:21:44 -0800 (PST)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2002110549500.33214@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2002110549500.33214@localhost.localdomain>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 11 Feb 2020 14:21:32 +0000
Message-ID: <CAAnfSTvunnEShgi4_jn9vxVbvmjO0FfnbW-9exww9XQd6PE9Lw@mail.gmail.com>
Subject: Re: [yocto] reviving an old suggestion about YP docs markup
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 11 Feb 2020 at 11:13, rpjday@crashcourse.ca
<rpjday@crashcourse.ca> wrote:
>   first, yes, if something is a filename, then <filename> is the
> obvious markup.
>
>   on the other hand, variables should properly be marked up as
> <variable>, which they currently aren't. a good example is in the
> reference manual, the variables, where glossary definitions all use
> the <filename> markup for variables. again, it may make no difference
> in the ultimate rendering to something as trivial as HTML but, some
> day, it will be useful to be able to render things differently
> depending on the choice of output.

I'd say fine, patches welcome. Maybe Scott chose a subset of Docbook
to ease the formatting?  Either way, I can't see a good argument
*against* using a broader set of tags.  At some point you could have
some lint tooling to verify that every <variable> is in the variable
index, for example.

Ross
