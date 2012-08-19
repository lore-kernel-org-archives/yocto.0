Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6B8EE01304
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 15:14:16 -0700 (PDT)
Received: by lboi15 with SMTP id i15so3417951lbo.35
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 15:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=mlCYycYuHI4e85a8uH9fhBAJMErYmhaNdT4qZbEgmoE=;
	b=Z2KAXx9yv6/PxNAFHqy1IyrA+nVdSZRl4Z4Oyf3SIjv2GWzpmJywtOAgTF8UwlOqBq
	F15YnvUcfDSnVZvY17/UoeNunWJRiDllrpbtds+R3EJAYMP6UKKVlbhZm/Wgjw1G9i/G
	aJ0qdCM+l5caMtd73bHpfDjQmzfM0g6M5jAX7zuSrhgk2sU6i6UyeJNoQRwdmABWRd6o
	dMMObPosR33s0VoDKFwQ7IH/g465F3ft9+RPmz6K1nu82f4J429wEe2SQzSEio5xKNcM
	ue6IDSm/D0L+fA0nXTZ+tmue3v6cDPJcXnfYRjVhoONZhU2B6DT5sOxLbKAewXkV/+aN
	FWUQ==
Received: by 10.112.36.195 with SMTP id s3mr5273512lbj.42.1345414455053; Sun,
	19 Aug 2012 15:14:15 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.19.2 with HTTP; Sun, 19 Aug 2012 15:13:54 -0700 (PDT)
In-Reply-To: <CA+JN8xOM0SVhCsrj+DdL7gjGAZAZ1SMrwVCA7mxWocK7+XQoyQ@mail.gmail.com>
References: <CA+JN8xOM0SVhCsrj+DdL7gjGAZAZ1SMrwVCA7mxWocK7+XQoyQ@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sun, 19 Aug 2012 15:13:54 -0700
X-Google-Sender-Auth: 8fab3ckwSnYXWCLr8doV_jTM2o0
Message-ID: <CABcZANmD72ZTvQ86Z85Gw_vUPCxpuTBUaM0kw6+Tu+-TLjObBQ@mail.gmail.com>
To: Seth Bollinger <seth.boll@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Installing Kernel Modules
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 19 Aug 2012 22:14:17 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Aug 19, 2012 at 6:53 AM, Seth Bollinger <seth.boll@gmail.com> wrote:
> I currently have a modules*.tgz in my tmp/images/deploy directory that
> contains all of the kernel modules built.  What's the yocto way to pull only
> the modules I care about into the rootfs image?


Every kernel module gets split out into its own binary package.
Inspect tmp/deploy/ipk/*/kernel-module-*.ipk, for example, if you're
using package_ipk.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

