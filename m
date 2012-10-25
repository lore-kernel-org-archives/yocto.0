Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7D40E00292
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 13:25:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Oct 2012 13:25:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,650,1344236400"; d="scan'208";a="240278350"
Received: from unknown (HELO [10.255.14.152]) ([10.255.14.152])
	by fmsmga002.fm.intel.com with ESMTP; 25 Oct 2012 13:14:52 -0700
Message-ID: <1351196092.27553.103.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Thu, 25 Oct 2012 15:14:52 -0500
In-Reply-To: <cover.1351187270.git.nitin.a.kamble@intel.com>
References: <cover.1351187270.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, darren.hart@intel.com
Subject: Re: [Patch v3 0/7] meta-intel README updates
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
X-List-Received-Date: Thu, 25 Oct 2012 20:25:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-10-25 at 10:49 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> This is v3 of the pull request based on the latest feedback from Tom.
> 
> Thanks,
> Nitin
> 
> The following changes since commit 49a8eb06bd75bb898a1b9bc4212b3db3a6d26b97:
> 
>   meta-crystalforest: update kernel SRCREVs (2012-10-25 09:44:26 -0500)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel-contrib nitin/misc
>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc
> 
> Nitin A Kamble (7):
>   MAINTAINERS: correct pathname
>   chiefriver: add WEBTITLE & Compliance information
>   crownbay: add WEBTITLE & Compliance information
>   emenlow: add WEBTITLE & Compliance information
>   jasperforest: add WEBTITLE & Compliance information
>   sugarbay: add WEBTITLE & Compliance information

Pulled into meta-intel/master.

I fixed up the compliance sections a bit though i.e. changed 'Yocto
Project to 'the Yocto Project' and added a blank line before the URLs.

Tom

>   crownbay: add more information in README
> 
>  MAINTAINERS                                      |    2 +-
>  meta-chiefriver/README                           |    8 ++++++++
>  meta-chiefriver/conf/machine/chiefriver.conf     |    2 ++
>  meta-crownbay/README                             |   12 +++++++++++-
>  meta-crownbay/conf/machine/crownbay-noemgd.conf  |    2 ++
>  meta-crownbay/conf/machine/crownbay.conf         |    2 ++
>  meta-emenlow/README                              |    8 ++++++++
>  meta-emenlow/conf/machine/emenlow.conf           |    2 ++
>  meta-jasperforest/README                         |    7 +++++++
>  meta-jasperforest/conf/machine/jasperforest.conf |    2 ++
>  meta-sugarbay/README                             |    8 ++++++++
>  meta-sugarbay/conf/machine/sugarbay.conf         |    2 ++
>  12 files changed, 55 insertions(+), 2 deletions(-)
> 



