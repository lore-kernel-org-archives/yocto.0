Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B5EBE00312
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 11:56:58 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Feb 2013 11:56:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,742,1355126400"; d="scan'208";a="290843173"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 26 Feb 2013 11:56:54 -0800
Received: by linux.intel.com (Postfix, from userid 48)
	id AE7322C8001; Tue, 26 Feb 2013 11:56:49 -0800 (PST)
Received: from 10.254.105.78 (SquirrelMail authenticated user kevin.strasser)
	by linux.intel.com with HTTP; Tue, 26 Feb 2013 11:56:49 -0800 (PST)
Message-ID: <60980.10.254.105.78.1361908609.squirrel@linux.intel.com>
In-Reply-To: <cover.1361541447.git.paul.eggleton@linux.intel.com>
References: <cover.1361541447.git.paul.eggleton@linux.intel.com>
Date: Tue, 26 Feb 2013 11:56:49 -0800 (PST)
From: kevin.strasser@linux.intel.com
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>
User-Agent: SquirrelMail/1.4.8-5.el4.centos.8
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH 0/4] Webmin updates/fixes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Feb 2013 19:56:58 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

> The following changes since commit
> 6c7948d9ca339caa6647b7e3f20ab82508f0793a:
>
>   schroedinger: specify the version of MPL in use (2013-01-03 13:46:02
> -0800)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib paule/webmin-update
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/webmin-update
>
> Kevin Strasser (1):
>   webmin: correct net-lib.pl patch
>
> Paul Eggleton (3):
>   webmin: update to 1.620
>   webmin: tidy up recipe
>   webmin: fix for changes in OE-Core master
>
>  .../webmin/files/disable-version-check.patch       |   25 +++++---
>  recipes-extended/webmin/files/net-lib.pl.patch     |    2 +-
>  .../webmin/{webmin_1.590.bb => webmin_1.620.bb}    |   63
> +++++++++-----------
>  3 files changed, 45 insertions(+), 45 deletions(-)
>  rename recipes-extended/webmin/{webmin_1.590.bb => webmin_1.620.bb} (81%)
>

Hi Paul,

This looks great, but I noticed that the nfs-utils recipe in oe-core has
been updated and is causing our bbappend to break. I went ahead and made
the update and applied a commit on top of these changes. That addition is
available in a branch at:

   git://git.yoctoproject.org/poky-contrib
strassek/webmin-update_and_nfs-utils
   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/webmin-update_and_nfs-utils

-Kevin

