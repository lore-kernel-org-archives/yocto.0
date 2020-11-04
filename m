Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.13597.1604500170759938066
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Nov 2020 06:29:31 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 83BFF38C088A
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2020 06:29:29 -0800 (PST)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:59790 helo=localhost.localdomain)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kaJmx-00CAPp-LT
	for yocto@yoctoproject.org; Wed, 04 Nov 2020 09:29:28 -0500
Date: Wed, 4 Nov 2020 09:29:25 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: how to use meta-cpan layer in a reproducible way?
Message-ID: <3f3317dc-a3f8-60d9-e7b0-1328af1ca7a2@crashcourse.ca>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII


  colleague wants to add some perl recipes to a zeus-based image, and
found the meta-cpan layer, which contains a number of desired recipes,
but the structure of that layer seems a bit sparse.

  first, here's the entire set of branches:

  $ git branch -a
  * master
    thud
    remotes/origin/HEAD -> origin/master
    remotes/origin/daisy
    remotes/origin/jethro
    remotes/origin/jethro-next
    remotes/origin/master
    remotes/origin/master-next
    remotes/origin/rocko
    remotes/origin/thud
  $

where you can see that the branches jump from thud to master with
nothing in between, so there is no "zeus" branch to focus on. also,
there are absolutely no tags.

  finally, it seems that the recipes simply upgrade versions
arbitrarily, all on the master branch, so if you grabbed the "master"
version of any recipe, there's no telling when it might change, which
makes reproducibility a bit iffy.

  what is the proper way to take advantage of a layer like this? you
can't even use PREFERRED_VERSION for a given recipe since you can
never predict when that version will suddenly disappear from the
master branch.

  i imagine the best approach is to simply clone the layer, check it
out to a specific commit ID that works for all desired recipes, and
just leave it there. or just individually copy each version of each
recipe one wants into a local layer (yuck).

  thoughts?

rday
