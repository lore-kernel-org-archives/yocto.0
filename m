Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web11.1523.1610097978255365710
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jan 2021 01:26:19 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4DByQb1z5Hz5tlD;
	Fri,  8 Jan 2021 10:26:15 +0100 (CET)
Date: Fri, 8 Jan 2021 10:26:14 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Vijay Rakesh Munganda <vijayrakeshmunganda@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Unable to extract tar file #dunfell #yocto
Message-ID: <20210108092613.4plbcntlv72ax3a2@qschulz>
References: <CAM9ZRVs9ywVZ2i9q5k5YUei9QUncZEez9C187XXdnADZk4e0uQ@mail.gmail.com>
 <7869.1610097591233364461@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <7869.1610097591233364461@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Jan 08, 2021 at 01:19:51AM -0800, Vijay Rakesh Munganda wrote:
> Hi Paul Barker,
> 
> No, ${WORKDIR}/tokbox directory is empty, it is not getting placed. I can only see it in the downloads directory.
> 

S = "${WORKDIR}/libopentok_linux_llvm_arm64"

This is the root directory of your archive and should be used for `S`

Cheers,
Quentin
