Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web08.1651.1608319112282611892
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Dec 2020 11:18:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mr0DGI47;
 spf=pass (domain: gmail.com, ip: 209.85.222.178, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id 22so3014614qkf.9
        for <yocto@lists.yoctoproject.org>; Fri, 18 Dec 2020 11:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZdoXy9E5PGXNoRTf0t22lZWQaPHe+u8XRNaCwKgYruw=;
        b=Mr0DGI47tLajMatdcL7y3u0HrMkNyDuHGGAWRGe98XQuAKfs3R+W6g8Dv05zBA/YFr
         nTn3aAGOCGh118SU3GNjT7Xq6oNwWGqGPStmTHRPx1Ly3bTuGLkFfxb0ZcJ9d8DQjCa+
         En1NmmTY5BXAdOsfVyOWbwCzfIxlZyz+b8m8JzyJCnEU4JYxhiDTorvFEMLuxSyUc5Dt
         thRNjtACbLB1YmHWgBhzUIQ5FRnfBJ4ISSM1pKOD+uo+fx2v613TWNi7d9kT9C/IqVjx
         PMyJRhskecp/8Jo9kjPTSr7xYPpNPr2xHUkKWJnNPWn941N2O4QvQtXKZkFYchpc9QAg
         BuVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZdoXy9E5PGXNoRTf0t22lZWQaPHe+u8XRNaCwKgYruw=;
        b=b2NE1o/IN6ZsAHckE7V0s+k4o80wfHMTT/luEJNDJbndDdS3V9rgt7qGDNVF8TT5CL
         vnWtTS0EPIrfMzZKZkGMDNadTvFIjyMlz8qQDMymB6wHS/JHPrMXZBiBhufjRwKBkTJb
         H9AyxAQJgw8/3RXhG8vfsrqpRjss6LUMITRLIMwLZtNiKnp5rqSMxKPVmNCGSFwBVc9d
         LRdGC1YBm3yaTTmpLxHVsyATO6/YMaFYE316klKrL5UeFQhy+WnVWjna0K19fV3embkw
         SLHNKBc9spPGv6QfaJqq2Aopie6SZOuof5ob14OiDxL2J4qdOvTc8VN0hDX6KIgSAFqw
         Q9qQ==
X-Gm-Message-State: AOAM531SuMUEDx5PsQ36vpAh7eGAYwKcZ09j7oFn6roJAZ1s7hRklhS+
	N/3a2hYQMFD1YQfBm7sSncg=
X-Google-Smtp-Source: ABdhPJwYDjblFVU4lvjsJD1WWDga/46DfoQcMo5V9DqyWO3QPHuywDbSJMxh/0yN/CgPMkSI1PP0dw==
X-Received: by 2002:a05:620a:6c3:: with SMTP id 3mr2519284qky.43.1608319111474;
        Fri, 18 Dec 2020 11:18:31 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id q20sm6361546qkj.49.2020.12.18.11.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 11:18:30 -0800 (PST)
Date: Fri, 18 Dec 2020 14:18:28 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] glmark2: fix bugs on panfrost
Message-ID: <20201218191828.GA18759@localhost>
References: <20201218050328.24876-1-twoerner@gmail.com>
 <f3c3c7b7-ed32-c35d-c614-15f22464740b@gmail.com>
MIME-Version: 1.0
In-Reply-To: <f3c3c7b7-ed32-c35d-c614-15f22464740b@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2020-12-18 @ 08:36:28 AM, Khem Raj wrote:
> this patch is generic, perhaps should live with main recipe.

Okay.
