Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05041E00307
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2011 10:04:57 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iaqq3 with SMTP id q3so3437606iaq.35
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2011 10:04:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=XebnMcK5JUGkcr8vTLUbX+shRrDsdTLw1V9L7CRvlfc=;
	b=WZNHGoS1ggCJyS3x1VJQJR7OdnA9WkdQEwiZWnwYi76qtdYmBTzCz6SRUgT/l7ttKP
	ss13GwVMT7nn0Yr+3nPVqyjOdKhpQ3qX44o/khxIILn3R6RK5UJ1N44mdiynn+9Gn5aj
	5tnmJT+QccsfYwZ2f0OFUedNVNTRetqSBOk+k=
Received: by 10.50.77.229 with SMTP id v5mr34214835igw.13.1322157893264;
	Thu, 24 Nov 2011 10:04:53 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net. [99.57.141.118])
	by mx.google.com with ESMTPS id eh34sm89931976ibb.5.2011.11.24.10.04.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 24 Nov 2011 10:04:51 -0800 (PST)
Date: Thu, 24 Nov 2011 10:11:37 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20111124181137.GF28767@sakrah.homelinux.org>
Mail-Followup-To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	yocto <yocto@yoctoproject.org>
References: <1322131968.24143.6.camel@ted>
MIME-Version: 1.0
In-Reply-To: <1322131968.24143.6.camel@ted>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Build Time Update
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
X-List-Received-Date: Thu, 24 Nov 2011 18:04:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (24/11/11 10:52), Richard Purdie wrote:
> Just to update on build time at the moment, we did regress pretty badly
> recently. I'm fairly sure this was down to a useradd change which meant
> dbus-native was depending on a target package and holding up a
> significant portion of the build and this has been fixed.
> 
> I just did a build of a qemuarm "core-image-sato" on my 12 way system in
> 43 minutes. I usually benchmark qemux86 which was at around 51 minutes
> for the same configuration. I suspect the recent pseudo and libtool
> linking changes have given us some good speedups.
> 
good job
I have been reviewing/testing the libtool patch  I did not see any issue thus
far
> More work remains but we have made some good progress there!
> 
> Cheers,
> 
> Richard
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
-Khem

