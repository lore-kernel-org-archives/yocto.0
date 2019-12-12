Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
 by mx.groups.io with SMTP id smtpd.web10.3226.1576131754616677237
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 22:22:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=T9R+FGl3;
 spf=pass (domain: gmail.com, ip: 209.85.160.194, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f194.google.com with SMTP id v2so1329729qtv.8
        for <yocto@lists.yoctoproject.org>; Wed, 11 Dec 2019 22:22:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=y/Jx5SN0MJ9eLojGU7E1PE8QjytLldPoSXn1RxnYLjc=;
        b=T9R+FGl3UT9Cx53qJW6LqTZhSSbLHPzG60ABl6uCxWmtGsWgnKkkh1Owl8PLz/aGA0
         qO/bvqE3dq5BUf4nuNMEq+/nyB/IP+Ktl/iqTxmciyNNwZYxU2eMTxpOs91X15etdAf/
         CEo82xuJ8geiKojYKCcs3D9Y6jUS5S+wG3e7GfBuuX7b0x2iGpzFpmItbQCTqq4qsviL
         ya3WYZ0/Ebte35iiYJ90i7E+r9bjTihabeMbVCsD9kW7AqDEW2B5bNpfcaExB0+rS+46
         z31ggZB+NL4BdFd1eKem4SLUmcXSC5KQSX8j1UXFE7Gpbg1AMh5Ak/D5mkYQXXD5+SXB
         Ml0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=y/Jx5SN0MJ9eLojGU7E1PE8QjytLldPoSXn1RxnYLjc=;
        b=R00U1i7rWk6WdFvy2DM8wahIEjA6ycwnFUIWwEdsNfRuguiE0j0tQpq6WOnEZwREbm
         1PGXfZmHjexGkX3eE4eA+aJF9Y0VfSqZk74itV/7ahF8YIw3pe9zTv8sfZW44JBCJv83
         pLZcxD5EhnwuzXPkFmP39488mMlaN5sUFZ2Z0gWyGGMfKblVVQP+tF3Ln/zaDw8hE7Hy
         4wcyo/TbeWcnb/uOsVRXEYlumb0rblPRlZ8BebWD35bfskIcrYZ7mntVH2fG7CTKwmxw
         y21fl5MUsxWBB2Cwktx/hXNCR82ul00fVCs7T5Ww+FQKOP6nLNQRaZy72vQbjAnVKTG5
         HHCg==
X-Gm-Message-State: APjAAAWZ93OO/JlBzidq+mie0CVhjrm9Ob7wnTaIxw6SaFxBPWGb17zR
	L4XaSM+uZ5MSUnxLng2EArI=
X-Google-Smtp-Source: APXvYqxcmsg+CvU6gW9wqf5N5/PKD5geK9GMw+Qb9hBTquC3nQRr1C+rtMXfexoWlvHhwjn7TjBYLg==
X-Received: by 2002:ac8:1e90:: with SMTP id c16mr3925136qtm.265.1576131753821;
        Wed, 11 Dec 2019 22:22:33 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id 53sm1887066qtu.40.2019.12.11.22.22.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 22:22:33 -0800 (PST)
Date: Thu, 12 Dec 2019 01:22:30 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto][meta-rockchip][PATCH] rk3288: Convert to using wic
Message-ID: <20191212062230.GA17257@linux-uys3>
References: <20191211193607.38084-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191211193607.38084-1-JPEWhacker@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Super awesome! Applied, thanks :-)
