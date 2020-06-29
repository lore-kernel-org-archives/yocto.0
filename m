Received: from linuxplesk15.openhost.net.nz (linuxplesk15.openhost.net.nz [119.47.118.83])
 by mx.groups.io with SMTP id smtpd.web12.1537.1593453923963280765
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jun 2020 11:05:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: bluelightning.org, ip: 119.47.118.83, mailfrom: bluelightning@bluelightning.org)
Received: from linc.localnet (unknown [165.84.13.217])
	by linuxplesk15.openhost.net.nz (Postfix) with ESMTPSA id 2F468A2597;
	Tue, 30 Jun 2020 06:05:20 +1200 (NZST)
Authentication-Results: linuxplesk15.openhost.net.nz;
        spf=pass (sender IP is 165.84.13.217) smtp.mailfrom=bluelightning@bluelightning.org smtp.helo=linc.localnet
Received-SPF: pass (linuxplesk15.openhost.net.nz: connection is authenticated)
From: "Paul Eggleton" <bluelightning@bluelightning.org>
To: Amber Elliot <amber.n.elliot@intel.com>
Cc: yocto@lists.yoctoproject.org, Tim Orling <ticotimo@gmail.com>
Subject: Re: [yocto] [layerindexweb][PATCH 0/7] Django 2.2 Upgrade
Date: Tue, 30 Jun 2020 06:05:19 +1200
Message-ID: <5368986.DvuYhMxLoT@linc>
In-Reply-To: <20200625225739.32402-1-amber.n.elliot@intel.com>
References: <20200625225739.32402-1-amber.n.elliot@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Amber

Thanks for doing this! I've just merged the patches this morning.

Next we need to figure out how to do the upgrade on the live site - which is a 
little tricky given the current state of the RRS (where the upgrade requires 
some manual data mangling on my part). Hopefully I can get this done some time 
next week.

Cheers
Paul

On Friday, 26 June 2020 10:57:32 NZST Amber Elliot wrote:
> These patches upgrade the layerindex to Django 2.2.
> 
> Amber Elliot (5):
>   README: Correcting mailing list.
>   Updating models and imports for Django 2.2 upgrade.
>   settings.py: Replacing  MIDDLEWARE_CLASSES with MIDDLEWARE for Django
>     2.2 upgrade.
>   Replacing is_authenticated() with is_authenticated for Django upgrade.
>   requirements.txt: Updating Django requirement to the 2.2 LTS release.
> 
> Tim Orling (2):
>   Dockerfile: debian 10 "buster" and drop python2
>   docker/settings.py: MIDDLEWARE
> 
>  Dockerfile                                    | 13 ++--
>  README                                        |  2 +-
>  docker/settings.py                            |  2 +-
>  layerindex/auth_views.py                      |  4 +-
>  layerindex/forms.py                           |  2 +-
>  layerindex/middleware.py                      |  2 +-
>  layerindex/migrations/0001_initial.py         | 36 +++++------
>  layerindex/migrations/0002_distro.py          |  2 +-
>  layerindex/migrations/0005_layerupdate.py     |  4 +-
>  .../migrations/0010_add_dependencies.py       |  2 +-
>  layerindex/migrations/0011_source.py          |  2 +-
>  layerindex/migrations/0013_patch.py           |  2 +-
>  .../0023_layerupdate_layer_branch_finalise.py |  4 +-
>  layerindex/models.py                          | 61 +++++++++----------
>  layerindex/urls.py                            |  2 +-
>  layerindex/urls_branch.py                     |  2 +-
>  layerindex/views.py                           | 32 +++++-----
>  requirements.txt                              |  2 +-
>  settings.py                                   |  2 +-
>  urls.py                                       |  4 +-
>  20 files changed, 89 insertions(+), 93 deletions(-)




