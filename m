Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C024E00A36
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 02:44:37 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 05 Mar 2014 02:44:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,592,1389772800"; d="scan'208";a="486383234"
Received: from maurorob-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.80])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2014 02:44:22 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
Date: Wed, 05 Mar 2014 10:44:22 +0000
Message-ID: <1587540.foosnhxu1K@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.3 (Linux/3.13.5-200.fc20.x86_64; KDE/4.12.3; x86_64; ; )
In-Reply-To: <CAA7h+Ep__sbmST0ppgTrWYv5HQeOxTyRGj2tHGKNYSVaK5xMHA@mail.gmail.com>
References: <CAA7h+Ep__sbmST0ppgTrWYv5HQeOxTyRGj2tHGKNYSVaK5xMHA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Compiling errors
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
X-List-Received-Date: Wed, 05 Mar 2014 10:44:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Rick,

On Tuesday 04 March 2014 21:50:24 Rick Bianchi wrote:
> I get the following errors while trying to compile:
> 
> Error: autogen-native not found in the base feeds (overo armv7a-vfp-neon
> armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e armv5-vfp armv5 armv4
> arm noarch any all).
> 
> When I do a bitbake -s | grep autogen-native it shows up.
> 
> I am also getting the same error for dhcp recipe.

Based on the error, what you're talking about here are not recipes - these are 
*packages* you're adding to IMAGE_INSTALL, is that correct?

Anything with -native at the end is a recipe that is intended to build for the 
build host, so it wouldn't make sense to add "autogen-native" to a list of 
packages to be installed into an image for the target. The equivalent package 
name for the target would be simply "autogen", except no recipe producing this 
target package exists (there is only autogen-native). If you really need 
autogen for the target you're going to have to write (or adapt) a recipe for 
it yourself.

The dhcp case is different - the "dhcp" package is actually empty and thus a 
package file for it is never produced; the reason it is empty is that the 
server and client portions are packaged separately in dhcp-server and 
dhcp-client packages respectively, so you'll need to decide which of these you 
want and specify those to be installed instead.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

