Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2436.1582233501302298456
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 13:18:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NaGKINKs;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6FD3E016E8; Thu, 20 Feb 2020 13:18:20 -0800 (PST)
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
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ABAAE016B7
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 13:18:20 -0800 (PST)
Received: by mail-pf1-f196.google.com with SMTP id k29so2517924pfp.13
        for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 13:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :organization:user-agent:mime-version:content-transfer-encoding;
        bh=3cDd2UntlKv2B8A9OVPxoW9IqdB3cJSB/2Spfwof5gM=;
        b=NaGKINKsc1spzYPGOoeb0erfZerMP7Zp+OWI/mWuhBsNP8kMkB0TstcRaLy7oY6EvU
         JyhlqQmbvyP4CTGd4ZzEnwzY2439X5AXn44qRUCMRsqTHtB0ymsVgPhrC73QZ67caOU7
         64MLzVcLz/kWifYMoCLkRUjVmnxkVusR0D9S7tr/95/RtRoRoVXx6wyrFjJ6kNL8ViV1
         lZbyo1cKuQekil83JTilI2cgTZ9Nvt9Y7ZlGBymUhle2HhvLFrvZdo8tsjQh5cAEdojV
         RNHtbXENZhLZtSSVuJQAwuu3ltLyoHNFTR5QdF+J6RMGSZJW3BryA1z4aS+PKWcqSOII
         RHIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:organization:user-agent:mime-version
         :content-transfer-encoding;
        bh=3cDd2UntlKv2B8A9OVPxoW9IqdB3cJSB/2Spfwof5gM=;
        b=OuL/zGh75Ut8oQwwErtVMMP+PrIkxf4UG5H12ie2RdXcamt1n+bGtXzgayS/c3cXLj
         Nbv7ZvHEeC51xa+AN3H7021Ozbxc1HnCuyXYSyVQU90y1NifkaH/UUk1G5vb9doC0a01
         XWtaluBlpQ27TwnhkZTLg0pdngmLmBCkShmBw8XiN2VgoYWjWFDgCPqiIQ/QYW3G/QxD
         2qA1jLJnPhS/TA/Qq9FxpTPT37XVBR433uhPFXmcIM3oKzMgLcgV5c1+0YQh/hWdq6qb
         aQqY4ZY/3ZxVvKWKHG117RexRqBG2v9mnPQ5DdJLcGDq1FQpbehI4JgzYNzhF0I/VLpT
         /KcA==
X-Gm-Message-State: APjAAAWW0BU5htDRN+x0C2b0/YUi7WbDcd6OWo7Bj1paMsXFV/PCWHh5
	6Kk5YRqdhMZMhJgoZCvUWOI=
X-Google-Smtp-Source: APXvYqyjvkRaWQ6wIYpCwRlk/lMOEyfmTUJ8lZOtmq7HR8SYB6nDXA4uMh2dBwmyXMt0ZuyxA8apSQ==
X-Received: by 2002:a63:3001:: with SMTP id w1mr6864207pgw.382.1582233499412;
        Thu, 20 Feb 2020 13:18:19 -0800 (PST)
Received: from tyche ([2601:646:9200:4e0::ebc])
        by smtp.gmail.com with ESMTPSA id z19sm503023pfn.49.2020.02.20.13.18.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 13:18:18 -0800 (PST)
Message-ID: <0a93546525e6afdd05ee7320a7f0972951d96856.camel@gmail.com>
Subject: Re: [yocto] Debugging gdb built by Yocto
From: "Khem Raj" <raj.khem@gmail.com>
To: Patrick Doyle <wpdster@gmail.com>, Richard Purdie
	 <richard.purdie@linuxfoundation.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Date: Thu, 20 Feb 2020 13:18:17 -0800
In-Reply-To: <CAF_dkJAHqGUHi-W-bW6+69=89SCfxNB6yP7Ws+JjhOwRTjPxMw@mail.gmail.com>
References: 
	<CAF_dkJAyS20skTujCh_SCQXq+muJjCmn5=mnUG+A8qWitzNzqQ@mail.gmail.com>
	 <2c0fedf92f8a5cf805cc9908b438dab40ffd72ec.camel@linuxfoundation.org>
	 <CAF_dkJAHqGUHi-W-bW6+69=89SCfxNB6yP7Ws+JjhOwRTjPxMw@mail.gmail.com>
Organization: HIMVIS LLC
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-02-20 at 08:52 -0500, Patrick Doyle wrote:
> On Wed, Feb 19, 2020 at 5:19 PM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > On Tue, 2020-02-18 at 11:26 -0500, Patrick Doyle wrote:
> > > Does anybody have any tips or tricks for how I might debug the
> > > (cross-canadian) gdb built by Yocto's SDK?
> > Do you perhaps want gdb-cross-mipsel ?
> > 
> > cross-canadian is designed to be run as part of the SDK.
> Thank you.  That is, indeed, what I want.  It demonstrates the same
> problem, and I can debug it.
> 
> Aside... it's quite a mind bending experience to debug gdb with gdb
> :-)
> 
> Just imagine...
> 
> $ gdb gdb-cross-mipsel
> (gdb) break main
> (gdb) run
> (gdb)
> 
> That last "(gdb)" prompt is from the gdb I'm debugging :-)
> 
> Also aside... and totally off topic, except that I'm sure some might
> be wondering why I feel the need to debug gdb...
> 
> I am trying to understand why I can't get stack traces from cores
> file
> on a mipsel system.  At the moment (after strategic additions of
> breakpoints, printf statements, and more breakpoints, and lots of
> internet combing), I am chasing down a rabbit hole related to the
> facts that the MIPS build uses/produces PIE code (Position
> Independent
> Executables, which is somehow different than Position Independent
> Code), a new ELF tag (MIPS_RLD_MAP_REL) was added 5 years ago to
> binutils, gdb looks for that tag, but the musl dynamic loader is not
> aware of it.  I don't know if this is the root cause of my problem or
> just (another) rabbit hole.  If anybody has any suggestions, I'm all
> ears.

You must be on to something here, since musl does not do anything with
MIPS_RLD_MAP*, does this all work well with glibc/mips in same settings
?

> 
> --wpd
> 

