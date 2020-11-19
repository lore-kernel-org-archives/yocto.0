Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web12.7629.1605784715313463493
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 03:18:36 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4CcHHD6KzZz5tlH;
	Thu, 19 Nov 2020 12:18:32 +0100 (CET)
Date: Thu, 19 Nov 2020 12:18:31 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: NIKHIL PATIL <nikhilvp29@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Enaable to add binary in /usr/bin using .bb file
Message-ID: <20201119111831.agmgsv577robrg5p@qschulz>
References: <CAJw=dJ9E4e1g_V1NnZj6adf415GAK_DO1VNjS3EmnJXyTiEiQA@mail.gmail.com>
 <20201119091631.riqm2r2gtnou2cie@qschulz>
 <CAJw=dJ9Yy8sBWDMT8mpnjDQBjd7AA_MBL5bNukvPXUjCeKmbdw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJw=dJ9Yy8sBWDMT8mpnjDQBjd7AA_MBL5bNukvPXUjCeKmbdw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Nov 19, 2020 at 04:45:19PM +0530, NIKHIL PATIL wrote:
> Hi ,
>      Yours correct only , but the thing is we are taking* binary(obexpushd)*
> from other source and only need to copy that binary into* /usr/bin* of our
> platform(*intel board*).
> 
>      Hence how we can achieve these using .bb file ? is there any sample
> example .
> 

I gave you what you have to do in the previous mail. Remove the last two
lines of your bb file.

If it does not work, give the full error logs and what you're trying to
achieve and what you have.

Quentin
