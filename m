Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web10.2105.1593125863574078758
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jun 2020 15:57:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: amber.n.elliot@intel.com)
IronPort-SDR: R7HiZbbtUesoPk2RhLmvV0QuaXkq6Q2W1nsJZt4hOKxYv9morS7ztelywIX0H9hYRCkPpYzWAe
 Rj90klHwMxig==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="163187482"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="163187482"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:42 -0700
IronPort-SDR: g/f/e5gc/Xg5aepbRQfIYblnUHzX9/XcBTcnrXgR9N8vO9Oz5W6ixUFlMEvXPOxamaw+tH4WNo
 +afQiPRU62zw==
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="299294990"
Received: from rbommagx-mobl1.amr.corp.intel.com (HELO localhost.localdomain) ([10.209.186.34])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:42 -0700
From: "Amber Elliot" <amber.n.elliot@intel.com>
To: yocto@lists.yoctoproject.org
Cc: Amber Elliot <amber.n.elliot@intel.com>
Subject: [layerindexweb][PATCH 0/7] Django 2.2 Upgrade
Date: Thu, 25 Jun 2020 15:57:32 -0700
Message-Id: <20200625225739.32402-1-amber.n.elliot@intel.com>
X-Mailer: git-send-email 2.17.1

These patches upgrade the layerindex to Django 2.2.

Amber Elliot (5):
  README: Correcting mailing list.
  Updating models and imports for Django 2.2 upgrade.
  settings.py: Replacing  MIDDLEWARE_CLASSES with MIDDLEWARE for Django
    2.2 upgrade.
  Replacing is_authenticated() with is_authenticated for Django upgrade.
  requirements.txt: Updating Django requirement to the 2.2 LTS release.

Tim Orling (2):
  Dockerfile: debian 10 "buster" and drop python2
  docker/settings.py: MIDDLEWARE

 Dockerfile                                    | 13 ++--
 README                                        |  2 +-
 docker/settings.py                            |  2 +-
 layerindex/auth_views.py                      |  4 +-
 layerindex/forms.py                           |  2 +-
 layerindex/middleware.py                      |  2 +-
 layerindex/migrations/0001_initial.py         | 36 +++++------
 layerindex/migrations/0002_distro.py          |  2 +-
 layerindex/migrations/0005_layerupdate.py     |  4 +-
 .../migrations/0010_add_dependencies.py       |  2 +-
 layerindex/migrations/0011_source.py          |  2 +-
 layerindex/migrations/0013_patch.py           |  2 +-
 .../0023_layerupdate_layer_branch_finalise.py |  4 +-
 layerindex/models.py                          | 61 +++++++++----------
 layerindex/urls.py                            |  2 +-
 layerindex/urls_branch.py                     |  2 +-
 layerindex/views.py                           | 32 +++++-----
 requirements.txt                              |  2 +-
 settings.py                                   |  2 +-
 urls.py                                       |  4 +-
 20 files changed, 89 insertions(+), 93 deletions(-)

-- 
2.17.1

