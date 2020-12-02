Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web10.3379.1606908599273386428
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Dec 2020 03:30:00 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4CmGwN4rwHz5tlC;
	Wed,  2 Dec 2020 12:29:56 +0100 (CET)
Date: Wed, 2 Dec 2020 12:29:55 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: vijayrakeshmunganda@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to write custom recipe to install AWS C SDK from github #dunfell #linux #yocto
Message-ID: <20201202112955.hzixftbs6ap73zox@qschulz>
References: <20201202101932.bzer6ox4irlzwx4v@qschulz>
 <22091.1606908471186397827@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <22091.1606908471186397827@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi VR,

On Wed, Dec 02, 2020 at 03:27:51AM -0800, vijayrakeshmunganda@gmail.com wrote:
> Hi Quentin Schulz,
> 
> Thanks for the reply. I had downloaded the SDK into "files" folder of my recipe and given CMakeLists.txt as SRCURI. Is it correct to do like this?
> 

You need to put the SDK filename into SRC_URI as well otherwise Yocto
does not fetch it from the files directory.

Also, Ross had a good suggestion too, please check that the recipe or a
similar one does not exist already in meta-aws (or other layers).

Quentin
