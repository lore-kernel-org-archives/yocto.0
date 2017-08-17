Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD079E00CFB; Thu, 17 Aug 2017 16:35:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.80 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout01.t-online.de (mailout01.t-online.de [194.25.134.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7685E00726
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 16:35:05 -0700 (PDT)
Received: from fwd07.aul.t-online.de (fwd07.aul.t-online.de [172.20.27.150])
	by mailout01.t-online.de (Postfix) with SMTP id 21DFC4202681
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 01:35:04 +0200 (CEST)
Received: from genericx86-64
	(rA6KR2ZewhvFAFpXaXij+a+LvCh4ITSZLbtXGBCBeMYFlyMdtw4yHXqymJurZsHwbH@[84.146.40.121])
	by fwd07.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1diUJc-27pZiq0; Fri, 18 Aug 2017 01:35:04 +0200
Date: Fri, 18 Aug 2017 01:34:58 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20170818013458.da848df3fac10ac277be82bb@t-online.de>
In-Reply-To: <20170817100003.d378a00de6788f3d9e36724d@t-online.de>
References: <20170817100003.d378a00de6788f3d9e36724d@t-online.de>
X-Mailer: Sylpheed 3.6.0 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: rA6KR2ZewhvFAFpXaXij+a+LvCh4ITSZLbtXGBCBeMYFlyMdtw4yHXqymJurZsHwbH
X-TOI-MSGID: 1ba4015b-2185-431d-9cda-a11808b1a082
Subject: Re: some issues with current poky master
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
X-List-Received-Date: Thu, 17 Aug 2017 23:35:06 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit


 
> After sucessful build of the Image, my .iso has 38MB in size and seems to be missing the entire rootfs
> The created hddimg has the right size of 4,3GB, but when i write it onto an usb drive (tried dd and gnome-disk-utility) it ends up with a big /boot partiton containing only the boot files
> 

I still do not know if this is a homemade one, but i saw inside the do_bootimg log that isolevel 3 was missing for mkisofs because the rootfs is too big without.

For me this here inside image-live.bbclass fails for some reason:

	# Check the size of ${ISODIR}/rootfs.img, use mkisofs -iso-level 3
	# when it exceeds 3.8GB, the specification is 4G - 1 bytes, we need
	# leave a few space for other files.
	mkisofs_iso_level=""

        if [ -n "${ROOTFS}" ] && [ -s "${ROOTFS}" ]; then
		rootfs_img_size=`stat -c '%s' ${ISODIR}/rootfs.img`
		# 4080218931 = 3.8 * 1024 * 1024 * 1024
		if [ $rootfs_img_size -gt 4080218931 ]; then
			bbnote "${ISODIR}/rootfs.img execeeds 3.8GB, using '-iso-level 3' for mkisofs"
			mkisofs_iso_level="-iso-level 3"
		fi
	fi



hard coding mkisofs_iso_level to

	mkisofs_iso_level="-iso-level 3"

fixes this up
-- 
Markus Volk <f_l_k@t-online.de>

