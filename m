Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F65EE0167D
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2013 09:04:30 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Oct 2013 09:01:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1057,1371106800"; d="scan'208";a="416009804"
Received: from unknown (HELO helios.localnet) ([10.252.120.174])
	by orsmga002.jf.intel.com with ESMTP; 08 Oct 2013 09:04:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jawad Hassan <jawad@emblemtechnologies.com>
Date: Tue, 08 Oct 2013 17:04:10 +0100
Message-ID: <1801165.6ZCs8TucHi@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAPhCmJrN9fEaainDVW70A1NSZA3c+oTb-fsx4_CkDJQ0qqdS-Q@mail.gmail.com>
References: <CAPhCmJrN9fEaainDVW70A1NSZA3c+oTb-fsx4_CkDJQ0qqdS-Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: TtyUsb Yocto Issue
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
X-List-Received-Date: Tue, 08 Oct 2013 16:04:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jawad,

On Tuesday 08 October 2013 06:43:18 Jawad Hassan wrote:
> We're trying to access the USB serial port using rxtx on a java application
> on Yocto. The problem is that we're unable to list out any ports on the
> Nitrogen Lite board, we think this could be a permissions issue, if anyone
> has been able to do this or any resources that can help us in getting this
> done.

It's hard to say for sure without further details, but assuming the device
nodes actually exist in /dev and it's a typical device permissions issue there
are two options:

1) Look at the /dev/ttyUSB* device nodes that exist and see if there is
already a group assigned with write access; if so you just need to ensure the
user you are running as is a member of that group.

2) Create a udev rule to set the device permissions correctly. This would be a
matter of creating a recipe to install an extra file to /etc/udev/rules.d that
assigned the desired permissions. There are lots of HOWTOs out there on the
web for this, e.g.:

http://sourceforge.net/apps/mediawiki/gizmod/index.php?title=HOWTO_-_Setting_Input_Device_Permissions_-_Creating_a_udev_Rule

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

