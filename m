Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.6947.1575316920650952454
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 12:02:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@melangex-com.20150623.gappssmtp.com header.s=20150623 header.b=ec54QD1z;
 spf=none, err=permanent DNS error (domain: melangex.com, ip: 209.85.208.170, mailfrom: morne.lamprecht@melangex.com)
Received: by mail-lj1-f170.google.com with SMTP id m6so968571ljc.1
        for <yocto@lists.yoctoproject.org>; Mon, 02 Dec 2019 12:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melangex-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=uv/ebZpU54yPI0+R46CDJ3ieclkC1lX8YdtCCe3RbJ4=;
        b=ec54QD1zyKxgUCDew/jQsQ4/GFvZTYrbotd1+RNdGra4UgaL6cjgRHDC8j1SxTFrXi
         L+3QAlId9kJ5hBGVHkNe27MBpoH7x9s7rS7iAtpt7U6kRsD1DtlOAdmPT/6e4mcNxbyS
         jeGgflQyH2Gs2irIkMmJx++BaYP7OK6sNCYWwPzOkZQkHna8qW+KPTyqb0hCUdwPoM8F
         Bht6dh4uDuZz2WBAbw+mKcOhXWD0gxvS6hKOhBTZ8mqaKOxRBJbWzfShE4klgHmIOt1D
         ayAAX5Gia6bCtSMhMC8XGvXNuXAyyo6vWJd5EAMO96dCppaXpFqXWPL098/L5HIBaWx+
         idyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=uv/ebZpU54yPI0+R46CDJ3ieclkC1lX8YdtCCe3RbJ4=;
        b=b+JJPhi6ElDXo8giq6CC4eKIgCAK9ES0bTFQS5oZ+h8AmovwemHdWUkjv+TusWnOfJ
         xka934lHhcx9iFx+963yVchxA3LhKwbJDAIJMlOpkm8oZWxVESip5TZpXnwCglOUNgUD
         2fZyEPP5bC2qMWi/1cTEDmFNKC8wP+IwD/iCyMsTGI1YXuwc7NWfd277yADJdVRdk44E
         wNHY9OIQxSNzLseTlIOuqKEP3rDpkHjoN/Dtf4aCkkDFiDJvqeoQRRYw8gwNUvRsMxqE
         9AXiOs0L13F6pmbl+firHi6EoeS85yHqDRx/AcVdas/hlG+o1Y9vuCqRGSB8KKvmu5hj
         7ovQ==
X-Gm-Message-State: APjAAAUviTeZ0fRKPVqVpaO8PXie9hGOQ6IzGUgw9/ych+S4O5Q3S3i9
	vOU64PGFcxixzpdcQDxT9OfZ84YJq7c=
X-Google-Smtp-Source: APXvYqz5C+UIUMI3s3z9Mk0LB6zDoS2VUS0vKMu917/1yaW0Gs79u8yJTMI0QdY+3bijleZa5EDC4A==
X-Received: by 2002:a2e:9ac4:: with SMTP id p4mr275529ljj.207.1575316918020;
        Mon, 02 Dec 2019 12:01:58 -0800 (PST)
Return-Path: <morne.lamprecht@melangex.com>
Received: from localhost ([209.203.60.70])
        by smtp.gmail.com with ESMTPSA id v28sm102333lfd.93.2019.12.02.12.01.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2019 12:01:56 -0800 (PST)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Mon, 2 Dec 2019 22:01:53 +0200
From: "Morne" <morne@linux.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Are both TFTPd and TFTPd-HPA handled in one YP version ?
Message-ID: <20191202200153.GD1625@archworkstation>
Mail-Followup-To: yocto@lists.yoctoproject.org
References: <Rp01.1575302414514166788.jCsI@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <Rp01.1575302414514166788.jCsI@lists.yoctoproject.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

>Sorry, I’m a newbie in YP. I use YP Morty 2.2 and from it, I’d like to know
>which YP version(s) is able to handle both tftpd and atftpd or (tftpd-hpa) ?

Are you referring to loading the kernel and dts files from tftp during bootup as 
part of a TFTP & NFS setup ?

If so, that is simply something you configure in U-Boot and any of the YP 
versions will work.

		- Morné
