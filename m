Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B733F4C80FAC
	for <yocto@yoctoproject.org>; Thu,  2 Dec 2010 13:05:46 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2010 11:05:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="683300587"
Received: from unknown (HELO [10.255.16.47]) ([10.255.16.47])
	by orsmga001.jf.intel.com with ESMTP; 02 Dec 2010 11:05:45 -0800
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4CF7EB4A.3010109@am.sony.com>
References: <4CF7EB4A.3010109@am.sony.com>
Date: Thu, 02 Dec 2010 19:05:39 +0000
Message-ID: <1291316739.11835.4.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: Still having build problems - what version of python is required?
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
X-List-Received-Date: Thu, 02 Dec 2010 19:05:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-02 at 10:54 -0800, Tim Bird wrote:
> So I gave up, for the time being, trying to build behind
> my firewall.
> 
> I tried to set up a machine outside my firewall to do a build.
> Unfortunately, this machine is a bit dated.  It is running
> Fedora 8, with python version 2.5.1.
> 
> Here's what I get when I run bitbake:
> 
> [tbird@tree poky-4.0-build]$ bitbake poky-image-minimal
>   File "/a/home/tbird/work/yocto/poky-laverne-4.0/scripts/..//bitbake//bin/bitbake", line 207
>     except Exception as e:
>                       ^
> SyntaxError: invalid syntax
> [tbird@tree poky-4.0-build]$ python --version
> Python 2.5.1
> [tbird@tree poky-4.0-build]$ cat /etc/issue
> Fedora release 8 (Werewolf)1
> 
> What version of python is required?
> 
> Note also that I couldn't find a prce package for this distro, despite
> there being an prce-devel page available.  I don't know how important
> that will be for building stuff.
> 
> Is it a dead end trying to get a host distro this old to build
> poky?

Possibly not, poky can build a standalone Python for people without
Python 2.6 on their host system. If you've any will left it could be
enough, I've used this Python version to do Poky builds on CentOS 5.5.

You need the appropriate version from
http://autobuilder.yoctoproject.org/downloads/miscsupport/

It will need extracting at / and will inflate
to /opt/poky/sysroots/$ARCH-pokysdk-linux/usr/bin/python you'll probably
want to update your PATH.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


