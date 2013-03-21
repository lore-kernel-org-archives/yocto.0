Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f50.google.com (mail-vb0-f50.google.com
	[209.85.212.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6285CE014A9
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 05:36:22 -0700 (PDT)
Received: by mail-vb0-f50.google.com with SMTP id ft2so1858447vbb.37
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 05:36:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=Nfwb2TS6aVRtq/IFyQifO2c8u2nR8qbRKqyY3cPGL8U=;
	b=RIx1QuIrNJIpJD7d9hfCutgeKaSulZxfHIFHgjOjFcSr1o7EjYuL9tQ9IQjiQ4fVfD
	oBqLfRV+jZULgBGMXKyjhFGUm6DWgoF8tFlAx7yj9sKzaIgUATssRChlZBeTDJyR9Vpm
	dUeBNDRsO2NQWGeDIA5fGVviOfDxUoON3nC8HEi+ogiyU9BKWekl9C/BDF8qrwu3sDqG
	t8KpU2qkt3RtGMKnZDfs2Zq92YB24uiNqmWPW3LyYz8WTtmY6o+A2W9C+HRy6DNdE3dJ
	opChduAr88rip7mVp9cB96cSbYLIzhRyQVknIJw3AJOYSsJh2PRFFMQAbZPky3sXt5yA
	Crrg==
X-Received: by 10.220.153.143 with SMTP id k15mr13262365vcw.13.1363869381239; 
	Thu, 21 Mar 2013 05:36:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.125.102 with HTTP; Thu, 21 Mar 2013 05:36:01 -0700 (PDT)
In-Reply-To: <514972E1.3010802@linux.intel.com>
References: <513F03EC.4020909@linux.intel.com>
	<514972E1.3010802@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 21 Mar 2013 12:36:01 +0000
Message-ID: <CAJTo0LYAdjQd3QA+d8SXo=Phrr5fDwejaGxQXGsSEHNbx4uiYA@mail.gmail.com>
To: Jukka Rissanen <jukka.rissanen@linux.intel.com>
X-Gm-Message-State: ALoCoQmEmPsMsIzxGRtV/br11szWm7gYx33KnnU+QPFOgghSFIDkV48nsPFK0qa26nU0ArJbWjIQ
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
X-List-Received-Date: Thu, 21 Mar 2013 12:36:22 -0000
Content-Type: text/plain; charset=UTF-8

On 20 March 2013 08:27, Jukka Rissanen <jukka.rissanen@linux.intel.com> wrote:
> The reason for this was that systemd did not receive NameOwnerChanged dbus
> signal telling that the daemon managed to register its name to the system
> bus.
>
> I checked with dbus-monitor that these NameOwnerChanged signals are indeed
> sent by dbus-daemon but they are not seen in debug prints from systemd.

Andreas sent a patch earlier that masks the dbus init script, because
the names don't match so you'll end up with two system buses
attempting to run.  I'm not sure how this will fail, but it could mean
that systemd isn't listening to the bus that connman is starting on,
or something.

The easy hack to test this is to delete /etc/init.d/dbus-1 and the
symlinks to it in /etc/rc*.

Ross

