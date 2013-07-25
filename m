Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FB1BE013A2
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 02:24:24 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jul 2013 02:24:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,742,1367996400"; d="scan'208";a="370724645"
Received: from unknown (HELO helios.localnet) ([10.252.122.176])
	by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2013 02:24:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ash Charles <ashcharles@gmail.com>
Date: Thu, 25 Jul 2013 10:24:10 +0100
Message-ID: <1500336.365Z9OCVSV@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAK8F28k_8VR0qdC8JY2W020gx4EA4fGpw0yesodnLJ6j5WfT6A@mail.gmail.com>
References: <CAK8F28k_8VR0qdC8JY2W020gx4EA4fGpw0yesodnLJ6j5WfT6A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Configuring Channels for Smart PM
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
X-List-Received-Date: Thu, 25 Jul 2013 09:24:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ash,

On Wednesday 24 July 2013 18:59:30 Ash Charles wrote:
> I'm looking to use a bbappend to add a repository/channel that the
> smart package manager can use out of the box.  For zypper, this was
> just a question of adding a configuration file to the recipe.
> 
> How might I preconfigure Smart?  The only way I've come up with so far
> is a postinst 'smart channel --add....'

It does seem like Smart is geared more to configuration via the command line 
rather than editing the configuration file directly.

One approach you could take would be to add a shell function to your image 
recipe (or some class that multiple image recipes can inherit) that adds the 
feeds, and trigger that from ROOTFS_POSTPROCESS_COMMAND; this would add the 
feeds to your image when the image is generated. Something like this:


add_custom_smart_config() {
	smart --data-dir=${IMAGE_ROOTFS}/var/lib/smart channel --add ... -y
}

ROOTFS_POSTPROCESS_COMMAND += "add_custom_smart_config ; "


It would be nice to have something built-in for this. I'll add it to my todo 
list.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

