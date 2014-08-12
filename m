Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FE7CE007A0; Tue, 12 Aug 2014 16:28:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FD08E00796
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 16:28:06 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id hy4so14201894vcb.36
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 16:28:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=BxLNIrazzxdRFDE3pwIKEdaasn2+p5uoFewm1OmgMMo=;
	b=X2VyGonI5s34h6e3rH9GM7vSgspUQzPXotmteeFzNjRxsUsWhQoMjbFXdJPWs9KPbt
	lf9Av+k5lPWrMsdqu9aaC1juXdUaW6qKhue45B83kiis0wCpUomQJOPpmHlS1djX0V+F
	IZBleydHL6qYE71YT6KJoxk3lc+1u6+VccbrtCk2yO3ctZNhgTKLSUHfZAyrnnCWwSnY
	M7bmeuwr6AopzI6WrqtP2vtkSxKUFerS4cSpEK3cXx6bvxMG8dOnOfC48V7281sS41yi
	bGd8khcv9Rh5AJ039YrIpfwORbwW9PZ1IZFwuNBGXyoEjoB769I+Lb/3iWTXwW1Fwquz
	qf6A==
X-Gm-Message-State: ALoCoQnUqpI7eyEtclV2HmWrLx1lhHUgCP9cmdNpFeO96F//1BOZX3dfSlE4+NEQU6mdT4m+nZSF
MIME-Version: 1.0
X-Received: by 10.220.110.77 with SMTP id m13mr534230vcp.35.1407886085922;
	Tue, 12 Aug 2014 16:28:05 -0700 (PDT)
Received: by 10.52.135.50 with HTTP; Tue, 12 Aug 2014 16:28:05 -0700 (PDT)
Date: Wed, 13 Aug 2014 00:28:05 +0100
Message-ID: <CAPhnLPB5pjZW-+u+DkYndRc=8sSMcvDqF5Eia7qvH6Q7sj92jQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto Project 1.5.3 Released
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
X-List-Received-Date: Tue, 12 Aug 2014 23:28:09 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

The latest point release of the Yocto Project, 1.5.3 (dora 10.0.3) is now
available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.3/poky-dora-10.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.5.3/poky-dora-10.0.3.tar.gz

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.3/RELEASENOTES

Please note that for this release, we are utilizing the master version
of eclipse-poky-kepler (4a167fd662262ebdaa3cf0d332ac0debb52d7904)

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>


--------------------
yocto-1.5.3 Errata
--------------------

Release Name: poky-dora-10.0.3
Branch:  dora
Tag:  dora-10.0.3
Hash:  dc743744d8e3a9caef577aeab6b7f51bc08ded17
md5:  bf8025e03a7aa71d3111f5011ef8514e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.3/poky-dora-10.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.5.3/poky-dora-10.0.3.tar.bz2

Release Name: eclipse-poky-juno-dora-10.0.3
Branch:  dora
Tag:  dora-10.0.3
Hash:  79cd3c6ff119526f3f85567253450d2e857afed0
md5:  2dbedb581e085264a68f61f198d1bc3d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.3/eclipse-poky-juno-dora-10.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.5.3/eclipse-poky-juno-dora-10.0.3.tar.bz2

Release Name: eclipse-poky-kepler-dora-10.0.3
Branch:  dora
Tag:  dora-10.0.3
Hash:  4a167fd662262ebdaa3cf0d332ac0debb52d7904
md5:  818382d448ee2739bd306cfeaf690c74
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.3/eclipse-poky-kepler-dora-10.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.5.3/eclipse-poky-kepler-dora-10.0.3.tar.bz2

Release Name: meta-qt3-dora-10.0.3
Branch:  dora
Tag:  dora-10.0.3
Hash:  4772424ab69908d4e3b9d6d4717ca889468e6acd
md5:  0a08ee0d6e59c21779db2e3ce47c825a
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.3/meta-qt3-dora-10.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.5.3/meta-qt3-dora-10.0.3.tar.bz2

--------------------
Security Fixes
--------------------

openssl:
        CVE-2010-5298
        CVE-2014-3470
        CVE-2014-0224
        CVE-2014-0221
        CVE-2014-0198
        CVE-2014-0195
        CVE-2014-0198

gnutls:
        CVE-2014-3466

--------------------
Changelog
--------------------
build-appliance-image: Update to dora head revision
poky.conf: Bump version for 1.5.3 dora release
build-appliance-image: Update to dora head revision
opkg: putting the service files into PN
populate-extfs.sh: fix to handle special file names correctly
libtool-cross/native: Force usage of bash due to sstate inconsistencies
perf: split packging
perf: add slang to the dependencies
perf: fix broken shell comparsion in do_install
e2fsprogs: Fix populate-extfs.sh
prelink: Fix SRC_URI
populate-extfs.sh: keep file timestamps
rpm: Fix rpm -V usage
consolekit: fix console-kit-log-system-start.service startup
populate-extfs.sh: error out if debugfs encounters some error
populate-extfs.sh: fix to handle /var/lib/opkg/alternatives/[[ correctly
profile-manual: Fixed a transposed title.
dev-manual: Fixed a link that was broke in the mega-manual.
mega-manual.sed: Fixed search string problem for profile-manual.
documentation: Updated manual history tables.
mega-manual.sed: Updated release string to support 1.5.3 release.
poky.ent: Updated variables to support 1.5.3 release.
x264: Update SRCREV to match commit in upstream git repo
openssl: fix for CVE-2010-5298
openssl: fix CVE-2014-3470
openssl: fix CVE-2014-0224
openssl: fix CVE-2014-0221
openssl: use upstream fix for CVE-2014-0198
openssl: fix CVE-2014-0195
gnutls: patch for CVE-2014-3466 backported
busybox: fix meta-yocto's bbappend's FILESEXTRAPATH
poky.conf: Fix DISTRO_VERSION to be 1.5.2
openssl: fix CVE-2014-0198

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

