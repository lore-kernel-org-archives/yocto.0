Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D449AE0148D
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 01:27:15 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 20 Mar 2013 01:27:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,876,1355126400"; d="scan'208";a="216828768"
Received: from unknown (HELO [10.237.72.58]) ([10.237.72.58])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Mar 2013 01:27:14 -0700
Message-ID: <514972E1.3010802@linux.intel.com>
Date: Wed, 20 Mar 2013 10:27:13 +0200
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120801 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <513F03EC.4020909@linux.intel.com>
In-Reply-To: <513F03EC.4020909@linux.intel.com>
Subject: Re: systemd timeouts started daemons
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
X-List-Received-Date: Wed, 20 Mar 2013 08:27:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

some update to the problem I am seeing with systemd.

So the symptom of the problem is that after systemd has started a daemon 
like connmand, it kills it after 30 secs.

The reason for this was that systemd did not receive NameOwnerChanged 
dbus signal telling that the daemon managed to register its name to the 
system bus.

I checked with dbus-monitor that these NameOwnerChanged signals are 
indeed sent by dbus-daemon but they are not seen in debug prints from 
systemd.

The systemd version I have is 197, dbus version is 1.6.8. I tried with 
kernel 3.4 and 3.8, the same result. The distro I am using is very 
minimal one without X11 or any other graphics, so it might be that I 
have accidentally removed some vital component. The distro is using 
packagegroup-base + some additional packages, polkit is not installed.

What is even weirder that in qemu image, I can start connman 
successfully via systemd but not ofono or bluez. In Intel NUC device, I 
am not able to start either connman, bluez or ofono from systemd. All 
these daemons work just fine when started manually from command line.

This paste contains qemu log where connman starts successfully but ofono 
and bluez do not. http://pastebin.com/UTUVBjqu

I am using latest yocto + oe from git.

Any ideas what is wrong here?


Cheers,
Jukka


