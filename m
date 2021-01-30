Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
 by mx.groups.io with SMTP id smtpd.web08.3340.1611976343225987429
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 19:12:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LXGwXgPG;
 spf=pass (domain: gmail.com, ip: 209.85.166.171, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f171.google.com with SMTP id p15so9616495ilq.8
        for <yocto@lists.yoctoproject.org>; Fri, 29 Jan 2021 19:12:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1cmxjMcfvrFVecoH9p5LC3mEGtFprhW9cvmWSFdwapk=;
        b=LXGwXgPGEBrTyvPkfFW9Cdt+yV/H+J00nVnLONWUry6bFuO7iEbBTrIOOoQAECf51x
         2UIfPLzgqHDx/zN4Z3J3EDqMnopFPRVuKZYpSIDUIrxBxtCsgDXgVWzjeRX99vbjcNkZ
         A1Vm0ZzAlv7SXWs0cuRjBZh53qgVSwjFwSWMSKTykF0Hhnjm8DMslHFGVMOKXkU3yxou
         uzsHvj3DcUk5Df0KBXRevXQtZjzd1ADL0de34LiHvEho4yVzYlFozNWCOPmi6GyFdRlH
         BDrheDdXBVB4zwtkRJlKKZWHIAPm3++81hVqFEAYdSlU74H/IYOTW4lSKnEKuoCRGTjP
         fZ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1cmxjMcfvrFVecoH9p5LC3mEGtFprhW9cvmWSFdwapk=;
        b=emr8fbwwJvoeww7BTuD5QUTYlAX6lrc+q34pwUCEbxQXKTFQtuM+K9OchBuBCYPAE5
         oeTNfQ9oPjmeq3UoqVuDHFckpgw+oRJi1W5ic+5w2zazvhbr4oXOIMT+oleHHzAVM8Sx
         wmwwa6hskOefsUQgVdv3X2MIr/cAYCN7RsdA+VHHHKmHg+9zElK2RMzPbWj5TLlaR7YN
         6qY84lZiLBTVRpDRFWQ7y/aTH1J4ya+izqo73DLJ7IQdWfN+i3DdNFGEgyvEAJHvm3Fd
         4lPM3b/BcfDSy3wFeF0SjCFaY5Jgjycn6pwiTC+kt6GklATXXK0lZItWiRHMnW3zLIJj
         aEMw==
X-Gm-Message-State: AOAM531MDDchoGzF715+iDhRwHud8HwIJ2YCH+HVQCsFPURW25XSarVa
	K/cmnkae5bgDLxv5jru6h54=
X-Google-Smtp-Source: ABdhPJzwP5Xu8tMA50dj4Cd0Qmlt6oZPJD3f0RYAELHnajfB9+X/WzuYB2Qx0RXWPDvQHP7LyJJ0+w==
X-Received: by 2002:a92:5b08:: with SMTP id p8mr5906986ilb.124.1611976342703;
        Fri, 29 Jan 2021 19:12:22 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id u9sm4853201iog.16.2021.01.29.19.12.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 19:12:21 -0800 (PST)
Date: Fri, 29 Jan 2021 22:12:19 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2] rock-pi-4: Split our variant machines
Message-ID: <20210130031219.GA956@localhost>
References: <20210123210512.20111-1-JPEWhacker@gmail.com>
 <20210126013043.19569-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210126013043.19569-1-JPEWhacker@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Applied, thanks!
