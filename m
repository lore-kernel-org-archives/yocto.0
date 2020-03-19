Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web12.3357.1584637485254128533
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 10:04:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Dvz2NZAl;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id d1so3217443wmb.2
        for <yocto@lists.yoctoproject.org>; Thu, 19 Mar 2020 10:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=HMfgtNmdcYmuTCPoJ2mAgWL02glq56Y8nl5MxpnIdcs=;
        b=Dvz2NZAl7cDNs+so7nmUHoj+xyDDW1KJofWOkMI8R0+RtHY95qzi27LTI8PW/ONgwo
         pzs0pM9w9rW9NV+sLCSKgsRErnkaX9NQxzGBHXXlxZkLv3NkhOaLDQYVRlGwkmFkD/Cq
         d19UDf5muZ0I/BxUJNZ7/pvsaaFNKCik0inqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=HMfgtNmdcYmuTCPoJ2mAgWL02glq56Y8nl5MxpnIdcs=;
        b=Z+tN6+aJgCGzA1HCASuQngRAGUGaIvK9/NUMGN6C1CrTweAc749dReFmTMQ63N5cVN
         tXhJmxPZieLEj1hjmalKxUoG5wRlBUsaoFwTHcCgNLh0dcCGN86eVvcJeuDbjRnM9270
         pYJl0XfcN3EHo3aRyJ+c4d/NJbNC3wseJxtYKZrxsVD1wBLUwNsz6PYhJtEqHmfzq0cp
         YIpwXrQ91qGHSiDyktcgNdcKu/BVsRyvNYlxHr+wQogRMR+stPHqQ+hT0S4uWO/QQC7k
         6d+P+JnAtg1F86kCkR/3kPHyXI2v2CFTTSj42pZWj4CCauM7d9UZO6AhDuYYYjOv5kFi
         GV7A==
X-Gm-Message-State: ANhLgQ0lkhpq7H7LLADTzfJ5sVWYdWsVIWKxhN/AEJ/AcIrCrl00/poG
	WecwiBJoLsYMbbpyy8H4Q8wyVw==
X-Google-Smtp-Source: ADFU+vuq31LMbrRzzzvsjZtxrZmquyUbE5HNzxVZjx5u9r02djtLpTvuW0Oov1w/HUaLtgtFj9StEw==
X-Received: by 2002:a1c:196:: with SMTP id 144mr4984034wmb.100.1584637483734;
        Thu, 19 Mar 2020 10:04:43 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id h15sm4288260wrw.97.2020.03.19.10.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2020 10:04:42 -0700 (PDT)
Message-ID: <a206421cae44e76e8bfdabf66affb95103b03e71.camel@linuxfoundation.org>
Subject: Re: [yocto] What are the key factors for yocto build speed?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Yann Dirson <yann.dirson@blade-group.com>, Mike Looijmans
	 <mike.looijmans@topic.nl>
Cc: Mikko Rapeli <mikko.rapeli@bmw.de>, ross@burtonini.com, 
	yocto@lists.yoctoproject.org
Date: Thu, 19 Mar 2020 17:04:41 +0000
In-Reply-To: <CA+4=imbpXksEiCtmadKaqdLR-QU4pst=Wf1_SHKtLqeZhVTpWQ@mail.gmail.com>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
	 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl>
	 <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
	 <20200319080514.GR104502@korppu>
	 <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
	 <8d295b32-e2f9-9d95-f866-1f9061617450@topic.nl>
	 <CA+4=imbpXksEiCtmadKaqdLR-QU4pst=Wf1_SHKtLqeZhVTpWQ@mail.gmail.com>
User-Agent: Evolution 3.35.91-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2020-03-19 at 17:29 +0100, Yann Dirson wrote:
> 
> 
> Le jeu. 19 mars 2020 à 17:07, Mike Looijmans <mike.looijmans@topic.nl> a écrit :
> > On 19-03-2020 12:04, Richard Purdie via Lists.Yoctoproject.Org wrote:
> > >> , fetch, configure, package and rootfs tasks.
> > > 
> > > Sadly these tasks are much harder.
> > 
> > It would be really great if some sort of "weight" could be attached to a 
> > task. This relates to memory usage.
> > 
> > My system has 16 cores but only 8GB RAM. With both parallelization 
> > options to "16", I might end up with 16 compile tasks running 16 compile 
> > threads each, i.e. 256 running processes. In practice this doesn't 
> > actually happen, but the memory load gets high sometimes, so I reduce 
> > the TASKS to 8 at most. That has kept my system out of swap trouble for 
> > the time being.
> 
> This could be neatly handled by using the GNU-make job-server mechanism.
> If bitbake itself would provide a jub-server, all make-based recipes would
> automatically get their jobs properly limited.  There is a (sadly not merged yet)
> MR [1] for ninja tu gain job-server support as well, through which we should have
> a pretty good coverage of the recipes set (as a backend for cmake, meson, and more).
> 
> [1] https://github.com/ninja-build/ninja/issues/1139

You mean like:

http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/wipqueue4&id=d66a327fb6189db5de8bc489859235dcba306237

? :)

Sadly we never fixed all the issues to let that merge.

Cheers,

Richard

