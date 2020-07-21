Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.15023.1595321587989602853
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 01:53:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=HU5P2bCO;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86570E01ED0; Tue, 21 Jul 2020 01:53:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93A47E01E4E
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2020 01:53:05 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id a6so1714129wmm.0
        for <yocto@yoctoproject.org>; Tue, 21 Jul 2020 01:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=zYCNEJACaPiEaUhEZirYxzQJlragZteVQ/Y6JR8khRQ=;
        b=HU5P2bCOgnZa4vUNTBsuOU24RDcTkE1lyiE656vv8YbD2OJYS7RIJ6PIWGRCSMWoAG
         /GIDJCbswCGD14Y6DBoAFWMIcsYXvOc4YnUvZ9mpc9o5UaatpG8OSy20HLcbfujtFvJf
         pOTcV9fr7CEs9GU6IrhE4HF1GO/vpmzZlvVTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=zYCNEJACaPiEaUhEZirYxzQJlragZteVQ/Y6JR8khRQ=;
        b=MlnkMxxktJEEighyCdDrVETPQbYtxxYxHshe4Qzcoifj0QqR6j5SLqYOnVWTaIfF1x
         ga+UEhG2kz3JzTKeEYEM6SCK859M5BF2MAXYgPcZ5wbOT305swURHbC9hRU0wJox8410
         SLHEo4BggPfEVreLQ6rjRKR2EGzw8A94XHPqgmDL2uOrYH1SD8JxMDP/APtciL/4K28e
         VKAt00Q9o78v+rRZUDVp5wI9TgeBA7jk278TNxuK20GX9CeqTjUtEPjBZ4Rql4T5RKYR
         t6qMV2J+OrGH1GtSzOwqse7yJrOXV0V5S7PLmh+GBd3fC4OAsR3xPsau/zN1A5sxH7Qa
         SH1A==
X-Gm-Message-State: AOAM532SbD1eLDeMKlcCERRlwpBw0RpWoEyi3g8T0amTosOECRPpTqif
	lOZ8HHGRYDoDHpI2A+9VeftxBw==
X-Google-Smtp-Source: ABdhPJwmzdzRKW+GVQvXv5EVZ+ZvImTsC3czMBC7v5o1nKBEvqWSkC9AVIClfBGBOBP8cPHw5Iarnw==
X-Received: by 2002:a1c:7fd3:: with SMTP id a202mr2961779wmd.67.1595321585130;
        Tue, 21 Jul 2020 01:53:05 -0700 (PDT)
Received: from 6.d.c.a.e.4.9.c.8.4.4.2.b.1.8.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (6.d.c.a.e.4.9.c.8.4.4.2.b.1.8.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:181b:2448:c94e:acd6])
        by smtp.gmail.com with ESMTPSA id l1sm39019702wrb.12.2020.07.21.01.53.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2020 01:53:04 -0700 (PDT)
Message-ID: <cca863dd41cf837cfaa89484c010578e5ac0809b.camel@linuxfoundation.org>
Subject: Re: [bitbake-devel] [yocto] Stable Warrior branch
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Adrian Bunk <bunk@stusta.de>, akuster <akuster808@gmail.com>
Cc: Patches and discussions about the oe-core layer
	 <openembedded-core@lists.openembedded.org>, "yocto@yoctoproject.org"
	 <yocto@yoctoproject.org>, "bitbake-devel@lists.openembedded.org"
	 <bitbake-devel@lists.openembedded.org>
Date: Tue, 21 Jul 2020 09:53:03 +0100
In-Reply-To: <20200714135619.GF25970@localhost>
References: <03a353c4-80dd-e66c-3222-7850a98182f7@gmail.com>
	 <20200714135619.GF25970@localhost>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-07-14 at 16:56 +0300, Adrian Bunk wrote:
> On Thu, Jun 04, 2020 at 09:28:00PM -0700, akuster wrote:
> > Hello,
> > 
> > The Warrior branch of Poky has had its last official dot release.
> > It
> > will be moving to Community support and EOL within 6 weeks if no
> > one
> > steps up.
> > If someone is interested in taking on the responsibilities of
> > maintaining the "Warrior" branch moving forward, please email this
> > list.
> 
> I have an interest in keeping warrior branch alive in poky and meta-
> oe,
> and I'll take this responsibility since noone else seems to be
> interested.
> 
> > Please look at the
> > https://wiki.yoctoproject.org/wiki/Stable_Release_and_LTS for what
> > will
> > be expected.
> 
> I have some ideas, but not yet a fixed plan how I will set this up.

Ok. FWIW we are struggling a little with keeping the older releases
building on the autobuilder as the workers change. We do have plans for
handling this with buildtools but its not rolled out on the older
autobuilder-helper branches.

I do have work in progress working with Jeremy for thud
(contrib/rpurdie/thud), much of which should apply to warrior too
(contrib/rpurdie/warrior is a guess). I just really want to highlight
that there may be some initial work to get these older branches to the
point where they continue to work on the infrastructure.

I think we may have to accept backporting a lot of patches in helper to
bring things more into sync with master/dunfell to make all this easier
to maintain/get working.

Cheers,

Richard

