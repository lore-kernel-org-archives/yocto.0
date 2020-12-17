Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
 by mx.groups.io with SMTP id smtpd.web10.11726.1608224236644718452
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Dec 2020 08:57:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qsTCvU1G;
 spf=pass (domain: gmail.com, ip: 209.85.166.179, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f179.google.com with SMTP id u12so26378694ilv.3
        for <yocto@lists.yoctoproject.org>; Thu, 17 Dec 2020 08:57:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YMADjUcD+rSVAu5ykMzV9IuVJDsi7mw6kKUD7/mIt80=;
        b=qsTCvU1GpvHehdAIbXqhE6DE+/WtWcMsekB9gpoAODEfDmnaGFBRRqA8me1qkS47+z
         u4EskilCW+l4ssk7HorskiepoWAZFyvnb+qQVn6PY5l6r0I95BrFU+U2l7Ua93xDVeHs
         PLHHkaQ6pUOZ5C8iQ6/oOe6tqeu8D7+Ajy43f7g/YBa6M4Jl4Xsjohy1eIsLn+lFaWPK
         o8W0gLxvBPkMTOuWtsK4sRFRLwSFQyFiHDFSc+6P6e6QaIYcdsdSoXag/UWj1wHI3U4f
         NxSPXzKawV6dq43TvafnjJpXbTpo4grRuOidJ80B6BXIUBDTjJavWg71rT8VFWuS8iiK
         6ySw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YMADjUcD+rSVAu5ykMzV9IuVJDsi7mw6kKUD7/mIt80=;
        b=pM6UOuLzaMu3m2ouAE+AMZV5olLKgs905KQuCNRedhK6yTB4IK/NKhjBC9a5O9xAwb
         CyyaheMm2plxl2ghs22SMRbIhp7mynhGzc/mTKoC9jQacIHRl6A55t35K5M6itvayyZQ
         IlXjbfhOkXdnpNXAPUpBZ0vRFEQUTGz7azVtZx91tk0X1hzJkdwwIj+sO6axm3wRHcgD
         cA7kKQv0BnQNQpauRFTJ0WF/bpsPET+6DYu9MpAPb8a7h9mSXA1G9gZa029glJx+iRbb
         uOg6GXQ411sk9+tjJBwP4okDKhx1SdKl4PJOZ+k2vz0fQOh1x9ajn1lcywiF0mGMkc7l
         tC1A==
X-Gm-Message-State: AOAM532NhCQ0BGC8k795Lx2gIXKMufw/79pAfJyw3coef0P9V1H+dDdw
	6PfZmtiOFdMqgd4b5uT5QWA=
X-Google-Smtp-Source: ABdhPJymSTU3OR8L87OS/TqMF3Q/fVRw5dMySLkHI5twLIZm99yl5iWq/4N3N3y4Uvb4XlA3A2ALgg==
X-Received: by 2002:a92:d1c9:: with SMTP id u9mr49944132ilg.211.1608224236056;
        Thu, 17 Dec 2020 08:57:16 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id v3sm3516896ilj.28.2020.12.17.08.57.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Dec 2020 08:57:15 -0800 (PST)
Date: Thu, 17 Dec 2020 11:57:10 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] Fix Rock Pi 4 serial port
Message-ID: <20201217165710.GA8217@localhost>
References: <20201211144752.13869-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20201211144752.13869-1-JPEWhacker@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2020-12-11 @ 08:47:52 AM, Joshua Watt wrote:
> Fixes the serial port output stopping mid way through the boot process
> by reverting the kernel commit that caused it.

Interesting.

As you know (but for reference for other people) the baud rate of the rock pi
4's serial console is 1,500,000bps and not the usual 115,200bps that
everything else uses.

I have *always* seen instability on the console. The best way to reproduce
this instability is with the following test:

	root@rock-pi-4:~# cd /
	root@rock-pi-4:/# ls -lR

This never lasts more than a second or two before freezing up.

The ironic thing is, before applying this patch I thought I'd give the latest
of everything a test (I don't test every change every day on my board).

With all the latest software but before applying your patch, I just went
through 5 cycles of:
	- reboot
	- ls -lR

I didn't see a single freeze-up on the console! I've never seen the console
survive the ls -lR thing, nevermind 5 in a row.

Weird.

I did, however, recently change the device I'm using to supply my USB-C power.
I had noticed my last power supply was flaky, my local computer shop had some
new fandangled ones on sale, so I upgraded.

In any case I'm happy to apply the patch, if it solves a problem for you then
others are likely to bump into it as well. But interesting nonetheless.

Best regards,
	Trevor
