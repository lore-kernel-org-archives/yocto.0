Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3782BE013DD
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 06:20:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Mar 2012 06:20:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="121731025"
Received: from unknown (HELO helios.localnet) ([10.252.123.240])
	by orsmga001.jf.intel.com with ESMTP; 26 Mar 2012 06:19:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Mon, 26 Mar 2012 14:19:56 +0100
Message-ID: <9948106.Jx6FOq70hB@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <CAGiJk9fZ1-KCiDuT3n9n_WHqNN9Gyj_UyPJ0Ktx2N=4F7Rv1cw@mail.gmail.com>
References: <CAGiJk9fZ1-KCiDuT3n9n_WHqNN9Gyj_UyPJ0Ktx2N=4F7Rv1cw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Support of meta-kde for Poky
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
X-List-Received-Date: Mon, 26 Mar 2012 13:20:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 26 March 2012 14:55:40 Samuel Stirtzel wrote:
> the development of meta-kde has come to a point where kde-applications
> can be tested (and maybe used).
> 
> Status of meta-kde:
> Most common applications work, for example:
> Calligra (not all of the toolkit), Kate, KCalc, Konqueror, Kwin &
> Kwin_gles (KDE window manager), Okular and the applications from
> KDE-baseapps.
> 
> Plasma Active (and Desktop) do not work correctly, but I'm working on it.
> Plasma Netbook seems to work, but it needs more testing.
> 
> 
> Involving the community:
> As the development of meta-kde advanced to a point where developers
> can use the layer to port KDE applications.
> I'd like to invite others to test the layer, port their favorite KDE
> applications and express their opinions about the current status.
> Feel free to ask questions and suggest applications to be ported.

Great work! I will give it a try over the next few days and let you know how I 
get on. (Sorry I know I promised to do this some weeks ago.)
 
> meta-kde has no mailing list, so I'm looking for a list to host the
> discussion, any suggestions?

Probably just the oe-devel list - if the volume of commits gets too high then 
we can look at splitting off a separate one.
 
> Current issues with Poky:
> The giflib recipe is not contained in Poky.
> Is this based on a design decision, or just because no one needs it?

It's based upon nothing in OE-Core needing it. (The poky repository is just 
OE-Core + bitbake + meta-yocto + yocto-docs).

> As a meta-kde developer I don't want to limit the testing of meta-kde.

It should be OK to use meta-oe with Poky, and therefore meta-kde can depend 
upon it. However we are aware that meta-oe overlays a bunch of recipes that 
ideally it should not. We're working (albeit slowly) to address these.

An alternative in the meantime would be to add giflib to meta-kde, this will do 
no significant harm if it is already available in another layer (and giflib 
doesn't look like it has really changed since 2008, so I don't think it will 
be much of a maintenance burden).

As an aside it would be interesting to know why KDE requires additional gif 
support from giflib when gif loading is already built into Qt (and we do enable 
it in our Qt recipes).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

