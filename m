Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 082254C80AAC
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2011 21:21:00 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2F2L06d002945
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2011 19:21:00 -0700 (PDT)
Received: from Macintosh-5.local (172.25.34.56) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 14 Mar 2011 19:20:59 -0700
Message-ID: <4D7ECD0A.6020406@windriver.com>
Date: Mon, 14 Mar 2011 21:20:58 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A336463B0@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A336463B0@shsmsx501.ccr.corp.intel.com>
X-Originating-IP: [172.25.34.56]
Subject: Re: Race condition when building a recipe and poky-image-minimal-initramfs
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
X-List-Received-Date: Tue, 15 Mar 2011 02:21:01 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 3/14/11 8:47 PM, Xu, Dongxiao wrote:
> Hi Richard,

There was already a defect covering this.  The bug number is "797".

In order to fix the problem a lock was added to the RPM generation.  This lock
should be preventing both RPM package generation and rootfs construction from
running at the same time.

The code was checked into Bernard on 2011-03-10.  If your image is from after
that date, please reopen the defect and add the details below.

--Mark

> These days I found a race condition between building a recipe and poky-image-minimal-initramfs, to reproduce it, you can try as:
> 
> 1) Run "bitbake poky-image-sato-live". Build the full sato-live image until it is successful.
> 2) Bump connman's PR (or some other sato recipe's PR).
> 3) Rebuild the sato live image by "bitbake poky-image-sato-live".
> 
> Sometimes, I meet build error like the following, however it does not happen every time.
> 
> -------------------------------------------------------
> Generating solve db for /distro/dongxiao/build-qemux86/tmp/deploy/rpm/qemux86...
>    total:               1      0.000000 MB      1.424841 secs
>    fingerprint:      1020      0.006796 MB      0.033057 secs
>    install:           340      0.000000 MB      0.371773 secs
>    dbadd:             340      0.000000 MB      0.362746 secs
>    dbget:            2196      0.000000 MB      0.004278 secs
>    dbput:             340      1.504908 MB      0.308950 secs
>    readhdr:          3401      2.961280 MB      0.005603 secs
>    hdrload:          1700      4.389932 MB      0.007001 secs
>    hdrget:          57535      0.000000 MB      0.043769 secs
> Generating solve db for /distro/dongxiao/build-qemux86/tmp/deploy/rpm/i586...
> error: open of /distro/dongxiao/build-qemux86/tmp/deploy/rpm/i586/connman-plugin-ethernet-0.65-r4.i586.rpm failed: No such file or directory
> rpm.real: ./rpmio_internal.h:190: fdGetOPath: Assertion `fd != ((void *)0) && fd->magic == 0x04463138' failed.
> /distro/dongxiao/build-qemux86/tmp/work/qemux86-poky-linux/poky-image-minimal-initramfs-1.0-r0/temp/run.do_rootfs.468: line 375:   669 Aborted                 rpm --dbpath /var/lib/rpm --define='_openall_before_chroot 1' -i --replacepkgs --replacefiles --oldpackage -D "_dbpath $pkgdir/solvedb" --justdb --noaid --nodeps --noorder --noscripts --notriggers --noparentdirs --nolinktos --stats --ignoresize --nosignature --nodigest -D "__dbi_txn create nofsync" $pkgdir/solvedb/manifest
> ERROR: Function 'do_rootfs' failed (see /distro/dongxiao/build-qemux86/tmp/work/qemux86-poky-linux/poky-image-minimal-initramfs-1.0-r0/temp/log.do_rootfs.468 for further information)
> -------------------------------------------------------
> 
> The root cause for this issue should be, poky-image-minimal-initramfs's do_rootfs task doesn't have dependency on connman, thus their tasks will be run simultaneously. Poky-image-minimal-initramfs's do_rootfs will call "rootfs_rpm_do_rootfs" --> "package_update_index_rpm", where it will update all the packages depsolver db in ${DEPLOY_DIR_RPM}.
> 
> When the package_update_index_rpm function is handling connman's rpm package, and at the same time, connman is removing old rpm and trying to generate a new one (e.x, from r4 to r5), then the build error will occur, saying that it could not find r4 version of connman-plugin-ethernet...
> 
> One choice may be to force poky-image-minimal-initramfs's do_rootfs to depends on all recipe's do_package to ensure correctness, even though it only depends on some basic recipes.
> 
> However I think it is not such elegant.
> 
> Do you have ideas on it?
> 
> BTW, I will file a bug 867 to track this issue. http://bugzilla.pokylinux.org/show_bug.cgi?id=867
> 
> Thanks,
> Dongxiao 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


