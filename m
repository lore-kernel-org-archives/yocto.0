Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E347FE00592
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 08:17:41 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2012 08:17:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="100022365"
Received: from unknown (HELO helios.localnet) ([10.252.122.173])
	by orsmga001.jf.intel.com with ESMTP; 24 Jan 2012 08:17:34 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org, Joshua Immanuel <josh@hipro.co.in>
Date: Tue, 24 Jan 2012 16:17:32 +0000
Message-ID: <1782182.Md7PmFZxKk@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8 rc2 (Linux/3.0.0-15-generic-pae; KDE/4.7.97; i686; ; )
In-Reply-To: <2F85497E73304B2B8FBE56AEEDEEA234@gmail.com>
References: <1327402068.2521.8.camel@babel.joshhome>
	<1327415044.17885.7.camel@babel.joshhome>
	<2F85497E73304B2B8FBE56AEEDEEA234@gmail.com>
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 24 Jan 2012 16:17:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 24 January 2012 07:32:47 Christopher Larson wrote:
> Unfortunately, BBFILE_PRIORITY only affects the choice of what *recipes* to
> use between the different layers, not config files or classes. The latter
> are found via BBPATH, which is incrementally appended to by each
> layer.conf. This separation is unfortunate, as it means part of the layer
> priority is in the user's hands (or the script generating bblayers.conf, if
> using one), and part is in the layers' hands (layer.conf), but that's the
> way it is for now.

I'd also say, what is in the classes is intended to work for everyone, so if 
there's something in the core classes that is not working well for your 
situation we'd really like to hear about it - hopefully we can incorporate 
whatever changes you need and you can avoid having to overlay the entire 
class.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

