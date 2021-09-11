Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web10.2301.1631355875155815360
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Sep 2021 03:24:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KdwheWF/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id i23so6403129wrb.2
        for <yocto@lists.yoctoproject.org>; Sat, 11 Sep 2021 03:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=GdIDIWiQXmbOhVW+hev5FXYdyWfRSue6jbPVwe1Mnio=;
        b=KdwheWF/C1+ScQvjRVyo/JNSfgVPnIi5tBVtbNVEWp10iYvJvmTEuyZnJV8fc2fsd/
         +VjuybZXLRG4w7zQXpJXkgRHdH/MhNYPM8WWlixvsR9jOpl76l19Q7rRNiGL843yx2wA
         yrvqfbybDJKJL3s1O4IMgnclw0cLOYpc1wakI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=GdIDIWiQXmbOhVW+hev5FXYdyWfRSue6jbPVwe1Mnio=;
        b=adEppKw9jvHqJAx1fLBbar9qVIqfBZIVJy+QQ07rp6Aign3xxQD0T/qetXo2i4CtsG
         swST0ZcRGNIXUYQ19fe9/y0Zc6wGKcJu1C/phX80kousqxh8W66YMD1c4XuZJKOYInyP
         TdhgThc8DTeKcMMhajRvwBJJaiGpWA+MgmhCMJtp1Ar5THZXMBxZsruxsy3rr65gNf6t
         e9KRbUgLNKsDe/G8XF3quS05cxOpMv5qz6I8x3VCffsobxWbvHHx22B/w+a26PY+7u63
         f+AvumNYTIAP1wVRQw0iKRvuM7ZWmUMvQA22Vogkkuy27Kg+FyfzovkqJEWqpNXEOYrP
         PV/w==
X-Gm-Message-State: AOAM533weN9BKvgyoCub/R3BoXmhGLtlxF9+HAIyrAsUeD17J5UpKY+n
	yaTKpYmMfn05ZWmY4J1v3oOoQw==
X-Google-Smtp-Source: ABdhPJzygcG0Qa0y7uy+uNl59WZK2KcwZJpf12UE9tzcDPhy47/50a0f8BD5k3CBXV5wCuwNp4oiAw==
X-Received: by 2002:adf:efc7:: with SMTP id i7mr2507091wrp.9.1631355873604;
        Sat, 11 Sep 2021 03:24:33 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:a1a5:8b9e:48ea:5b97? ([2001:8b0:aba:5f3c:a1a5:8b9e:48ea:5b97])
        by smtp.gmail.com with ESMTPSA id q11sm729319wrn.65.2021.09.11.03.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 03:24:33 -0700 (PDT)
Message-ID: <ec02b6cfb338b5b2ca3242ecfd73ff9228e42129.camel@linuxfoundation.org>
Subject: Re: [yocto] Sharing sstate cache across build nodes
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Rusty Howell <rustyhowell@gmail.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Sat, 11 Sep 2021 11:24:30 +0100
In-Reply-To: <CAE+BM3=TP+2KtovT+csfZKRZTnvG68aoQbX=JPS2H6=umoN0zg@mail.gmail.com>
References: 
	<CAE+BM3=TP+2KtovT+csfZKRZTnvG68aoQbX=JPS2H6=umoN0zg@mail.gmail.com>
User-Agent: Evolution 3.40.2-1build1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-09-10 at 11:16 -0600, Rusty Howell wrote:
> We are having a problem with the PR server resetting the PR number it is
> returning for a given package/arch/checksum.  Our setup is as follows:  We
> have multiple linux servers being used as build nodes. Each node can build any
> one of four MACHINE types that we have defined in our distro. These builds
> actually happen inside a docker container on the build nodes.  We have a
> global PR server running on a separate server. 
> 
> Each node has it's own SSTATE_DIR, DL_DIR, and all bitbake builds on a node
> will use the same SSTATE_DIR, DL_DIR. Those directories are shared with the
> docker containers.
> 
> Our distro has many recipes that have a git SRC_URI with a branch name as the
> rev. So they need to use AUTOINC.
> What we are noticing is that once in a while, the revs being served out by the
> PR server will be reset back to 0, and thus break upgrade-ability with the
> debian packages. 
> 
> I have been unable to find much information about how to properly configure
> multiple build nodes so that they all have consistent PR values from the PR
> server.
> 
> I know there are several directories that might be necessary to achieve my
> goal.
> PERSISTENT_DIR, SSTATE_DIR, BUILDHISTORY_DIR, DL_DIR
> 
> Can someone help explain which dirs should/must be shared via NFS/smb across
> all build nodes? Which directories are node-specific and only need to be
> cached locally (but not NFS) and used for all local build jobs? Does changing
> the MACHINE type on the build affect how/if these directories can be shared?

In general you need the sstate and the PR server to match. Using multiple
different pools of sstate with the same PR server will probably not work so
well.

It won't matter about DL_DIR or PERSISTENT_DIR.

Cheers,

Richard


