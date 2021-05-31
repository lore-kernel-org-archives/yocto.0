Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by mx.groups.io with SMTP id smtpd.web12.50362.1622500817121174268
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 May 2021 15:40:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linux.microsoft.com header.s=default header.b=DHm2r74C;
 spf=pass (domain: linux.microsoft.com, ip: 13.77.154.182, mailfrom: pauleg@linux.microsoft.com)
Received: by linux.microsoft.com (Postfix, from userid 1054)
	id 7C0F120B7178; Mon, 31 May 2021 15:40:16 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 7C0F120B7178
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1622500816;
	bh=6yutRhKbkQ6WaBq8Ug1C0odAa5ofTj80TSMYWD5FtQ8=;
	h=Date:From:To:Cc:Subject:From;
	b=DHm2r74C07AFPmz2b9SUrY7Rbjiak7cqhH2BAuAljU9YpSpRezq+4MCDkP2vQ6BL8
	 to9GK1HU0x3kp0DKbC5igLpQtI+rJdH4xpGp9cDSZ2pMU60H1x4AdFsOGv7T5ccbgY
	 mhI1X26ne59Z0cpsrnhQU8qpHUHhkGnYi/gS4uMI=
Date: Mon, 31 May 2021 15:40:16 -0700
From: "Paul Eggleton" <paul.eggleton@linux.microsoft.com>
To: yocto@lists.yoctoproject.org
Cc: Luca Boccassi <luca.boccassi@gmail.com>
Subject: systemd, ELF binaries and runtime dependency tracking
Message-ID: <20210531224016.GA24592@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi folks

Upstream in the systemd project, a proposal has been made to add a special
section to output ELF binaries to record soft runtime dependencies, so that
they could be read and utilised by distribution build systems such as ours
(they would be translated into RRECOMMENDS in our case). At the moment that
doesn't seem to have generated a huge amount of interest in the traditional
distro space, but would it be interesting for us?

  https://github.com/systemd/systemd/pull/17416

For clarity, we (Microsoft) will volunteer to do the integration assuming the
above pull request gets reopened and merged, which is more likely if we
express our interest.

Cheers
Paul

