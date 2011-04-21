Return-Path: <joshua.lock@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E2444C80050
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2011 13:06:25 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Apr 2011 11:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,252,1301900400"; d="scan'208";a="632182665"
Received: from vorpal.jf.intel.com (HELO [10.7.199.145]) ([10.7.199.145])
	by orsmga002.jf.intel.com with ESMTP; 21 Apr 2011 11:06:24 -0700
From: Joshua Lock <joshua.lock@intel.com>
To: Yocto Project <yocto@yoctoproject.org>
In-Reply-To: <4DB055DC.4020306@linux.intel.com>
References: <4DB055DC.4020306@linux.intel.com>
Date: Thu, 21 Apr 2011 11:02:01 -0700
Message-ID: <1303408921.9960.66.camel@vorpal>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Subject: Re: RFC: Image Creator and Config Creator, design thoughts
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
X-List-Received-Date: Thu, 21 Apr 2011 18:06:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-04-21 at 10:05 -0600, Darren Hart wrote:
> I sat down with Josh earlier this week to discuss how I might use the
> Image Creator in my development and to address any issues that might
> pose as blockers to my finding such a tool useful. This led to various
> feature discussions, scope setting, etc. I wanted to capture that here
> and also ask for comments from other users and developers.
> 
> 
> Image Recipe Generation
> -----------------------
> The image creator Josh is working on currently facilitates specifying
> the policy (bitbake term "distro", such as poky, poky-bleeding, or
> poky-lsb), image, and any additional packages you may want to include.
> It then provides a simple wrapper to bitbake and it's output. 

Aside, wrapper is not the right term. This is a full fledged BitBake GUI
and uses the same libraries as the CLI (knotty) interface. :-)

> This is
> useful in and of itself as sorting out which variables to modify
> (IMAGE_INSTALL, MACHINE(_ESSENTIAL?)_R?DEPENDS_append(_$MACHINE), etc)
> and which tasks to rebuild (task_base, task_machine_base, poky-image-*,
> etc.) can be a frustrating exercise (or at least it has been for me).
> 
> In order for this feature to be the most useful, it needs to be able to
> save the result of the user's selection. This involves saving off the
> "distro" selection (typically in local.conf) as well as an image recipe
> defining which packages to include in the resulting image. This could be
> done by writing to local.conf and saving a new *image*.bb file in a
> suitable location.
> 
> 
> Writing Layers
> --------------
> The suitable location is most likely a layer, which suggests the Image
> Builder should probably know how to construct a basic layer skeleton and
> prompt the user to fill in the descriptive bits required for layer.conf.

This sounds like a useful way to handle the customisations.

> 
> I could see this as having been useful for the recent Yocto Project 1.0
> launch demo we worked on, which added rygel upnp video renderers to the
> the 0.9 audio only demo. This implies the Image Builder should also be
> able to work with an existing layer - perhaps only those that it created
> - and save the changes back to that layer.

Layer support is definitely something I'd like to see in the Image
Creator. I'm thinking along the lines of a GUI for toggling available
layers enabled state.

Further to the suggestion above this GUI would likely also include a
"Save my customisations to this layer" entry.

> 
> 
> Configuration Fragments
> -----------------------
> In order to properly build the demo images (poky-image-rygel
> specifically) some specific license related variables need to be set,
> typically in local.conf:
> 
> COMMERCIAL_LICENSE = ""
> COMMERCIAL_AUDIO_PLUGINS ?= "gst-plugins-ugly-mad
> gst-plugins-ugly-mpegaudioparse"
> COMMERCIAL_VIDEO_PLUGINS ?= "gst-plugins-ugly-mpeg2dec
> gst-plugins-ugly-mpegstream gst-plugins-bad-mpegvideoparse"
> 
> Without the above, the upnp demo is mostly non-functional. Having to
> manually add these sorts of settings significantly reduces the value of
> the Image Builder in my mind. This led to the discussion of providing a
> graphical mechanism to set the variables that have some impact on how
> the generated image recipe is built.
> 
> Something like a Linux kernel kconfig mechanism, which only shows the
> user relevant options (albeit still WAY too many), might be really nice
> here. Perhaps an interface that parsed the recipes included in the image
> recipe and determined which variables would be relevant to the user and
> present those in the UI with help derived from documentation.conf
> doctags (or perhaps a new mechanism).
> 
> As this would be a considerable effort, and would surely delay the
> progress of the image builder itself, perhaps a Configuration Editor
> would be a good companion tool which the Image Builder could launch to
> do the relevant configurations

I really like the idea of a configuration editor GUI, I'm pretty sure
Jeff Polk would like at least some of the infrastructure of this.

I haven't yet gotten around to investigating this but I think between
the doctags and the oetypes support Chris Larson implemented (which we
still need to pullit into oe-core iirc) we should have a solid
foundation on which to build this GUI.

> 
> 
> Conclusions
> -----------
> The goal of any user interface should be to abstract away to
> implementation details that are not particularly relevant to task at
> hand, or to the user's perception of the task at hand.  I feel these
> tools as discussed above would help contain feature creep, while still
> allowing for a more complete graphical interface to configuring and
> building images.
> 
> 
> Thoughts? Criticisms?

Unsurprisingly, since I was there, I'm in agreement.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Center


