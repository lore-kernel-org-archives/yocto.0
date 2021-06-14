Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.1056.1623706397927740946
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 14:33:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SgFh4ARN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id c84so167848wme.5
        for <yocto@lists.yoctoproject.org>; Mon, 14 Jun 2021 14:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=3HG+GnIqwFWqyLw7axwrnBshMgKwfBVEcRGo/CkPvrA=;
        b=SgFh4ARN2GMwUpWwJt4uMPnrJiXJrJZUj1trmAwizEIiGHCtFUmyfd/njD547rYm+1
         +TxUkRjPITkXDJCUbgyUwpA7V4Ahpn6UpUgJ4VSp9I2tb8cR8MhLqeObK/tpjz/Kwlsk
         QvPSd5s90YsejwYoZLDL4xIyNxb4NZ/4cevYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=3HG+GnIqwFWqyLw7axwrnBshMgKwfBVEcRGo/CkPvrA=;
        b=E32biN+lE0hQvAQMx42JJ3HMBNsgOZaWv9a5uSGBGDVOIXGaz19H9k64Uu+U1sMyVJ
         z5uO9gF9P1fIY3HLx7IHvuutBV0uEx+swuHk3/kksIk3w1zSvWdcW0RSnwej/v6rfcka
         7Tr3Lvscn0eVQ8yWJq5zz5/wwiUjnqE4pm/gVrPTmoHp1HJQgHSaa/KgXMp+cigaEe7D
         1vUR4GRQjjL8V6+9BpooKCGmJ1/2D4N9e9t1aoXSfocwyr/3LoFnhol2+SXh1lyCDaGu
         X0acl0KkamW53a0wrrv7IGRRVay6+2gls28dENrDCwbY6RNPV5dhipUAnv8HAA2ihSOS
         A86g==
X-Gm-Message-State: AOAM530eNYM3QOU2W+rQdFnogoo6OwWMArGYXha2rwWkHiOL/WG7T4MW
	3TBfXlZQMAiJhqm6wA2U0CfX7g==
X-Google-Smtp-Source: ABdhPJysYVwp1RDKY4vuoJ4E817BpSDcW9qw8hMsTtXZIdMQJToRm88wieD2b7ncha/kDTmY1uGJcA==
X-Received: by 2002:a1c:1b83:: with SMTP id b125mr685686wmb.74.1623706396079;
        Mon, 14 Jun 2021 14:33:16 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:c376:a25:72e5:3c84? ([2001:8b0:aba:5f3c:c376:a25:72e5:3c84])
        by smtp.gmail.com with ESMTPSA id q5sm17799969wrm.15.2021.06.14.14.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 14:33:15 -0700 (PDT)
Message-ID: <1642491f34cd151f41bc880f4575e84820ed1766.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-java] icedtea7 fetching error
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, "George.Mocanu@rinftech.com"
 <George.Mocanu@rinftech.com>, Yocto-mailing-list
 <yocto@lists.yoctoproject.org>, 
 "openembedded-devel@lists.openembedded.org"
 <openembedded-devel@lists.openembedded.org>
Date: Mon, 14 Jun 2021 22:33:15 +0100
In-Reply-To: <YMfKw9F6qY7daERE@brokenbit>
References: <98hT.1623132594082542882.bzIp@lists.yoctoproject.org>
	 <CANNYZj9r_eZ8ZHEo801viRNuBekefmvKuqtLfKsKTQncw+uw-w@mail.gmail.com>
	 <YMe6JtmeJc1NiRYZ@brokenbit>
	 <ec0d85da208aa26517a50ea998b855a5aa0d1455.camel@linuxfoundation.org>
	 <YMfKw9F6qY7daERE@brokenbit>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2021-06-14 at 21:31 +0000, Richard Leitner - SKIDATA wrote:
> On Mon, Jun 14, 2021 at 09:29:05PM +0100, Richard Purdie wrote:
> > On Mon, 2021-06-14 at 20:20 +0000, Richard Leitner - SKIDATA wrote:
> > > On Thu, Jun 10, 2021 at 10:57:46AM +0200, Alexander Kanavin wrote:
> > > > I have the tarball. I think we should toss it somewhere safe and update the
> > > > recipe, as it is unlikely the old mercurial repo is coming back.
> > > > 
> > > > Suggestions?
> > > 
> > > Sorry for the late reply, I was on vacation 😉.
> > > 
> > > Nothing that comes to my mind directly. Do you know of any hosting
> > > possibilites from YP or OE-Core?
> > > 
> > > @Richard: Sorry for putting you in that conversation without warning...
> > > But maybe you may guide us in a direction where to host/mirror some "legacy"
> > > meta-java source tarballs?
> > 
> > If someone points me at the tarballs I can probably sort something out with
> > our source mirrors.
> 
> Thank you very much Richard!
> The openjdk8 tarballs are now hosted at https://downloads.yoctoproject.org/mirror/sources/
> with their local download names.
> 
> Unfortunately I currently don't have the time and resources to provide a
> patch for fixing the URLs and adding the mirror.
> So help is greatly appreciated!

In theory if these are the names the metadata was using and you have the standard
OE/Yocto source mirrors, this should "just work"...

Cheers,

Richard

