Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.8202.1613049369744954479
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Feb 2021 05:16:09 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 85FFA38C089D
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2021 13:16:09 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:43580 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lABpH-0005vY-OO
	for yocto@yoctoproject.org; Thu, 11 Feb 2021 08:16:08 -0500
Date: Thu, 11 Feb 2021 08:16:04 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: how to copy NTP parser files verbatim from 4.2.8p10 to 4.2.8p13?
Message-ID: <507aba66-9363-732d-e84-443e4d8173a@crashcourse.ca>
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


  here's hoping someone has gone through this and can summarize what i
need to do; i'll try to keep it short.

  migrating all sorts of stuff from (effectively) morty project to
(effectively) zeus, and currently moving from ntp_4.2.8p10 to
ntp_4.2.8p13, the only complication being that, way back when, the p10
parser was extended to recognize two new (proprietary) command-line
options; thus, at the time, it's clear that yacc was run to generate
new parser files, which have worked just fine all this time, so i have
a solution for p10.

  so far, i've added all the underlying support code for these
additional options, and all of that compiles just fine, so everything
needed to *support* the two new options is in place -- new structures
have been added, existing structures have been extended, new functions
are in place, etc etc etc. all that looks good.

  the only thing missing is the final bit to support the two new
run-time options, but i've been told that there is no need to re-run
yacc to re-generate the parser files, as i can just take them verbatim
from the old p10 recipe (and i don't think i have a choice since i
can't get [b]yacc to run anyway, as it simply generates a usage
error).

  so all i'm after is, needing to avoid running yacc again, to know
what i need to steal from the p10 patches. i have patches touching all
of (and more):

  * keyword-gen.c
  * ntp_keyword.h
  * ntp_parser.[chy]

i've tried to selectively copy what look like the appropriate files
into the appropriate locations but, no matter what i do, the build
process insists on running byacc again, and chokes.

  so focusing exclusively on the parser component, is there a simple
list of what i need to copy in/patch verbatim to effect the same
changes without the build trying to regenerate the parser files? once
i have that, i can obviously add the final support code that
recognizes the new parser tokens.

  thoughts? am i even looking at this the right way?

rday


