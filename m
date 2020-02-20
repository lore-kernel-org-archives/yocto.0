Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.5639.1582206768806457101
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 05:52:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XBiL6lnu;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: wpdster@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C59CE015FF; Thu, 20 Feb 2020 05:52:48 -0800 (PST)
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
	*      (wpdster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com [209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B998FE01564
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 05:52:47 -0800 (PST)
Received: by mail-qt1-f195.google.com with SMTP id d9so2858184qte.12
        for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 05:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AD6wTBSfZdhUENIfjChtRmErlZP6Asv3J3CdkFXe3hs=;
        b=XBiL6lnuF+agorAxX6NvXKSMx9/0qSCLJ+hbk+oj5zJ2ams32QWOprMxZo05dKhnBw
         YJwmFmlQTluK0qC0NAkSkWEv1mbytD51I2dXxr2M3Pjf3JV6bGlaXr9CahB7cPaGIHGK
         Mu2yQ2MpTp3lG+ayxtAL9doNiYCyu27V8S7GhxogN+7cf+uMdapHXA3jF/dmb6XK1IKs
         XJzq34S5Zy5bwHwmCiDpsGZJsNNimk+kJIESD/+9o3TLzsIKYL5+y9PC+KQw+Aqx5iTk
         1VHL+5+Gkqk4BCVgF0CUaVYhNDAMbJfSbEKkJf5Ok8Jv6ZdSfQh2sCKK6trBt+Skefj2
         xPtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AD6wTBSfZdhUENIfjChtRmErlZP6Asv3J3CdkFXe3hs=;
        b=guT9pX9tXUb19BR5Sgm2VWvudPYFfxNmW5sVoRRkRLD5347ph6+QuydMrlaPgIG8Pw
         EQa+Dgs4zv6NeFnnKVZIiVLEJ6uqAS6bNA88swJ0TV07NENtkQfPoqjb4HUemEqleONf
         dCMK/hK7rsIMar0BD/TxRF95orPGRYjGS830vLnO2xh9flUE5JOHUzr1Lm4HmqMO+NBl
         BGQINeBG0qrwK8k0Kb3aNxZ1SaU2IKMjOFNh5JfBmuUpJIIhDU1+nNaWsDp759OYzC74
         PCB7x+RnH5UXmHvQ2fpRVml6G3UUGSGkgcrOy+bbmPGjeu5PJV8gf0MBLE/7c+7KeN3e
         BvPg==
X-Gm-Message-State: APjAAAXk2w+rn9FbcYCXaH0psJyKj+fHcKy4QidWYQa7Ggv8m4UGlh+s
	jHo94kS53/4zpe41puIMgD0bvfrxiF9pfYVf5OA=
X-Google-Smtp-Source: APXvYqyfXwZdDTkDTRyJLdK9MdoZ8o/BKoPJkRwwowb1u/TY0C/fRVxJBtFB4YsZEe+h8HVRooouggPx+BhQb9+zm5I=
X-Received: by 2002:ac8:37e6:: with SMTP id e35mr26317235qtc.302.1582206766958;
 Thu, 20 Feb 2020 05:52:46 -0800 (PST)
MIME-Version: 1.0
References: <CAF_dkJAyS20skTujCh_SCQXq+muJjCmn5=mnUG+A8qWitzNzqQ@mail.gmail.com>
 <2c0fedf92f8a5cf805cc9908b438dab40ffd72ec.camel@linuxfoundation.org>
In-Reply-To: <2c0fedf92f8a5cf805cc9908b438dab40ffd72ec.camel@linuxfoundation.org>
From: "Patrick Doyle" <wpdster@gmail.com>
Date: Thu, 20 Feb 2020 08:52:20 -0500
Message-ID: <CAF_dkJAHqGUHi-W-bW6+69=89SCfxNB6yP7Ws+JjhOwRTjPxMw@mail.gmail.com>
Subject: Re: [yocto] Debugging gdb built by Yocto
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 19, 2020 at 5:19 PM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Tue, 2020-02-18 at 11:26 -0500, Patrick Doyle wrote:
> > Does anybody have any tips or tricks for how I might debug the
> > (cross-canadian) gdb built by Yocto's SDK?
> Do you perhaps want gdb-cross-mipsel ?
>
> cross-canadian is designed to be run as part of the SDK.
Thank you.  That is, indeed, what I want.  It demonstrates the same
problem, and I can debug it.

Aside... it's quite a mind bending experience to debug gdb with gdb :-)

Just imagine...

$ gdb gdb-cross-mipsel
(gdb) break main
(gdb) run
(gdb)

That last "(gdb)" prompt is from the gdb I'm debugging :-)

Also aside... and totally off topic, except that I'm sure some might
be wondering why I feel the need to debug gdb...

I am trying to understand why I can't get stack traces from cores file
on a mipsel system.  At the moment (after strategic additions of
breakpoints, printf statements, and more breakpoints, and lots of
internet combing), I am chasing down a rabbit hole related to the
facts that the MIPS build uses/produces PIE code (Position Independent
Executables, which is somehow different than Position Independent
Code), a new ELF tag (MIPS_RLD_MAP_REL) was added 5 years ago to
binutils, gdb looks for that tag, but the musl dynamic loader is not
aware of it.  I don't know if this is the root cause of my problem or
just (another) rabbit hole.  If anybody has any suggestions, I'm all
ears.

--wpd
