Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4407FE011DB
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:23:25 -0700 (PDT)
Received: from mail-ia0-f176.google.com ([209.85.210.176])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 10 Oct 2012 02:23:04 -0700
Received: by mail-ia0-f176.google.com with SMTP id h11so215928iae.35
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=aLvGcvxy2Tsxk11PcL/PK9jOO7jvaJPNTccaWw9Qpgw=;
	b=Xa8+LWhwhl09Eol8QQM+VQ87K6jJir9DGrVZMz4Xr6qkEe5AhKcX0c2yrNDaHSunOB
	6l3nEbg8HvBMKLPfOnUMnbbcmdIvTKvS0t51g0KNrScBchnVDxHrRfbumulA7jHa5+xU
	qMFbQVA7pTYl2McLY646T7y/Gi5ZFZClv6LYg5nP9BWpYPNP5oY1C347BeJp4IUHopJv
	2jEcZaZevRKaI5DmFKwYbN9hqVzDm1pne2L7qV4wxryyfz/0kXj1Q1e+r8aHv5qHWyi9
	Wdzn0qVEEh2/fqZGOw3315JpjlQ/ciiaNnBs/UW8ppbMHXcPdSxRXXsfdE5leNFK5tXN
	4DDg==
Received: by 10.50.180.169 with SMTP id dp9mr4610025igc.8.1349861003140; Wed,
	10 Oct 2012 02:23:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.141.70 with HTTP; Wed, 10 Oct 2012 02:23:01 -0700 (PDT)
In-Reply-To: <5074E0BB.6040109@intel.com>
References: <cover.1349831664.git.nitin.a.kamble@intel.com>
	<35b1c05ce67d1e95bb471f3db56a14c9c519498b.1349831664.git.nitin.a.kamble@intel.com>
	<5074E0BB.6040109@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 10 Oct 2012 10:23:01 +0100
Message-ID: <CAJTo0LbHqo6VV4BmhbZO1yTbeVwMbNiPyhCs-YZhv9QdQFUdPw@mail.gmail.com>
To: Darren Hart <darren.hart@intel.com>
X-Gm-Message-State: ALoCoQk73t05vzt5je+THWuz6obobUBi3HTvMU4Mp5Oj7xiQY1SGkB7fOFZymdW0g97u15kJK+Yc
Cc: yocto@yoctoproject.org
Subject: Re: [PATCHv2 1/5] xf86-video-intel: Bring 2.20.0 version to match released graphics stack
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
X-List-Received-Date: Wed, 10 Oct 2012 09:23:25 -0000
Content-Type: text/plain; charset=UTF-8

On 10 October 2012 03:43, Darren Hart <darren.hart@intel.com> wrote:
> Saw you asked in a bug about the impact of this, I'd like to hear back
> from Ross on the changes regarding xvmc and PACKAGECONFIG.

So everyone hears and not just people on the bug, I'll repeat what I put.

XVMC is disabled by default (as before) but available to be enabled
via PACKAGECONFIG.

SNA (new acceleration architecture) is disabled by default but also
enabled via PACKAGECONFIG.  Enabling SNA adds about 1MB to the binary.

Ross

