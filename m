Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.4589.1611729215283410549
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Jan 2021 22:33:35 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1BEC538C085C
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 06:33:35 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:34234 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1l4eOT-00084z-6C; Wed, 27 Jan 2021 01:33:33 -0500
Date: Wed, 27 Jan 2021 01:33:30 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
cc: Konrad Weihmann <kweihmann@outlook.com>
Subject: any interest in an official "meta-rubygems" layer?
Message-ID: <633c9c84-1d35-48f1-82b7-4f2dabc2585@crashcourse.ca>
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


  since it appears that i will be diving head-first into messing with
ruby in some current YP builds, is there any interest in creating a
meta-rubygems layer to start collecting recipes based on what konrad
weihmann has done in his meta-sca layer here?

  https://github.com/priv-kweihmann/meta-sca

  i've been swapping emails with konrad over the last few days and,
first, it seems clear that it's not appropriate to start dumping
general ruby recipes into meta-sca as that layer is clearly defined as
being for "static code analysis and security hardening", so a new,
more general layer is obviously more appropriate.

  also, konrad focuses on using his own "rubygems.bbclass" class file:

https://github.com/priv-kweihmann/meta-sca/blob/master/classes/rubygems.bbclass

to define recipes that pull from rubygems.org exclusively, and he
agrees that it would keep things simpler to stick with that model;
hence, the proposal of the layer name "meta-rubygems" and not just
"meta-ruby".

  konrad already offered to do the maintenance of such a new layer, as
long as there is standard infrastructure support for testing, that
sort of thing. and i'm sure that would make his meta-sca layer simpler
as all the more generic rubygems-based recipes could be moved into the
meta-rubygems layer, leaving his meta-sca layer to focus exclusively
on the code analysis and security recipes, however he wants to do
that.

  thoughts? it seems that a new layer could be populated almost
instantly with a large chunk of meta-sca, and we could take it from
there.

rday


