Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.20047.1608984619461011595
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Dec 2020 04:10:19 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 91ADC38C063E
	for <yocto@yoctoproject.org>; Sat, 26 Dec 2020 12:10:18 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:33520 helo=localhost.localdomain)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kt8Om-0001ag-QY
	for yocto@yoctoproject.org; Sat, 26 Dec 2020 07:10:17 -0500
Date: Sat, 26 Dec 2020 07:10:15 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: is there a focused place to ask about ruby/gems WRT yocto building?
Message-ID: <5939677-4322-2645-4a-46423be74f64@crashcourse.ca>
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


  to prepare for trying to build a number of ruby gems for WR LTS19
(effectively zeus, as always), i thought i'd start simple and begin
with building for qemux86-64 with gatesgarth so i could plausibly
claim that i have a working basis for comparison, whereupon if that
worked for what i was after, i could work backwards.

  i just now started a build for qemux86-64/gatesgarth with "bitbake
ruby", and i'll take it from there. knowing little about ruby, is
there a smaller community that would help with issues i run into, or
should i keep the discussion here?

  i want to start by trying to build absolutely stock puppet and chef,
and if that turns out to need fixing, i will of course submit patches.
if anyone has already gone through this exercise, that would be just
ducky.

  i should have the result of the first build in an hour or two --
given that i'm not trying to do anything out of the ordinary, i would
*hope* that a totally generic build would work out of the box, but
we'll see.

rday

p.s. the above recipes involve the layers meta-cloud-services and
sub-layer meta-openstack.
