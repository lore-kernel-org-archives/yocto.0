Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48839E00B0A
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2013 09:28:06 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 13 Apr 2013 09:28:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,468,1363158000"; d="scan'208";a="226815509"
Received: from unknown (HELO [10.255.13.246]) ([10.255.13.246])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Apr 2013 09:27:44 -0700
Message-ID: <1365870464.10664.17.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Sat, 13 Apr 2013 11:27:44 -0500
In-Reply-To: <alpine.DEB.2.02.1304131112290.9253@oneiric>
References: <alpine.DEB.2.02.1304131112290.9253@oneiric>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: couple questions about kernel dev manual, section 2
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
X-List-Received-Date: Sat, 13 Apr 2013 16:28:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2013-04-13 at 11:20 -0400, Robert P. J. Day wrote:
> some oddities in section 2.2.1 of the current kernel dev manual.
> first, there's:
> 
> "The append file should initially contain the following text:
> 
>      FILESEXTRAPATHS := "${THISDIR}/${PN}"
> 
>   i was under the impression that the standard line would be:
> 
>      FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> 
> would it not? to make sure you can support potential layers on top of
> layers, no?  if you absolutely *know* that won't happen, then, sure,
> that will work, but i think the wording above is unnecessarily
> restrictive.
> 

Right, that should be changed to match the recommendation in the Poky
Reference manual.

>   also, right underneath that, one reads:
> 
> "If you add any new files that modify the kernel recipe, you need to
> place them in your layer in the following area:
> 
>      <your-layer>/recipes-kernel/linux/linux-yocto/"
> 
> IIRC, you *can* put them there but you don't *need* to. in fact, tom
> zanussi's kernel labs place extra files simply under a "files/"
> subdirectory (after setting FILESEXTRAPATHS to pick up that
> directory). so, again, some wording that is unnecessarily strong and
> somewhat misleading.
> 
>   thoughts?
> 

That text assumes you've used (the corrected) from the paragraph above:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

which means you do need to put the files in the linux-yocto/ subdir (for
a linux-yocto bbappend), since we're dealing with a .bbappend here.

If we were talking about a recipe, then yes, we wouldn't *need* to put
them there but could also put them in any of the default subdirs such as
files/.  There's a little more discussion about it here:

https://lists.yoctoproject.org/pipermail/yocto/2013-February/014419.html

Seems like it might be good to explicitly explain all this or at least
point out the difference and help avoid the confusion...

Tom

> rday
> 



