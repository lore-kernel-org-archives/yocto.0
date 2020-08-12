Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web11.786.1597266462749538115
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 14:07:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from localhost ([127.0.0.1]:52962 helo=cpanel7.indieserve.net)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1k5xyH-002yoR-0C
	for yocto@lists.yoctoproject.org; Wed, 12 Aug 2020 17:07:41 -0400
Received: from [66.129.241.12] ([66.129.241.12]) by crashcourse.ca (Horde
 Framework) with HTTPS; Wed, 12 Aug 2020 17:07:40 -0400
Date: Wed, 12 Aug 2020 17:07:40 -0400
Message-ID: <20200812170740.Horde.Pq3WaL0uXjBCcMq0AX7-mvC@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: how to combine out-of-tree kernel module with EXTERNALSRC kernel source?
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday@crashcourse.ca
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
Content-Disposition: inline

currently have a perfectly functioning zeus-based layer with a
small number of out-of-tree kernel modules which build just fine
with:

   $ bitbake kernel-module-fubar

against the stock linux-yocto (5.2) kernel provided by zeus.

   was just asked how to build those same out-of-tree modules
against an external kernel identified by (i'm guessing)
EXTERNALSRC. i don't need to build the kernel itself, just
configure it to the point (a la "make modules_prepare") so
that i can build modules against it.

   specifying an external source for the kernel seems easy
enough, but i don't see how to then get the modules to
build against that. a quick google showed me:

https://wiki.koansoftware.com/index.php/Building_Software_from_an_External_Source

"Depending on the type of build (eg, 'inherit module' for out
of tree Linux kernel modules) you may or may not need to set
EXTERNALSRC_BUILD."

that explanation seems a bit on the vague side ... is there
an explanation of this somewhere? i can't modify recipes, i
need to do this exclusively through local.conf.

thoughts? this seems like a useful enough operation that
surely others have done it before now.

rday

