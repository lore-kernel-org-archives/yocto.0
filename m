Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B81D7E00292
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:03:27 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id s4so737301lbc.35
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ibBccHQoOvRSXzxRscizZQ1sGpq/sHoaXVevDXmEgKY=;
	b=OMYVEM4aYUQ/XxcGvQ6UIBY6tEcjaVjX0zBum+yYggHjGhvrwWOFkWQgoPKmTviWOp
	7gGRA73DqiumaRXf8aM5ub8BWrBsZ62PtoU09cXs0YejrBLndieFy6bZDGyrVUeoY/uS
	KTScCwWh3HUh++cYdcI9Ua+S9p4MLddhzwwVktuzxD7Xzzx+cnwqqIhfEjQniNT5hWX3
	v6azcpIDlZa6XJBbEDdH8LY3rAomke7UF0fGgipUUSmRB64Qpz3vNLos12/v8uRecS5A
	wM4dgVo/VZntTRpscAFkMGikENrHfPCO3ffeyPq3somWbfubW4kiLvTRE5aDkHMH2O8g
	z5YQ==
MIME-Version: 1.0
Received: by 10.152.106.212 with SMTP id gw20mr12475185lab.8.1351026206701;
	Tue, 23 Oct 2012 14:03:26 -0700 (PDT)
Received: by 10.112.20.196 with HTTP; Tue, 23 Oct 2012 14:03:26 -0700 (PDT)
In-Reply-To: <CAJTo0LYi3s9Dp33ORf4VvQFrFY4v0ib9vzRqFOWaKy5sMjex7Q@mail.gmail.com>
References: <7E7FACCF-2EB1-480F-998D-F52E40A59976@gmail.com>
	<0C4325BA-1CE2-451F-A7CE-2C08721911CC@gmail.com>
	<4A7E1048-DBF7-4266-8CBC-40729B10C6CA@gmail.com>
	<37A1D383-EE8E-4490-80F6-CA3ECE928B67@gmail.com>
	<CAJTo0LYi3s9Dp33ORf4VvQFrFY4v0ib9vzRqFOWaKy5sMjex7Q@mail.gmail.com>
Date: Tue, 23 Oct 2012 17:03:26 -0400
Message-ID: <CAHUNapT+Tf-1uTXJo9CXB=2CT7D4A2GYd9O+MmvGLit46wogWw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: ERROR: Function failed: do_rootfs, poky commit id 8ce23f569584f195391bc5c68a780e1bf54e4360
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
X-List-Received-Date: Tue, 23 Oct 2012 21:03:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

Just out of curiosity...

On Tue, Oct 23, 2012 at 3:53 PM, Burton, Ross <ross.burton@intel.com> wrote:
> An alternative (and less intrusive) is to increase the commit timeout
> on the build partition

How does one go about adjusting the commit timeout on a partition/disk?

