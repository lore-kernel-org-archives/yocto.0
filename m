Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDD9BE00592
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 17:29:46 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jan 2012 17:29:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="116807438"
Received: from unknown (HELO envy.home) ([10.255.14.108])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jan 2012 17:29:46 -0800
Message-ID: <4F21FDEF.2010500@linux.intel.com>
Date: Thu, 26 Jan 2012 17:29:19 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.3.5
Subject: New recipes not installing in core-image-minimal
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
X-List-Received-Date: Fri, 27 Jan 2012 01:29:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

In support of a new BSP I've written two new recipes and appended to
another to depend on them. The new recipes files are not appearing in
the resulting images. I'm sure I'm overlooking something trivial, but
I'm not sure what it would be. The layer is available here:

http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=dvhart/sys940x

I've added ranpwd, genmac, and appended to netbase.

netbase RDEPENDS on genmac and genmac RDEPENDS on ranpwd. Building
core-image-minimal triggers the build of genmac and ranpwd, and the
modified /etc/network/interfaces appears in the rootfs. genmac and
ranpwd place the appropriate files in their workdir/image directory, but
those files don't make it into the rootfs.

Can anyone offer an explanation as to why that might be? The top 4
commits of the repository linked to above will list the new recipes and
the bbappend for reference.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

