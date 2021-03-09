Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.9932.1615300761457896983
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 06:39:21 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2E1A738C052B
	for <yocto@yoctoproject.org>; Tue,  9 Mar 2021 14:39:18 +0000 (UTC)
Received: from bras-base-otwaon0916w-grc-29-64-229-255-220.dsl.bell.ca ([64.229.255.220]:46588 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lJdW0-0002Uk-74
	for yocto@yoctoproject.org; Tue, 09 Mar 2021 09:39:16 -0500
Date: Tue, 9 Mar 2021 09:39:14 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: how often would one use "VAR_someoverride_append = ..."?
Message-ID: <fd294e8a-cc9e-d9f-33d9-cc30f27ff0@crashcourse.ca>
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


  bitbake manual, chapter 3, examples of conditional syntax:

https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-metadata.html#examples

correctly distinguishes between A_foo_append and A_append_foo, but how
often would one use that first form, anyway?

  most uses of conditional appending are either just straight
appending:

  VAR_append = "fubar"

or used with an override thusly:

  VAR_append_x86 = "snafu"

is there an actual practical usage of, say:

  VAR_x86_append = "huh"

i can't remember the last time i saw something of that form and,
while it might be worth explaining, it seems that the reader might be
warned that that form is almost certainly *not* what they want.

  thoughts?

rday

