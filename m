Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49877E00C75; Fri,  4 Jan 2019 07:58:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5F5AE00BB7
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2019 07:58:13 -0800 (PST)
Received: by mail-io1-f53.google.com with SMTP id s22so29865436ioc.8
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2019 07:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=KeNpS7q/AMMk6UnKg6g0JcrppSWTgBqvV9J16vLh8CY=;
	b=shSZ77yF9xr7Od8HR52RJ0Hdi5JQBCRssiYixeCnnCzaNFOP2afrQjfVGByJmfrScM
	EsbBsHdFKF2+o+PdNqFl0OpOSLZqpocPwI9EV9SkPRZYzPGx6shM+zh5vc9ICDcpElMv
	TEnsjuInEt+O2wzwoyJwYiQX/v5D/ySnWwegCnNzkZWndSoiaGEozYhPfDyQvteP6nC7
	rZOkPiNAaCEV+VvCDPcor4EgBILfXRLhI4qCiJgvtzZGpgcEPSqhrH1IZ1jj0Q7RVK48
	Q/Z6KPx2zlT0wV8BnV7epUwt+vfG1tp4deROny6jKQEWVNzpe/KV/4o3W7EvdBofvVge
	AWHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=KeNpS7q/AMMk6UnKg6g0JcrppSWTgBqvV9J16vLh8CY=;
	b=gRlGH7I6cru/Yx/9/NS6X/Hrrum9RWVd/vruiNda6fwMHyHNxEKajc6rKDAuZQlTYi
	l3pSTvRXNe2CN9WsEFJjwccgYHOTXpZlMKYN32YatOc50GDZmQb6UjcFO3GXglyMGL6Y
	Ugv/KoG84d/gZJ7xb5XVoIKNu+ACqldQNtN1qWuIiO9TmMBwwynniVG0KRuoGJ5g06Ah
	U6L9jQWxrD8CgYE6ECWX4tYCWeoyuXvuoW8lwz6m1KOP3a1tjhalsqNd8bWxdmJKtSj1
	FKcmXhUhdGGGDHcTrXHFQSysYPqJhnY7bQ4kMZ9PXmsWtVAqBAW5n7tLWE76sqPrwO0U
	9mmQ==
X-Gm-Message-State: AJcUukeurOYBDm33cC7W7kf7NGGg7CCBQCv7mFd7T3T+CSPbf52LyktY
	Gj8dmxR3oOpeUpk3DtkpcemmxZAPDY9Q3AY9ALDO/VTe
X-Google-Smtp-Source: ALg8bN4rVSO1PhawGHafYvWfj1vA//2eFAY2lLiOHQ0hVKmuUueBVp4PDKHTQ66tsL6ToU9EMBVhN5+oJ/BxzJ2LOVk=
X-Received: by 2002:a6b:f70a:: with SMTP id k10mr32379504iog.270.1546617493307;
	Fri, 04 Jan 2019 07:58:13 -0800 (PST)
MIME-Version: 1.0
References: <CAJgxT38ryEhJKQ1_CN79nKPBLUiOca-xHVVKUnGrOQoUq027hA@mail.gmail.com>
	<CAJTo0LZK0Z_HA4aXecD4NEkmHaFY1S8yVh+zKg2WGa54iCKAOQ@mail.gmail.com>
	<CAJgxT38FfDiYCYrMGqsY3gmVSMGm2=QxYP_YppGjYiar6piP0A@mail.gmail.com>
In-Reply-To: <CAJgxT38FfDiYCYrMGqsY3gmVSMGm2=QxYP_YppGjYiar6piP0A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 4 Jan 2019 15:58:02 +0000
Message-ID: <CAJTo0Lb2NXfnP8yS02Mp12SBEJM7NkdTtDTnZ8=Tpw9EXXaoRw@mail.gmail.com>
To: Matt Hoosier <matt.hoosier@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Using prelink in Thud and subsequent
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
X-List-Received-Date: Fri, 04 Jan 2019 15:58:14 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 4 Jan 2019 at 15:56, Matt Hoosier <matt.hoosier@gmail.com> wrote:
> Okay, fair enough. There's a lot of mechanical configuration in poky,conf that would be nice to not to maintain a copy of, but that's fine.

If there's anything in there that should just be shunted into the
default configuration, then please do send a patch (there most likely
is plenty).

Ross

