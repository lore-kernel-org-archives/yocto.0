Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6A0FE0059A
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 21:51:48 -0800 (PST)
Received: by dakj40 with SMTP id j40so237454dak.35
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 21:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=llGg1sb0AjpHWQPjA0OHz/0jz+jnSHtSCFtd6wFE4es=;
	b=pnyaI36K8VXn/+v+tAeyxgxpFFXn75IuLdF/ma4FKyRG6zzSCiD8qCV/OhI6ryK4rP
	dJW0H65DQTQ5J9YCK99EZoEbkrLTteJ/RSNa0xw7AiRxXIA95bHuLZaZbFTAXl0ERI61
	uGOxENINoVUpn8Exnen3i6KIhSHDfyXUpODBw=
Received: by 10.68.73.69 with SMTP id j5mr2447666pbv.11.1327557108659;
	Wed, 25 Jan 2012 21:51:48 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net. [99.57.141.118])
	by mx.google.com with ESMTPS id a5sm8395425pbh.15.2012.01.25.21.51.46
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 25 Jan 2012 21:51:47 -0800 (PST)
Date: Wed, 25 Jan 2012 21:51:42 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Message-ID: <20120126055142.GF5566@sakrah.homelinux.org>
Mail-Followup-To: Brian Hutchinson <b.hutchman@gmail.com>,
	yocto@yoctoproject.org
References: <CAFZh4h9YHz9VhdT3qHrrXQwaWn_qK4wpQ-JzPihO0qyhRfdE5A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFZh4h9YHz9VhdT3qHrrXQwaWn_qK4wpQ-JzPihO0qyhRfdE5A@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: How to get opkg in rootfilesystem
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
X-List-Received-Date: Thu, 26 Jan 2012 05:51:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (25/01/12 23:51), Brian Hutchinson wrote:
> Hi,
> 
> I set my conf up to build .ipk packages but then I noticed that I
> don't have opkg!  Working with Beagleboard and running core-image-base
> from master branch.

add package-management to your image
EXTRA_IMAGE_FEATURES_append_pn-<yourimage> = "
package-management"
> 
> All of my searches turned up info about he ADT.
> 
> Regards,
> 
> Brian
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
-Khem

