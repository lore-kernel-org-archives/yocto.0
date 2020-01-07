Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4812.1578399822491530091
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2020 04:23:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JVv7xnND;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C73DE01204; Tue,  7 Jan 2020 04:23:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.43 listed in list.dnswl.org]
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6286E01204
	for <yocto@yoctoproject.org>; Tue,  7 Jan 2020 04:23:40 -0800 (PST)
Received: by mail-wm1-f43.google.com with SMTP id t14so19149337wmi.5
        for <yocto@yoctoproject.org>; Tue, 07 Jan 2020 04:23:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=MRfD2QRXiB7hHSi9+ZcNgw0xN+sDM2C56UsLPVLa4u8=;
        b=JVv7xnNDMIibl3vET14tPwvYP+473TeAHAa4E20hziGm5gXkeRTz6K9CZnslvT40E8
         OiHHi/UQRIBhFqYImr79YzVrEUAciX6QvgIPb9lWoFamlNtEW7mhJCFnIL1EantWxTt+
         O/H+xnsSDN1Y+IHysP6WOj0W9sJWmPt2W4Q04=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=MRfD2QRXiB7hHSi9+ZcNgw0xN+sDM2C56UsLPVLa4u8=;
        b=jYEdGIGbdpWf3mPPbN5wojn+yZ3rZf2rH6Kd7C3mgahiq4Op2Y57QpCHbmW5731q/W
         riJFTeN3ol1j+McWoJweK76nYvQ7bmCNJTiG192jI7QcYhoR1fznkd8TP+9CA3vlAytW
         oEyIWbAZCFg5oZqKEGaWZ4/dXQtFDCy6zAtHQhpQjqpSHGfYoHiVwHC4HORLK1myYyMQ
         Kg5MwORNvUGcGyenmLxoYRJni8TojDDQNt/w5RrPLVDbovLCltYElA/B7IzOah4DuIpQ
         mCAlySBG45YclASdROytgNUnHoVV3VVQRP4qjLhdE1QAv9vU+9PgmDyLZ8rbs3gCqSks
         0JvQ==
X-Gm-Message-State: APjAAAXEd+quQUnf8+uiUkY8THzDfxgMF2f0flWH486pXdYU6MoEgk2s
	CEg0DpuxCeheK5lbibEi2C2AfA==
X-Google-Smtp-Source: APXvYqxCAqMtvpY0hO+stpC7M5HA/F3VbX9IQt+JVzo+UakpGONkv1m1vtA5voPkZiZ9KTswPbWNnw==
X-Received: by 2002:a1c:6585:: with SMTP id z127mr39672191wmb.113.1578399819858;
        Tue, 07 Jan 2020 04:23:39 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id b68sm26479125wme.6.2020.01.07.04.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2020 04:23:38 -0800 (PST)
Message-ID: <5b5153a65c4e75f8361872721842b6e35dbe0e5f.camel@linuxfoundation.org>
Subject: Re: poky: no submodule mapping found in .gitmodules for path 'documentation/bitbake'
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Richard Leitner <richard.leitner@skidata.com>, Scott Rifenbark
	 <srifenbark@gmail.com>
Cc: yocto@yoctoproject.org
Date: Tue, 07 Jan 2020 12:23:36 +0000
In-Reply-To: <d6f4ea64-27ba-4884-859c-1c7c18a6774a@skidata.com>
References: <d6f4ea64-27ba-4884-859c-1c7c18a6774a@skidata.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-01-07 at 12:55 +0100, Richard Leitner wrote:
> Hi Scott, Richard,
> I'm experiencing weird git submodule behaviour on poky master since
> commit 7e7b066085 ("YP 3.1 Docs: Updated Manual revision tables.")
> 
> Was this intended?

No, it wasn't. Scott is unavailable right now so I've removed that and
a couple of other files which shouldn't have been there. Thanks for
reporting.

Cheers,

Richard

