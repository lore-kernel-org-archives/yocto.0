Return-Path: <tom.rini@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CB58E00596
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 15:06:15 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so1466979ggc.35
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 15:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:organization
	:user-agent; bh=i8w0m8GE0GHAuZL9IYBDUe64faOECmycZj2ErULp7qU=;
	b=O0ZksQTn3VScpnmXMTB7/6l7kworsk9uHNoi0x6vAsAHJy0zXOgRf0u5+efyBrVWuF
	anLXTwwGJeBtHb9TjcHRf+DtAU8ddYxfWV4L/Y7GGneoXEnKJk9Ah7wVgHH+3wKWtNUy
	81NYsNjBTJZtG3WX8BY3ihD3BugLtDJj9exy+LkFXyA2ajk3zuzH4vElogX5GaIJTc7P
	hZCBvf2rDRLvx/MdE70Nh7UASycitSV2XWom5m+m3krPTsyabFuGzJHIruJ4Anyozhsa
	G2WXjRHc0n6QAj4me0HwozdynSa6k5MMfplJwpc0SzsHVi5UmOSvR3XNHQVnEXB6QgtT
	f/QA==
Received: by 10.60.12.99 with SMTP id x3mr40551591oeb.38.1332972375053;
	Wed, 28 Mar 2012 15:06:15 -0700 (PDT)
Received: from bill-the-cat (ip68-230-54-74.ph.ph.cox.net. [68.230.54.74])
	by mx.google.com with ESMTPS id d6sm3432632oeh.3.2012.03.28.15.06.12
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 28 Mar 2012 15:06:13 -0700 (PDT)
Date: Wed, 28 Mar 2012 15:06:13 -0700
From: Tom Rini <tom.rini@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20120328220613.GD4903@bill-the-cat>
References: <1332524095-8135-1-git-send-email-trini@ti.com>
	<1332958601-24500-1-git-send-email-trini@ti.com>
	<CAMKF1srabV0SzD9XpufjMvJAcvyiHbP_Pd+SeAxP=5__FuP89Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srabV0SzD9XpufjMvJAcvyiHbP_Pd+SeAxP=5__FuP89Q@mail.gmail.com>
Organization: Texas Instruments
User-Agent: Mutt/1.5.20 (2009-06-14)
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
X-List-Received-Date: Wed, 28 Mar 2012 22:06:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 28, 2012 at 02:42:36PM -0700, Khem Raj wrote:
> On Wed, Mar 28, 2012 at 11:16 AM, Tom Rini <trini@ti.com> wrote:
> >
> > -IMAGE_FSTYPES += "ext3 cpio.gz live"
> > +IMAGE_FSTYPES =+ "ext3 cpio.gz live"
> 
> whats the difference ?

Consistency.  Or blame Richard for saying "no, wait, =+" :)

-- 
Tom

