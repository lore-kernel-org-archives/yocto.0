Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web09.1507.1582564151636849273
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Feb 2020 09:09:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ul3IO4gs;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id r11so11283162wrq.10
        for <yocto@lists.yoctoproject.org>; Mon, 24 Feb 2020 09:09:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=2BUQtE57JSRNU1mRrozs2noFUIHUdcs84DQa9b49kSQ=;
        b=Ul3IO4gsnXuWUP8cO/na7XIOziWyT1Uh9onEuurRvJmdqHqwaScFGItBfueYoz1EgL
         6JFveK/humqWRtwbu0pswiG6ypiYT+YSRoE7cjejeZnxeQ92fl4WWU4+FTgB1RdDznq3
         kWDnW+1UPeSvNqDzRTMPiJaRg1JmlE9pM+bkA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=2BUQtE57JSRNU1mRrozs2noFUIHUdcs84DQa9b49kSQ=;
        b=QG0fWuUIDDlTua2mWhzlf69TAKKcSRg2gNgLqPFF8HxU92TpXlDz8IeA3P3W0bRAjw
         4BFRxZ7awXphJ+kKYkOvf3b8P3gCtF3D9tVUW+C4n1nY0v4nFTT39DEcmonIsgeuVZns
         MDxZajiGM5yKyqbjtvzZPSf8sohOs/5E1kCirRnzg4WAq+u1hIIHa9R9EKTScEpb27E3
         FzK673qeeqy8Y5tycl+sF1/RU7XVV3IbeFLyaCWtDMcfT6sZMr5jYhMekHUAvKuETsab
         u8FuBGBxHnBs7GliqNfmqFBdA8ZNYeKf8ABbI9oCSPWkL51RcyDeeMgMymvrnBt/gPvx
         uCJA==
X-Gm-Message-State: APjAAAVsVb3qzZFxi11gH6K0FOZxyn874/qkMcqENv3Phbm/rv+wmVDZ
	cDGLP4MgTXTlPCatqXnohV7/sw==
X-Google-Smtp-Source: APXvYqy/wvEQbh/oLh3zO9k4NtkhFvjsvstWSlYXHQpGjXrwiGWAm/MWL5jzhZb9j5QsXxVTQAMh3A==
X-Received: by 2002:a5d:4447:: with SMTP id x7mr67549154wrr.393.1582564150192;
        Mon, 24 Feb 2020 09:09:10 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id g14sm9252168wrv.58.2020.02.24.09.09.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 09:09:09 -0800 (PST)
Message-ID: <191682dec3ff932b2dc18e5ff53bcb0e53c9bc91.camel@linuxfoundation.org>
Subject: Re: [yocto] Building CentOS based filesystem #yocto
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Bill.Kulp@azuresummit.com, yocto@lists.yoctoproject.org
Date: Mon, 24 Feb 2020 17:09:08 +0000
In-Reply-To: <ud1Z.1582560955811630456.OJUS@lists.yoctoproject.org>
References: <ud1Z.1582560955811630456.OJUS@lists.yoctoproject.org>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-02-24 at 08:15 -0800, Bill.Kulp@azuresummit.com wrote:
> Hello!  I am currently using Yocto with default Poky distro.  A
> customer would like a CentOS-based filesystem, and I am wondering if
> this is possible using Yocto?
> 
> My initial thought is to imitate 
> https://github.com/meta-debian/meta-debian, creating Bitbake recipes
> to directly download CentOS binary .rpm packages, or to download and
> build CentOS .rpm source packages.
> 
> Does this approach seem feasible?  Would it be fairly
> straightforward, or are there pitfalls to beware of?  I would really
> appreciate any insight.

If you want CentOS, use CentOS. By definition anything else is playing
catchup and will never quite match.

We've looked into spec generation before but the worlds are quite
different, we cross compile, spec files do not. "Our" output is
therefore always going to be different from say the spec file built on
target in a native build.

We've tried experiments with this before and ended up deciding we
should accept Yocto Project is Yocto Project, its not trying to be
anything else.

Cheers,

Richard

