Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65EE1E011C5
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 11:46:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 11 Oct 2013 11:46:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,1082,1378882800"; d="scan'208";a="306721983"
Received: from unknown (HELO [10.255.15.157]) ([10.255.15.157])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Oct 2013 11:46:28 -0700
Message-ID: <1381517187.19281.54.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Fri, 11 Oct 2013 13:46:27 -0500
In-Reply-To: <alpine.DEB.2.02.1310110544270.6380@oneiric>
References: <alpine.DEB.2.02.1310110544270.6380@oneiric>
X-Mailer: Evolution 3.4.4 (3.4.4-2.fc17) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: why does meta-intel crownbay-noemgd.conf not require "meta-intel"?
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
X-List-Received-Date: Fri, 11 Oct 2013 18:46:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-10-11 at 05:49 -0400, Robert P. J. Day wrote:
> perusing sample machine conf files and BSP definitions, looking for
> nice examples to use in a class in a couple weeks, and i noticed the
> following oddity under meta-intel/meta-crownbay.
> 
>   while crownbay.conf contains:
> 
> require conf/machine/include/tune-atom.inc
> require conf/machine/include/ia32-base.inc
> require conf/machine/include/meta-intel.inc
> require conf/machine/include/meta-intel-emgd.inc
> 
>   crownbay-noemgd.conf contains only:
> 
> require conf/machine/include/tune-atom.inc
> require conf/machine/include/ia32-base.inc
> 
>   i would have thought the latter would still need to require
> "meta-intel.inc" for consistency.
> 
>   i'm sure if i poked around for a few seconds, it would make sense
> but, just from a visual point of view -- if someone is reading the
> files trying to understand how to define a BSP -- it looks confusing,
> no?
> 

Not really - meta-intel is itself a separate layer, and crownbay-noemgd
doesn't need anything from it, so doesn't need the includes for it.

crownbay.conf does need at least emgd and related packages from
meta-intel so includes meta-intel.inc and meta-intel-emgd.inc.

Tom

> rday
> 



