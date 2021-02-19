Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.11953.1613755507574923589
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Feb 2021 09:25:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=d6UdWbmj;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 678C138C06E6
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2021 17:25:07 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id a4so7354078wro.8
        for <yocto@yoctoproject.org>; Fri, 19 Feb 2021 09:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=iE2oDafTvtlyMoE4vX37t4pZCj+dXrJ5U/e9+x6HwBs=;
        b=d6UdWbmjbIqMv4ns0yKRUD/5ogJDfpSbbFSeaSHKya4Xvc70BtGmffQux1qvq6uCL1
         FAGURE60+GaMIJ9ph/b5kih2YgJTr3ho8ugfFd+ZMR58FFxZvIUxtHahR7KC1zw2MoCU
         q5G+3BS2jc55zT1dh/epuiiTceMkKCrb8NWOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=iE2oDafTvtlyMoE4vX37t4pZCj+dXrJ5U/e9+x6HwBs=;
        b=GAUgY06TcPGuLdh2Gwl8xE9IJF34wscOYvQ30OOVxbCbIB13uhF2H6NaZH3b2n8k0z
         u3nMxaxM34MGere3nF+8xhkJUCqdjkO89Xm0oba7QHoEobPsUrJ1wVe9YMVPJd0c5G10
         vRQhPwTcpuyBijKW1W2FUQMemt3grY/YvxQ4J/siNpMcsMeFpe0oQGpVBKFs0nvWXsjQ
         81FnYwEHSvZsTDZ0d5YgGKTOCg4yNO1+wKsps90s491+e56yIwWaLtWjQG/5wCTX28ZO
         muQYVmYPPxiNgCuIWajufgYtWWazL8MPc7q3e9eSU56le/lUZRpDhX7s1UtHs4jL+wNB
         QPBQ==
X-Gm-Message-State: AOAM532S23x24+fR/9cMccy6rXwBNCfVpIDXUMbVSY/fHrYIYuunbYyM
	qDgbIazmGikLwJJOATCUB7NXaw==
X-Google-Smtp-Source: ABdhPJytC0Q6x64hQjQtd9w6bDS+Hb6Xc4rBACf5H/PtqpeWt54U9cMUsAh0vGbH1IUq/kmTbneWSA==
X-Received: by 2002:adf:ee0a:: with SMTP id y10mr6719535wrn.79.1613755506188;
        Fri, 19 Feb 2021 09:25:06 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:569e:86b4:55e2:a2e9? ([2001:8b0:aba:5f3c:569e:86b4:55e2:a2e9])
        by smtp.gmail.com with ESMTPSA id d23sm13065789wmd.11.2021.02.19.09.25.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Feb 2021 09:25:05 -0800 (PST)
Message-ID: <24a6be4387dcf3d30895610bc53ec8f053f8db8c.camel@linuxfoundation.org>
Subject: Re: [yocto] [ptest-runner][PATCH v2] Fix inappropriate ioctl when detaching tty
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Randy MacLeod <randy.macleod@windriver.com>, Chen Qi
 <Qi.Chen@windriver.com>,  Anibal Limon <anibal.limon@linaro.org>, Tero
 Kinnunen <tero.kinnunen@vaisala.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, Michael Halstead
 <mhalstead@linuxfoundation.org>, Trevor Gamblin
 <trevor.gamblin@windriver.com>,  Konrad Scherer
 <konrad.scherer@windriver.com>
Date: Fri, 19 Feb 2021 17:25:04 +0000
In-Reply-To: <f98f7d42-00b8-f2e9-389d-54d77088ee22@windriver.com>
References: <20200710054432.557157-1-tero.kinnunen@vaisala.com>
	 <CA+_Aqit4UM=EH5ztSHbuVx84eHzoQN0NPU+ADEY7Sfi7=WpNDA@mail.gmail.com>
	 <ca58386c-51e1-770a-253d-4eb1c13441c5@windriver.com>
	 <f98f7d42-00b8-f2e9-389d-54d77088ee22@windriver.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2021-02-19 at 10:18 -0500, Randy MacLeod wrote:
> On 2021-02-19 1:44 a.m., Chen Qi wrote:
> > Hi Anibal,
> > 
> > The ptest-runner repo seems to be messed up.
> > This patch is no longer there, yet the SRCREV in ptest-runner recipe 
> > refers to this commit.
> > 
> > $ git show 834670317bd3f6e427e1ac461c07ada6b8936dfd
> > fatal: bad object 834670317bd3f6e427e1ac461c07ada6b8936dfd
> > 
> > Regards,
> > Chen Qi
> 
> This was making our automated builds fail but I've added
> the fall-back tarball and that should suffice for now.
> 
> We should probably do something to prevent that but
> could someone take a look soon and perhaps restore the repo
> from another location?

I talked with Anibal and its fixed now.

Cheers,

Richard

