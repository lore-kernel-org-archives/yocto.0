Return-Path: <kbassford@apertussolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45C8EE00D39; Wed, 17 Apr 2019 06:03:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [136.143.188.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sender4-of-o53.zoho.com (sender4-of-o53.zoho.com
	[136.143.188.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EC46E00754
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2019 06:03:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1555506218; cv=none; d=zoho.com; s=zohoarc; 
	b=EKZita4RQ3WWbGDDfXxqKsEjTm1cnY2zZ+e8oN0Aut3jnSLaofTXplrnfWHsYXRo6wNg7aIrMqQyhcdeOmLma9U9ySstKCGqwpL0NkM1B2Bns1d9hvu7PyLJYuB0QBL840bMJqkjA7ZunJVy9MDoLIsoRDrGCihXlD5Zj9HNlhM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
	s=zohoarc; t=1555506218;
	h=Content-Type:Content-Transfer-Encoding:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results;
	bh=+lmqvwLZL2QMhFBz5IUE0VsA1AChjXhHEKbSTB6xZDE=; 
	b=QFJUCOzIwmNVbUxhwHX7PUw2JjEbDz1mtZx6ElYny3oTrsb0PE0ctZyymEoPMsROWlhMY9ja7pnkU5uSjjG6OcifNilWI+fcAZCuvv0MvSyZQpo0f+4tfaR24COU7gplnq5UQh6B/56Iy/yCCUOx8XiMTFSuGMOlSDCaNryTlc0=
ARC-Authentication-Results: i=1; mx.zoho.com;
	dkim=pass  header.i=apertussolutions.com;
	spf=pass  smtp.mailfrom=kbassford@apertussolutions.com;
	dmarc=pass header.from=<kbassford@apertussolutions.com>
	header.from=<kbassford@apertussolutions.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1555506218; 
	s=zoho; d=apertussolutions.com;
	i=kbassford@apertussolutions.com; 
	h=Date:From:To:Message-ID:In-Reply-To:References:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding;
	l=3864; bh=+lmqvwLZL2QMhFBz5IUE0VsA1AChjXhHEKbSTB6xZDE=;
	b=RnKJHrwfbgCUB0jcNgMxLaypE2Y+08wAV4ccdjRYnMvLta8HMjiQnTdgSfEk2puf
	M8+l+aNNLSzWfc6g39TRj4QhuRVqI0RywGqLyyY0zU9qdFXdmSecG63SlEVo5WWVFzo
	h5CYJgaJzPX7LDoWVtGF8DXBng3+ED91/zOS4gRI=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1555506217429604.907184734494;
	Wed, 17 Apr 2019 06:03:37 -0700 (PDT)
Date: Wed, 17 Apr 2019 09:03:37 -0400
From: Ken Bassford <kbassford@apertussolutions.com>
To: "yocto" <yocto@yoctoproject.org>
Message-ID: <16a2b6541d3.ef882cf123121.5830972239267839412@apertussolutions.com>
In-Reply-To: <16a267d2151.cf8780f4246085.8457270121343840236@apertussolutions.com>
References: <16a267d2151.cf8780f4246085.8457270121343840236@apertussolutions.com>
MIME-Version: 1.0
X-Priority: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: Re: Yocto (poky) thud build problems with xen-image-minimal
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
X-List-Received-Date: Wed, 17 Apr 2019 13:03:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Folks,

Could someone be so kind as to backport patch Christopher Clark's patch 4cbd6c2b467c1f4caa32b2f782072739ab373065 from Master to the Thud release?

After consultation with Mr. Clark it appears the parameters causing the ipxe compiling problem was the same one, with additional parameters, that I addressed in my first patch submitted to Yocto several months ago in the Rocko release.  The ipxe package ignores ALL environmental parameters (ref: ipxe Makefile), setting them to null, forcing anyone compiling this package to add them to the make command line.  Mr. Clark has done a wonderful job of implementing the change that frankly puts mine new patch to shame, extending well beyond what I corrected for.  Please see to it that his patch is backported so folks attempting to compile this package don't encounter this bug.

Thank you

Now I just have to figure out why the glibc-locale has to be compiled alone before it can be used.

Sincerely,
Ken Bassford
Apertus Solutions

---- On Tue, 16 Apr 2019 10:11:35 -0400 Ken Bassford <kbassford@apertussolutions.com> wrote ----

 > Greetings, 
 >  
 > I have just transitioned to a clean upgrade to 'thud' (poky) and I'm having problems executing a test build of "xen-image minimal". 
 > My bblayers.conf file contains the following layers ... 
 > BBLAYERS ?= " \ 
 > /home/kbassford/repo/poky/meta \ 
 > /home/kbassford/repo/poky/meta-poky \ 
 > /home/kbassford/repo/poky/meta-yocto-bsp \ 
 > /home/kbassford/repo/poky/meta-openembedded/meta-oe \ 
 > /home/kbassford/repo/poky/meta-openembedded/meta-filesystems \ 
 > /home/kbassford/repo/poky/meta-openembedded/meta-python \ 
 > /home/kbassford/repo/poky/meta-openembedded/meta-networking \ 
 > /home/kbassford/repo/poky/meta-openembedded/meta-perl \ 
 > /home/kbassford/repo/poky/meta-intel \ 
 > /home/kbassford/repo/poky/meta-selinux \ 
 > /home/kbassford/repo/poky/meta-virtualization \ 
 > /home/kbassford/repo/poky/meta-security \ 
 > " 
 >  
 > My local.conf is appended with the following ... 
 > # Customizations 
 > DISTRO_FEATURES_append = " xen virtualization " 
 > IMAGE_INSTALL_append += " bridge-utils wireshark" 
 > IMAGE_EXTRA_INSTALL ?= " strace" 
 > CORE_IMAGE_EXTRA_INSTALL ?= " strace" 
 > PACKAGECONFIG_append_pn-recipename = " dhcp dhcpcd" 
 >  
 > IMAGE_ROOTFS_SIZE = "381600" 
 > BB_ENV_WHITELIST = " IMAGE_ROOTFS_EXTRA_SPACE" 
 >  
 > # for Dom0 
 > BOOTIMG_EXTRA_SPACE = '825312' 
 > BOOTIMG_VOLUME_ID = 'dom0sd' 
 >  
 > The first failure I encountered was this ... 
 > glibc-locale-2.28: glibc-locale: Files/directories were installed but not shipped in any package: 
 > /usr/lib/gconv/EBCDIC-DK-NO-A.so 
 > /usr/lib/gconv/IBM1097.so 
 > /usr/lib/gconv/IBM874.so 
 > /usr/lib/gconv/ISO8859-14.so 
 > /usr/lib/gconv/IBM865.so 
 > /usr/lib/gconv/IBM1157.so 
 > /usr/lib/gconv/MAC-CENTRALEUROPE.so 
 > /usr/lib/gconv/IBM274.so 
 > /usr/lib/gconv/EUC-JP.so 
 > /usr/lib/gconv/IBM1025.so 
 > ... 
 >  
 > This has been documented on and off through several releases, usually solved by using "DISTRO_FEATURES_append =" in place of "DISTRO_FEATURES +=" in the local.conf file. Despite my local.conf containing "DISTRO_FEATURES_append = " the compile fails. 
 > Compiling glibc-locale by itself succeeds (bitbake glibc-locale -c cleanall && bitbake glibc-locale) 
 >  
 > The second failure I encountered was ... 
 > util/zbin.c:7:18: fatal error: lzma.h: No such file or directory 
 > #include <lzma.h> 
 > ^ 
 > compilation terminated. 
 >  
 > Compiling xz-native by itself succeeds, but compiling ipxe by itself fails with the same error. 
 >  
 > Could someone from the community tell me what I'm overlooking? 
 > Are there bugs in the aforementioned recipes? 
 >  
 > Apologies for the length, I wanted to include all the details up front. Thanks in advance. 
 >  
 > Sincerely, 
 > Ken Bassford 
 > Apertus Solutions 
 > 


