Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E369E006DC
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 06:44:51 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Mar 2013 06:44:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,886,1355126400"; d="scan'208";a="217350401"
Received: from sorvi.fi.intel.com (HELO [10.237.72.58]) ([10.237.72.58])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Mar 2013 06:44:31 -0700
Message-ID: <514B0EBE.8050406@linux.intel.com>
Date: Thu, 21 Mar 2013 15:44:30 +0200
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120801 Thunderbird/14.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <513F03EC.4020909@linux.intel.com>
	<514972E1.3010802@linux.intel.com>
	<CAJTo0LYAdjQd3QA+d8SXo=Phrr5fDwejaGxQXGsSEHNbx4uiYA@mail.gmail.com>
In-Reply-To: <CAJTo0LYAdjQd3QA+d8SXo=Phrr5fDwejaGxQXGsSEHNbx4uiYA@mail.gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 21 Mar 2013 13:44:51 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Ross,

On 21.03.2013 14:36, Burton, Ross wrote:
> On 20 March 2013 08:27, Jukka Rissanen <jukka.rissanen@linux.intel.com> wrote:
>> The reason for this was that systemd did not receive NameOwnerChanged dbus
>> signal telling that the daemon managed to register its name to the system
>> bus.
>>
>> I checked with dbus-monitor that these NameOwnerChanged signals are indeed
>> sent by dbus-daemon but they are not seen in debug prints from systemd.
>
> Andreas sent a patch earlier that masks the dbus init script, because
> the names don't match so you'll end up with two system buses
> attempting to run.  I'm not sure how this will fail, but it could mean
> that systemd isn't listening to the bus that connman is starting on,
> or something.
>
> The easy hack to test this is to delete /etc/init.d/dbus-1 and the
> symlinks to it in /etc/rc*.
>

Removed the dbus from init.d and rc* and everything started to work.
This was really good news, thanks a lot for your help!

Cheers,
Jukka



