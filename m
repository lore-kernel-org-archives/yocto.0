Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web12.18169.1578816108197749727
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Jan 2020 00:01:48 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: andre.draszik@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id 20so6288151wmj.4
        for <yocto@lists.yoctoproject.org>; Sun, 12 Jan 2020 00:01:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=uKkdavSPh3ZlnSkwIYv8Vuw0It5fjZolU02yWIuvNsA=;
        b=oLeN8K29MC9q4d4DNGznRWMdtHO0heIsHVmUs/VKUT40h5txGpgLrIc1Tj2qlJ/i5r
         /mZ7uyIlHqaZXw7/OtdfkHI3Ky60N9YbHFYSgnspMPV7/3TeaE6REkrabjOJZgBABNRV
         CIpYtYpgvdeb0pk9uVQJJ/iHYnt223eXZnbh8FlUQnT0PPrbSyaaVu2zyu4aEmvE77yq
         j+5EICKvKklWWRNqDAqiv3OoMokrFoeikHbWDOtp2fT+3b+BISVp2LuAkXYY26AqcBST
         tmmG5mboGtQyap/nJ+CSjJVGdzu453Ncc972FctHgjxanAFjqmcB+hKMxKikzeqwMYLI
         0yEA==
X-Gm-Message-State: APjAAAXYyzsmcOgMA/DzKw1+Nv7bBSB5+WU3z83tQUyBCWFBHKs46qAM
	d5hJvTbSapOh8JoZf23pXgg=
X-Google-Smtp-Source: APXvYqwXFo91zhk5OoUCRJLtb934bNKfXgvgZ4i/wifzdiR9pnumazzzSGvv5rm/cxKiZDlJs3nqyw==
X-Received: by 2002:a05:600c:2c0b:: with SMTP id q11mr13100770wmg.2.1578816106732;
        Sun, 12 Jan 2020 00:01:46 -0800 (PST)
Return-Path: <andre.draszik@gmail.com>
Received: from tfsielt31850.fritz.box ([79.97.20.138])
        by smtp.gmail.com with ESMTPSA id q14sm9645273wmj.14.2020.01.12.00.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2020 00:01:45 -0800 (PST)
Message-ID: <ef7a6099ca79e3032ee02d912e5b953c5ba1a720.camel@andred.net>
Subject: Re: [yocto] mailing list mangling name?
From: =?UTF-8?B?QW5kcsOpIERyYXN6aWs=?= <git@andred.net>
To: Ross Burton <ross.burton@intel.com>, Andreas =?ISO-8859-1?Q?M=FCller?=
	 <schnitzeltony@gmail.com>, Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Michael Halstead <mhalstead@linuxfoundation.org>, 
	yocto@lists.yoctoproject.org
Date: Sun, 12 Jan 2020 08:01:44 +0000
In-Reply-To: <15E914A621406CC1.15008@lists.yoctoproject.org>
References: <15E744ED02F41EEB.31817@lists.yoctoproject.org>
	 <62036ece5b4308f78ce3e9b517472e32b98b29b8.camel@andred.net>
	 <CAP71WjxqsYGRx8cn0JeyqrhvJbNQkQH_S7N0eURmJ411C9JAew@mail.gmail.com>
	 <CALbNGRQzPKmUR8OK6ZA=yD6yZzVt=JyW=akCMmFrPtMkRP+1vA@mail.gmail.com>
	 <092c83db-bf23-eea2-36a5-8b88ae0e96dc@intel.com>
	 <15E914A621406CC1.15008@lists.yoctoproject.org>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On a related note,

It appears groups.io is generating a new Message-Id header:

Message-Id: <15E914A621406CC1.15008@lists.yoctoproject.org>
X-Orig-Message-Id: <f868f741ae07674cb99e2b0c4ea6f7621ca16474.camel@andred.net>

Is this behaviour expected?


Cheers,
Andre'


On Sun, 2020-01-12 at 07:57 +0000, André Draszik wrote:
> Hm,
> 
> On Sat, 2020-01-11 at 22:43 +0000, Ross Burton wrote:
> > The mail headers:
> > 
> > From: Andreas M?ller <schnitzeltony@gmail.com>
> > CC: Andr? Draszik <git@andred.net>
> > 
> 
> The From in Andreas' mail looks appears correct here ...
> 
> From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
> 
> ... and I suspect but the CC doesn't because Andreas' mail was
> a reply to mine (which was mangled already).
> 
> Cc: "Andr? Draszik" <git@andred.net>
> 
> 
> Cheers,
> Andre'
> 
> > Ross
> > 
> 
> 

