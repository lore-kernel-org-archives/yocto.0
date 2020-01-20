Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.1454.1579557419829808707
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 13:56:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=f87NdbNL;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49CEFE015C0; Mon, 20 Jan 2020 13:56:59 -0800 (PST)
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
	*      [209.85.221.67 listed in list.dnswl.org]
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCC74E006EC
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 13:56:57 -0800 (PST)
Received: by mail-wr1-f67.google.com with SMTP id z7so1035198wrl.13
        for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 13:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=L6ENGStpM6uG5UPVzFpbEk0U9w85JauHK5gELp52dyI=;
        b=f87NdbNLWCCKpIh5GL6LHVMWGLBpC9GFMLCzaMFfk02/v4mckUyiNJQ0hujsrEfTOT
         zX7a/H9NAst8TAspe7MZsrcH+xv7GB6bLw9BDY2RVq0KrC5pU/KmuV8/oYKKXlR1z9OP
         P4YSzzUxtMAEmyO6yUOqunUijVUeTQo5D8XHc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=L6ENGStpM6uG5UPVzFpbEk0U9w85JauHK5gELp52dyI=;
        b=IuDbXpH83acvW7r3+epcPMvsT7h7olcTA3s4Oqd9kAiXxlIt++EAXYHI6/sGIhSVVC
         G/1KvLACv84m6kirZAPCZ6Rpeyp61aPN4wBQ2LCsZOENa6U2spZyFlTwsOZLaVUHeprG
         7mbfWv0rovr15iJG7XbCMg7RjFTA6nD5HGfVBhZFPuj8KKQTE+P2QyERiWAw//v0IX00
         VZ37rFdOGkEHYncrrK4feJZ+ACfbSmi49jPmz72jJ0AWScveVZLRMPq7qE8NvZElOmVz
         aH3kzmaGBMZeyf1InC+at02LmHghJDw2+/gZrk9unjHRkTW76tyWhsb+xfUxvT9vg5rH
         tf+g==
X-Gm-Message-State: APjAAAVqJ/9YSNFNynjArddNkj3HKk1EuHX+WCPn0tquid7Zbc88t1V+
	o2GdYoql+Yj1NqlV89D586fEtQ==
X-Google-Smtp-Source: APXvYqwt/EZsGtSAy1mtkWcP4crLAzqUNVdfrp/r+/JQtX+5c9op/wELpGKxMijQ9m5x9rdNL0nU7g==
X-Received: by 2002:adf:fac1:: with SMTP id a1mr1432608wrs.376.1579557416964;
        Mon, 20 Jan 2020 13:56:56 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id k82sm1021215wmf.10.2020.01.20.13.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 13:56:56 -0800 (PST)
Message-ID: <d65b6fe9814bd4bb1c0e897f5824cf5a41d8db1d.camel@linuxfoundation.org>
Subject: Re: [yocto] [psplash][PATCH 1/3] add recovered bar.png
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Stefan Agner <stefan@agner.ch>
Cc: yocto@yoctoproject.org, ross.burton@intel.com, Stefan Agner
	 <stefan.agner@toradex.com>
Date: Mon, 20 Jan 2020 21:56:55 +0000
In-Reply-To: <47271a9e22754a99399c62c83e3fdc6d@agner.ch>
References: <20190225151619.2754-1-stefan@agner.ch>
	 <56d5850f22c8b31a50a5b2839d1021f9@agner.ch>
	 <578197128dbbb082b8d842fa3e46ee394501b522.camel@linuxfoundation.org>
	 <47271a9e22754a99399c62c83e3fdc6d@agner.ch>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-01-20 at 22:48 +0100, Stefan Agner wrote:
> On 2020-01-20 17:14, Richard Purdie wrote:
> > On Mon, 2020-01-20 at 14:31 +0100, Stefan Agner wrote:
> > > Hi list, hi Ross,
> > > 
> > > We still carry this downstream, any chance to get them still
> > > merged
> > > in
> > > psplash?
> > > 
> > > If it is really considered unmaintained, then we probably should
> > > drop
> > > the psplash recipe altogether?
> > 
> > I've just merged them, sorry about the delay.
> 
> No worries, thanks for looking at it!
> 
> I actually realized that we carry one more patch which adds systemd
> support. Will send that patch as well.

I'd love to get that in. Please cc on the patch.

Cheers,

Richard



