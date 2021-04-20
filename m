Received: from linuxplesk15.openhost.net.nz (linuxplesk15.openhost.net.nz [119.47.118.83])
 by mx.groups.io with SMTP id smtpd.web10.4038.1618957213262060911
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 15:20:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: bluelightning.org, ip: 119.47.118.83, mailfrom: bluelightning@bluelightning.org)
Received: from linc.localnet (unknown [151.210.226.152])
	by linuxplesk15.openhost.net.nz (Postfix) with ESMTPSA id 6AAF5A2F65;
	Wed, 21 Apr 2021 10:20:08 +1200 (NZST)
Authentication-Results: linuxplesk15.openhost.net.nz;
	spf=pass (sender IP is 151.210.226.152) smtp.mailfrom=bluelightning@bluelightning.org smtp.helo=linc.localnet
Received-SPF: pass (linuxplesk15.openhost.net.nz: connection is authenticated)
From: "Paul Eggleton" <bluelightning@bluelightning.org>
To: Meh Mbeh Ida Delphine <idadelm@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [layerindex-web][PATCH] Add SPDX license headers to layerindex-web source files
Date: Wed, 21 Apr 2021 10:20:07 +1200
Message-ID: <6083642.lOV4Wx5bFT@linc>
In-Reply-To: <CAN7sTgsmS_tp_wwo_tb-eaN6ZZGH5cW7vRRsE8T=A3Femw-pzw@mail.gmail.com>
References: <165FE980CA52D726.16314@lists.yoctoproject.org>
	<CAN7sTgsmS_tp_wwo_tb-eaN6ZZGH5cW7vRRsE8T=A3Femw-pzw@mail.gmail.com>
MIME-Version: 1.0
X-PPP-Message-ID: <20210420222008.2613976.27052@localhost6.localdomain6>
X-PPP-Vhost: softec.co.nz
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ida

On Wednesday, 3 February 2021 00:08:24 NZST Meh Mbeh Ida Delphine wrote:
> I sent this patch October last year and couldn't be integrated since it was
> the end of the development cycle.

My sincere apologies for the delay. I have now integrated this, but I did have 
to make a few changes:

1) Dropped the newline changes; these weren't related and also modified files 
that we want to ship as unmodified copies from upstream.

2) Removed some added copyright notices where they weren't necessary, and 
adjusted the dates to reflect when the changes were made in some other cases.

Thanks for the patch!

Paul


