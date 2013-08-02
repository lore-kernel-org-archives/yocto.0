Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2793CE003FA
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 05:47:10 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 02 Aug 2013 05:47:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,801,1367996400"; d="scan'208";a="375141248"
Received: from unknown (HELO helios.localnet) ([10.252.122.201])
	by fmsmga001.fm.intel.com with ESMTP; 02 Aug 2013 05:47:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rich Bayliss <richbayliss@gmail.com>, Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 02 Aug 2013 13:47:07 +0100
Message-ID: <11658953.R2RoUsbsuX@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAHLvMfbjrLfbxt-9oa+WRgobux+o5B8RM6uDeLh+wB4GKN_nfQ@mail.gmail.com>
References: <CAHLvMfbjrLfbxt-9oa+WRgobux+o5B8RM6uDeLh+wB4GKN_nfQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Read-Only RootFS is not read only
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
X-List-Received-Date: Fri, 02 Aug 2013 12:47:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Rich,

On Tuesday 30 July 2013 11:43:43 Rich Bayliss wrote:
> I am trying to build for Raspberry Pi including "read-only-rootfs" in
> my image features. My aim is to have my SD Card read-only and at some
> point add a read-write overlay to certain directories. This should
> enable my system to boot fresh each time, and have some persistent
> storage for user files etc.
> 
> However, after building my image I can SSH into the system and issue
> "touch test" to create a file in my home directory, then after a
> reboot it is still there. That isn't very read-only :)
> 
> Am I missing something, or is this working incorrectly?

It sounds like it's working incorrectly. Since meta-raspberrypi constructs the 
SD card image using its own custom class I wonder if it has anything to do 
with that. Andrei, do you know anything about this?

BTW, are you using sysvinit or systemd in this image?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

