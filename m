Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19E89E01374
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 07:56:38 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Jan 2012 07:56:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="100456624"
Received: from unknown (HELO helios.localnet) ([10.252.122.164])
	by orsmga001.jf.intel.com with ESMTP; 25 Jan 2012 07:56:37 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Joshua Immanuel <josh@hipro.co.in>
Date: Wed, 25 Jan 2012 15:56:36 +0000
Message-ID: <165969514.8Xnp3ebGHF@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8 rc2 (Linux/3.0.0-15-generic-pae; KDE/4.7.97; i686; ; )
In-Reply-To: <1327469596.2543.15.camel@babel.joshhome>
References: <1327402068.2521.8.camel@babel.joshhome>
	<1782182.Md7PmFZxKk@helios>
	<1327469596.2543.15.camel@babel.joshhome>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: overriding a class in custom layer
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
X-List-Received-Date: Wed, 25 Jan 2012 15:56:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 25 January 2012 11:03:16 Joshua Immanuel wrote:
> On Tue, 2012-01-24 at 16:17 +0000, Paul Eggleton wrote:
> > I'd also say, what is in the classes is intended to work for everyone,
> > so if there's something in the core classes that is not working well
> > for your situation we'd really like to hear about it - hopefully we
> > can incorporate whatever changes you need and you can avoid having to
> > overlay the entire class.
> 
> At present when we build an image, everything gets under one partition.
> For my use case I need two images (denoting different partitions)
>      1. rootfs image (mount point: '/', mounted as ro)
>      2. data partition image (mount point: say '/data' mounted as rw)
> 
> While generating the image, I construct the /etc/fstab file manually by
> representing filesystems by their uuids (generated using uuidgen). So,
> to set this uuid in generated image I try to override the
> image_types.bbclass and using tune2fs I set the uuid for the generated
> images.

AFAIK we don't already have the ability to do this, but it sounds very useful. 
If it can be something that can be enabled and configured relatively easily 
then it would be great to have in OE-Core as I can imagine others making use 
of it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

