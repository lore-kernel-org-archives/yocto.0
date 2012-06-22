Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CFFAE01426
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 04:17:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Jun 2012 04:17:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="168905496"
Received: from unknown (HELO helios.localnet) ([10.252.120.123])
	by fmsmga001.fm.intel.com with ESMTP; 22 Jun 2012 04:17:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: jfabernathy <jfabernathy@gmail.com>
Date: Fri, 22 Jun 2012 12:17:33 +0100
Message-ID: <1351454.WzZsGBvgHE@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FE36A62.4070300@gmail.com>
References: <4FE3345E.1000202@gmail.com> <4FE36A62.4070300@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Hob - proper way to select machine and customer layers
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
X-List-Received-Date: Fri, 22 Jun 2012 11:17:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 21 June 2012 14:39:30 jfabernathy wrote:
> On 06/21/2012 10:49 AM, jfabernathy wrote:
> > To use Hob, I set my environment variable and the just ran hob.  It
> > was very slow going through the first 63 packages. I think this is
> > because parallel options had not been set and the packages were all
> > being downloaded again.

You're referring to the initial pseudo build here I presume?

> > But after I got to the UI of hob, I got
> > errors adding my layers to get to the meta-intel layers I wanted.  So
> > I started over and edited local.conf and bblayer.conf prior to
> > launching hob.  Now I could see my machine from meta-intel, but I
> > could not add my layer in. Parsing errors.

By parsing errors it would help if you were more specific. Do you mean the 
following?

ERROR: Unable to parse /home/paul/poky/meta-intel/meta-
cedartrail/conf/layer.conf: Failure expanding variable BBPATH, expression was 
${BBPATH}:/home/paul/poky/meta-intel which triggered exception Exception: 
variable BBPATH references itself!

> > Before I report an error, I wanted to see if I have the hob startup
> > process right. The issues is around the right way to add
> > meta-intel/meta-cedartrail and my personal layer in my home directory.
> > 
> > Any advice?
> > 
> > JIm A
> 
> My experimenting tells me that currently Hob (denzil) only work with new
> added layers that are in the poky directory and not in your home
> directory.  This is a different requirement than normal command line
> usage of bitbake.

Assuming the error you're seeing is the one above, I don't think that's the 
problem - the problem AFAICT is that the order of the layers hob is using is 
not the same as the order in which it displays them, and the order it uses is 
not compatible with the old method of setting BBPATH which meta-intel and its 
sub-layers use, which is 'BBPATH := "${BBPATH} /extra/path/to/add"' - if 
BBPATH is not already set as it would not be if this is the first layer in the 
list, then it is unable to expand BBPATH and you get this failure. You can 
reproduce this outside of hob just by reordering the entries in bblayers.conf.

So there are a few issues highlighted here:

1) Hob is re-ordering the layer list and it definitely shouldn't be. I've filed 
bug #2649 to get this fixed.

2) We really ought to go through and fix the BBPATH setting for all layers to 
not use the old method of appending to it.

3) It may be useful for people to be able to change the order of layers in the 
layer list within hob, particularly for situations where class/conf files are 
overlayed (which is to be avoided, but does occur).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

