Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.16.1582148693945733465
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TTbrjQ+y;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F1DDE0173E; Tue, 18 Feb 2020 03:30:43 -0800 (PST)
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
	*      [209.85.166.51 listed in list.dnswl.org]
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 289EDE00782
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2020 03:30:41 -0800 (PST)
Received: by mail-io1-f51.google.com with SMTP id i11so8898130ioi.12
        for <yocto@yoctoproject.org>; Tue, 18 Feb 2020 03:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=/RBi8SoKNDspD7E9lgdHgVr2AFtLsqWbw/Bb8plyQGw=;
        b=TTbrjQ+yq6XmICDySdrkLt5tF2+ipqzg568h4wpVGlngQKOrcms1WBL8U3Hvp8Pf7Y
         WXzaMyoLFMcim8YAhOpAvUQhz/Ygg0AqJtDqiR8agHAKVOee/LBSUacCcwSy/OnEYx4b
         ZCZYIDZJJLVCaTVrfutxnGPjIyibiz1TM61ovtVy9b4uWuO4txrtFF7IEYl/syJaOjwZ
         N3bVQ+BE8/z6kwN2FRN3Tk9Nfflau6QdnUEDrkkrL17Q1y9OqvPzATIEbp65d1mLxkL6
         xTS5QxjxtfHhw06Tln0QFuDFC9bqULm0dFLiI1tPtwKb1v8HN4wl6ME8BePMtcfgVSjm
         MYrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=/RBi8SoKNDspD7E9lgdHgVr2AFtLsqWbw/Bb8plyQGw=;
        b=HRytXPdM4RWV5kY6SeGazTHCPGH4fp8SSZLXaQ8UT6YejoMGcC/yp4xh5fox08co2T
         /qBoNji1foRnT4bRMYt+l/ypMe2dTc3WcOezecaRzyQ5vWZ4wNWwaH4JdyBNwKrguBvx
         ErMdFw6vMCUkJrctmrdicYinnvifa9+GZaFT+MjOFYdJ2cwDtt2mI8Y0XYZS7eBHYN4o
         ZHRQyTfHQXtRD3sh0+QV1/8nBZ830DzNiCVp6Ff1NdNW4IRYRtZCvEuB0rAfcWOGBTKj
         fjkYo1KSgOOMoRepCUFqzW8W2JXxuYDZisbij+b9rD6o/QC/TYwb8p07vIm7fMo2k4jJ
         zkCg==
X-Gm-Message-State: APjAAAXjg9FBuRren+B9/Dm4cYoiPcA/oWR0bhCKgugXImNLFWHq81IF
	C+XAPyGoghVQGwPI5apBwqJe4z6vgTgwF6AYL3I=
X-Google-Smtp-Source: APXvYqxgwI3J339KH2qrTwbM/cpAHugZLBLcJXu0ryitnCPbREgA2d7l8pmjfZo09tqPgERCe5fN2k6KQ+3FKtDtFp0=
X-Received: by 2002:a5d:87ca:: with SMTP id q10mr15999273ios.192.1582025441431;
 Tue, 18 Feb 2020 03:30:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Tue, 18 Feb 2020 03:30:40
 -0800 (PST)
In-Reply-To: <20200218101122.GE104502@korppu>
References: <CAA=hcWTDqhJEE7MXFY9rvN93nf8=nWvshLoXKF3EMXYGLmZGbA@mail.gmail.com>
 <CAAfyv34yO7bSR9GBod1bXpD0sFnsSETsJQAzcmSgyY0orGtfcg@mail.gmail.com>
 <CAA=hcWQFcdUJKGTOitOAx1URD7r=9PPxsdd=hQO-Yb77=QHTDg@mail.gmail.com>
 <20200218085848.GA104502@korppu> <CAA=hcWREdVeYqnOs-3aSFOhobaQWvLoaEU8Rdku_RM=Q5q2Ruw@mail.gmail.com>
 <20200218101122.GE104502@korppu>
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 18 Feb 2020 22:30:40 +1100
Message-ID: <CAA=hcWTwmnCWuT73xqgiQQjwHXxSX0ww2g3g1YY6RLw5XS2_vg@mail.gmail.com>
Subject: Re: [OE-core] [yocto] Change RO rootfs failed RF Kill Switch Status and Failed to start Run pending postinsts
To: Mikko.Rapeli@bmw.de
Cc: marek.belisko@gmail.com, yocto@yoctoproject.org, 
	openembedded-core@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"

Hi Mikko,

On 2/18/20, Mikko.Rapeli@bmw.de <Mikko.Rapeli@bmw.de> wrote:
> Well I have zeus and am using read-only rootfs with volatile binds and
> I did not need anything extra. I would dig into this /var/log thing
> and patch it away. I use systemd journal so no need for syslogs.

I actually not too worry about the rfkill error but more worried about
why the rfkill failed? Was it caused by some system problem? At the
moment, I could not get WiFi or LTE connected, which used to be
working in RW partition.

Thank you.

Kind regards,

- jh
