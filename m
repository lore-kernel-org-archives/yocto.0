Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 759D34C800BB
	for <yocto@yoctoproject.org>; Wed, 25 May 2011 22:38:12 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 May 2011 20:38:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,270,1304319600"; 
   d="scan'208";a="8995740"
Received: from unknown (HELO [10.255.12.115]) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 25 May 2011 20:38:09 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Jeremy Puhlman <jpuhlman@gmail.com>
In-Reply-To: <4DDDAA38.8070404@gmail.com>
References: <4DDDAA38.8070404@gmail.com>
Date: Wed, 25 May 2011 22:37:45 -0500
Message-ID: <1306381066.22553.52.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Mailer <yocto@yoctoproject.org>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>
Subject: Re: In consistancy in the defition of BBFILE_COLLECTIONS in layer.conf
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
X-List-Received-Date: Thu, 26 May 2011 03:38:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-25 at 18:17 -0700, Jeremy Puhlman wrote:
> Opps sent from wrong account.
> 
> I was working with some layerinfo code, and I noticed that the values of
> BBFILE_COLLECTIONS in layer.conf in the meta-intel repo are kind of all over the map:
> 
>  for each in */conf/layer.conf; do cat $each; done | grep BBFILE_COLLECTIONS
> BBFILE_COLLECTIONS_crownbay += "crownbay"
> BBFILE_COLLECTIONS_crownbay-noemgd += "crownbay-noemgd"
> BBFILE_COLLECTIONS_fishriver += "fishriver"
> BBFILE_COLLECTIONS_jasperforest += "jasperforest"
> BBFILE_COLLECTIONS_sugarbay += "sugarbay"
> 
> For the above layers when I just list out oe-core and one of the above,
> the results from BBFILE_COLLECTIONS ends up
> just being what ever was set above.
> 
> BBFILE_COLLECTIONS += "n450"
> BBFILE_COLLECTIONS += "emenlow"
> 
> When using these layers, the final BBFILE_COLLECTIONS is the list of all
> the layers as expected.
> 
> Was just curious if there was a intentional reason why the
> difference(i.e. is there some code that I am missing that fixes this up)?

No, not intentional - looks like a case of an overzealous overriding
typo that propagated.  I'll cook up a patch to make them all just
'BBFILE_COLLECTIONS += xxxx'

Tom

> -- Jeremy Puhlman Montavista Sofware, LLC.
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



