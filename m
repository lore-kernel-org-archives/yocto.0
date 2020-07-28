Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.7788.1595923827785199744
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 01:10:28 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BG8Vm5yqfz5tlM;
	Tue, 28 Jul 2020 10:10:24 +0200 (CEST)
Date: Tue, 28 Jul 2020 10:10:22 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Josef Holzmayr-Khosh Amoz <jester@theyoctojester.info>
Cc: NIKHIL PATIL <nikhilvp29@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] Remove connman package from yocto sdk.
Message-ID: <20200728081022.fz73ws2xoksdbyjg@qschulz>
References: <CAJw=dJ_yy8+A6JWoB39rRB0+FbQX+LGFgFmnn9dTWcqPFN2ruQ@mail.gmail.com>
 <CAJw=dJ-WJfC=sss_aS6mokwUPTZby65GN+cayYM=pqWs6o7JVw@mail.gmail.com>
 <CAEt6NwoPfHC2jjjAXHxDdBJZf0p0f7kKK9MGTitekJ4CbqZ+Zg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEt6NwoPfHC2jjjAXHxDdBJZf0p0f7kKK9MGTitekJ4CbqZ+Zg@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Jul 28, 2020 at 09:02:45AM +0200, Josef Holzmayr-Khosh Amoz wrote:
> Howdy!
> 
> Am Di., 28. Juli 2020 um 07:19 Uhr schrieb NIKHIL PATIL <nikhilvp29@gmail.com>:
> >
> > hi,
> >  Still we ar facing same issue  ,
> >   If anyone know, please help.
> >
> > On Fri, Jul 24, 2020 at 6:14 PM NIKHIL PATIL <nikhilvp29@gmail.com> wrote:
> >>
> >> Hi team,
> >>           We want to use NetworkManager to access internet using LTE module . but connman and Networkmaanger both are installed.
> >>
> >>           I struggled so much to remove connman,  I tried as follows :-
> >>            1) Added IMAGE_INSTALL_remove = "connman"  in local.conf
> >>                             but it still come with sato image.
> >>
> >>             2) Added DISTRO_FEATURE_remove = "connman"  in local.conf
> >>                             but it still come with sato image.
> >>
> >>     By default connman is coming in image , how to remove connman ?
> 
> Do not remove connman. If you don't need it, then do not even build
> and install it. find out what pulls it in, and change that.
> Additionally, tinkering with that through local.conf is a bad
> practise: create your own image recipe and start from there.
> 

Don't know if it works but was always wondering if adding
PACKAGE_EXCLUDE = "connman" would be a way to know for sure at least one
recipe that is "adding" connman to the image exists (and this also makes
sure connman does not make it to the final image.. which incidentally
fails the build if it **has** to make it to the image (RDEPENDS of a
recipe or directly added to the image by the machine, distro conf files
or image recipe.

Just throwing this idea here, no idea if this works and I didn't have
the opportunity to test in our layers yet.

Quentin
