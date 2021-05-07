Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web12.9389.1620390491035667024
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 May 2021 05:28:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fbXldgGw;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id z6so9060246wrm.4
        for <yocto@lists.yoctoproject.org>; Fri, 07 May 2021 05:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=8FcmiLiObJEZMzZymWMd3ZoETOXPtq5YKjabd04cXf8=;
        b=fbXldgGwZOwae6LKVYxx/YqhuYuCy+jdQQRUEKvogw8mpQV3XXPFsBxNRajGxLLEop
         +hJPQEtogf3ooDOlvglJVXSHHgJvUzKG1K2Q4Ggr7VDk4Sn3QCf+pDqWURHccbkTg9jx
         bBfeO5d8AGOu4MfmLTSyJRFWgo8etLl8HyzIU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=8FcmiLiObJEZMzZymWMd3ZoETOXPtq5YKjabd04cXf8=;
        b=YEVwBN9uiUV40vCHOkwqq747Nd9qyn1HOW4DFNBL/VExaoYGrV5BapHC8hD0QbAyiN
         XzeaAhRwlvHLpUsOpMfQWSr8kWOKcxzBBMIKvHIrOyW5xcliiDK8lR37qkKTvL7AU3ul
         ZvbN0lbnDQgksYxHBioTg2TTQ2PztEcq9u/2LNfmzSw4bToWfsZnqT54QTR/ZJy5mRth
         QSs4Sa/YrR6AipCaymNHcFfkDvBStK24+1dbzMxpyJlbtJ+bP8kMHsCbWOXNoGcZbQ0e
         PWsU0pE7MRydXrrkbF/BYKehbmVTFbZGtPaPwsCNvKXMRSBnd8AggfugwdNjVv6APFST
         YzpA==
X-Gm-Message-State: AOAM530DpV3LBsLxoPnZE9hGKpC0PWppP8uzJaVr2HmDnxB8hEPMuvt1
	Okycbu8IkraLTO78iXZsyuQOYA==
X-Google-Smtp-Source: ABdhPJw7/rdJatf318o4liJ1zLpfQbZK01aEs8GDN+zr2FY9rNIX3O4kUPNxi0D0aBYhzzE6I8REJw==
X-Received: by 2002:a05:6000:1012:: with SMTP id a18mr12201073wrx.68.1620390489414;
        Fri, 07 May 2021 05:28:09 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:b293:70f:415f:a3e? ([2001:8b0:aba:5f3c:b293:70f:415f:a3e])
        by smtp.gmail.com with ESMTPSA id t2sm13724373wmg.38.2021.05.07.05.28.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 05:28:09 -0700 (PDT)
Message-ID: <e41282c010817511161a597a712fbd6b99127ec4.camel@linuxfoundation.org>
Subject: Re: [yocto] KeyError: 'getpwuid(): uid not found: 1000' in do_package phase
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: tom.hill@inbox.lv, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Date: Fri, 07 May 2021 13:28:05 +0100
In-Reply-To: <1620371410.6094e7d2d5a22@mail.inbox.lv>
References: 
	<CA+chaQdQgTp=CxNrj1BOB60ra4PakJoHNNC7euZzt4pH-J_=hA@mail.gmail.com>
	 <636.1620291448346580381@lists.yoctoproject.org>
	 <CA+chaQde1hy1g1Jbx5kQUFxxR+9XVKxG8dq=5vLdaiNY_kVY9A@mail.gmail.com>
	 <1620371410.6094e7d2d5a22@mail.inbox.lv>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-05-07 at 10:10 +0300, Thomas Hill via lists.yoctoproject.org wrote:
> On Thu, 6 May 2021, 13:44 Martin Jansa <Martin.Jansa@gmail.com> wrote:
> > On Thu, May 6, 2021 at 10:57 AM Thomas Hill via lists.yoctoproject.org <tom.hill=inbox.lv@lists.yoctoproject.org> wrote:
> > > Hi Martin!
> 
> > > > On Mon, Nov 16, 2020 at 02:28 PM, Martin Jansa wrote:
> > > > https://github.com/webOS-ports/meta-webos-ports/commit/9fd17a67cdbed92df13a14b002a189b4c6c2d442
> 
> > > > is an example where it triggers this error, but doesn't trigger the more common host-user-contaminated QA error (unless you happened to use UID 1001 on host for the user running bitbake).
> >  I have here a similar problem with one of my own packages. It happens that my bitbake user uses UID 1001. Do you have more information why this is a problem? Should it be enough to change the UID to 1002 to get everything running?
> 
> > No, you should chown the files to be owned by the expected user which exists in the image (probably root like in my commit). Changing the UID of the user on host is very bad work around (as it will fail for the next person building the same image with host user 1001.
> 
> Ok. Thanks. I can confirm that the change of the bitbake users UID to 1111
> did not solve the issue.
> I will open a new thread because I don't see why this fails. I use oe_runmake
> in my do_install function and got the impression that oe_runmake should take 
> care of this via fakeroot.

When you install files during do_install, you need to be clear about who
you want to own the end result.

If you do something like "touch ${D}/x", the it will be owned by the default
user which in a fakeroot context under pseudo is root.

If however you cp a file to ${D}/x, it would depend what you told cp
to do about ownership. If the original file was owned by user 1001, it
may try and preserve that.

We don't know what your code is doing in do_install but its almost certainly
not setting the file ownership correctly.

Cheers,

Richard


