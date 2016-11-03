Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EF7EE00BB0; Thu,  3 Nov 2016 03:34:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 072D4E00A64
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 03:34:18 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga105.jf.intel.com with ESMTP; 03 Nov 2016 03:34:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,438,1473145200"; d="scan'208";a="1063335995"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.11.22])
	by fmsmga001.fm.intel.com with ESMTP; 03 Nov 2016 03:34:13 -0700
Message-ID: <1478169252.31055.5.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Bas Mevissen <abuse@basmevissen.nl>, "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 03 Nov 2016 10:34:12 +0000
In-Reply-To: <1478122306.22552.59.camel@linux.intel.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
	<21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
	<CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
	<1478081125.22552.6.camel@linux.intel.com>
	<0627d708-e6f4-df7e-5653-2e8ae1008d1b@basmevissen.nl>
	<1478122306.22552.59.camel@linux.intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Nov 2016 10:34:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-11-02 at 21:31 +0000, Joshua Lock wrote:
> On Wed, 2016-11-02 at 17:41 +0100, Bas Mevissen wrote:
> > 
> > On 02/11/16 11:05, Joshua Lock wrote:
> > 
> > > 
> > > 
> > > Can someone with a CentOS 7 box pastebin their /etc/lsb-release,
> > > /etc/redhat-release and /etc/os-release?
> > > 
> > 
> > /etc/lsb-release not available
> > 
> > 
> > At launch (1406):
> > 
> > /etc/redhat-release (link to /etc/centos-release):
> > CentOS Linux release 7.2.1406 (Core)
> > 
> > /etc/os-release:
> > NAME="CentOS Linux"
> > VERSION="7 (Core)"
> > ID="centos"
> > ID_LIKE="rhel fedora"
> > VERSION_ID="7"
> > PRETTY_NAME="CentOS Linux 7 (Core)"
> > ANSI_COLOR="0;31"
> > CPE_NAME="cpe:/o:centos:centos:7"
> > HOME_URL="https://www.centos.org/"
> > BUG_REPORT_URL="https://bugs.centos.org/"
> > 
> > 
> > 
> > Currently (1511):
> > 
> > /etc/redhat-release (link to /etc/centos-release):
> > CentOS Linux release 7.2.1511 (Core)
> > 
> > /etc/os-release:
> > NAME="CentOS Linux"
> > VERSION="7 (Core)"
> > ID="centos"
> > ID_LIKE="rhel fedora"
> > VERSION_ID="7"
> > PRETTY_NAME="CentOS Linux 7 (Core)"
> > ANSI_COLOR="0;31"
> > CPE_NAME="cpe:/o:centos:centos:7"
> > HOME_URL="https://www.centos.org/"
> > BUG_REPORT_URL="https://bugs.centos.org/"
> > 
> > CENTOS_MANTISBT_PROJECT="CentOS-7"
> > CENTOS_MANTISBT_PROJECT_VERSION="7"
> > REDHAT_SUPPORT_PRODUCT="centos"
> > REDHAT_SUPPORT_PRODUCT_VERSION="7"
> > 
> > So it seems to me that things have not changed in an unexpected
> > way.
> 
> Thank you! Any chance you can share the output of `lsb_release -ir`
> also?

Not to worry, I used a CentOS container to test this myself:

# lsb_release -ir
Distributor ID: CentOS
Release:        7.2.1511

The problem is that we check multiple sources for a distro's name,
favouring the output of lsb_release -ir.

If you have lsb_release available your system is reported as CentOS,
otherwise we fall back to reading os-release or redhat-release and get
CentOSLinux.

I've filed a bug to track this issue:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=10591

Regards,

Joshua

