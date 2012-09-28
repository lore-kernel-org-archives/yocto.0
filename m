Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6938BE0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 11:23:35 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 28 Sep 2012 11:23:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,503,1344236400"; d="scan'208";a="150377352"
Received: from unknown (HELO helios.localnet) ([10.252.122.5])
	by AZSMGA002.ch.intel.com with ESMTP; 28 Sep 2012 11:23:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Fri, 28 Sep 2012 19:23:28 +0100
Message-ID: <23679865.otXK9bZ5Ws@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0@FMSMSX151.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0@FMSMSX151.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: The term Package as used in the YP docs
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
X-List-Received-Date: Fri, 28 Sep 2012 18:23:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Scott,

On Friday 28 September 2012 18:14:31 Rifenbark, Scott M wrote:
> *         Package: In the context of the Yocto Project, this term refers to
> the packaged output from a baked recipe. A package is generally the
> compiled binaries produced from the recipe's sources. You 'bake' something
> by running it through BitBake.
> 
> It is worth noting that the term "package" can, in general, have subtle
> meanings. For example, the packages refered to in the "The
> Packages<http://www.yoctoproject.org/docs/1.3/yocto-project-qs/yocto-projec
> t-qs.html#packages>" section are compiled binaries that when installed add
> functionality to your Linux distribution.

The thing is, this is actually the same meaning, we're just talking about 
packages for your host distribution rather than packages for the custom distro 
you're building - the concept is the same. If we do need to clarify it I would 
suggest using the term "host package" or something very similar for packages 
to be installed as pre-requisites on the host system.

> Another point worth noting is that historically within the Yocto Project,
> recipes were referred to as packages - thus, the existence of several
> BitBake variables that are seemingly mis-named, (e.g.
> PR<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.htm
> l#var-PR>,
> PRINC<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.
> html#var-PRINC>,
> PV<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.htm
> l#var-PV>, and
> PE<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.htm
> l#var-PE>).

I have to say, whilst this is an interesting point of history, I'm not sure 
anyone really needs to know this in the manual, particularly if we've replaced 
all historical use of the word "package" when we mean "recipe" (as I think we 
now have for this release).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

