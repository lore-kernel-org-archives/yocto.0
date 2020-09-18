Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.7351.1600412431064711919
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Sep 2020 00:00:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YVnAzSp4;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 700BE38C06B9
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2020 00:00:30 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id g4so4455428wrs.5
        for <yocto@yoctoproject.org>; Fri, 18 Sep 2020 00:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=fh/E4oshFPdniX3nE3iYI+//7wZarat7kTSwldkkl+c=;
        b=YVnAzSp4xjoxagAQbpclDD/VEL8js+aH+6mdnb83nCh120uSJjk3pDW9l6Uf4EI7dR
         JuPR0fMrniT06r/+wENyZKMQqd0BY7vXz4RhaYsBzCW1OkvPHUESpOSQgSe+Ydob7u3p
         daCsd5uX/qBlmvWU7lYKLOtuALzk/g6Jj8DhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=fh/E4oshFPdniX3nE3iYI+//7wZarat7kTSwldkkl+c=;
        b=mFRxVRLBRnMBZH28SOIx4aY1tt+JfFQ1v6rKuwtqs9qMOM6B1W3xdBaIq0vSXF4kwu
         T91fq+HZlhmFwnJ9GtpVDoLobYkA7oDXK6ardSBtrXTRlYikM74EGJoGLRRrm+O8bm+H
         K0z0jwJD52kO9Nk+5JNIk+7+azwHHKcHXMIzWTAFLX6yyDVMspreWd91tTcnfRiyTx7/
         COFGVlUNCm6JBtHkBRIB+3Tgeob5JKOGxWa9dLv0t5JTWqUuvjSufOSM31wow8C9l0EY
         /WQmssTzkkZZuQBck+TPJlfYJa7//MV16YuQHrJHMdrfqfL/a9exw6jBwu42xnwSiv2/
         Z8MA==
X-Gm-Message-State: AOAM533vmlgx1FZ/3pV//OQtTF+JVc2yzcXPd06WpfDKDdG1JBnHrgAg
	HvUqTdZpV1mzO4RoUJ0tOVd+8A==
X-Google-Smtp-Source: ABdhPJxyPb6hj0ZcYnkItDLWZ0onMH8p5DrDNDaWXOgONLcKh93OnhXisLXzmD3Mb72TleHiZQWeUg==
X-Received: by 2002:a5d:5702:: with SMTP id a2mr35402162wrv.284.1600412428939;
        Fri, 18 Sep 2020 00:00:28 -0700 (PDT)
Received: from 7.1.a.4.b.6.6.4.7.f.7.9.a.9.8.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (7.1.a.4.b.6.6.4.7.f.7.9.a.9.8.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:c89a:97f7:466b:4a17])
        by smtp.gmail.com with ESMTPSA id v17sm3817955wrc.23.2020.09.18.00.00.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 00:00:27 -0700 (PDT)
Message-ID: <6f05819fc1ea465af800397daee81309dce7de6d.camel@linuxfoundation.org>
Subject: Re: [yocto] do_unpack() ISO Image
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Chuck Wolber <chuckwolber@gmail.com>, Yocto-mailing-list
	 <yocto@yoctoproject.org>
Date: Fri, 18 Sep 2020 08:00:25 +0100
In-Reply-To: <CAB=6tBRCEGBX4nfSj1THDqnO3HDZBk33xHAm=V+3vRwO5MbZyg@mail.gmail.com>
References: 
	<CAB=6tBRCEGBX4nfSj1THDqnO3HDZBk33xHAm=V+3vRwO5MbZyg@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-09-17 at 20:09 -0700, Chuck Wolber wrote:
> 
> Hi all,
> 
> I have a need to unpack an ISO image during do_unpack. This does not
> appear to be one of the extensions that is handled by default, so I
> am working out a way to use xorriso to do this for me.
> 
> I can get this to work in the following way, but it involves calling
> an executable running on the build host, which only works by luck
> since the host executable is the same architecture as what I am
> currently building. I would like to do this in a portable way that
> does not break when I try to build for a different architecture.
> 
> DEPENDS += "xorriso"
> 
> do_unpack_append() {
>     bb.build.exec_func('unpack_iso', d)
> }
> 
> unpack_iso() {
>    /usr/bin/xorriso -osirrox on -indev ${WORKDIR}/${PN}_${PV}.iso
> -extract / ${S}
> }
> 
> 
> From looking at base.bbclass, it _seems_ as if my solution involves
> something like this:
> 
> d.appendVarFlag('do_unpack', 'depends', '
> xorriso:do_populate_sysroot')
> 
> But it is unclear exactly where that would go within my recipe. Any
> thoughts?

You can do the same thing with:

do_unpack[depends] += " xorriso:do_populate_sysroot"

but note that you want xorriso-native, not xorriso.

Cheers,

Richard

