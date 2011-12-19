Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 477FEE00305
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2011 11:39:27 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 83C031802C9D;
	Mon, 19 Dec 2011 20:39:23 +0100 (CET)
X-Auth-Info: susfZ3XruQOiM9G4UjOApE909Ad4DMVmduYr9wPzBpQ=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id A60441C0011C;
	Mon, 19 Dec 2011 20:39:23 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 75ED11A28DF;
	Mon, 19 Dec 2011 20:39:23 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id C8F83138EE41;
	Mon, 19 Dec 2011 20:39:22 +0100 (CET)
To: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <9BACABF0C6B14A4D8C33B42A795119BE096D7BA7@POCITMSEXMB03.LntUniverse.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE096D7BA7@POCITMSEXMB03.LntUniverse.com>
Comments: In-reply-to Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
	message dated "Mon, 19 Dec 2011 10:41:52 +0000."
Date: Mon, 19 Dec 2011 20:39:22 +0100
Message-Id: <20111219193922.C8F83138EE41@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Related to mounting USB
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
X-List-Received-Date: Mon, 19 Dec 2011 19:39:31 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Navani Kamal Srivastava,

In message <9BACABF0C6B14A4D8C33B42A795119BE096D7BA7@POCITMSEXMB03.LntUniverse.com> you wrote:
>
> I am facing problem in mounting USB. At the time of system bootup if
> USB stick is plugged, it shows messages like
...
> But I won't get any sda or sda1 in /dev to mount. If I am
> unplugging the USB stick and again plug it I would be able to look
> for it in /dev and mount it. Please look after this issue.

This is a known problem.  Some even call it a feature ;-)

Yocto tries to speedup the boot process by caching the /dev contents:
it creates an archive "/etc/dev.tar" on the first boot and, if this
archive exists during the next boot, it gets extracted and most of
the coldplug events are filtered. Only if the archive doesn't exist a
full scan is performed.

This seems to be a good solution for a root file system used inside a
typical embedded device (as scanning for cold plug events is known to
be slow) but this clearly doesn't work in your setup where the booted
configuration changes.

As a workaround you just need to remove the "/etc/dev.tar" file from
the root file system.

As a real fix you might want to disable this functionality for
your configuration.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
The only time the world beats a path to your door is when you are  in
the bathroom.

