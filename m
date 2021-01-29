Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.9435.1611926394542128828
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 05:19:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=F7JrYPSr;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D3FB438C056A
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2021 13:19:53 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id i9so7170663wmq.1
        for <yocto@yoctoproject.org>; Fri, 29 Jan 2021 05:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=4wlNbExQhbAjHe4CxSnXWlRKETRA36oFD8z7Q9vak3Q=;
        b=F7JrYPSrdBIU0vmWZ+m9KtP3N2W5MLxsKjvNTNCVLpQRyDidx10T+P4J0b4vVhPrJd
         Vl9RdqDaWO9YTOzT1Qtidl2+FZF6ITgBtw8Dy5FgMXPG3mYd6tJDMpuUGL42R+lGEUE1
         yl1r649dOLhMGd4dRN7kiIhCa3CE9pXwrYs4w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=4wlNbExQhbAjHe4CxSnXWlRKETRA36oFD8z7Q9vak3Q=;
        b=FYr3WVhFtk8d9RcxuAQUQPYtd2JisYNh8qAcPVCnzYweOuVzlFW3sfFir0JrsCq/vs
         YIBeKEBka10/TISMuRpH8pFERrqnsSCIH5BwVL8zcTAVT8yTGy48o3FC/CtHc+tHBJH8
         doRMw7IZhEGcDI0utgS/BbWtUdPZAlU3qD7oQKslkMzVXAhg3+Jwi46BXClNZXkufnC9
         VU59dkR9E9Bhv4+RaTty7oG0R7M9jYs5IaFgPQ8PGNkcjHro+L/jevT4G5F2sDuOQPqZ
         8STIs/LXZxMX/RTO5sG9gi8IkZeH1HjacI4St2+KqVb89uxu0Kyaj0gNLOdyFm5AeQEC
         nH8Q==
X-Gm-Message-State: AOAM531dMpksDibKcCzh6PF3qteRD3kkjl1/52X3aHtT3IRzTH0ADLrH
	tW1aKfhTOop09U7eROSGtO2n4w==
X-Google-Smtp-Source: ABdhPJzrlzqY6SLXGzjgTvygVxbcOnEdDXu0w5GEl4c/Kbmn1+/YuTePrCjxlYelmgDfdnJJhuhhmw==
X-Received: by 2002:a1c:8002:: with SMTP id b2mr3914235wmd.94.1611926392400;
        Fri, 29 Jan 2021 05:19:52 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:93ef:509c:4f16:14ff? ([2001:8b0:aba:5f3c:93ef:509c:4f16:14ff])
        by smtp.gmail.com with ESMTPSA id m2sm9566799wml.34.2021.01.29.05.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 05:19:51 -0800 (PST)
Message-ID: <8f202e9d2617de34b914a81a54bdd0902a706930.camel@linuxfoundation.org>
Subject: Re: [yocto] git lfs not working in dunfell
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Marek Belisko <marek.belisko@gmail.com>, yocto <yocto@yoctoproject.org>
Date: Fri, 29 Jan 2021 13:19:50 +0000
In-Reply-To: <CAAfyv34uaBiBizgAv8L+5NHs5+a3U0ofj=nytjouPKrmbjA+MA@mail.gmail.com>
References: 
	<CAAfyv34uaBiBizgAv8L+5NHs5+a3U0ofj=nytjouPKrmbjA+MA@mail.gmail.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2021-01-28 at 16:18 +0100, Marek Belisko wrote:
> Hi,
> 
> I have repo where I'm using lfs. I've added to my SRC_URI =
> "git://...... ;lfs=1" and the project is fetched but the issue is that
> lfs files are shown as references only (content is not fetched).
> I briefly checked git fetcher in bitbake and seems it checks that repo
> have lfs content but I cannot see anywhere git lfs pull to actually
> pull lfs content. Am I missing something? When checked poky master it
> looks like proper fetching is in place. Is there any way how to get it
> to dunfell LTS release? Thanks.

There is a patch in bitbake master related to this which you may want
to test and maybe request for adding to dunfell if it helps.

https://git.openembedded.org/bitbake/commit/?id=0efac66043662e7a2027192f50e92e982db2ba1c

Cheers,

Richard

