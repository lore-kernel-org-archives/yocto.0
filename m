Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A5454C808B6
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 12:02:53 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Mar 2011 10:02:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,225,1299484800"; d="scan'208";a="406565064"
Received: from unknown (HELO [10.255.16.45]) ([10.255.16.45])
	by azsmga001.ch.intel.com with ESMTP; 22 Mar 2011 10:02:39 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
In-Reply-To: <C9AE1F25.3EB2F%madison@cisco.com>
References: <C9AE1F25.3EB2F%madison@cisco.com>
Date: Tue, 22 Mar 2011 16:51:02 +0000
Message-ID: <1300812662.2793.21.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 (2.32.2-1.fc14) 
Subject: Re: Older versions of Linux as build hosts?
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
X-List-Received-Date: Tue, 22 Mar 2011 17:02:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2011-03-22 at 09:40 -0700, Matt Madison wrote:
> Hi,
> 
> I know the documentation mentions that you should be running a
> “reasonably current” Linux as your build host, but in my enterprise
> environment I’m stuck with having to run fairly old versions, based on
> RHEL 4 and 5.  I’ve got some patches that I’ve been maintaining so I
> can bootstrap Bernard builds on these systems.  Is there any interest
> in supporting older systems as build hosts?  Any thoughts on how far
> back “reasonably current” is going to be with each Yocto release?  I’m
> trying to work with my IT group to upgrade a bit more frequently, and
> for developer workstations, that might be possible, but I’m not sure
> I’ll be able to convince them to do that for servers in our data
> centers.
> 
> Is anyone else having this kind of problem?

We have other users suffering with this sort of problem which is why
Richard worked to enable Poky to build an external Python tarball.
This tarball should include what you need (Python + chrpath) to run Poky
on RHEL: http://autobuilder.yoctoproject.org/downloads/miscsupport/

I documented this for CentOS on the Yocto wiki:
https://wiki.yoctoproject.org/wiki/Poky/GettingStarted/Dependencies

Regards,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


