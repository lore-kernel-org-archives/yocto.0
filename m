Return-Path: <lars@visionweeding.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48031E00D0A; Mon, 31 Oct 2016 04:10:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.198.169.216 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Mon, 31 Oct 2016 04:10:29 PDT
Received: from mailrelay8.public.one.com (mailrelay8.public.one.com
	[91.198.169.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71C09E00CF0
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 04:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=visionweeding.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding;
	bh=V0rp5Y3HGcDGFxLPJ37RWQiXYyNh0eA74ypJPdMKa1I=;
	b=FMxFN9SK5VwzS04WtnZtFFyyBigltza76Gj9YBQkhvxsogGAVav8x5GUXoKjc/H4TmKa3UjA91tds
	UsmSNc5DrhjcV+etBDF9VJFnzNSxyeowVfKdTjxNX/OrrXUR/JR+Na2gKgFh9dL5daU4Lfxv10dTid
	gkgQoq29nM7pd4NI=
X-HalOne-Cookie: 853b1989a82ea4bfbef8bf81751132e4038bef9c
X-HalOne-ID: 7b579762-9f5a-11e6-846b-b82a72cffc46
Received: from [192.168.1.194] (unknown [86.58.170.151])
	by smtpfilter4.public.one.com (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 11:09:24 +0000 (UTC)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Lars Larsen <lars@visionweeding.com>
Message-ID: <58172666.1040209@visionweeding.com>
Date: Mon, 31 Oct 2016 12:09:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: How do I "remove" my application from ROOTFS and add it to INITRD ?
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
X-List-Received-Date: Mon, 31 Oct 2016 11:10:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


I have a recipie that builds and work fine.

It producue a rootfs.img and an initrd, all nicely wrapped in bootable 
ISO and hdd images


It all ends in rootfs.img , but I would like it to end in initrd.
(this would makes my update procedure towards costumers simpler, since 
we only have handle distribution of the initrd file)

My main recipe uses IMAGE__INSTALL to add my application - that contains 
a bunch of recipes for compiled modules, and a directory structure with 
a number of scripts.

So after analyzing bootimg.bbclass I can see, that I need to add a 
cpio.gz image of my application to get the INITRD variable, and remove 
it from ROOTFS

But how do I achieve this, in a compatible manor ?

-Lars

-- 

Best Regards
Lars Larsen

F.Poulsen Engineering Aps
Tjørnager 16
4330 Hvalsø
Denmark
+45 29802784
www.visionweeding.com


