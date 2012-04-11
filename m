Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8384CE0044D
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 09:06:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3BG6kHM010617;
	Wed, 11 Apr 2012 17:06:46 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09578-06; Wed, 11 Apr 2012 17:06:41 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3BG6c7c010611
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 11 Apr 2012 17:06:40 +0100
Message-ID: <1334160400.10826.197.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
Date: Wed, 11 Apr 2012 17:06:40 +0100
In-Reply-To: <4F85A9A5.2090305@windriver.com>
References: <1334157278.27917.25.camel@dongxiao-osel>
	<4F85A274.8010906@windriver.com>
	<1334158628.27917.28.camel@dongxiao-osel>
	<4F85A706.3030508@windriver.com>
	<1334159474.27917.30.camel@dongxiao-osel>
	<4F85A9A5.2090305@windriver.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
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
X-List-Received-Date: Wed, 11 Apr 2012 16:06:54 -0000
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
> 
> (and --provides will show what it provides..)  then match those two up.. If you 
> still don't come across some type of circular dependency, then let me know.. 
> I'll start investigating further. (there is additional dependency resolution 
> debugging I can enable, but it's difficult to explain how to interpret the tons 
> of lines..)

Let me jump in here since I've looked at the rpm code paths in question
before.

RPM basically works its way through the install manifest so if you have
for example:

base-passwd
shadow
dbus-1
libc

then base-passwd and shadow will "stall" their installation until their
dependency on libc is satisfied. Previously, we thought it was good
enough to put base-passwd and shadow at the top but its now becoming
clear we need all their dependencies at the top too.

There are other ongoing discussions about the best way to fix this.
There are failures on the autobuilder at the moment related to it.

Cheers,

Richard


