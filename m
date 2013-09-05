Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65AD3E01542
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 03:00:30 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Sep 2013 03:00:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,846,1371106800"; d="scan'208";a="398613311"
Received: from unknown (HELO helios.localnet) ([10.252.123.106])
	by orsmga002.jf.intel.com with ESMTP; 05 Sep 2013 03:00:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: JC <jc@vtkloud.com>
Date: Thu, 05 Sep 2013 11:00:20 +0100
Message-ID: <1788175.gQRx6AnBKQ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <522852B6.5010309@vtkloud.com>
References: <522782E7.8080509@vtkloud.com> <196913219.mMcczBtVSS@helios>
	<522852B6.5010309@vtkloud.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: adding specific config files
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
X-List-Received-Date: Thu, 05 Sep 2013 10:00:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 05 September 2013 11:45:26 JC wrote:
> On 05/09/2013 11:32, Paul Eggleton wrote:
> > Unfortunately we have to have a fixed configuration for smart during
> > do_rootfs, so it has to be written to. I think though that rather than
> > trying to install a configuration file for smart using a separate recipe,
> > I would suggest modifying the smart configuration at the end of do_rootfs
> > to add the configuration elements you need. The way to do this would be
> > to define a shell function that you can add a call to in
> > ROOTFS_POSTPROCESS_COMMAND that will run smart:
> > 
> > add_extra_smart_config() {
> > 
> > 	smart --data-dir=${IMAGE_ROOTFS}/var/lib/smart channel --add rpmsys
> > 	type=rpm-sys -y> 
> > }
> > ROOTFS_POSTPROCESS_COMMAND += "add_extra_smart_config; "
> > 
> > You can put the above in the image recipe itself or in a class that your
> > image recipe inherits.
> > 
> > Cheers,
> > Paul
> 
> Thanks, I'm going to try it !!
> 
> Assuming I don't want to create a new image (i still haven't exactly
> figured how to do this in a clean way), where should I append this code ?

To be honest I always recommend people create their own image recipes
whatever they are doing since image recipes are usually trivial and
almost always need to be customised. The easiest way to do this is to
copy an existing image recipe and name it and modify it as you prefer.

> How can I make it dependend on the "package-management" feature?

If "package-management" is not in IMAGE_FEATURES the smart config gets deleted
anyway so this will have no effect. However, if desired you can use an inline
python expression within the shell function to do things conditionally, e.g.

if ${@base_contains("IMAGE_FEATURES", "package-management", "true", "false", d)}; then
...
fi

It's important to realise though that the evaluation of the inline
python happens when the expression is parsed, not when the shell
function it is executed; by the time the shell function executes the
expression will have been converted to its result.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

