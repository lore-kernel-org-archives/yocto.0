Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ADBFE01400
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 11:36:54 -0700 (PDT)
Received: from frontend3.mail.m-online.net (unknown [192.168.8.181])
	by mail-out.m-online.net (Postfix) with ESMTP id 3XRntV2ClTz4KK28;
	Wed, 26 Sep 2012 20:36:49 +0200 (CEST)
Received: from localhost (dynscan2.mnet-online.de [192.168.6.69])
	by mail.m-online.net (Postfix) with ESMTP id 3XRntT6dXNzbbc1;
	Wed, 26 Sep 2012 20:36:49 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan2.mnet-online.de [192.168.6.69]) (amavisd-new,
	port 10024)
	with ESMTP id 4HKcCyxbzgg7; Wed, 26 Sep 2012 20:36:48 +0200 (CEST)
X-Auth-Info: VM1CzgdyLw7tnsAl6EvY/7MaCQbGF1B5io8odqNEkQ4=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed, 26 Sep 2012 20:36:48 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 411E51A61AB;
	Wed, 26 Sep 2012 20:36:48 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 5EA082031A9;
	Wed, 26 Sep 2012 20:36:47 +0200 (CEST)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <224780988.1nyHnvScgz@helios>
References: <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com>
	<2428256.OTjtN2nWn5@helios>
	<20120926142045.901EB2031A9@gemini.denx.de>
	<224780988.1nyHnvScgz@helios>
Comments: In-reply-to Paul Eggleton <paul.eggleton@linux.intel.com>
	message dated "Wed, 26 Sep 2012 15:39:10 +0100."
Date: Wed, 26 Sep 2012 20:36:47 +0200
Message-Id: <20120926183647.5EA082031A9@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: 1.3_M5.rc2 status.
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
X-List-Received-Date: Wed, 26 Sep 2012 18:36:54 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Paul,

In message <224780988.1nyHnvScgz@helios> you wrote:
>
> > If meta layer specific values of LAYER_CONF_VERSION are allowed, the
> > sanity checker needs a better way to deal with these; alternatively,
> > above setting in meta-yocto/conf/distro/poky.conf is wrong.  So either
> > of these should be fixed.
> 
> By "better way to deal with these", what would you suggest? I don't see any 
> alternative that avoids the BSP components just disappearing for users who 
> have existing configurations.

Well, the comment in  "meta-yocto/conf/bblayers.conf.sample"  says:

	# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
	# changes incompatibly

This suggests that such changes are not exactly unusual.  But any such
change will cause the build to fail, because the sanity checker uses a
different value.

If such a change is allowed and is done intentionally, then it should
be considered "sane", and the sanity checker should not complain.

The problem (and the longer I think about it the less I hesitate to
call it a plain bug) is that we allow for meta layer specific values
of LAYER_CONF_VERSION, while still assuming a single hard-coded
value in  meta/conf/sanity.conf  could be used as reference.

This _cannot_ work.

But when I'm supposed to overwrite the setting (to match the sanity
checker's expectations) in my local conf/bblayers.conf, then why do we
bother to set a dieferent value in the meta layer in the first place?
And hey, why do we check this value at all if all we can do is always
make it match manually?

I understand the intention, but the current implementation is just
broken, and I don't see a way to fix it.  It would probably be better
to remove this test than to leave it as is.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
If a packet hits a pocket on a socket on a port,
And the bus is interrupted as a very last resort,
And the address of the memory makes your floppy disk abort,
Then the socket packet pocket has an error to report! - Ken Burchill?

