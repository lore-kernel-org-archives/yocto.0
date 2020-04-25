Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web11.7489.1587826466314134443
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Apr 2020 07:54:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WEEq1UeS;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f67.google.com with SMTP id b11so15028880wrs.6
        for <yocto@lists.yoctoproject.org>; Sat, 25 Apr 2020 07:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=prwxrbvkCcEt0o7O2TiCaK1njuxNMkqnRidPvi+x6jM=;
        b=WEEq1UeSLZ7NG1ohrRPn6w4awzVsv7v0zjRxtDQMZyFwL5hi0idFBXIFtTZifcO0gb
         SVhEOEgf4g80ECSAS45jwIJM8TZVLbKnvpykhYP1lcKMUQx8vppOJv9iNbo6gknm6eRT
         iP8iuIAX48GVDm8PTLF80lvy/PTJogyobzCxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=prwxrbvkCcEt0o7O2TiCaK1njuxNMkqnRidPvi+x6jM=;
        b=MJThM2N/mSIoRUXdmmjS4w/wKQTacUAAuE6WRUj49qw0CAJik7vl8wHbwifzUc2ZpW
         U9yGSWfUnC+Zq3nlgx9tcDwGzoLSlF+avqqBVhNSG+OA/SsOZOjqxjbJN4K8TqJl4gp/
         73hekr9VBlVZd25zEzOpw3fiWMydV16R1iLgy6dEJJgYtvoJfZ6xdzfGBj/ETaEcLCra
         nQyHrsQvipBIqrheA1sE4LFPwSwzXZ6+puUZygIHmgOATHfS6hwKECTr2d/ACTb82RAs
         UgXgKANWOlXBwB+f7GVFfV7FlFCm/Rgi7PCJvXvdLJeZMnW6FVFtHNPd55TiOAZHvM/a
         7Hqg==
X-Gm-Message-State: AGi0PuZh34SsxRH0YjHv4KHAYaUCLXBgUXm+3AMAkj7S60akbUx4hEhW
	BoRe38XfFhlRjCQit3r+7yOcug==
X-Google-Smtp-Source: APiQypIQZgiFLlucnzvD6VPt/J3faWeGwSz98++gAHAZOtEtcCYTnB4FyJPtlKmh6qnkIHvNPsSzGw==
X-Received: by 2002:a5d:4ccb:: with SMTP id c11mr17370144wrt.122.1587826464701;
        Sat, 25 Apr 2020 07:54:24 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id g25sm7271979wmh.24.2020.04.25.07.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2020 07:54:23 -0700 (PDT)
Message-ID: <60d25691239036fd72ca41c8369962b7eee4e7ed.camel@linuxfoundation.org>
Subject: Re: [yocto] Can not use wildcard in SRC_URI to apply patches #yocto
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Hao Qian <qian.hao.developer@gmail.com>, yocto@lists.yoctoproject.org
Date: Sat, 25 Apr 2020 15:54:22 +0100
In-Reply-To: <CACxpVWfYGoGiivXCeMOtoPvBYuJBqC9zu+KS3OdnB5bZoyuYyQ@mail.gmail.com>
References: 
	<CACxpVWfYGoGiivXCeMOtoPvBYuJBqC9zu+KS3OdnB5bZoyuYyQ@mail.gmail.com>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2020-04-25 at 17:30 +0900, Hao Qian wrote:
> However, if I change files' name into wildcard in SRC_URI like:
> ===========================================
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> SRC_URI += "file://*"
> ===========================================
[...]
> Could anyone tell me how to apply patches by wildcard?

That isn't supported. Its hard to get determinism correct and the patch
ordering could also be problematic.

Cheers,

Richard

