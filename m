Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.18062.1578815847253602066
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Jan 2020 23:57:27 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: andre.draszik@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id q6so5527150wro.9
        for <yocto@lists.yoctoproject.org>; Sat, 11 Jan 2020 23:57:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=rg0Ph6qPmWBBbQcvJrNX019E2L1tXUkO1RvNx7l5uNY=;
        b=dY7+SGWRtMpUHtJ1Ca0d+X7DZwrrgr6CRC5XnVJ4fD+YDdyyKS2jur41gVwtG+a9B6
         UPssbXLJLbdJraXUlTwdScSwROFKiLhSKZl/V9cIFiMPLw5FjVCshV3Wmubk1FgVwrpt
         54Tx0pcMIMJ9UPnRmZTOAs+Dh93sGFOnQ2HKSm/JLWpK6radfTVP/dcZnb6qmBpy/c6K
         DA/ErbbgkardAUhyCymkq2EODoWOpy0dutSviO6LcD6wcNr7XFqenMeuHxQ7NiA/6Ghc
         KEn+RYr5WLvqW1e60gUapE/7O4RNwTp8G1k/4+HvW4+hEiTN1JdaypDIyAFc6quV9ZmA
         6Nlg==
X-Gm-Message-State: APjAAAUgrxbcOMGutnTjshUExZpcVh4trBJXBjf1lyFYCVcx87+4H5mQ
	1+GR/4C9MkhPm3y3EgEvmF0=
X-Google-Smtp-Source: APXvYqwcCYSFHksniD6KSuewA5YW1Kqp3dQ/BkUQHHlj/evhxJJ+5qleUmiWIFX80D2w7dCi+sDNpw==
X-Received: by 2002:adf:e6c5:: with SMTP id y5mr11997675wrm.210.1578815845708;
        Sat, 11 Jan 2020 23:57:25 -0800 (PST)
Return-Path: <andre.draszik@gmail.com>
Received: from tfsielt31850.fritz.box ([79.97.20.138])
        by smtp.gmail.com with ESMTPSA id b10sm9806871wrt.90.2020.01.11.23.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jan 2020 23:57:24 -0800 (PST)
Message-ID: <f868f741ae07674cb99e2b0c4ea6f7621ca16474.camel@andred.net>
Subject: Re: [yocto] mailing list mangling name?
From: =?UTF-8?B?QW5kcsOpIERyYXN6aWs=?= <git@andred.net>
To: Ross Burton <ross.burton@intel.com>, Andreas =?ISO-8859-1?Q?M=FCller?=
	 <schnitzeltony@gmail.com>, Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Michael Halstead <mhalstead@linuxfoundation.org>, 
 yocto@lists.yoctoproject.org, =?ISO-8859-1?Q?Andr=E9?= Draszik
 <git@andred.net>
Date: Sun, 12 Jan 2020 07:57:24 +0000
In-Reply-To: <092c83db-bf23-eea2-36a5-8b88ae0e96dc@intel.com>
References: <15E744ED02F41EEB.31817@lists.yoctoproject.org>
	 <62036ece5b4308f78ce3e9b517472e32b98b29b8.camel@andred.net>
	 <CAP71WjxqsYGRx8cn0JeyqrhvJbNQkQH_S7N0eURmJ411C9JAew@mail.gmail.com>
	 <CALbNGRQzPKmUR8OK6ZA=yD6yZzVt=JyW=akCMmFrPtMkRP+1vA@mail.gmail.com>
	 <092c83db-bf23-eea2-36a5-8b88ae0e96dc@intel.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hm,

On Sat, 2020-01-11 at 22:43 +0000, Ross Burton wrote:
> The mail headers:
> 
> From: Andreas M?ller <schnitzeltony@gmail.com>
> CC: Andr? Draszik <git@andred.net>
> 

The From in Andreas' mail looks appears correct here ...

From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>

... and I suspect but the CC doesn't because Andreas' mail was
a reply to mine (which was mangled already).

Cc: "Andr? Draszik" <git@andred.net>


Cheers,
Andre'

> Ross
> 

