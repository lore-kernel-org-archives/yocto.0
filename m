Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.193.1615838335665951241
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Mar 2021 12:58:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=S3OO/xjS;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id u16so9322397wrt.1
        for <yocto@lists.yoctoproject.org>; Mon, 15 Mar 2021 12:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=h0l0XUDEoMqKZyCvUimT37Q2to3A28FL/JspJDyEYT0=;
        b=S3OO/xjSIlLL1NkmNdeluLZTULX+un5F8n89v8N2TFt25T+IvS3O0KSMA841fa9DuP
         3zisGKYusvdfe8hxefkghUsUHkfljMfCdeao5FcmW6ltCJnOrOVcDYNu+uuICqMwdut7
         UJFvNef5ybPsde0+huZbRJC70hPA/d3RRbf+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=h0l0XUDEoMqKZyCvUimT37Q2to3A28FL/JspJDyEYT0=;
        b=MqS/IUwttwUNrNoujm+DRVLtRhC+8bVnW+veeGTx8/LWYbvN77uBcPNaurnPILZV4b
         go7swv0ieWKla8eXZ5nY4rl4pJViGSBVfa/pBN0f9QS3ZaUL5M7kPgQt0M95pBpeygNf
         lspIO/s9FQdh5jIJyrWCLo8w5TudCzEAHDvxjpbvc+NYQwIyZlJrscDOS8Kl5rIZgtGg
         ZTHRLpoWKXefgQQ6D4CaXAQohCo9gFSZS31rR90M9j1j1OwFkU4iQLd4KnhQQlCQK4/W
         QXwhDOrvxlqdxZMygxXOQPYVERZuWNzb8IHIWCuxZmS4JxJR+HfhjkxWBRWWizfnwZCA
         axRg==
X-Gm-Message-State: AOAM5316GLqYcWxrY+I/8v/tggOqQ9z6yp7PWekOy1MfRewOx3BogcuF
	VnWJXwvF+wCR4FLf5wMEi5MItQ==
X-Google-Smtp-Source: ABdhPJxwqDUcd8S7mflHRgHPXzP9c6Jp9nMFcVElK1eM++MiilQa5Kb/DBAX174X8ADNWn2jmTZd8A==
X-Received: by 2002:a05:6000:11cd:: with SMTP id i13mr1207460wrx.417.1615838334055;
        Mon, 15 Mar 2021 12:58:54 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:1452:a8a7:f5e8:db32? ([2001:8b0:aba:5f3c:1452:a8a7:f5e8:db32])
        by smtp.gmail.com with ESMTPSA id b17sm19607342wrt.17.2021.03.15.12.58.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Mar 2021 12:58:53 -0700 (PDT)
Message-ID: <42212f2bddd7a0d18b408694e6f582762a109496.camel@linuxfoundation.org>
Subject: Re: [yocto] How can I create a truly minimal distribution that runs entirely from RAM?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Zoran <zoran.stojsavljevic@gmail.com>, p32@tuta.io
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Date: Mon, 15 Mar 2021 19:58:52 +0000
In-Reply-To: <CAGAf8LzJxFDXnf0T99oCEo7iN37p0K0_CZWH=2r1NHW=ypZNvg@mail.gmail.com>
References: 
	<CAGAf8LyKF9dAcPc9VVBTNcurVzNp3wgmgfVgDhMdK35fHtn_hw@mail.gmail.com>
	 <29235.1615763811371292564@lists.yoctoproject.org>
	 <CAGAf8LzJxFDXnf0T99oCEo7iN37p0K0_CZWH=2r1NHW=ypZNvg@mail.gmail.com>
User-Agent: Evolution 3.39.2-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2021-03-15 at 17:01 +0100, Zoran wrote:
> > How can I instruct Yocto to execute do_image_cpio first?
> 
> YOCTO people are entitled to answer that question. Aren't ya, INTEL folks???
> 
> Actually, iNTEL (IOTG) is responsible for that (since YOCTO support is
> 90% from INTEL), and I assume INTEL YOCTO people are entitled
> answering that///

For the record and for the alleviation of any doubt, Intel was one of 
a group of founders of the project and continues to be a valued 
contributor but has never been 90% of the project. Intel has reduced
its involvement more recently both in Yocto Project and in other open source
efforts as it's focus has changed over time. Many of the people who
did work for Intel and contributed to the project now work for different
organisations but still contribute, Ross and myself included.

I'd *strongly* suggest sticking to technical discussion rather than
directing comments at any specific company in future. Your comments are
confusing and off putting for people.

Cheers,

Richard

