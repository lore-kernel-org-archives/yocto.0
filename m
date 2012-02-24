Return-Path: <gizero@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5984E0059A
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 05:40:03 -0800 (PST)
Received: by vcbfl13 with SMTP id fl13so2392666vcb.35
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 05:40:02 -0800 (PST)
Received-SPF: pass (google.com: domain of gizero@gmail.com designates
	10.52.99.231 as permitted sender) client-ip=10.52.99.231; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of gizero@gmail.com
	designates 10.52.99.231 as permitted sender)
	smtp.mail=gizero@gmail.com; dkim=pass header.i=gizero@gmail.com
Received: from mr.google.com ([10.52.99.231])
	by 10.52.99.231 with SMTP id et7mr1125323vdb.114.1330090802975
	(num_hops = 1); Fri, 24 Feb 2012 05:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=lnng7OYYbb1pW6uayOHuZcTThBeWZnVo4zxft2Jhk5g=;
	b=h17SNDyIw+4kPSUGFNzAzxnG7mmrj+08OdFm3eaASKWdwGnxAHkUwoitrxDTzsGH4E
	rERa/mfLvurzf3BP83O77vlbC+4+mXOIeGsxkcXso2JqtIF0yMaFtMjnbb+hRxwsOXQ1
	GFdnAOjcSJEd4+EDRV7p7cLlFkzrqk7lm9/jQ=
MIME-Version: 1.0
Received: by 10.52.99.231 with SMTP id et7mr889639vdb.114.1330090801730; Fri,
	24 Feb 2012 05:40:01 -0800 (PST)
Received: by 10.220.106.143 with HTTP; Fri, 24 Feb 2012 05:40:01 -0800 (PST)
Date: Fri, 24 Feb 2012 14:40:01 +0100
Message-ID: <CAC+thW1xz0eWYh3wHdFDZWRTUgqjKPe5XKEsbzwKLrwMFKZfUA@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Subject: adt-installer: cannot install package autoconf-nativesdk
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
X-List-Received-Date: Fri, 24 Feb 2012 13:40:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I'm having the following error while trying the adt-installer for the
first time. I'm using current edison git branch and following the ADT
user's guide. The adt_installer tarball was generated inside my Yocto
build tree. The adt_installer.conf I use is basically the default one
(just changed YOCTOADT_TARGET_SYSROOT_LOC_arm to my needs). Here is
the log relevant snip:

Start installing selected native ADT for archs: arm x86...
#######################################################################
Please note from this point on installation requires sudo password ...
#######################################################################

Dangling opkg cache folder ///var/lib/opkg detected. Continue
installation will remove the folder!
[ADT_INST] Do you want to continue installation? Please enter Y/N:
Updating opkg...
Downloading http://adtrepo.yoctoproject.org/1.1/adt-ipk/i686-nativesdk/Packages.
Updated list of available packages in ///var/lib/opkg/lists/yp-i686-nativesdk.
opkg update process ended...
Installing pseudo nativesdk ...

Installing pseudo-nativesdk (1.1.1-r2) to root...
Downloading http://adtrepo.yoctoproject.org/1.1/adt-ipk/i686-nativesdk/pseudo-nativesdk_1.1.1-r2_i686-nativesdk.ipk.
Installing eglibc-nativesdk (2.13-r15+svnr14157) to root...
Downloading http://adtrepo.yoctoproject.org/1.1/adt-ipk/i686-nativesdk/eglibc-nativesdk_2.13-r15+svnr14157_i686-nativesdk.ipk.
Configuring eglibc-nativesdk.
Configuring pseudo-nativesdk.
Installing opkg nativesdk ...

Installing opkg-nativesdk (1:0.1.8+svnr625-r2) to root...
Downloading http://adtrepo.yoctoproject.org/1.1/adt-ipk/i686-nativesdk/opkg-nativesdk_0.1.8+svnr625-r2_i686-nativesdk.ipk.
Configuring opkg-nativesdk.
Installing pkgconfig nativesdk ...

Installing pkgconfig-nativesdk (0.25-r0) to root...
Downloading http://adtrepo.yoctoproject.org/1.1/adt-ipk/i686-nativesdk/pkgconfig-nativesdk_0.25-r0_i686-nativesdk.ipk.
Configuring pkgconfig-nativesdk.
Installing libtool nativesdk ...

Installing libtool-nativesdk (2.4-r2) to root...
Downloading http://adtrepo.yoctoproject.org/1.1/adt-ipk/i686-nativesdk/libtool-nativesdk_2.4-r2_i686-nativesdk.ipk.
Configuring libtool-nativesdk.
Installing autoconf nativesdk ...

Unknown package 'autoconf-nativesdk'.
Collected errors:
 * opkg_install_cmd: Cannot install package autoconf-nativesdk.

#############################################################################
# Meet error(s) when installing Yocto ADT! Please check log file for details.
#############################################################################


The installer was built against the latest version of its recipe as
per commit c6ec5a0d9e31a1694aba25e2ff76f1c933e556d5,
adt-installer-0.1.8+svnr596-r6. I guess a change was made with commit
de68393270d5455b4861d38cef3f081b9667d25f which requires installing
autoconf/automake-nativesdk but relevant ipks are missing from
http://adtrepo.yoctoproject.org/1.1/adt-ipk/, which is still default
in latest adt_installer.conf.

Am I guessing right? First time digging into the adt_installer so I
might be completely out of track! Is this a known limit if building
adt_installer with latest edison branch? Should I file a bug for this?
If so, what's the best solution right now? Maybe using the edison
original adt_installer from the yocto downloads...

Thanks in advance
Regards,
Andrea

