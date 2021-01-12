Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web09.10899.1610466307684691622
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jan 2021 07:45:08 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4DFZds63vqz5tlH
	for <yocto@lists.yoctoproject.org>; Tue, 12 Jan 2021 16:45:05 +0100 (CET)
Resent-From: Quentin Schulz <quentin.schulz@streamunlimited.com>
Resent-Date: Tue, 12 Jan 2021 16:45:04 +0100
Resent-Message-ID: <20210112154504.4bqdvzelvac3kjw5@qschulz>
Resent-To: yocto@lists.yoctoproject.org
Date: Tue, 12 Jan 2021 16:43:15 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Sergey Ivanov <icegood1980@gmail.com>
Subject: Re: [yocto] remove particular device from QB_OPT_APPEND: per-word manner
Message-ID: <20210112154315.qngjohkyjgr4vwy5@qschulz>
References: <CAJCbrz4YKYNenmMDPb7jMTq_=mv3h0sVjMCFq4+-Anirbv5yug@mail.gmail.com>
 <20210112151905.az5iriu77woea4x2@qschulz>
 <CAJCbrz67e=6vSpX5cAvuV9R7mH3-kvAFspm1SVBFQJrey76gdQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJCbrz67e=6vSpX5cAvuV9R7mH3-kvAFspm1SVBFQJrey76gdQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 12, 2021 at 05:27:58PM +0200, Sergey Ivanov wrote:
> Thanks, it should work, provided...
> Am i understand correctly that all append-remove stuff works BEFORE
> anonymous python script?
> 

I'd say yes except for task-specific variables (one can do
QB_OPT_APPEND_task-install for example). Make sure you expand the
variable though (d.getVar('QB_OPT_APPEND', True) IIRC?) so that if
QB_OPT_APPEND contains other variables, they'll be resolved before you
start doing your logic.

Quentin
