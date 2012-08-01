Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F83EE00288
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 20:13:41 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so394189pbb.35
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 20:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=t/ItQX8hQJR1fbcYKdjeZ3HMtfNd4WE9gxxGvhXcEE4=;
	b=TuNocHt7XrU7nlzUd1mrP9Hb/bhD1zMOlbua7Gm/yv5Jo3uu7AlYGK9cr9VXh8pqvu
	zSSDN3GAHzpbqWQQHigrFThOyYuVJwpPk4lSNHBZjk1U7Hmba2QzDcW2U0o7owKX7nAA
	8w3ayMVkLeMQh2XaSWR8iZJ6TwXgWOZu/rifhM9yrPMVb9iIM2LzGofaWHyFCayHh27j
	LVjlC/KLYELGGq+suCFCIUkQ5J+3BXcLlt+4qAzhymhO+GaUf1F8qW5LJXipZ9wsQVJ+
	vzQj0Sjp+Cxuv9tKkt0JN5v4H1EsTPsA5HAJXaIhT7XLHFUyS0JaAF4LzQAoonV2eJEy
	47Tg==
Received: by 10.66.73.193 with SMTP id n1mr7923836pav.81.1343790821231;
	Tue, 31 Jul 2012 20:13:41 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id
	ql3sm1554962pbc.72.2012.07.31.20.13.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 31 Jul 2012 20:13:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1485\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <50189888.3020103@linux.intel.com>
Date: Tue, 31 Jul 2012 20:13:37 -0700
Message-Id: <C4B37B65-466E-4F99-8904-C12877973E20@gmail.com>
References: <50189888.3020103@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1485)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Debug with gdbserver
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
X-List-Received-Date: Wed, 01 Aug 2012 03:13:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


On Jul 31, 2012, at 7:46 PM, Darren Hart <dvhart@linux.intel.com> wrote:

> I am trying to debug a userpsace application that misbehaves under
> poky-tiny. My current approach is use gdbserver on the target and attach
> to the offending process, then connect to it on the client using the
> yocto-built native gdb for the target.
> 
> I can easily add gdbserver to the target image, and can successfully
> connect it to the process:
> 
> # From the target (qemux86) root shell:
> # dropbearkey -t rsa -f ./rsa
> # dropbear -r ./rsa
> # DBPID=$(ps | grep dropbear | head -n1 | cut -f4 -d ' ')
> # gdbserver 127.0.0.1:1234 --attach $DBPID
> 
> Now on the host machine (amd64) I want to:
> $ gdb????
> (gdb) target extended-remote 127.0.0.1:1234
> 
> Which package do I need to build to get the appropriate gdb for the host
> to remote debug processes on the target?

bake cross-gdb for your arch and use it same way as above

> -- 
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Technical Lead - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


