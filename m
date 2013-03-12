Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE64BE0136C
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 03:31:10 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Mar 2013 03:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,829,1355126400"; d="scan'208";a="269138490"
Received: from sorvi.fi.intel.com (HELO [10.237.72.58]) ([10.237.72.58])
	by azsmga001.ch.intel.com with ESMTP; 12 Mar 2013 03:31:09 -0700
Message-ID: <513F03EC.4020909@linux.intel.com>
Date: Tue, 12 Mar 2013 12:31:08 +0200
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120801 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: systemd timeouts started daemons
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
X-List-Received-Date: Tue, 12 Mar 2013 10:31:10 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have a weird problem with systemd. It starts a daemon then kills it 
after a 30 second timeout.

Mar 12 08:50:19 eca connmand[970]: Connection Manager version 1.12
...
Mar 12 08:51:49 eca systemd[1]: connman.service operation timed out. 
Terminating.
Mar 12 08:51:49 eca connmand[970]: Terminating

I am seeing this behaviour at least with connman, bluez and ofono.
I can start the daemons from command line (as a root) and they work just 
fine. I can connect to connman via dbus and it can properly connect to 
ethernet etc.

When connman tries to activate bluez, following is printed

Mar 12 08:50:19 eca dbus[941]: [system] Activating service 
name='org.bluez' (using servicehelper)
Mar 12 08:50:19 eca dbus[941]: [system] Activated service 'org.bluez' 
failed: Launch helper exited with unknown return code 1

Usually also connman-vpnd cannot be started, but in this run it was 
activated successfully

Mar 12 08:50:19 eca dbus[941]: [system] Activating service 
name='net.connman.vpn' (using servicehelper)
Mar 12 08:50:19 eca dbus[941]: [system] Successfully activated service 
'net.connman.vpn'

So it looks there is something fishy with dbus.

I am pretty sure this was working something like a month ago, but cannot 
really point out what version I had at that time.

Currently I am using latest yocto + oe from git.


Any pointers / ideas what is wrong here?


Cheers,
Jukka

