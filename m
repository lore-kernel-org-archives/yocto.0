Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web09.9245.1604652497742724362
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Nov 2020 00:48:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=Q2W85/Du;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.167.47, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f47.google.com with SMTP id f9so835502lfq.2
        for <yocto@lists.yoctoproject.org>; Fri, 06 Nov 2020 00:48:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wvjF+FF3GeUHUHrGhFmHjOokd1k8kuTJXu/rtiHSon4=;
        b=Q2W85/DuShplxXHCfJLcubYucTVSPe4TK7PF90VW9i6yrFtNPa0HOoQfJVSuzeu6yf
         0VdNdY70w7JMTp0LUFyR9deW0Hjpd08xk0O/PCjuupdO0WcvnqbsnXKb2/RFf91FiOPR
         BuTN4O9FRh02JDj7q4+Cy8YvU4X6V6P54pcC8/st2DLYAJaqmy3JyNTkNzD3fVgnV5gj
         MbjbjU4QR30qbGiPSf040C3WOHJXQqmvAkfI0c3y0pPpqC8JERBctYijfV638cPkzDgz
         2ZCbaujP28avpLrTfysp+15uR5Pg0zP2msGts3qmrhJLV4YaV5D+1sQiqlEEpgCO3W1m
         Eoxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wvjF+FF3GeUHUHrGhFmHjOokd1k8kuTJXu/rtiHSon4=;
        b=beOfVGaRfWgs+/19brC6VF36RxXJblJtSrpt/1gFbtZW3W23fo1O8QhZwcMxch2F4F
         5V949lRg4L5f/5V77sRkoxyRAHAoNz7PZxZO//VV55DqamJQ7U2A9YqnxeuUvL4d49X5
         +1ph+yEtdk1ZEJYOtBevZQ7TdJXEVU6ck2ZhAFDsywpsTBrdFBeTOxyHz8ScZKsQ6Fnc
         QbgksZz3VczrmF4ZkyfAyvhGxzyYL+JVPFBoZgM27YcjFjk7nXb18pQk/FLaIg/33G4u
         Crz1kX7T80TK9hLyohj4aFDpA1eUYXnh2dGbYC5wyZvGtyTD12VsjeYt263K8s3C9/WD
         v0xQ==
X-Gm-Message-State: AOAM532EZSV1qoFNzClCUcjiHKhkpldnVTmScNGLWcgPSmEqvKVAfKaB
	x5iVHtaBG/O53OJMMgHU4hZsp75svxvenoSgirWhlA==
X-Google-Smtp-Source: ABdhPJwq3cuIk51jjJXVuMKVNSq7E6so1bLDOQRH9fjmnHqG4KYNsx7TBG98bw5OLaFGSYI65TQ0zSs79KNHVFHNZVY=
X-Received: by 2002:ac2:4428:: with SMTP id w8mr518527lfl.563.1604652495834;
 Fri, 06 Nov 2020 00:48:15 -0800 (PST)
MIME-Version: 1.0
References: <jx1l.1604651022903638809.kssq@lists.yoctoproject.org>
In-Reply-To: <jx1l.1604651022903638809.kssq@lists.yoctoproject.org>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Fri, 6 Nov 2020 09:47:49 +0100
Message-ID: <CAEt6NwrnQvDpFqVsdpGS_+6RS6SJzo6=UyORkFL-v6dBqUoRWA@mail.gmail.com>
Subject: Re: [yocto] Why python3 is build native in yocto ??? #python
To: william.jacob@sama.com.sg
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Howdy!

Am Fr., 6. Nov. 2020 um 09:23 Uhr schrieb <william.jacob@sama.com.sg>:
>
> Hi,
> I am trying to compile python package for yocto and I found  python3 (python3.7) is  build native then it cross compiled.I want to know why it is done like this in python.
>
> Basically I want python3 binary cross compiled for arm architecture should be available in recipe-sysroot and  recipe-sysroot-native directory . Right now it is available only in recipe-sysroot-native.

I'm sorry, but I don't really understand the question. You say you
want python3 crosscompiled. This will happen if something that goes
into your image depends/rdepends on it, or if you explicitly add it to
said image via IMAGE_INSTALL. Does this not work for you?

Greetz

> Thanks
>
> William Jacob
>
>
