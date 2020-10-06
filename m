Received: from linuxplesk15.openhost.net.nz (linuxplesk15.openhost.net.nz [119.47.118.83])
 by mx.groups.io with SMTP id smtpd.web11.2764.1602013713727885128
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Oct 2020 12:48:34 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: bluelightning.org, ip: 119.47.118.83, mailfrom: bluelightning@bluelightning.org)
Received: from linc.localnet (unknown [151.210.231.35])
	by linuxplesk15.openhost.net.nz (Postfix) with ESMTPSA id A1C84A2184;
	Wed,  7 Oct 2020 08:48:29 +1300 (NZDT)
Authentication-Results: linuxplesk15.openhost.net.nz;
        spf=pass (sender IP is 151.210.231.35) smtp.mailfrom=bluelightning@bluelightning.org smtp.helo=linc.localnet
Received-SPF: pass (linuxplesk15.openhost.net.nz: connection is authenticated)
From: "Paul Eggleton" <bluelightning@bluelightning.org>
To: Yocto_user <avinashyadav94it@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Automated script to know all the Recipes details
Date: Wed, 07 Oct 2020 08:48:29 +1300
Message-ID: <9770154.nUPlyArG6x@linc>
In-Reply-To: <OFd6.1601554575247865340.Fx0w@lists.yoctoproject.org>
References: <OFd6.1601554575247865340.Fx0w@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi there

On Friday, 2 October 2020 01:16:15 NZDT Yocto_user wrote:
> Hi, do we have any automated script that we can run in Yocto 3.0 Zues
> release or any general release to get all these information of all the
> packages installed in a particular Yocto release: 
> 1. Name
> 2. Version
> 3. Homepage link of the Recipes from where it was downloaded.

So if you're familiar with Python you could fairly quickly write a script to 
iterate over recipes and get these values using tinfoil:

  https://wiki.yoctoproject.org/wiki/TipsAndTricks/Tinfoil

Cheers,
Paul



