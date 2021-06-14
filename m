Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.184.1623702548640784735
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 13:29:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=R+R8bxit;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id o3so15852251wri.8
        for <yocto@lists.yoctoproject.org>; Mon, 14 Jun 2021 13:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=sa3ut3DcNafn1Kq5wCfPapjD47j1a3nyhxsdN1yLULQ=;
        b=R+R8bxit5zuMPZXvrAhexkZpRHxjSrlCOV8N9cHF/y6mGI1etrh6qg/OZX8Vra8Vlb
         aCecQGsGC95zIUGV22QKZBPAVOOwkSCxaaY6N3Hajtaqh3iRj8Nfx8p4DEpdQufoL4r/
         RFyj9GdmFigpoiUSPoyWT7g/B5pSRTVHy8LSo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=sa3ut3DcNafn1Kq5wCfPapjD47j1a3nyhxsdN1yLULQ=;
        b=gon6Jw+mpb7dJlbMrwZgkcu2INjdkZecT05HJPJeppnPUWhTHuXC0BMR17CU2ExQl3
         k4f4VIuPTdkd2Jqq38Ku9Prb0Bukb8RYicUje3ipZoXxJNNL8stpbzn6cuqAoOD2c7fP
         LuHQYOggiCX8pLvX7ZTN1jUmEy3U+7n041gCSdZH7TaLgRFo7sNZv4yjMDPXOMLkP1ZT
         EC5meevBLr182/mr5gJLGet+7L+8flcOTsnTBauY9P/7FcgskxOxLreHO49e2d+fkqcN
         liUkVF4iDUAB5qBwslQV94TNVKFtY83UIhKbUGYBYcFofapPnOwEvgSN3aCZZN5ScIbc
         w6IA==
X-Gm-Message-State: AOAM533q7vk8HhsMQcTX389a3e5I0aM66gunW7TCuKXLTkfczX1Nk/Av
	NcUAriDCMw80cNgTi6xMoQNRtw==
X-Google-Smtp-Source: ABdhPJyA5I7WElJzIr1/lc/C8OAM+1lHCm++nCUSS56Rj5PIFxEdasHY5HVM5ImVS0+c92eeXonbhA==
X-Received: by 2002:adf:df87:: with SMTP id z7mr20930689wrl.56.1623702546968;
        Mon, 14 Jun 2021 13:29:06 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:c376:a25:72e5:3c84? ([2001:8b0:aba:5f3c:c376:a25:72e5:3c84])
        by smtp.gmail.com with ESMTPSA id e17sm18601200wre.79.2021.06.14.13.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 13:29:06 -0700 (PDT)
Message-ID: <ec0d85da208aa26517a50ea998b855a5aa0d1455.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-java] icedtea7 fetching error
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>, Alexander
	Kanavin <alex.kanavin@gmail.com>
Cc: "George.Mocanu@rinftech.com" <George.Mocanu@rinftech.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Date: Mon, 14 Jun 2021 21:29:05 +0100
In-Reply-To: <YMe6JtmeJc1NiRYZ@brokenbit>
References: <98hT.1623132594082542882.bzIp@lists.yoctoproject.org>
	 <CANNYZj9r_eZ8ZHEo801viRNuBekefmvKuqtLfKsKTQncw+uw-w@mail.gmail.com>
	 <YMe6JtmeJc1NiRYZ@brokenbit>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2021-06-14 at 20:20 +0000, Richard Leitner - SKIDATA wrote:
> On Thu, Jun 10, 2021 at 10:57:46AM +0200, Alexander Kanavin wrote:
> > I have the tarball. I think we should toss it somewhere safe and update the
> > recipe, as it is unlikely the old mercurial repo is coming back.
> > 
> > Suggestions?
> 
> Sorry for the late reply, I was on vacation 😉.
> 
> Nothing that comes to my mind directly. Do you know of any hosting
> possibilites from YP or OE-Core?
> 
> @Richard: Sorry for putting you in that conversation without warning...
> But maybe you may guide us in a direction where to host/mirror some "legacy"
> meta-java source tarballs?

If someone points me at the tarballs I can probably sort something out with
our source mirrors.

Cheers,

Richard

