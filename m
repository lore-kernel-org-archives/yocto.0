Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67E71E01275
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 08:44:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2013 08:44:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,424,1355126400"; d="scan'208";a="268732464"
Received: from envy.jf.intel.com (HELO envy.home) ([10.7.199.53])
	by orsmga002.jf.intel.com with ESMTP; 07 Jan 2013 08:44:52 -0800
Message-ID: <50EAFB84.9090007@linux.intel.com>
Date: Mon, 07 Jan 2013 08:44:52 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <6F94DE12-515D-47A0-BDC6-9491AFD6849F@keylevel.com>
In-Reply-To: <6F94DE12-515D-47A0-BDC6-9491AFD6849F@keylevel.com>
X-Enigmail-Version: 1.4.6
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: meta-cedartrail - where is grub configured for 'install' option?
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
X-List-Received-Date: Mon, 07 Jan 2013 16:44:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/09/2012 01:39 PM, Chris Tapp wrote:
> I am trying to change the 'install' behaviour for the meta-cedartrail image so that the installed system has a different grub.cfg file. Is there a file I can bbappend to achieve this?
> 
> image_live.bbclass refers to the 'install' syslinux label that triggers the install, but I've not been able to get from this to how/where grub.cfg is created.
> 

This is currently rather crudely implemented here:

meta/recipes-core/initrdscripts/files/init-install.sh

A better deployment mechanism is something being discussed and which
should make this more configurable.

For now, you could bbappend initramfs-live-install_1.0.bb and replace the
init-install.sh script with your own.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

