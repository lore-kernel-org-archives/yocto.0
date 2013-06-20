Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7605E0141B
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 01:31:34 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 20 Jun 2013 01:31:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,903,1363158000"; d="scan'208";a="257629380"
Received: from unknown (HELO helios.localnet) ([10.252.122.59])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Jun 2013 01:31:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 20 Jun 2013 09:31:12 +0100
Message-ID: <1526680.2T1uIfLeRH@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <F7494A5B-922D-43A9-A63B-4F1C83F93E81@gmail.com>
References: <CAFMfyzKMgx_6gJLO13ei7nr3fxaJg0-A3nG0=BCWQk5rH9p4TQ@mail.gmail.com>
	<CAFMfyzK9CusGuo40vWHdrq1dbD2fna-zTrBaiEQccfXUvhuBzg@mail.gmail.com>
	<F7494A5B-922D-43A9-A63B-4F1C83F93E81@gmail.com>
MIME-Version: 1.0
Cc: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
Subject: Re: Toolchain... Issues with systemd (probably)
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
X-List-Received-Date: Thu, 20 Jun 2013 08:31:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 20 June 2013 00:29:23 Khem Raj wrote:
> On Jun 20, 2013, at 12:12 AM, DAMARLA Satya Swaroop
> <satyaswaroop.damarla@gmail.com> wrote:
> > Any reasons why toolchains compile wihtout any issues on sysvinit and not
> > with systemd?
> > 
> > 
> > On Wed, Jun 19, 2013 at 3:11 PM, DAMARLA Satya Swaroop
> > <swaroop.damarla@gmail.com> wrote: Yes... I thought the same and so, I
> > made two build directories , one for sysvinit and the other for systemd
> > and the errors I get abosulte no error when I try to populate_sdk under
> > sysvinit but I get the following errors when I run the same under
> > systemd.> 
> > | The following packages have unmet dependencies:
> > |  udev-dev : Depends: udev (= 182-r7) but 1:204-r0 is to be installed
> > |  
> > |             Recommends: libusb-dev but it is not installable
> > |             Recommends: module-init-tools-dev but it is not installable
> > |             Recommends: libkmod-dev but it is not installable
> > | 
> > | E: Unable to correct problems, you have held broken packages.
> 
> it seems you did not choose systemd as provider for udev. You should do that
> when you use systemd

default-providers.inc already does this so you should not need to:

meta/conf/distro/include/default-providers.inc:PREFERRED_PROVIDER_udev ?= 
"${@base_contains('DISTRO_FEATURES','systemd','systemd','udev',d)}"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

