Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCEF5E00B85; Thu,  5 Jun 2014 14:13:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39D2AE00A44
	for <yocto@yoctoproject.org>; Thu,  5 Jun 2014 14:13:43 -0700 (PDT)
Received: by mail-qg0-f52.google.com with SMTP id a108so2705429qge.11
	for <yocto@yoctoproject.org>; Thu, 05 Jun 2014 14:13:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=N3kizf36wL2OY9RA8gsQ2RYAH0XOmJV099cyAc9x4KQ=;
	b=Aad/4y5ZgslNbZjlNdgnnSWP6okuu5gsHcT14ZH/49EDKSPxwKX82jaHNl+RS6QNHw
	65bl60Sbk7xr+U8HvL0e3QxY5XELUzXMXGhL9U3GOyhOope3k/j7BAVQ9S97KoleW51l
	HJAfEm1qa1qIl3NNQihLkM3qSHw7GBXLRPp18tIGpeptR+1cdQ6w9OZ8Hb3FDwHYYbQj
	NtLQjeXTciS8qvtRPgxvSEYTtxVgrpS8rR4wujbR1gCLpvh+mAhLJnxncZkvobQn018l
	MvZSgno/XRqITHWFdY5XltEjmrHPLohW30EUpZ65LoMx1L8UYyHwF2W7IBWc1aC9GBKm
	rPYA==
X-Gm-Message-State: ALoCoQmPz76BiqYUvywcCijggHXM8u6AdxfV0cz6woiKb34NYzF7mVSev91A2Oc6zLtPIv5v18wR
X-Received: by 10.140.48.161 with SMTP id o30mr523393qga.68.1402002822782;
	Thu, 05 Jun 2014 14:13:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Thu, 5 Jun 2014 14:13:22 -0700 (PDT)
In-Reply-To: <CAGM0ZdRC1fBMcVjBXdeV5bG7Pe7LcFACzhTP0J2fvRdaMYSiGg@mail.gmail.com>
References: <CAGM0ZdRC1fBMcVjBXdeV5bG7Pe7LcFACzhTP0J2fvRdaMYSiGg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 5 Jun 2014 22:13:22 +0100
Message-ID: <CAJTo0Lai3oqLkziVE_-+NK6MLMjcjh2biGNaESzPyeH9ztkeLg@mail.gmail.com>
To: Bharath Chandra <ellurubharath29@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: List of Binary Files from a recipe
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
X-List-Received-Date: Thu, 05 Jun 2014 21:13:46 -0000
Content-Type: text/plain; charset=UTF-8

On 5 June 2014 21:50, Bharath Chandra <ellurubharath29@gmail.com> wrote:
> I am working on a reverse enginnering project and I want to know by looking
> at an executable , the recipe file from which it is generated. So, first I
> need to understand by using what commands in a recipe file, we can generate
> an executable.

If you actually need to know what recipe produced a binary without
instrumenting the binaries, then use the package manager: they all
have a command to tell you what binary package installed a file, and
from the binary package  you can determine the source package, and
that's got the same name as the recipe.

Ross

