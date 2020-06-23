Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1774.1592952988372245950
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jun 2020 15:56:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=YsDz9NHT;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: scott.murray@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8C81E01D74; Tue, 23 Jun 2020 15:56:27 -0700 (PDT)
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
	*      [209.85.219.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com [209.85.219.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 246A5E01D30
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2020 15:56:26 -0700 (PDT)
Received: by mail-qv1-f67.google.com with SMTP id e2so200002qvw.7
        for <yocto@yoctoproject.org>; Tue, 23 Jun 2020 15:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=BzWDxeVnqNzKG2rmo8BpSqH4dxYj1PIpsESsWKQYXjo=;
        b=YsDz9NHTB0eztt/m1EZuXNU6YNTnw/UaeBaABzA0MJUuAt7DDpx1/wrE4mywya8sYL
         FiLbaH81TVjtaPNiNjMpsNNuKGuR0Yg1N1BpR3MxWqmV0wGoazc3eIBxDjnVyYfxKoNP
         ac1nH7VcmV0z1k0sVGx+YGZ55Vh0V+b0fScqw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=BzWDxeVnqNzKG2rmo8BpSqH4dxYj1PIpsESsWKQYXjo=;
        b=a9UoedRCMxYO/iGSGWv/RU36+rTVsfJQYc8O4QGk1YE7pR0HKepXz4+EGnmhs0sesT
         65+gfDAQ5kt/LbrAf5RL49hjZ0HIBZfNO8YepGPLEP9PEhJD1hHiciUmQKce9N/Exy/U
         Vh/hTsmx3apC/zSwDueInC6EpYSUVINg0e6Nod9EMR7+AOV8gUZd4t2hBj3JNclhlYmj
         jsAJJiC4plPfGMPHm1fLNPr5h1VlO/e4uipeLw/eBoO8a1vkLfcooLIb6nbrVkFTM1Gy
         jzL4vVJT/z8Kn1iM/8nTciIC2qFIFwPDpb2V3uPMYAGIJzwr42p39UknEm1R0tVs2AoQ
         /C1g==
X-Gm-Message-State: AOAM530EfTJdGQ99sLKKl4ULEyLtX2INWFAG5XqMin/96u59hK2HZYwI
	rZnSrXaNeKF+tZDsnGOw7XGT6Q==
X-Google-Smtp-Source: ABdhPJz/81wUrpJ4pAy2kjHTHvJEoH0lYK7vIFm4Cb2Y+6OTbxtwnXo763jrFvmpzLIVnkF9I5qqBw==
X-Received: by 2002:a0c:f991:: with SMTP id t17mr29042893qvn.123.1592952985787;
        Tue, 23 Jun 2020 15:56:25 -0700 (PDT)
Received: from godzilla (198-84-179-103.cpe.teksavvy.com. [198.84.179.103])
        by smtp.gmail.com with ESMTPSA id n64sm1657676qke.77.2020.06.23.15.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 15:56:25 -0700 (PDT)
Date: Tue, 23 Jun 2020 18:56:20 -0400 (EDT)
From: "Scott Murray" <scott.murray@konsulko.com>
X-X-Sender: scottm@godzilla.spiteful.org
To: chris.laplante@agilent.com
cc: Khem Raj <raj.khem@gmail.com>, 
    "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>, 
    "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
    "openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW25'20
In-Reply-To: <MW2PR12MB2474BE8BA49651369970014F8B940@MW2PR12MB2474.namprd12.prod.outlook.com>
Message-ID: <alpine.LFD.2.22.394.2006231849410.2920@godzilla.spiteful.org>
References: <067a01d6496d$5f46d9b0$1dd48d10$@gmail.com> <MW2PR12MB247418580E300A77C479C1698B940@MW2PR12MB2474.namprd12.prod.outlook.com> <5267904d-6871-40aa-af46-6cc7f5249d09@gmail.com>
 <MW2PR12MB2474BE8BA49651369970014F8B940@MW2PR12MB2474.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tue, 23 Jun 2020, Chris Laplante via lists.openembedded.org wrote:

> > > Does anyone know what the intended audience is for the Developer Day
> > presentations? E.g. would someone who uses bitbake day-to-day but perhaps
> > doesn't edit recipes benefit?
> > >
> >
> > I would say look at the schedule and see if there are talks of interest to you.
>
> I did, but the schedule says nothing about the level of the topics.

In earlier developer days there were two tracks, one for beginners new to
the project, and one for more advanced topics.  The last couple have just
had a single track that splits the difference with talks that target
users with intermediate or above experience with the project.  If you're
familiar with the basic concepts of OpenEmbedded / Yocto Project, I
suspect you should have no problems.

Scott

