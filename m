Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.11282.1614260560362585696
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Feb 2021 05:42:41 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4DmYr41Djsz5tlD;
	Thu, 25 Feb 2021 14:42:27 +0100 (CET)
Date: Thu, 25 Feb 2021 14:42:26 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] BB_HASHBASE_WHITELIST
Message-ID: <20210225134226.2q56xzogi7vafuml@qschulz>
References: <MADEUP.16670125637EC67C.18846@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <MADEUP.16670125637EC67C.18846@lists.yoctoproject.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 25, 2021 at 01:37:18PM +0000, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> 
> Where and when is it appropriate to add to/modify BB_HASHBASE_WHITELIST " ?
> 
> I tried to do : BB_HASHBASE_WHITELIST += "BB_TRACE" in my local.conf but it ended up replacing existing list with just "BB_TRACE"...
> 

In local.conf, one usually wants to use _append instead of += since
local.conf is parsed pretty early, += will override current values set
with ?= or ??=. It might also be overridden if = is used in recipes/conf
files.

Cheers,
Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
Fax: +43 1 667 20 02 4401
quentin.schulz@streamunlimited.com, www.streamunlimited.com
