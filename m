Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B8DEE00292
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 12:28:38 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 15 Oct 2012 12:28:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,590,1344236400"; d="scan'208";a="156436339"
Received: from unknown (HELO helios.localnet) ([10.252.122.91])
	by AZSMGA002.ch.intel.com with ESMTP; 15 Oct 2012 12:28:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marc Ferland <ferlandm@sonatest.com>
Date: Mon, 15 Oct 2012 20:28:35 +0100
Message-ID: <1661373.rtvAV8l5QM@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-32-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <87k3urmuov.fsf@sonatest.com>
References: <87hapzvgqn.fsf@sonatest.com>
	<20121015060147.GB9736@ad.chargestorm.se>
	<87k3urmuov.fsf@sonatest.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Revision file in images
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
X-List-Received-Date: Mon, 15 Oct 2012 19:28:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 15 October 2012 14:55:28 Marc Ferland wrote:
> Anders Darander <anders@chargestorm.se> writes:
> > * Marc Ferland <ferlandm@sonatest.com> [121012 17:40]:
> >> Hi,
> >> 
> >> Is a revision file populated in the images produced by the build process?
> >> Something listing the revisions of the different layers used. Just like
> >> the "OE Build Configuration" summary.
> > 
> > As Saul wrote, I don't know any way of getting this info.
> > 
> >> I'd like to easily identify what a target system currently runs.
> > 
> > In my own project, I'm using something like:
> > 
> > 
> > IMAGE_PREPROCESS_COMMAND += "rootfs_update_timestamp ;\
> > 
> >              git describe --dirty --long --always
> >>
> >>${IMAGE_ROOTFS}/etc/build ;\
> >>
> >              "
> > 
> > This doesn't explicitly put the SHA1's of the included layers into the
> > rootfs, but it does put my the most recent tag from my top-layer,
> > together with the number of commits after that tag, and an abreviated
> > version of the current commits SHA1 into the file /etc/build. This will
> > give me all info I need.
> 
> FYI, I was able to put the SHA1 of each meta data layer by doing:
> 
> def print_layers_version(d):
> 	layertext = "Configured metadata layers:\n%s\n" %
> '\n'.join(get_layers_branch_rev(d)) return layertext
> 
> IMAGE_PREPROCESS_COMMAND += "echo "${@print_layers_version(d)}" > /
> ${IMAGE_ROOTFS}/etc/build; "

I was going to say earlier I'm planning on adding something like this to OE-
Core for 1.4.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

