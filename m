Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web09.8689.1611759064695674593
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 06:51:05 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4DQmkY3qRPz5tlB;
	Wed, 27 Jan 2021 15:51:00 +0100 (CET)
Date: Wed, 27 Jan 2021 15:50:59 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto bbappenf question
Message-ID: <20210127145059.vxesyodkdylchwof@qschulz>
References: <MADEUP.165E1E1BABB6E352.3243@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <MADEUP.165E1E1BABB6E352.3243@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Steve,

On Wed, Jan 27, 2021 at 02:46:55PM +0000, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> 
> What does it mean when a bbappend files does something like the following to a task layer ?
> 
> do_install() {
>          :
> }
> 

This overwrite the do_install task with "nothing".

The ':' character is needed because do_install() {} is not syntaxically
correct.

However, the do_install_prepend and _append would still apply  I think.

Cheers,
Quentin
