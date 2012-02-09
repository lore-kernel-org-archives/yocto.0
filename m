Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CF9CE0123C
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 19:30:05 -0800 (PST)
Received: by dadp13 with SMTP id p13so1323407dad.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 19:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=eb8Fj4qiNhsUtUvJKH5rO9peExgbjE8ZodBN2d3awdI=;
	b=BrCET1V9+0SwpAOI9iq6vgDOx6oFFOhNvZ3o6H3rsBYzF7CsviwzSav5ypHY7jO8Dj
	YeXs0ZUhE15XDZHhXXBAN9MFe9uJN2/MLg6uWv5FhmpKzuA4AMCeQHp3qx0qpRYj0fIz
	Qum56k0P4QOSkc2nPBdOM1vhEiICi43ERDBXc=
Received: by 10.68.225.71 with SMTP id ri7mr999957pbc.129.1328758205205;
	Wed, 08 Feb 2012 19:30:05 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id p2sm2957693pbb.14.2012.02.08.19.30.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 08 Feb 2012 19:30:04 -0800 (PST)
Date: Wed, 8 Feb 2012 19:29:59 -0800
From: Khem Raj <raj.khem@gmail.com>
To: David Smoot <davidsmoot@gmail.com>
Message-ID: <20120209032959.GB29491@sakrah.homelinux.org>
Mail-Followup-To: David Smoot <davidsmoot@gmail.com>,
	yocto@yoctoproject.org
References: <FC61EC5F-CAF2-4024-9E88-BE7F1F8EDA81@gmail.com>
MIME-Version: 1.0
In-Reply-To: <FC61EC5F-CAF2-4024-9E88-BE7F1F8EDA81@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: applying a custom kernel configuration to the "built in" routerstation pro bsp?
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
X-List-Received-Date: Thu, 09 Feb 2012 03:30:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (08/02/12 21:08), David Smoot wrote:
> I want to change some of the kernel configuration options for my routerstation pro.  I have a .config from a 2.6.37 kernel running on my routerstation pro that was not built in Yocto that has the options I want to build in Yocto.  I am attempting to follow the instructions at http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#bsp-filelayout-kernel. But I am confused.  
> 
> Since I am using the routerstation pro, I do not have a separate BSP, it is "built in".  So I know I need to modify a .bbappend file to point to my config file, but I am not sure which bbappend where.

inside meta-yocto/recipes-bsp/formfactor/formfactor create a dir called
routerstationpro and inside that dir create file called 'machconfig'
add the kconfig options that you are missing in standard config to
this file

HTH

-Khem

