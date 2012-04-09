Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2735E013E5
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 07:09:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Apr 2012 07:09:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="126879957"
Received: from unknown (HELO helios.localnet) ([10.252.120.17])
	by orsmga001.jf.intel.com with ESMTP; 09 Apr 2012 07:09:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Date: Mon, 09 Apr 2012 15:09:56 +0100
Message-ID: <2949584.FXES3Ykti2@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-17-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <4F82EB19.9040207@r-finger.com>
References: <4F821129.2020007@r-finger.com> <4F82DE49.4060408@mlbassoc.com>
	<4F82EB19.9040207@r-finger.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: managing layer priorities
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
X-List-Received-Date: Mon, 09 Apr 2012 14:09:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 09 April 2012 14:58:49 Tomas Frydrych wrote:
> On 09/04/12 14:04, Gary Thomas wrote:
> > On 2012-04-09 00:18, Tomas Frydrych wrote:
> >> On 08/04/12 23:28, Tomas Frydrych wrote:
> >>> Is there a way to change the priority that a layer assigns itself in its
> >>> layer.conf? E.g., I want to add meta-oe alongside of meta-yocto, but I
> >>> want it to have a lower priority than the latter. Currently meta-yocto
> >>> gives itself "5" and meta-oe "6", I'd like to change this without having
> >>> to modify meta-oe/conf/layer.conf, but can't find a way to do this.
> >> 
> >> Never mind, it is possible to override these in the last layer listed in
> >> BBLAYERS.
> > 
> > How so?
> 
> You can set the various BBFILE_PRIORITY_**** and other variables in the
> layer.conf for the last layer listed in your bblayers.conf. The layer
> priorities get evaluated only after all of the layer.conf files have
> been parsed, so anything that is set in the last layer.conf will be the
> final value. I use the Yocto model where (unlike with OE layers) the
> layer.conf prepends its layer path to BBPATH, so my custom layer is
> last, but I imagine it would be possible to create a fake layer with no
> recipes just for this specific purpose.

I realise what you're trying to do, but you should bear in mind when you do 
this you are relying on unintentional behaviour that may change in future.

There were some discussions at the recent BSP summit about improving bitbake 
so that layer priorities work in a more helpful manner. Also worth noting is 
that work to split up meta-oe is ongoing, so it may be in the near future that 
you don't have to shuffle layers around such that meta-oe doesn't have any 
undesired effects.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

