Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 274A9E003E3
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2012 03:43:19 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1PBe82m019565;
	Sat, 25 Feb 2012 11:40:08 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18960-03; Sat, 25 Feb 2012 11:40:03 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1PBe02F019547
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 25 Feb 2012 11:40:01 GMT
Message-ID: <1330170000.13788.24.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Sat, 25 Feb 2012 11:40:00 +0000
In-Reply-To: <4F4877BF.7070903@linux.intel.com>
References: <4F4877BF.7070903@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: DEPEND creep breaking poky-tiny
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
X-List-Received-Date: Sat, 25 Feb 2012 11:43:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-02-24 at 21:55 -0800, Darren Hart wrote:
> I'm working through some issues with a poky-tiny build of
> core-image-minimal failing. The first error is attributable to"
> 
> commit f3677d679e5c74f9877f36cdb170bbfea9b7b9bb
> glib-2.0: Add missing DEPENDS on dbus
> 
> dbus eventually pulls in shadow, which fails configure with the minimal
> libc configuration in poky-tiny. Removing this dependency allows us to
> make progress. (I understand a proper fix is needed, as the dependency
> was added for a reason).

That commit is from 2011-01-21 so I'm a little surprised its the issue.
More likely is the useradd changes (which dbus now inherits) which in
turn pulls in shadow.

Regardless, I'd like to break the dbus dependency from glib-2.0 since I
think it shouldn't be hard to remove with obvious parallelism gains. I
think its only used in some glib tests.

> Next up is popt failing due to missing native language or widechar
> support. pkgconfig is what brings in popt, and also what brought in glib
> above. Nothing in popt suggests it changed recently, which leads me to
> believe that the pkgconfig bit is new as I'm pretty sure I didn't need
> glib in poky-tiny originally at all.
> 
> Has pkgconfig been added recently? Seems silly to ask, but that is where
> things are pointing...

This one is new and you are correctly attributing the change to commit
76640582e8ba114d4e80a494f6680fd0ce57ca58 which I made.

The trouble is if we build anything which has a -dev package, if we
install that, we need to have pkgconfig around since the package will
auto depend on pkgconfig thanks to rpm's auto dependencies. The
dependency is therefore correct and it won't actually change your image
size, its just a correctness issue.

I appreciate that it pulling in glib and popt is a pain though. I was
curious why as much stuff breaks since we're supposed to support nls
free images, at least in theory from the patches I see. There are
several things that caught my eye:

* USE_NLS=yes in glib-2.0's recipe (overriding the "no" distro setting)
* eglibc declaring ac_cv_header_langinfo_h (which causes popt to call
nl_langinfo)
* popthelp.c has a POPT_WCHAR_HACK define which looks like we could
disable wchar support through

So it looks like popt could be fixed relatively easily but glib-2.0 has
a hard gettext dependency at least in policy.

The annoying thing is I know pkgconfig only uses a small subset of
glib-2.0 and certainly doesn't care about nls. It used to ship its own
small glib-1.0 based shim but the authors removed that :(.

So how to fix this? The best I could come up with was:

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 411347a..5d1d67a 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -108,3 +108,5 @@ IMAGE_FSTYPES = "ext2 cpio.gz"
 #        variants of all compatible machines, but that leads to a lot
 #        more machine configs to maintain long term.
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
+
+ASSUME_PROVIDED += "pkgconfig$"

which would mean images using the -dev packages might break but
otherwise things work just fine. I confirmed poky-tiny builds with this
applied.

Cheers,

Richard








