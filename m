Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.6423.1612523448090553736
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 03:10:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 spf.server-he.de}: parse error for token &{10 18 spfb.server-he.de}: parse error for token &{10 18 spfc.server-he.de}: limit exceeded (domain: delisys.ch, ip: 198.145.29.25, mailfrom: n.jeker@delisys.ch)
Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6671538C0710
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2021 11:10:47 +0000 (UTC)
Received: from 84-75-156-97.dclient.hispeed.ch ([84.75.156.97] helo=[192.168.0.56]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1l7z0e-000342-Us; Fri, 05 Feb 2021 12:10:44 +0100
Message-ID: <440d2c787df99d002bd8cd0700e90cb2870800f2.camel@delisys.ch>
Subject: Re: [yocto] [meta-virtualization]: dunfell docker run issues
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: Marek Belisko <marek.belisko@gmail.com>, yocto <yocto@yoctoproject.org>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <CAAfyv35in+eJF2k_vf+6=ZwDby8DPx-bindvqWA-VqKE7kVWBg@mail.gmail.com>
References: 
	<CAAfyv35in+eJF2k_vf+6=ZwDby8DPx-bindvqWA-VqKE7kVWBg@mail.gmail.com>
Date: Fri, 05 Feb 2021 12:10:44 +0100
MIME-Version: 1.0
User-Agent: Evolution 3.38.3 
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1612523447;d81965a9;
X-HE-SMSGID: 1l7z0e-000342-Us
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2021-02-04 at 16:03 +0100, Marek Belisko wrote:
> Hi,
> I'm trying to run docker containers on orangepi and use
> meta-virtualization layer to add docker. I've installed the docker-ce
> package and everything seems to be fine.
> 
> But docker service seems fails to start with:
> Feb 04 15:00:01 orange-pi-zero dockerd[495]: failed to start daemon:
> Devices cgroup isn't mounted

Is your kernel actually configured with cgroups support?

You need CONFIG_CGROUPS and many of the child configs. From your error
message I suspect you're missing CONFIG_CGROUP_DEVICE, but that's just
an educated guess.

Maybe take a look at the Gentoo wiki to see which CONFIG's need to be
set (just disregard the Gentoo specifics):
https://wiki.gentoo.org/wiki/Docker#Kernel

These are the CGROUP-related configs:

Menuconfig:
General setup  --->
    [*] POSIX Message Queues
    -*- Control Group support  --->
        [*]   Memory controller 
        [*]     Swap controller
        [*]       Swap controller enabled by default
        [*]   IO controller
        [ ]     IO controller debugging
        [*]   CPU controller  --->
              [*]   Group scheduling for SCHED_OTHER
              [*]     CPU bandwidth provisioning for FAIR_GROUP_SCHED
              [*]   Group scheduling for SCHED_RR/FIFO
        [*]   PIDs controller
        [*]   Freezer controller
        [*]   HugeTLB controller
        [*]   Cpuset controller
        [*]     Include legacy /proc/<pid>/cpuset file
        [*]   Device controller
        [*]   Simple CPU accounting controller
        [*]   Perf controller
        [ ]   Example controller

> I was trying to add various options to kernel command line like
> described here: https://github.com/docker/cli/issues/2104
> 
> but it doesn't work. My command-line looks like:
> ...systemd.unified_cgroup_hierarchy=0 cgroup_enable=memory
> cgroup_memory=1 swapaccount=1 cgroup_no_v1=all
> 
> Any other ideas what to check? Thanks a lot.
> 
> BR,
> 
> marek

