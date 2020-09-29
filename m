Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.20249.1601384364357010209
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 05:59:25 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 198.145.29.25, mailfrom: quentin.schulz@streamunlimited.com)
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by mail.yoctoproject.org (Postfix) with ESMTPS id DC0CB38C0636
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2020 05:59:23 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4C0zx60chfz5tlG;
	Tue, 29 Sep 2020 14:59:21 +0200 (CEST)
Date: Tue, 29 Sep 2020 14:59:20 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Cc: Mauro Ziliani <mauro@faresoftware.it>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] File collision: same path from 2 recipes
Message-ID: <20200929125920.hlmibi2fst6ammzx@qschulz>
References: <10274ebc-8857-8c51-55b0-f0a888ce8bf9@faresoftware.it>
 <CAGbd71RQrjf8vEfcoS9ZPAWXKCr20yGPesZT_bushNeqgkNX9w@mail.gmail.com>
 <7e203494-00c7-384c-d73e-551397701820@faresoftware.it>
 <CAGbd71RoTDco8Brc2qd=Vtv7=8H0CpAwy8u-or2fF5PbY06nRA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGbd71RoTDco8Brc2qd=Vtv7=8H0CpAwy8u-or2fF5PbY06nRA@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 29, 2020 at 02:56:28PM +0200, Laurent Gauthier wrote:
> I would guess so.
> 
> Here is a way to figure out all the packages in which your file is
> delivered (small trick that has proven quite useful for me to figure out
> which recipe/package provides a specific file):
> 
> 1. cd <your-build-directory>
> 2. echo tmp/work/*/*/*/packages-split/*/etc/network/if-up,d/hostapd_restart
> 
> This will show you which packages have the file
> "/etc/network/if-up,d/hostapd_restart".
> 
> If you just want to check which recipe installs it (in case it is installed
> by the recipe, but not packaged):
> 
> 1. cd <your-build-directory>
> 2. echo tmp/work/*/*/*/package/etc/network/if-up,d/hostapd_restart
> 

If available in krogoth,
`oe-pkdata-util find-path /etc/network/if-up,d/hostapd_restart` does
this exact thing :)

Quentin

> I hope this helps.
> 
> Kind Regards, Laurent.
> 
> PS: in some configurations of your build you might have to adjust the name
> of the "tmp" directory.
> 
> 
> On Tue, Sep 29, 2020 at 2:37 PM Mauro Ziliani <mauro@faresoftware.it> wrote:
> 
> > Thanks for your help.
> >
> > I'm working with an old Krogoth.
> >
> > This checks is true even with Krogoth?
> >
> >
> > MZ
> > Il 29/09/20 14:17, Laurent Gauthier ha scritto:
> >
> > Hi Mauro,
> >
> > From my experience there should be an error reported during the image
> > creation as long as the two *packages* that contain a file with the same
> > name are BOTH installed in the root filesystem.
> >
> > If you don't receive an error I would suspect that for some reason the
> > file is really only installed by one of the two packages.
> >
> > Another source of your issue is that there can be more than one package
> > created by one recipe, and maybe you are not installing the package which
> > contains the contentious file.
> >
> > Kind Regards, Laurent.
> >
> > On Tue, Sep 29, 2020 at 2:08 PM Mauro Ziliani <mauro@faresoftware.it>
> > wrote:
> >
> >> Hi all.
> >>
> >> There is a QA to test if 2 recipes try to install a file with the same
> >> path?
> >>
> >> In my BSP 2 recipes try install the file
> >> ${D}/etc/network/if-up,d/hostapd_restart
> >>
> >>
> >> I'd like receive an error from bitbale
> >>
> >>
> >> Best regards,
> >>
> >>
> >>     MZ
> >>
> >>
> >> 
> >>
> >>
> >
> > --
> > Laurent Gauthier
> > Embedded Linux Systems & Software
> > Phone: +33 630 483 429
> > http://soccasys.com
> >
> >
> 
> -- 
> Laurent Gauthier
> Embedded Linux Systems & Software
> Phone: +33 630 483 429
> http://soccasys.com

> 
> 
> 


-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
Fax: +43 1 667 20 02 4401
quentin.schulz@streamunlimited.com, www.streamunlimited.com
