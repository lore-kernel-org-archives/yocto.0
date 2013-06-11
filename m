Return-Path: <ross.burton@intel.com>
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8143E01538
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 03:08:50 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id bj3so4170522pad.0
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 03:08:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=6DnveiouPdJJGE8FcpNzFUdMiibHRCEfBWskXeLo/eY=;
	b=TRlZVSsJN2OGo/a4Hhoi/3eYdAKom+bVs12oklcdclyRFd2kFjwXIQp5KJqHqrMsTz
	KfFuXQIz9kPsFJpsw5VPfRAYSTztMmcPVd78jFLYdfq6b4Xgi/q8oPJXwX5fQawiEPoD
	OMRHIenOBoDJjSPbm9wUqObuYGCCPBqnPfhp+5uZ8xEiIiSZNv0EZNGf/tpO3y6mwFcW
	4vWqSz0FiDeUQ+mCOJivKoYjiQid8s5x1GItTXHfNUOII/1rYNZJDUido8+aaKs2YUnx
	4n4gTy+/a0Dc0L3BHUdSoIoUJUuAAAQzlYnBsNRP6N/R19nN1zpgXxL/UZzXLNyE7AvI
	bW8A==
X-Received: by 10.68.162.163 with SMTP id yb3mr13671276pbb.212.1370945330471; 
	Tue, 11 Jun 2013 03:08:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.66.252.98 with HTTP; Tue, 11 Jun 2013 03:08:30 -0700 (PDT)
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A0157FC1A@039-SN2MPN1-021.039d.mgd.msft.net>
References: <CA452391058F6D4E9715FB2C29D9312A0157EC80@039-SN2MPN1-021.039d.mgd.msft.net>
	<1370598605.6864.16.camel@ted>
	<CA452391058F6D4E9715FB2C29D9312A0157FC1A@039-SN2MPN1-021.039d.mgd.msft.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 11 Jun 2013 11:08:30 +0100
Message-ID: <CAJTo0LZSd01KS6yzHcYkZoZR-up-9-tLmbcJdnhjiSQ-nuqsfw@mail.gmail.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
X-Gm-Message-State: ALoCoQlI4ZXUF58xd1Z0igbXv/xEjva1SuU8h/eR2R5Lc/qSxzynHJxpl81cf3sF8NhGFwrk+iNE
Cc: Wrobel Heinz-R39252 <r39252@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can Yocto run on host with other CPU types
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
X-List-Received-Date: Tue, 11 Jun 2013 10:08:52 -0000
Content-Type: text/plain; charset=UTF-8

On 7 June 2013 11:45, Luo Zhenhua-B19537 <B19537@freescale.com> wrote:
> [Luo Zhenhua-B19537] Does it make sense to log defects in YP bugzilla if issue is found on host with those CPU types?

We don't claim to only support x86 hosts, so yes.

> BTW, is there a limitation for maximum parallel number of Yocto build? I don't think the number can be arbitrary.

Bitbake threads or make tasks?  I'm not sure on the former, but for
the latter the range is effectively infinite - if make can spawn 2000
sub-makes it will (depending on the makefile).  This is effectively a
fork bomb so I don't recommend it though ;)

Ross

