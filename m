Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web08.2822.1610107752503184286
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jan 2021 04:09:12 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4DC22M6yTwz5tl9;
	Fri,  8 Jan 2021 13:08:59 +0100 (CET)
Date: Fri, 8 Jan 2021 13:08:58 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Vijay Rakesh Munganda <vijayrakeshmunganda@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Unable to extract tar file #dunfell #yocto
Message-ID: <20210108120858.ldwzi6ra4xp6jji2@qschulz>
References: <20210108111544.3g5m5ivajln6mdpw@qschulz>
 <26578.1610107254578379888@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <26578.1610107254578379888@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 08, 2021 at 04:00:54AM -0800, Vijay Rakesh Munganda wrote:
> On Fri, Jan 8, 2021 at 03:15 AM, Quentin Schulz wrote:
> 
> > 
> > On Fri, Jan 08, 2021 at 03:07:43AM -0800, Vijay Rakesh Munganda wrote:
> > 
> >> On Fri, Jan 8, 2021 at 01:26 AM, Quentin Schulz wrote:
> >> 
> >> 
> >>> 
> >>> Hi,
> >>> 
> >>> On Fri, Jan 08, 2021 at 01:19:51AM -0800, Vijay Rakesh Munganda wrote:
> >>> 
> >>> 
> >>>> Hi Paul Barker,
> >>>> 
> >>>> No, ${WORKDIR}/tokbox directory is empty, it is not getting placed. I can
> >>>> only see it in the downloads directory.
> >>> 
> >>> S = "${WORKDIR}/libopentok_linux_llvm_arm64"
> >>> 
> >>> This is the root directory of your archive and should be used for `S`
> >>> 
> >>> Cheers,
> >>> Quentin
> >> 
> >> By changing to S = "${WORKDIR}/libopentok_linux_llvm_arm64" error got
> >> eliminated, thank you.
> >> 
> >> Now, how can I install the file under
> >> opentok_linux_llvm_arm64/lib/libopentok.so into the rootfs?
> >> 
> >> I tried the below code but got an error as *install: cannot stat
> >> 'lib/libopentok.so': No such file or directory*.
> > 
> > If you go into ${WORKDIR} of your recipe (tmp/work/<arch>/<recipe name>),
> > what is the path to libopentok.*.so?
> > 

Do you have B set up somewhere in your recipe?
Otherwise try ${S}/lib/libopentok.so for the source path.

Quentin
