Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.10414.1575047635732236644
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2019 09:13:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z8JQHkto;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: sgujic@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6039BE010CC; Fri, 29 Nov 2019 09:13:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (sgujic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B232CE010CA
	for <yocto@yoctoproject.org>; Fri, 29 Nov 2019 09:13:54 -0800 (PST)
Received: by mail-lf1-f52.google.com with SMTP id v201so22097729lfa.11
        for <yocto@yoctoproject.org>; Fri, 29 Nov 2019 09:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=xXJ2taDAjToZN3Ng88nFQHaoZOI1y2AIp8SfumBzcPA=;
        b=Z8JQHktoQRX7zwPFzNA+HDsstWP7pWZ0rnSjwSYm8ebrZlzPAcohfQ72JVHOADP+Ae
         TnHh/UW8nJ3Z/2w8NAbjJVszNPmiI9hzLGicFwdQE9ftbm/+jqKbvh5RvGlGVtQhbKSJ
         BqlCLOnoiIU3G/oyRwPW/20xNbPDtwoCk58z2F+BEwnoaSAs+oVSeUKpa2jO58JcgltB
         pTg/J4rDgQuUdwuYEiMCWcuFdJJcXvnk+Gd+bQPfgLJDD73uo3FgDrbpDgoSJIheok+M
         Eij3H/bX9HMtvib784RxFUcoTCkpGdpN/wkk/UWSW/YEG6VvRcmaEfQjq8NmJpugv1Wf
         a8Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xXJ2taDAjToZN3Ng88nFQHaoZOI1y2AIp8SfumBzcPA=;
        b=PuU4CsbQ96vpV9ycfZoUnITPdNIT/Mrx0PraczcqcC/BDqExbQsFVkFDZhl4m8XzEY
         RWTRpTxweQfxrlEu6Udu+FcaD9SV161RwmJf2cD+nwfLwy9t3MtjnZOJ3bWwgh0xUT5h
         uVsIE9LFJqaiSk3ieIAdlPM/erACgQ+aalnsduWTv05V1dCZNcBgOwVYl2F2otW3yI/C
         4M/TSQAl3cr92HLx0LLTm3WLV3mIDI8vXF82GdLF5hGLP5cU+DKHFQHLZT4PxkUf9IqE
         U0k4GlTuFJZ3/iYZdYlEV1ICjfaAgGdCmJdbu9mrgkao6W8rpetRQxsV84YNDBkV6Wbe
         oKAQ==
X-Gm-Message-State: APjAAAUACB2ufbyZC7Y/nmVpFNQDP+Yxjcpo7vGpB9WzCFRL8HhNunJo
	UOQLX3ldYFdqKHO9c0jTMlCrPPlF2qP0cISsNezO95ZDfIE=
X-Google-Smtp-Source: APXvYqxuIJydRcsuI6R3fXdECFo0e3Y9Wbpfer/j9I871xzZ2wgXupnDVzpFFu4a5Z8UhMKQtoizSjrpjMrK61SJWUs=
X-Received: by 2002:ac2:5975:: with SMTP id h21mr31128053lfp.165.1575047633083;
 Fri, 29 Nov 2019 09:13:53 -0800 (PST)
MIME-Version: 1.0
From: "Sinisa" <sgujic@gmail.com>
Date: Fri, 29 Nov 2019 18:13:41 +0100
Message-ID: <CA+OPWonYggtzzacbBJD4cgVuoA7NsaLLgubNqMxLFQtv8CVe1g@mail.gmail.com>
Subject: Copy initramfs to rootfs
To: yocto@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I started to build kernel with initramfs, and so far all that works
great. I got my new shiny zImage-initramfs--4.1.14..xxx.bin. I can
boot it over tftp, its does exactly what i want.

Problem im facing is, how do i put this new zImage instead of
originally built zImage in final rootfs archive (tar.gz).

To clarify, upon a "bitbake create-my-fancy-image" i got in
tmp/deploy/images two zImage files, one without initramfs and one with
initramfs. When i inspect my rootfs.tar.gz /boot folder, i have zImage
inisde (symlink and DTB also).

I would like to replace somehow this zImage with initramfs version.
How do i do that?

Documentations talks only about this IMAGE_BUNDLE that is going to
merge kernel with initramfs, but i cant find any obvious way to get
this into rootfs, to replace somehow original zImage.

The best idea i have so far (that does not work) is to do something like this:

initramfs_postprocess() {
   # NOTE: pseudo code
   rm ${IMAGE_ROOTFS}/boot/zImage-custom*
   unlink ${IMAGE_ROOTFS}/boot/zImage
   # Im not sure how do i reference file from tmp/deploy/images, which
is my question number 2
   cp zImage-initramfs-* to ${WORKDIR}/boot/zImage
}

ROOTFS_POSTPROCESS_COMMAND += "initramfs_postprocess; "

This above looks very dirty to me, but its best "idea" i have atm.

So, in my local.conf i have:
INITRAMFS_IMAGE_BUNDLE = "1" # means fuse kernel + initramfs

And in my main image recipe i have:
INITRAMFS_IMAGE = "initramfs-custom" #name of the recipe that provides
some custom /init
INITRAMFS_FSTYPES = "cpio.gz" # make a compressed cpio out of initramfs

One thing to note, im trying to avoid doing this with wks and creating
a special /boot partition. This is not something im really targeting,
i know its possible, but i want to have my kernel inside rootfs.tar.gz
in /boot from single image recipe due the various reasons.

Any suggestion is much appreciated.

Regards,
Sinisa
