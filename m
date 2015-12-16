Return-Path: <presslertj@scientiallc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3A8EE00BF5; Wed, 16 Dec 2015 07:21:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0004]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 494 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Dec 2015 07:21:13 PST
Received: from mail.scientiallc.com (unknown [66.244.93.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5212E005B7
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 07:21:13 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.scientiallc.com (Postfix) with ESMTP id 62E132682F
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 10:12:58 -0500 (EST)
Received: from mail.scientiallc.com ([127.0.0.1])
	by localhost (mail.scientiallc.com [127.0.0.1]) (amavisd-new,
	port 10032) with ESMTP id Q-wd46mkuEt1 for <yocto@yoctoproject.org>;
	Wed, 16 Dec 2015 10:12:57 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.scientiallc.com (Postfix) with ESMTP id 7408F2B3FF
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 10:12:57 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.scientiallc.com 7408F2B3FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=scientiallc.com;
	s=FC0616DE-2718-11E5-8CEB-908690B650C7; t=1450278777;
	bh=b9PvJ5IsEplE9kH87NTZhsZ0uwwYhtiRRJm0XzsHvC8=;
	h=Date:From:To:Message-ID:Subject:MIME-Version:Content-Type:
	Content-Transfer-Encoding;
	b=auleC7mB38EHO4bC6Y3kbcB5DWcNdvgQ5KJGUVV5qnlhspQ/7ed0MLtJQNwQ1Ki+M
	j/gVhP1+Vx5W1dI+PLdGUzZJxSo/FIThf0nxSJf2VKZUhGGYgfMu1ZYUIcQpcqUQEb
	xKEhhpQMmvWPRgV2FtEELnJeANZ7LBsv+vBXF1Z0=
X-Virus-Scanned: amavisd-new at scientiallc.com
Received: from mail.scientiallc.com ([127.0.0.1])
	by localhost (mail.scientiallc.com [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id qfgwYHgpHidu for <yocto@yoctoproject.org>;
	Wed, 16 Dec 2015 10:12:57 -0500 (EST)
Received: from mail.scientiallc.com (mail.scientiallc.com [192.168.3.5])
	by mail.scientiallc.com (Postfix) with ESMTP id 53BBA2682F
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 10:12:57 -0500 (EST)
Date: Wed, 16 Dec 2015 10:12:57 -0500 (EST)
From: Travis Pressler <travis.pressler@scientiallc.com>
To: yocto@yoctoproject.org
Message-ID: <567899667.25901.1450278777091.JavaMail.zimbra@scientiallc.com>
MIME-Version: 1.0
X-Originating-IP: [192.168.3.151]
X-Mailer: Zimbra 8.6.0_GA_1182 (ZimbraWebClient - GC46 (Mac)/8.6.0_GA_1182)
Thread-Topic: How to move the initramfs manifest into the rootfs?
Thread-Index: gkjS01EfLgX6FTkOOj6ufYZWZygbXw==
Subject: How to move the initramfs manifest into the rootfs?
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
X-List-Received-Date: Wed, 16 Dec 2015 15:21:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

I am using bitbake to build a recipe which requires meta/recipes-core/images/core-image-minimal-dev.bb. I would like to include the references of the symbolic links core-image-minimal-initramfs-<machine>.manifest and <recipe>-<machine>.manifest within the build/tmp/deploy/<machine>/images directory to the rootfs of the resulting operating system.

It was pretty straightforward to add <recipe>-<machine>.manifest to the image by adding an IMAGE_PREPROCESS_COMMAND like this:

move_manifests() {
   mkdir -p ${IMAGE_ROOTFS}/home/root
   ls -lah ${DEPLOY_DIR_IMAGE} > ${IMAGE_ROOTFS}/home/root/lslog
   install -m 0644 ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.manifest ${IMAGE_ROOTFS}/home/root
}
The lslog helped me understand what exactly the deploy/images directory looks like during the image preprocess step, and the initramfs manifest isn't in there at that point; the initramfs manifest must be created shortly thereafter (during , because after bitbake's build tasks have been completed, the deploy/images does include the initramfs manifest.

Is it possible to move the core-image-minimal-initramfs-<machine>.manifest into the rootfs of my recipe-generated operating system?

