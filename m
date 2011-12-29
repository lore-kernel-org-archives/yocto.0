Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA600E0030B
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2011 10:24:01 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Dec 2011 10:24:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="101418923"
Received: from unknown (HELO helios.localnet) ([10.252.122.61])
	by fmsmga001.fm.intel.com with ESMTP; 29 Dec 2011 10:24:00 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Dec 2011 18:23:59 +0000
Message-ID: <15061845.WB4g7C0iYD@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-14-generic-pae; KDE/4.7.4; i686; ; )
In-Reply-To: <CADzUK1+qXxsQ445f2nJkvCfEM9+nmFTkop74EMK8EDag5brNpQ@mail.gmail.com>
References: <CADzUK1KE=DHJp3WDGdqOv62QAvGbrc=pnVCUNpYQ4RU+KXpZJg@mail.gmail.com>
	<CADzUK1KGOFCQbTFSU5FmjERuUMBft-m5FSgtgrX_NmDF1MfSzg@mail.gmail.com>
	<CADzUK1+qXxsQ445f2nJkvCfEM9+nmFTkop74EMK8EDag5brNpQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: How to require image recipe from another layer?
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
X-List-Received-Date: Thu, 29 Dec 2011 18:24:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 29 December 2011 13:14:20 autif khan wrote:
> The following recipe does not actually put helloworld in the image -
> it does not even build it.
> 
> require recipes-sato/images/core-image-sato.bb
> IMAGE_FEATURES += "helloworld"
> 
> The following one does.
> 
> require recipes-sato/images/core-image-sato.bb
> IMAGE_INSTALL += "helloworld"
> 
> I am guessing that if I have several recipes in my layer (say) hw1,
> hw2, hw3 etc, I would have to use the following recipe.
> 
> require recipes-sato/images/core-image-sato.bb
> IMAGE_INSTALL += "hw1 hw2 hw3 etc"
> 
> However, I am sure there is a way to ties these up with
> "IMAGE_FEATURE" variable.

IMAGE_FEATURES do not refer to individual packages, they are specially defined 
package groups (or behaviours in the case of e.g. package-management). If you 
have a look at classes/core-image.bbclass and classes/image.bbclass you can 
see how the package groups are set up (PACKAGE_GROUP_featurename). As you 
found, at the moment there is nothing checking that features in IMAGE_FEATURES 
are valid, thus as there is no PACKAGE_GROUP_helloworld and nothing checking 
for "helloworld" in IMAGE_FEATURES, it does nothing.

However, if all you want to do is add a few specific packages it's just fine to 
add their names to the end of IMAGE_INSTALL - IMAGE_FEATURES might be 
overkill.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

