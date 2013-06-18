Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qe0-f46.google.com (mail-qe0-f46.google.com
	[209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 321B8E01493
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 15:00:28 -0700 (PDT)
Received: by mail-qe0-f46.google.com with SMTP id nd7so2806472qeb.19
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 15:00:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=2BJSGyC/cCnhAER8hBgh7BlwLyVwJXSdxHGKx8iA8sU=;
	b=lA+n/xnf71kk4q1niIPuzQf7Slhy1PMlXqPjuvZiWUoL8JwM+h9Yq/ThVO3RY0N5BL
	2Hpvfnyd/xN0twkcTJ5veFek+r0kjOh5quyAOVOlWg7Mjl3mgCrRrAvfXlaxr+7yWmng
	IYbvo7W5f1kRNclyhVLa1TmvR4gOnWk4VBaWyFvf8djV2XHPlo9Vs79qWrJav/hx7Xt5
	Jc6c+3svjZ3tWwmFNHgD3Os2VwZq5QYUpWhljHP5FoVi6w4Lj+92EVye9qgYyJUeNJgu
	pRhygEYodEQ84Es+T9MX/BfKYUbFgG9URSIE95v8+o8OD6TlTviTK+FL2caRV5ITJXkn
	GAtw==
MIME-Version: 1.0
X-Received: by 10.229.62.136 with SMTP id x8mr6715497qch.146.1371592827670;
	Tue, 18 Jun 2013 15:00:27 -0700 (PDT)
Received: by 10.49.14.228 with HTTP; Tue, 18 Jun 2013 15:00:27 -0700 (PDT)
Date: Tue, 18 Jun 2013 15:00:27 -0700
Message-ID: <CAPhnLPB-rZ51f+c4g8_EeriJqfBJK+O0qtxKRoxs=CpQ7cqLDA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
X-Gm-Message-State: ALoCoQnQBkr4Zi5/DCRdUC/AAliQA3qvCnQOu3Pslp7eAYU7lJ1Ddcz+oCyT2FOGHXsWWV3f4p8y
Subject: [Announcement] 1.5_M1 released
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
X-List-Received-Date: Tue, 18 Jun 2013 22:00:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

The first milestone for the upcoming Yocto Project 1.5 release is now
available at:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m1/poky-yocto-1.5-m1.tar.gz

Thanks to everyone for all their hard work.

- --
Elizabeth Flanagan
Yocto Project
Build and Release

- --------------------
yocto-1.5-m1 Errata
- --------------------

Release Name: eclipse-poky-yocto-1.5-m1
Branch:  1.4_M5
Tag:  1.5_M1.final
Hash: 0b2dc574b1b08eab2102b37f3b64ab7bd70d9595
md5sum: 4ab42c570cef09dd17fce5a73667c49d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m1/eclipse-poky-yocto-1.5-m1.tar.gz
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.5-m1/eclipse-poky-yocto-1.5-m1.tar.gz

Release Name: meta-intel-yocto-1.5-m1
Branch:  1.4_M5
Tag:  1.5_M1.final
Hash: 24d63bd57269f3142c57c2d697c56101f73b23dc
md5sum: aa097c8a3e70060b77dffa5c265c6fd8
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m1/meta-intel-yocto-1.5-m1.tar.gz
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.5-m1/meta-intel-yocto-1.5-m1.tar.gz

Release Name: meta-qt3-yocto-1.5-m1
Branch:  1.4_M5
Tag:  1.5_M1.final
Hash: 4c27cce6688aa39852f3cba5e7b80ec279019605
md5sum: 264df1a025fc299b5d2065f61540d37d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m1/meta-qt3-yocto-1.5-m1.tar.gz
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.5-m1/meta-qt3-yocto-1.5-m1.tar.gz

Release Name: poky-yocto-1.5-m1
Branch:  1.4_M5
Tag:  1.5_M1.final
Hash: a62aed41f2d8f874f7ae24d0e5be5dbc66ea2199
md5sum: 549bb637f7d50af4734149d63a15aba9
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m1/poky-yocto-1.5-m1.tar.gz
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.5-m1/poky-yocto-1.5-m1.tar.gz

- --------------------
Features
- --------------------
* Lots of fixes, updates and improvements to systemd, postinstall logging,
  HOB, buildhistory, etc.
* Some bitbake infrastructure change to support webhob.
* Various package update: openssh, ltp, apt, connman, sqlite, dpkg, binutils,
  gdb, etc.

- --------------------
Known Issues
- --------------------
* Bug 4566 - routerstation pro cannot bootup with NFS in yocto 1.5
20130521-1 build
* Bug 4620 - cannot build oprofileui
* Bug 4626 - Createrepo is not working

