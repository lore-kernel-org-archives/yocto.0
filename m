Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62AE3E00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 10:11:24 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Dec 2012 10:11:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,260,1355126400"; d="scan'208";a="260631766"
Received: from unknown (HELO helios.localnet) ([10.252.122.234])
	by fmsmga001.fm.intel.com with ESMTP; 11 Dec 2012 10:11:04 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Zach Tibbitts <zachtib@gmail.com>
Date: Tue, 11 Dec 2012 18:11:02 +0000
Message-ID: <2119845.UNQndSV9LY@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-19-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <CALq3SOH+1wwBgskaNO0dpoMQis1FoWVuFzWmJ=0r4vpRAjy2Sg@mail.gmail.com>
References: <CALq3SOH+1wwBgskaNO0dpoMQis1FoWVuFzWmJ=0r4vpRAjy2Sg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Boot failure when adding the meta-oe layer
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
X-List-Received-Date: Tue, 11 Dec 2012 18:11:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 11 December 2012 12:54:57 Zach Tibbitts wrote:
> I'm working on an embedded Linux platform for work to run an app that's
> written with Gtk+3. The hardware in question is a Sandy Bridge Core i3
> platform. With a vanilla Yocto build, I can boot an image just fine (I've
> tested with core-image-basic, core-image-minimal, and core-image-x11) and
> everything seems to work; I can even install it to the internal drive
> without issue.
> 
> I found recipes for Gtk+3, as well as some of our other dependencies in the
> meta-oe layer from the meta-openembedded repository. However, just adding
> these layers and rebuilding any of the images that I've built (without
> actually adding any new recipes) cause the image to hang when run on
> hardware (but oddly enough not in QEMU).
> 
> The last line printed before the bootup apparently stops is along the lines
> of: "sd 4:0:0:0: [sdb] Attached SCSI removable disk", and the line that
> seems most at fault is a little farther up, "/init: line 69: udevd: not
> found". If needed, I can try to capture more of the output, maybe with a
> camera, I'm not sure of an easy way to pastebin the output from hardware...
> 
> What I'm wondering is if this is a known issue, or if meta-openembedded
> isn't meant to be used in conjunction with Yocto. My assumption is that
> something from meta-oe is superceeding a recipe in Yocto and causing this
> failure.

This is a known issue in meta-oe unfortunately; the udev version there 
apparently does not work outside of use with systemd. I believe the plan is to 
drop udev from meta-oe fairly soon.

The workaround is to force the system to use the version of udev in meta/ - 
I'm guessing you are using the 1.3 release version, in which case you can add 
the following to your local.conf:

PREFERRED_VERSION_udev = "164"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

