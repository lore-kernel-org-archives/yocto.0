Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3E19E0073F
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 02:12:07 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Jun 2012 02:12:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="159145324"
Received: from unknown (HELO helios.localnet) ([10.252.120.222])
	by orsmga001.jf.intel.com with ESMTP; 28 Jun 2012 02:12:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Thu, 28 Jun 2012 10:12:02 +0100
Message-ID: <2414274.9vjeGA9Qqn@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <CAMKF1srYsORnfcvaTh5H3LEf=rGWHv3JWPpvsFpW=8FjuwWaKg@mail.gmail.com>
References: <20317992.tBZ1YY1I5v@helios> <1849604.yJORxvhzRh@helios>
	<CAMKF1srYsORnfcvaTh5H3LEf=rGWHv3JWPpvsFpW=8FjuwWaKg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: LAMP layer
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
X-List-Received-Date: Thu, 28 Jun 2012 09:12:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 27 June 2012 11:01:09 Khem Raj wrote:
> On Wed, Jun 27, 2012 at 9:49 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > It's something I've been discussing with Joe MacDonald already. I think
> > it's an either-or situation - the recipes will not need to be in both
> > layers. People who want recipes from either or both layers should be able
> > to include the layers as needed.
> 
> from my experience of deploying layers for others. Its quite a talk
> for folks to get it and on top if you have overlapping recipes they
> are not making life any easier. if we start using this kind of method, it
> sure will fume into chaos. I think layers should have some wholeness to them
> but at the same time they should be leveraging other layers to get
> functionality they need.

I agree completely - my intention is not to have any overlapping recipes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

