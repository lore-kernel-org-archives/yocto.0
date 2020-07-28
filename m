Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web12.7052.1595919794092390760
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 00:03:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=bIKWjhgT;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.167.54, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f54.google.com with SMTP id c3so3238814lfb.3
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jul 2020 00:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/QOGsT2n9kBwpb/jl+m+Km6oLnezkiXBoW1eDXabpkc=;
        b=bIKWjhgTRC1t/UG0m6YzRPYN/ACi1djyPCxYwinGWpoOgjFeSABqpsmeVje2RRwd6X
         oWfIP2NciL+ID4x41yLNShp+PaRGEed3Vff21XS5kTkYCTn6K/8v2st+uvH1BSoH97QD
         8AleXPA5TQrbYkbQxZnrfw2oex1DvoddVuBiDNLJdqu6fHBVL2Mufy1nyIX5913Mst0q
         Rh8KUKjKDFgN2NO53bs64Ifc/KCBekA6haP8jM/wZoQH9qaH+zSzny9pR4NjQ1LYAAwy
         2h0d1s1vd+AvBCKmeLQdY4Nrqq0dxJNCtxQV74uegQT8KwqjARwqepGYl06vnCISEatl
         8tRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/QOGsT2n9kBwpb/jl+m+Km6oLnezkiXBoW1eDXabpkc=;
        b=Y2rRqXuqS4fnB7ar0bhPa4YDjmSCskl+eSUphnKLrJk0+pZ2CQ8gg92qcOsi3WY+dh
         a3W0NJBASRu7e52ThVT7bsSNpmTrt3C9ya8WCIZU/IXdRdxecN3fVPBH5qa5cNhwaEen
         aCypaVDObRkAZF3MXs00PcFoJjyRbafsYtXm4v7MYgd+lJ1As5Zi3uNELTRALZpkDg7o
         oAlTub5mQxG9gCckUkoltxTMVjoZFN/yL99kPzFUBHHQONUkVTvfQolRQHHRwwWRDPc8
         qG6B7hQpfoQADWhBOL5HIhHvUKAMjttnVMmIjHywmH7/GBETutRTORczt/aULrqEKmND
         eKeg==
X-Gm-Message-State: AOAM533nnlMfefaKeRz3RJN/OVFl6fmatKawIIkHZW/v9uL4lKDNTNFT
	fdplpW2B+ZmdNvTzSSOsqEIZEFEnlSWEwUlmIsOeOw==
X-Google-Smtp-Source: ABdhPJy7CF5/306VPGoB6Ys5FfAknIuFcFeQ9rHD3BAwR/tmA5e0EM1gugqnu6nmACqP6S0WdlyzDgYstZfdFe8OG2g=
X-Received: by 2002:a05:6512:2082:: with SMTP id t2mr14171100lfr.142.1595919792377;
 Tue, 28 Jul 2020 00:03:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAJw=dJ_yy8+A6JWoB39rRB0+FbQX+LGFgFmnn9dTWcqPFN2ruQ@mail.gmail.com>
 <CAJw=dJ-WJfC=sss_aS6mokwUPTZby65GN+cayYM=pqWs6o7JVw@mail.gmail.com>
In-Reply-To: <CAJw=dJ-WJfC=sss_aS6mokwUPTZby65GN+cayYM=pqWs6o7JVw@mail.gmail.com>
From: "Josef Holzmayr-Khosh Amoz" <jester@theyoctojester.info>
Date: Tue, 28 Jul 2020 09:02:45 +0200
Message-ID: <CAEt6NwoPfHC2jjjAXHxDdBJZf0p0f7kKK9MGTitekJ4CbqZ+Zg@mail.gmail.com>
Subject: Re: [yocto] Remove connman package from yocto sdk.
To: NIKHIL PATIL <nikhilvp29@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Howdy!

Am Di., 28. Juli 2020 um 07:19 Uhr schrieb NIKHIL PATIL <nikhilvp29@gmail.com>:
>
> hi,
>  Still we ar facing same issue  ,
>   If anyone know, please help.
>
> On Fri, Jul 24, 2020 at 6:14 PM NIKHIL PATIL <nikhilvp29@gmail.com> wrote:
>>
>> Hi team,
>>           We want to use NetworkManager to access internet using LTE module . but connman and Networkmaanger both are installed.
>>
>>           I struggled so much to remove connman,  I tried as follows :-
>>            1) Added IMAGE_INSTALL_remove = "connman"  in local.conf
>>                             but it still come with sato image.
>>
>>             2) Added DISTRO_FEATURE_remove = "connman"  in local.conf
>>                             but it still come with sato image.
>>
>>     By default connman is coming in image , how to remove connman ?

Do not remove connman. If you don't need it, then do not even build
and install it. find out what pulls it in, and change that.
Additionally, tinkering with that through local.conf is a bad
practise: create your own image recipe and start from there.

Greetz
