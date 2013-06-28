Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA847E014F5
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 04:08:01 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Jun 2013 04:05:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,958,1363158000"; d="scan'208";a="336936878"
Received: from unknown (HELO helios.localnet) ([10.252.122.97])
	by orsmga001.jf.intel.com with ESMTP; 28 Jun 2013 04:07:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Fri, 28 Jun 2013 12:07:58 +0100
Message-ID: <1527627.N79fC8qGyO@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF523E5@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5182B@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF521C9@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF523E5@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Layer input
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
X-List-Received-Date: Fri, 28 Jun 2013 11:08:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 28 June 2013 10:50:01 Rifenbark, Scott M wrote:
> Here is the story on the relationship between the YP Metadata Layers as
> listed in the YP Source Repositories and the OpenEmbedded Metadata Index. 
> Functionally, the YP layers are a subset of the OE layers.  However, the YP
> layers are not a true subset of the OE layers.  The YP layers have many
> layers that do not appear in the OE index for one reason or another.  

I wouldn't say many, there are just a few exceptions. The way to look at it is 
the OE layer index is a central directory of layers that should be advertised, 
whereas what you see on git.yoctoproject.org is simply a listing of all of the 
repositories on git.yoctoproject.org, of which a subset are layers and a 
subset of those are current, maintained and should be promoted for people to 
use (and all of the latter should be in the OE layer index).

> Some YP layers are deprecated (e.g. meta-dlna), some should not be there and
> are being actively worked for removal or movement (e.g. poky-extras and
> yocto-docs).  Some are experimental layers (e.g. any layer that starts with
> "experimental"). And one is a contribution layer used by the Yocto Team
> (e.g. meta-intel-contrib).

FWIW, like the other contrib repos I think the latter is open access, anyone 
can get commit rights to facilitate sending pull requests.

> The text I create supporting this "layer" figure will describe this
> relationship so people will know from where existing layers originate.
> 
> I am deciding against adding more boxes to the already large figure and am
> going to retain just the large "Layers" box.  It will have supporting text
> that describes how a layer could be user-created, could originate from the
> YP Metadata Layers list, or could originate from the OpenEmbedded Metadata
> Index of layers.

Looking over the most recent version of this figure I'd suggest:

* conf/bblayers.conf in the distro layer shouldn't be there.

* The recipes-kernel in the distro layer should be dropped. I know we include 
linux-libc-headers-yocto in Poky but that is not typical.

* I think maybe like the other diagrams it would help if there were a different 
emphasis for items that are mandatory and items that are optional (e.g. 
bolding mandatory items or greying out optional items).

* Replace <mod_name> with <recipe>

* Replace <machine*> with <machine>

Cheers,
Paul



-- 

Paul Eggleton
Intel Open Source Technology Centre

