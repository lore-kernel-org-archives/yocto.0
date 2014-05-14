Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 595CCE00975; Wed, 14 May 2014 07:13:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qc0-f181.google.com (unknown [209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94155E006EF
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 07:13:42 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id m20so2871335qcx.12
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 07:13:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=XLgCZB9vpvtypek2T8QRNX6A2UGv6aHNRu4ZnyNxai0=;
	b=eh5TI8XTaAw8WLhToD/xFZRpLa9c9qwckEmlx/HRb24N5fo+Jy28Jy4R0HMwK3+ZtK
	G+lfDJz1bRpp95PKIJ9eU6PVXjTAGc1CTGzhapgbRqNNRjWlcy5u1TCbDePws6De/oBF
	JDXbZGTLXvxk4DHQ/9fzyT/bnv7pXv8m9jVN5v4CAC9KIRAZAGIOLRdjd/D72TinU4EJ
	b8UN974Ustb8o7E1r3m9UzQ+1u+G6ujFKuV1kIi4U3/PIMotM6pTPsx0bdwIampBIQPw
	P6j665FkSFQiy/hEIRtlAGbYzSichVt51q9s6R6CIa0ZQ5TOzHW6+qVvEq7sSF2lE2Z+
	NlSQ==
X-Gm-Message-State: ALoCoQnjhXN0SRDWRkW1lSaXnY9ebKZp7w5EvSqWTc/4+Ck3IQwGFhC7tDaoYLGpVTCcHY4igDFi
X-Received: by 10.140.48.161 with SMTP id o30mr6115425qga.68.1400076822226;
	Wed, 14 May 2014 07:13:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 14 May 2014 07:13:19 -0700 (PDT)
In-Reply-To: <lkvt3i$bhu$1@ger.gmane.org>
References: <lkvpl2$e8q$1@ger.gmane.org>
	<1400074572.84934.YahooMailNeo@web122502.mail.ne1.yahoo.com>
	<lkvsj2$vof$1@ger.gmane.org>
	<CAJTo0Laq27nBx+vPbch=PQigAhvRTMKiM7jkKUYHWgxDfgnSEw@mail.gmail.com>
	<lkvt3i$bhu$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 May 2014 15:13:19 +0100
Message-ID: <CAJTo0La4jbY+7Tcgf+vf6z1gaHo1tru_Dx8QGx9KLOfdMk2C9Q@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best way to remove DISTRO_FEATURES?
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
X-List-Received-Date: Wed, 14 May 2014 14:13:46 -0000
Content-Type: text/plain; charset=UTF-8

On 14 May 2014 15:03, Neuer User <auslands-kv@gmx.de> wrote:
> Hmm, so I need my own distro?

You don't need to as local.conf is sufficient, but changes to
local.conf are specific to *your current* builds.

Defining a distro is trivial, just make your own distro.conf and
either include poky.conf or actually look at it and see how little
that conf file is actually doing.  The default values (which is not
Poky) are a good starting point.

> Actually, it is not 100% clear to me what the difference and the
> interaction of "distro" and "image" is.

Distro affects everything you build, an image is simply instructions
on how to put some packages together into a disk image.

Ross

