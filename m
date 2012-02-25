Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BD14E00AFC
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2012 08:28:25 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Feb 2012 08:28:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="121304237"
Received: from unknown (HELO [10.255.13.246]) ([10.255.13.246])
	by fmsmga001.fm.intel.com with ESMTP; 25 Feb 2012 08:28:24 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1330076070.git.paul.eggleton@linux.intel.com>
References: <cover.1330076070.git.paul.eggleton@linux.intel.com>
Date: Sat, 25 Feb 2012 10:28:36 -0600
Message-ID: <1330187316.2485.242.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] meta-intel: improve interactions with common layer
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
X-List-Received-Date: Sat, 25 Feb 2012 16:28:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-02-24 at 09:38 +0000, Paul Eggleton wrote:
> At the moment it is possible to enable one of the sub-layers of
> meta-intel (e.g. meta-n450) without also enabling the meta-intel common
> layer, which can lead to some nasty parsing errors. Here are two patches
> to handle this situation in a nicer way.
> 
> (Note that BitBake currently does not actually terminate when
> LAYERDEPENDS are not satisfied - I've got a patch queued to fix this.)
> 
> The following changes since commit 1ca68394faf33416f2aabee27323da7510ad6609:
> 
>   netbase: put sys940x specific interfaces file in MACHINE directory (2012-02-10 17:27:27 -0800)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel-contrib paule/layerdepends
>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=paule/layerdepends
> 

Pulled into meta-intel/master.  Thanks, Paul!

Tom

> Paul Eggleton (2):
>   meta-intel: replace "include" with "require"
>   meta-intel: add LAYERDEPENDS for layers needing the meta-intel common
>     layer
> 
>  meta-cedartrail/conf/layer.conf                 |    2 ++
>  meta-cedartrail/conf/machine/cedartrail.conf    |    2 +-
>  meta-crownbay/conf/layer.conf                   |    2 ++
>  meta-crownbay/conf/machine/crownbay-noemgd.conf |    4 ++--
>  meta-crownbay/conf/machine/crownbay.conf        |    4 ++--
>  meta-emenlow/conf/layer.conf                    |    2 ++
>  meta-emenlow/conf/machine/emenlow.conf          |    4 ++--
>  meta-fishriver/conf/layer.conf                  |    2 ++
>  meta-fishriver/conf/machine/fishriver.conf      |    2 +-
>  meta-fri2/conf/layer.conf                       |    2 ++
>  meta-fri2/conf/machine/fri2-noemgd.conf         |    4 ++--
>  meta-fri2/conf/machine/fri2.conf                |    4 ++--
>  meta-jasperforest/conf/layer.conf               |    2 ++
>  meta-n450/conf/layer.conf                       |    2 ++
>  meta-n450/conf/machine/n450.conf                |    4 ++--
>  meta-romley/conf/layer.conf                     |    2 ++
>  meta-romley/conf/machine/romley.conf            |    2 +-
>  meta-sugarbay/conf/layer.conf                   |    2 ++
>  meta-sys940x/conf/layer.conf                    |    2 ++
>  meta-sys940x/conf/machine/sys940x-noemgd.conf   |    4 ++--
>  meta-sys940x/conf/machine/sys940x.conf          |    4 ++--
>  21 files changed, 39 insertions(+), 19 deletions(-)
> 



