Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4C7EE01440
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 08:16:45 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 08 Jul 2013 08:16:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1020,1363158000"; d="scan'208";a="265451333"
Received: from unknown (HELO helios.localnet) ([10.252.122.28])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Jul 2013 08:16:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 08 Jul 2013 16:16:13 +0100
Message-ID: <68667435.cRfdglprjW@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-26-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <23FC58C0-D2D3-4977-A04E-3C9E14C9EBA9@gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5182B@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF52416@ORSMSX101.amr.corp.intel.com>
	<23FC58C0-D2D3-4977-A04E-3C9E14C9EBA9@gmail.com>
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 08 Jul 2013 15:16:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 28 June 2013 14:36:48 Khem Raj wrote:
> On Jun 28, 2013, at 4:22 AM, "Rifenbark, Scott M"
> <scott.m.rifenbark@intel.com> wrote:
> > I count eight meta-* layers in the YP repositories that don't exist in the
> > OE area.  I understand what you are saying though and I can word it that
> > way to dampen the existence of the "many" differences :)
>
> hmm may be they should be added to layer index. at least the ones which are
> still maintained.

This is down to me, I've been keeping the layer index up-to-date for the 
layers on yoctoproject.org. Listing the ones that aren't there, with comments 
as to why not:

experimental/meta-darwin
    - ancient, unmaintained, no conf/layer.conf
experimental/meta-m2
    - ancient, unmaintained
experimental/meta-maemo
    - ancient, unmaintained, no conf/layer.conf
experimental/meta-trusted
    - not actively maintained
experimental/meta-x32       
    - ancient, we should probably just delete this
meta-dlna
    - replaced by collaboration with meta-guacamayo
meta-extras
    - not usable as a layer, most recipes unbuildable; I'm slowly whittling it
      down as bits of it reappear in OE layers until one day hopefully it'll
      become empty
meta-intel-contrib
    - contrib repo for meta-intel
meta-jarvis
    - joke layer
meta-meson
    - (probably could add)
meta-meson-bsp
    - (probably could add)
meta-minnow
    - (was waiting for hardware availability)
meta-yocto-kernel-extras
    - now submitted to the layer index
meta-zynq
    - status not entirely clear, but seems to have been superseded?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

