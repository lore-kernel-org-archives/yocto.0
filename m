Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.12288.1611939267861312983
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 08:54:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gWI8rs9V;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.218.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-ej1-f46.google.com with SMTP id g12so13991216ejf.8
        for <yocto@lists.yoctoproject.org>; Fri, 29 Jan 2021 08:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=bu3pUrVLjYD8sPYEcPIQfEnJqN5z+ucrDqTWw0El1VY=;
        b=gWI8rs9VC2ul67ZVdZNv8hd+WlLL+FFZncNPrzsn9ae6IPOvfhE65tFFm5P+79zDb7
         rFN/2qDnTys9mwuDQKjZNTWnK1YZtvyf6jYGjF5IFLHpwN0vmuBC8JnQsm4nxItQhEIG
         ljSBgRjmpO8heHPTCnl0Qk8WRi030pu2hN7wY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=bu3pUrVLjYD8sPYEcPIQfEnJqN5z+ucrDqTWw0El1VY=;
        b=IjkZKJHv0eaCzb8tt8Qi9QLzMU67bA8OhbxCeUlO1/FAJIEkT/4EefobvDKZJO3OBq
         vhpmMP602h/K1IPhj06mHZhX5+AyMRY160mB+SLIlssjtHUKORbvoYd03sBsJZOr4roq
         sq8JVPpQ4l8XTiTFWbsJ/Q6QFQEkP7h9JmMWD38sNtrZNpuXFSUci4s8zJkOnrJC8IK8
         zUOdP4/TVsYykZ+TW5Wwm/RpgAY++to5TO4AC5DAU+qtJXPCbhTuRKBardDcU2lqfJxK
         lJP9lBYw6Au0SJhzgiuEsQtQkI59GnOMGLUosh/yaWQAy4gdc7xYhoa5dIUde7ZY2rvT
         nIEA==
X-Gm-Message-State: AOAM532Sy8tg1RJnCOikONV60/2Mjljy3O/hmQwneeFpT5FRovY8+HNY
	0WeDljX9ArZXxgay0K1QhTMaNw==
X-Google-Smtp-Source: ABdhPJwBZl02nRNPp7D+ef3IS6lBTuyj4qUdfEnFXmi9a72C93/hYPe/qroZHXchNqi7C1KSsvZ5pA==
X-Received: by 2002:a17:906:4143:: with SMTP id l3mr5420072ejk.306.1611939266285;
        Fri, 29 Jan 2021 08:54:26 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:93ef:509c:4f16:14ff? ([2001:8b0:aba:5f3c:93ef:509c:4f16:14ff])
        by smtp.gmail.com with ESMTPSA id d18sm1410558eds.50.2021.01.29.08.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 08:54:25 -0800 (PST)
Message-ID: <5d089dd1170dd222ce863914cb8ac95b4b4461e2.camel@linuxfoundation.org>
Subject: Re: [yocto] SDKMACHINE and ppc64le issue with latest head?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Andrew Geissler <geissonator@gmail.com>, yocto@lists.yoctoproject.org
Date: Fri, 29 Jan 2021 16:54:23 +0000
In-Reply-To: <25512.1611938435690182276@lists.yoctoproject.org>
References: 
	<a5d20604428c2581ee69977d9c0221e2e5b2d01f.camel@linuxfoundation.org>
	 <25512.1611938435690182276@lists.yoctoproject.org>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-01-29 at 08:40 -0800, Andrew Geissler wrote:
> > What was SDKMACHINE set to before?
> 
> Hey Richard, thanks for the quick response. 
> 
> We did not have it set. It looks like this recent commit is what
> changed things on us:
> 
> commit c74ec1dd7393b9dc7bec1a3ca2ed0a56fb18d8fb
> Author: Ross Burton <ross@burtonini.com>
> Date:   Tue Dec 22 17:23:14 2020 +0000
> 
>     bitbake.conf: default SDKMACHINE to the build host architecture
> 
> 
> Looks like I need to submit a patch to y'all to add a ppc64le.conf to
> conf/machine-sdk/?

That would likely avoid the failures you're seeing, yes.

I really wish we had better support for ppc64le both for hosts and
targets and had people actively involved/maintaining the ppc support,
its in need of massive modernisation particularly on the target side.

Cheers,

Richard


