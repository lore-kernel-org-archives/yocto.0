Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 361B6E0070C
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 08:39:54 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Apr 2012 08:39:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="140497136"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by fmsmga001.fm.intel.com with ESMTP; 11 Apr 2012 08:39:53 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4F85A274.8010906@windriver.com>
References: <1334157278.27917.25.camel@dongxiao-osel>
	<4F85A274.8010906@windriver.com>
Date: Wed, 11 Apr 2012 23:37:08 +0800
Message-ID: <1334158628.27917.28.camel@dongxiao-osel>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: yocto <yocto@yoctoproject.org>,
	"scott.a.garman@intel.com" <scott.a.garman@intel.com>
Subject: Re: Installation order question with RPM backend
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
X-List-Received-Date: Wed, 11 Apr 2012 15:39:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-04-11 at 10:25 -0500, Mark Hatle wrote:
> On 4/11/12 10:14 AM, Xu, Dongxiao wrote:
> > Hi Mark,
> >
> > I met a strange issue while using RPM to generate the rootfs.
> >
> > In the installation list, if we have 2 RPM packages, say A.rpm and
> > B.rpm. package A RDEPENDS on package B. While installing the two
> > packages? Does RPM ensures to install B first and then install A?
> >
> > The real issue is: we have certain packages that need to run
> > useradd/groupadd at rootfs time, for example, the dbus. However the
> > useradd/groupadd bbclass RDEPENDS on base-files, which provides
> > the /etc/group file. While installing the final image, sometimes we saw
> > it installs dbus firstly and then base-files, causing the
> > useradd/groupadd script error since it could not find /etc/group file.
> 
> it does enforce install order, however the /etc/group, /etc/passwd files (last 
> time I checked) were being put into place by the post install scripts.  The 
> scripting order is handled somewhat independently of the package install order. 
>   (post install scripts get delayed intentionally for performance reasons. 
> There is a way to hint a dependency for them as well...)
> 
> The passwd/group files are fairly unique files, and generally are installed 
> -first- (individually) before any other packages on most RPM installations. 
> After that the methods and install ordering works...
> 
But does the following log indicates the dbus-1 is installed before
base-passwd?

dbus-1                ##################################################
 Adding system startup
for /distro/sdb/build-basic/tmp/work/qemux86-poky-linux/hob-image-hob-basic-1.0-r0/rootfs/etc/init.d/dbus-1.
kernel-module-uvesafb ##################################################
libusb-compat         ##################################################
base-passwd           ##################################################

Thanks,
Dongxiao

> --Mark
> 
> > I tried ipk and it doesn't have problem since it ensures to install
> > base-files firstly.
> >
> > Any comment is welcome.
> >
> > Thanks,
> > Dongxiao
> >
> 



