Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2698DE013CB
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2013 15:17:18 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Jul 2013 15:17:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,983,1363158000"; d="scan'208";a="325954639"
Received: from unknown (HELO helios.localnet) ([10.252.121.242])
	by azsmga001.ch.intel.com with ESMTP; 02 Jul 2013 15:17:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Tue, 02 Jul 2013 23:17:15 +0100
Message-ID: <5920025.Pkuta78FWt@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-25-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <7AFA3235764547DFB27795FD58368F44@PAULD>
References: <7AFA3235764547DFB27795FD58368F44@PAULD>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: systemd configuration
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
X-List-Received-Date: Tue, 02 Jul 2013 22:17:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 02 July 2013 10:40:06 Paul D. DeRocco wrote:
> I've switched to systemd, in a core-image-base build for an Atom
> (Cedartrail), and it boots fine. Now I want to make my own daemon start up.
> I'm new to systemd, and the way it seems to be set up is different from the
> way the systemd docs say it is usually set up.
> 
> The docs say that systemd, when booting up, usually activates a target
> called default.target, which is symlinked to either multi-user.target or
> graphical.target. (It would be the former in this GUI-less system.) Then, if
> I want to cause my daemon to be started, I would add a symlink to its
> systemd unit file to the .wants directory associated with
> multi-user.target.
> 
> But I can't find these things. They're not in the trees under /etc/systemd
> or /run/systemd. Oh, and when I do "systemctl list-unit-files", it shows
> both default.target and multi-user.target as disabled.
> 
> What makes this difficult to figure out is that the tools I have for
> perusing the target system are so primitive. There's no editor in the target
> that I'm aware of

That's entirely up to what you put into your image. busybox should provide a 
very basic version of "vi" out of the box.

> , and I can't network into the system and use an external
> editor to examine various files. 

Again, that's up to what you enable in the image. You could use NFS for 
example.

> So my question is this: is there someplace
> in build/tmp on my build system where the full target file system exists as
> a directory tree, so that I can pore through it and see how systemd is
> really configured?

Sure, you can find in the "rootfs" subdirectory of the image's WORKDIR (which 
you can find out using:

 bitbake -e imagename | grep ^WORKDIR=

One way to look at this is to launch a devshell for the image:

 bitbake -c devshell imagename

In 1.4+ using a devshell has the advantage of showing you the correct 
permission/ownership of files within the root filesystem.

> Or perhaps someone can just tell me what target gets activated on bootup,
> where its .wants directory is, and what directory I should put my daemon's
> unit file into.

I'm sure someone more knowledgeable about systemd will pipe up with further 
information, but I would suggest looking at other recipes for examples. AFAICT 
systemd units for daemons should be installed into ${systemd_unitdir}/system.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

