Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20AFDE0044D
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 09:07:18 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 Apr 2012 09:07:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129690763"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by azsmga001.ch.intel.com with ESMTP; 11 Apr 2012 09:07:16 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4F85A9A5.2090305@windriver.com>
References: <1334157278.27917.25.camel@dongxiao-osel>
	<4F85A274.8010906@windriver.com>
	<1334158628.27917.28.camel@dongxiao-osel>
	<4F85A706.3030508@windriver.com>
	<1334159474.27917.30.camel@dongxiao-osel>
	<4F85A9A5.2090305@windriver.com>
Date: Thu, 12 Apr 2012 00:04:31 +0800
Message-ID: <1334160271.27917.36.camel@dongxiao-osel>
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
X-List-Received-Date: Wed, 11 Apr 2012 16:07:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-04-11 at 10:56 -0500, Mark Hatle wrote:
> On 4/11/12 10:51 AM, Xu, Dongxiao wrote:
> > On Wed, 2012-04-11 at 10:45 -0500, Mark Hatle wrote:
> >> On 4/11/12 10:37 AM, Xu, Dongxiao wrote:
> >>> On Wed, 2012-04-11 at 10:25 -0500, Mark Hatle wrote:
> >>>> On 4/11/12 10:14 AM, Xu, Dongxiao wrote:
> >>>>> Hi Mark,
> >>>>>
> >>>>> I met a strange issue while using RPM to generate the rootfs.
> >>>>>
> >>>>> In the installation list, if we have 2 RPM packages, say A.rpm and
> >>>>> B.rpm. package A RDEPENDS on package B. While installing the two
> >>>>> packages? Does RPM ensures to install B first and then install A?
> >>>>>
> >>>>> The real issue is: we have certain packages that need to run
> >>>>> useradd/groupadd at rootfs time, for example, the dbus. However the
> >>>>> useradd/groupadd bbclass RDEPENDS on base-files, which provides
> >>>>> the /etc/group file. While installing the final image, sometimes we saw
> >>>>> it installs dbus firstly and then base-files, causing the
> >>>>> useradd/groupadd script error since it could not find /etc/group file.
> >>>>
> >>>> it does enforce install order, however the /etc/group, /etc/passwd files (last
> >>>> time I checked) were being put into place by the post install scripts.  The
> >>>> scripting order is handled somewhat independently of the package install order.
> >>>>     (post install scripts get delayed intentionally for performance reasons.
> >>>> There is a way to hint a dependency for them as well...)
> >>>>
> >>>> The passwd/group files are fairly unique files, and generally are installed
> >>>> -first- (individually) before any other packages on most RPM installations.
> >>>> After that the methods and install ordering works...
> >>>>
> >>> But does the following log indicates the dbus-1 is installed before
> >>> base-passwd?
> >>>
> >>> dbus-1                ##################################################
> >>>    Adding system startup
> >>> for /distro/sdb/build-basic/tmp/work/qemux86-poky-linux/hob-image-hob-basic-1.0-r0/rootfs/etc/init.d/dbus-1.
> >>> kernel-module-uvesafb ##################################################
> >>> libusb-compat         ##################################################
> >>> base-passwd           ##################################################
> >>
> >> Certainly appears that way.. but we'd need to look into the packages and
> >> understand the requirements as they are defined and trace them to see if there
> >> is a problem w/ the ordering or if the packages have a problem.
> >>
> >> You will often see mysterious reordering when there is a circular dependency.
> >> RPM has to break this dependency in some way, and it does it by simply choosing
> >> one or the other.  (There is a hint mechanism for circular dependencies, but
> >> we've never used it.)
> >>
> >> My suggestion is lets look at the package runtime dependenices and manually
> >> trace them..  Focus on dbus-1 and base-passwd... and see if the order is right
> >> or wrong or if there is a circular dependency.
> >
> > I checked the dbus.spec and base-passwd.spec.
> > For dbus.spec, there is a line:
> >
> > %package -n dbus-1
> > Requires: base-passwd
> >
> > And for base-passwd, there is no dbus exists in base-passwd.spec.
> 
> You need to query the binary packages for the real values..
> 
> rpm -qp <package> --requires

Here I pasted the command output. I think there is no circular
dependency here.

It is relatively easy to reproduce this rootfs error:
For a certain image bb file, say task-core-basic. Change the definition
of the installation package with the following line:
PACKAGE_INSTALL = "task-core-basic task-core-ssh-openssh
task-core-apps-console task-core-boot"
# bitbake core-image-basic

Then you will see the useradd/groupadd error and the dependency order
issue.

Thanks,
Dongxiao

dongxiao@dongxiao-osel:/distro/sdb/build-basic/tmp/deploy/rpm/i586$ rpm
-qp base-passwd-3.5.24-r0.i586.rpm --requires
warning: base-passwd-3.5.24-r0.i586.rpm: Header V4 DSA/SHA1 Signature,
key ID a8d359bb: NOKEY
/bin/sh
dongxiao@dongxiao-osel:/distro/sdb/build-basic/tmp/deploy/rpm/i586$ rpm
-qp dbus-1-1.4.16-r3.0.i586.rpm --requires
warning: dbus-1-1.4.16-r3.0.i586.rpm: Header V4 DSA/SHA1 Signature, key
ID 2c60056d: NOKEY
update-rc.d
libdbus-1-3 >= 1.4.16
libc6 >= 2.13
shadow
libexpat1 >= 2.0.1
base-passwd
/bin/sh
/bin/sh
/bin/sh
/bin/sh
/bin/sh
rtld(GNU_HASH)
libc.so.6(GLIBC_2.0)
libc.so.6
libc.so.6(GLIBC_2.1)
libc.so.6(GLIBC_2.10)
libpthread.so.0(GLIBC_2.0)
libc.so.6(GLIBC_2.9)
libc.so.6(GLIBC_2.2)
librt.so.1
librt.so.1(GLIBC_2.2)
libpthread.so.0(GLIBC_2.3.2)
libpthread.so.0
libc.so.6(GLIBC_2.2.4)
libexpat.so.1
libc.so.6(GLIBC_2.1.2)
libpthread.so.0(GLIBC_2.3.3)
libc.so.6(GLIBC_2.4)
libdbus-1.so.3


> 
> (and --provides will show what it provides..)  then match those two up.. If you 
> still don't come across some type of circular dependency, then let me know.. 
> I'll start investigating further. (there is additional dependency resolution 
> debugging I can enable, but it's difficult to explain how to interpret the tons 
> of lines..)
> 
> --Mark
> 
> > Thanks,
> > Dongxiao
> >
> >>
> >> (Also our version of RPM 5 is a bit old, and there are some known bugs in it..
> >> as far as I know, none of them with the dependency resolution or code paths we
> >> follow.)
> >>
> >> --Mark
> >>
> >>> Thanks,
> >>> Dongxiao
> >>>
> >>>> --Mark
> >>>>
> >>>>> I tried ipk and it doesn't have problem since it ensures to install
> >>>>> base-files firstly.
> >>>>>
> >>>>> Any comment is welcome.
> >>>>>
> >>>>> Thanks,
> >>>>> Dongxiao
> >>>>>
> >>>>
> >>>
> >>>
> >>
> >
> >
> 



