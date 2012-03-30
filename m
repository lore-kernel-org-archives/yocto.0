Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9873E00723
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 05:19:17 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Mar 2012 05:19:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="123588647"
Received: from unknown (HELO helios.localnet) ([10.252.123.235])
	by orsmga001.jf.intel.com with ESMTP; 30 Mar 2012 05:19:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 13:19:15 +0100
Message-ID: <2875706.c2lxvPnLMP@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-17-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <CB9B56AE.BE8E%belen.barros.pena@intel.com>
References: <CB9B56AE.BE8E%belen.barros.pena@intel.com>
MIME-Version: 1.0
Cc: Giulia Piu <giulia@closertag.com>
Subject: Re: Deleting layers in Hob
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
X-List-Received-Date: Fri, 30 Mar 2012 12:19:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 30 March 2012 11:26:15 Barros Pena, Belen wrote:
> On 30/03/2012 07:32, "Khem Raj" <raj.khem@gmail.com> wrote:
> >On Thu, Mar 29, 2012 at 4:05 AM, Barros Pena, Belen
> ><belen.barros.pena@intel.com> wrote:
> >> Do we have enough information to make a decision about the meta-yocto
> >> layer? I don't understand all the technical details, but I am inclined
> >> to make it non-deletable in Hob (i.e. it is not possible to delete this
> >> layer in Hob).
> >> 
> >> What do you think?
> >
> >bad idea. Unless you intend to shackle hob to yocto. Is that the
> >intention ?
>
> Well: I don't know. Does anybody have an answer?

We don't want to tie hob to meta-yocto, no. The solution to this problem is to 
have Hob understand when removing a layer is removing the DISTRO selection 
that a user currently has made and warning them about it; if they respond in 
affirmative then DISTRO can be set to empty (or we can allow them to select an 
alternative, perhaps - something for the designers to consider). Fortunately 
since DISTRO points directly to a file in conf/distro/ the detection part is 
pretty easy to implement.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

