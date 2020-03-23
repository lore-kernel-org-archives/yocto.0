Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.828.1584999946052898775
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 14:45:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aWTFfyGU;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0B44E018C1; Mon, 23 Mar 2020 14:45:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2725EE018BF
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2020 14:45:44 -0700 (PDT)
Received: by mail-qk1-f181.google.com with SMTP id b62so7815213qkf.6
        for <yocto@yoctoproject.org>; Mon, 23 Mar 2020 14:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2U32mNXofplrWw+tlulzMvTzlNpU1w1d4964h7peY7Q=;
        b=aWTFfyGUVl8A1ZtyZkBtVH9LpOJhwJz63TEuXhObOXWubaeduUuEKfIjvb4+++WQ+g
         zIVVfnL9XfRQCtpXVG2SRyr/mFVmDHfKfh/I31m+G3vcOLaZLgnqby6IZOv/qW5X4O6O
         4k8x49/IWi18C202z1Vtd+SOAc9csMQfxgn6o42Utu74Cc1Kbz4CgjRfD4qRkdbpH2xj
         HGHETV1M4XAxMY70dVAjLMV4DH/UeYCFvBZZe0BbzzHMBCmnHaS7ZG7ir4b8zKF+Es+y
         rOvdT2f5F2kS/6Zaj2frb1+gMbxbyqDKdYmVLhzzVukii+qAqOpKJkjqfxnpVCnEcL4S
         5OXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2U32mNXofplrWw+tlulzMvTzlNpU1w1d4964h7peY7Q=;
        b=e7/rYXFF39t4A9pqpnrEKFrKLq+0Hl9I3aCJYyNOdYG+bTbWI2WI2lCtrzJ/M9R6Pq
         TljtTnp7bxZC1m2cV4ww99C853SjTp8+L+Fv+Y5DcV057bmUHrQkyoBuBdguv/Q1OduY
         ewK3YTbYmXuP/9Zy4ZRl8vlY9C7O0SsY0I4aPQJYW485Nzr6PLv4O/7ve7EJ6kc9EmBv
         UvW7CrLrbKMa2bCfl96R5lwFs97bcy/XASqXRpPdEWdEhOR2acgDTGLF9rj1nGRjmo2x
         j3ZSEnABlSwFUVS3UDgtsE2pltvT+8vnBJj/s6BraPZL0ILT5Ersgbf8O9Ut5aBs16qA
         kTFQ==
X-Gm-Message-State: ANhLgQ0M+GUXE/b0eawh+FaPEzH17T8CzCye3BZmWIXQ573gaGVYiXEL
	Yo6MPbSTu24J4XPHGojN45I=
X-Google-Smtp-Source: ADFU+vur7V4SBO+ppJITI+8E25q7/4V8QUZFzEDf9oVIpWA+WIKh8pAPgWT0XR1v+oNArxIqb9NJnQ==
X-Received: by 2002:a05:620a:529:: with SMTP id h9mr23369456qkh.142.1584999944200;
        Mon, 23 Mar 2020 14:45:44 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id z11sm12677165qti.23.2020.03.23.14.45.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 14:45:43 -0700 (PDT)
Date: Mon, 23 Mar 2020 17:45:37 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Cc: Sergey Bostandzhyan <jin@mediatomb.cc>,
	karthik poduval <karthik.poduval@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] yocto on tinkerbaord using meta-rockchip
Message-ID: <20200323214537.GA24482@linux-uys3>
References: <CAFP0Ok8cBje8vofUwqo2ac5moA7Yj3OiJNO9DDbJJXxCJUsEtA@mail.gmail.com>
 <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com>
 <CAFP0Ok9cSbcFzYELJ+D65aw4hMGXegfK=qr4Ay79wsJO2TPLHA@mail.gmail.com>
 <CAHUNapRTV8SgnDfhPGY5G8kaFyK9g=qK2GG7vOPkmmuj-Ugv7Q@mail.gmail.com>
 <20200323111421.GA20231@xn--80adja5bqm.su>
 <CAOf5uwmWFFZr5QvWp6kQazzU1YkmcmdxNEBZp_9WXwm0dOvJyg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOf5uwmWFFZr5QvWp6kQazzU1YkmcmdxNEBZp_9WXwm0dOvJyg@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2020-03-23 @ 10:31:05 PM, Michael Nazzareno Trimarchi wrote:
> What about the status of qt layer using panfrost? and mainline

Thanks to JPEW, mesa with panfrost is enabled/working with relevant boards.
I've tested it, running, on both the rock-pi-4 and tinkerboard (so it *should*
be working with your vyasa-rk3288 board too, although I haven't run-tested it
lately). Therefore most anything sitting on top of mesa *should* work.

Of course... the panfrost project is a "work-in-progress", so there are
probably some cases that might not work.

Best regards,
	Trevor
