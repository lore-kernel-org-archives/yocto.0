Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA05DE00D50; Wed, 22 May 2019 17:04:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AAF2E00D3E
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 17:04:24 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id b3so3346305iob.12
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 17:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SNHwHXfR7cRNSkpeZfvbKkKKM3SCeI7mzC21xEemF8Q=;
	b=FYquXICPusUhqSaalxqcxkHBnFMlm8GzA3BS+rU/b5dEx1rxuxNRNaO9M/DFoQe6UC
	moSAC/ipf4d5VpAnQOmiC9K0Ms0AsMVcB0aZjwgUBzYIct/eg4+RCXqMEO9Y1cWjEdwH
	k6MyEMkJ06a6yqyDuuP/xqG5g7EVQiJS44NYM/1eHIk8URkhzdpSNrw/CF1bNf1bKwRQ
	b3pZ8IM14gyt+HakdjH/upT9+uVpB3MP5jtbEFoe0cgr+VRDF04/6IcS6S9Fxdjv8soI
	J6aWm7VI+5xeuhonL7m7IeySHAiHcWQMEb8lpIRLjO8DHtzR01gt2BQxderq8lTnUShx
	T7hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SNHwHXfR7cRNSkpeZfvbKkKKM3SCeI7mzC21xEemF8Q=;
	b=ZH358R/FufVvmvPRQLggeNOxvELC/nTwmhugVFcQZdwZsiJ7Mh6VTiqTV4Y916TXDs
	MQVB+N8xYjoxFiQ42702GGXwZSjHAIXvk9k+p9l+82kBLS1PSOjOGfGOZsbSWZ45pVSh
	aHy51Z7WUf6ltbfr83V8I7WC8KhqW8bJPTaWakoTWvzdMGbtprLo2QTIwEDvXNfPowAb
	X7CdWjxSaVN9nE2g1InsMhF9gxISzzhKfEKCdAQJEcZhoP0VJcy8gzTMlldASjAtEI0a
	wG+N2cMJnYOup6In62oFl+8gPuaBx3m1fM7mkIIH03+EOrTtWakkKJgtCWoIPKeQZQtx
	oAjw==
X-Gm-Message-State: APjAAAW7fVyzuB2RrzFRSS+DKk2t2LzlPgtOQbCkVPF5O6wpxfOafgCk
	kAL86xg5h04IcqlFdAksUQCHGDeyMpmi33TqbWcPKA==
X-Google-Smtp-Source: APXvYqz+KVel+2UQnhwa5Cz6Ygls4EECkpJfr0oY7iT7Uqx64KeMXZXVbFjO/r3d0HsjgcOY34TyjN4RD5gp8nJOPDI=
X-Received: by 2002:a5e:8409:: with SMTP id h9mr9618239ioj.187.1558569863800; 
	Wed, 22 May 2019 17:04:23 -0700 (PDT)
MIME-Version: 1.0
References: <CANGFfGamnoJ-YB=m7cvN4XBWieY8V53s+pRfg00e1-AwwqztBg@mail.gmail.com>
In-Reply-To: <CANGFfGamnoJ-YB=m7cvN4XBWieY8V53s+pRfg00e1-AwwqztBg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 May 2019 17:04:13 -0700
Message-ID: <CAJTo0LY3yB2AawsQYpouR=okBLYNqy3j4xB+ABUNaXXbAE9cKg@mail.gmail.com>
To: virendra kumar thakur <coolveer07@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: GPLv3 package present in rootfs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 May 2019 00:04:24 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 May 2019 at 06:26, virendra kumar thakur
<coolveer07@gmail.com> wrote:
> still some package gnutls, libidn2, libassuan, are added into rootfs.

Randomly picking libassuan:

LICENSE_${PN} = "LGPLv2.1+"

The library itself is LGPL-2.  Have you verified the *package*
licenses for what is actually going into the image?

Ross

