Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEDD3E00596
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 14:43:07 -0700 (PDT)
Received: by lagu2 with SMTP id u2so2492087lag.35
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 14:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Tsi6PEkwkgM8FEeQZmq3+9wluNz+G7YhRqXw6RqwDuE=;
	b=D10gIiDquvGBwPAfpnNsf6BTmp5hQNbzoElAN9eq0P7VlI9vLaUE8PPL0T1HrCk5p8
	vbDq+mKAF0BgbFRYDbVZH+r81Cz394E1CRtEN9VOjhDEnWq4HzRrONd4/PV/HUTKFVWS
	Oz2ooez9N7dK0xNo0EK+vv3F8PFOFESby3k8z2tv0/IYHKcTWsxHuuMMOUzXsRDemrLj
	SFFdZnsxAW7xFZU1SWRt/fWAOieyY9rcTPdD3MEEZncIAr9pf77WqgUp7NZe4jZ09ktf
	pOAyDQr6CjgkLuzapzw9hKzLhSNXoh3v+JSw1FHaq5LPYGeUOrDHuvnDg7bTfYXZNs2h
	54ig==
Received: by 10.152.113.229 with SMTP id jb5mr24598142lab.45.1332970986428;
	Wed, 28 Mar 2012 14:43:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.3.161 with HTTP; Wed, 28 Mar 2012 14:42:36 -0700 (PDT)
In-Reply-To: <1332958601-24500-1-git-send-email-trini@ti.com>
References: <1332524095-8135-1-git-send-email-trini@ti.com>
	<1332958601-24500-1-git-send-email-trini@ti.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 28 Mar 2012 14:42:36 -0700
Message-ID: <CAMKF1srabV0SzD9XpufjMvJAcvyiHbP_Pd+SeAxP=5__FuP89Q@mail.gmail.com>
To: Tom Rini <trini@ti.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: [meta-intel][PATCH v2] ia32-base.inc: Use '=+' for IMAGE_FSTYPES
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
X-List-Received-Date: Wed, 28 Mar 2012 21:43:08 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 28, 2012 at 11:16 AM, Tom Rini <trini@ti.com> wrote:
>
> -IMAGE_FSTYPES += "ext3 cpio.gz live"
> +IMAGE_FSTYPES =+ "ext3 cpio.gz live"

whats the difference ?

