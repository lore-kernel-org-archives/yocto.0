Return-Path: <jukka.rissanen@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E677E009E1; Fri, 15 May 2015 04:12:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E854E00956
	for <yocto@yoctoproject.org>; Fri, 15 May 2015 04:12:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 15 May 2015 04:12:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,433,1427785200"; d="scan'208";a="695319396"
Received: from jrissane-mobl.ger.corp.intel.com ([10.237.67.151])
	by orsmga001.jf.intel.com with ESMTP; 15 May 2015 04:12:51 -0700
Message-ID: <1431688369.2765.28.camel@linux.intel.com>
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Fri, 15 May 2015 14:12:49 +0300
In-Reply-To: <5551EB26.6050100@dynamicdevices.co.uk>
References: <5551EB26.6050100@dynamicdevices.co.uk>
X-Mailer: Evolution 3.12.11 (3.12.11-1.fc21) 
Mime-Version: 1.0
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Strange behaviour with stripped connman + openvpn
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
X-List-Received-Date: Fri, 15 May 2015 11:12:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Alex,

On ti, 2015-05-12 at 13:59 +0200, Alex J Lennon wrote:
> Hi,
> 
> I've been looking at some strange behaviour with connman in dizzy (1.25)
> 
> With OpenVPN configured and a connman configuration file defining a VPN,
> for some reason the service doesn't appear, e.g. connmanctl services
> 
> In trying to track down why this is I found that if I use a connmand
> daemon binary which is not stripped then all works as it should.

This is very strange indeed. Please note that actually it is
connman-vpnd that is managing the actual VPN connections. The
connman-vpnd just tells connmand what VPN services exists so that
connmand will be able to create suitable service for it that end-user
can connect to.

> 
> So for those who see this issue, an interim workaround is to inhibit
> package stripping in a connman_%.bbappend
> 
> e.g. INHIBIT_PACKAGE_STRIP = "1"

This is a really dirty workaround :)


Couple of things you to verify:

* make sure connman-vpnd is running (without it you will not see any VPN
services in connmanctl listing)
* make sure you have vpn provision file in /var/lib/connman-vpn
directory
* make sure /usr/lib/connman/scripts directory has openvpn-script plugin
installed
* make sure that openvpn support is compiled in so you need to have set
PACKAGECONFIG_append_pn-connman = " openvpn" in your distro config or
local.conf file
* do you have all the openvpn binaries in your system (only required if
you try to connect to a openvpn service), so can you manually connect to
your openvpn server from command line?


Cheers,
Jukka



