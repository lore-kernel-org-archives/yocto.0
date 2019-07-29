Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F3E2E00CD2; Mon, 29 Jul 2019 07:53:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (wpdster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50F09E00C94
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 07:53:24 -0700 (PDT)
Received: by mail-qk1-f196.google.com with SMTP id d15so44302453qkl.4
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 07:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=AFkHFy6jgMaJTnnKQ8ApEvc4Gubj4FIqqSnXFeMD5wU=;
	b=hXfUWaSTNMLPw4oikOJaV4gCePEbWtstQO/M8YPzlAULlfkmnbjx+MfS5n+utMOujw
	tt5KZtNIbA2H1Sa2FSlKqFfkFF9hKd11gUcknIxgS7gxGnrcFJmD46NjSv9cGjN/t7gL
	T8XYcIC0p+1wL9Ua+OwPjs8EAF8fP+F7BQgMfK+TEjN5W9yZpFa08uSWuZrLrMdH1GL4
	t9ZlPEzqiF7nEW3Uam81wKLsnP2zH4HOjudQA/AOtOZ+MDu74wfMd1FcNMBfyhrCqTex
	ysM4lcGEcOu4zLKR7y4+Xqub4xhR6w83ly+hTWbgaR3p1A1YKKjGYijtkaPxvltjD3Fh
	G7Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AFkHFy6jgMaJTnnKQ8ApEvc4Gubj4FIqqSnXFeMD5wU=;
	b=YID6q0U1VfYX7lPoYXTKcRdhXi373kQLuq+aRX8yUkrbQMYKz0m0hTFT2gmBsdQ7JT
	cp9bT1mrXBnuCcSb+tlH9AlWVA9AUQM7MJ1nSpdCa1Ml6vxAZ3yes+NGVx4caTcgkXWF
	/hA30lv52YdFVUx1gUt10sW0mMIRs/B2LdYz/LC/EB1+uDwC6MdqmkwGlYGHy6ORLtx8
	tIhzBGz+a33e7E6vZIRmhcPRENdLKhofiKhvZn/ZQkdbIlRX4auQRWza7y9uVCHGDuRq
	Ic5PwMZB+DxI2v0gdIXyQYKpSIVByzkNc9c1nnm9IWzP14ILPS92ljKeVXVhsv17bsXm
	VRsQ==
X-Gm-Message-State: APjAAAXQBsLmMl94MH+wWMfWuH+zc3AHCe1CdcA+vxsqlQ8CU55rMbun
	1APIqrQP4RMDh+647are29QVk/teW9WPJQzV/Glz6ugUVD0=
X-Google-Smtp-Source: APXvYqxnd6X30W66mRUUV7vXp6lvLfM0xOSujERxPuJviGiWhyyx9ogyEZ4LnARCr9sjXexZ/I/6Zm8U15BlixxKMkI=
X-Received: by 2002:a37:660d:: with SMTP id a13mr46210122qkc.36.1564412003376; 
	Mon, 29 Jul 2019 07:53:23 -0700 (PDT)
MIME-Version: 1.0
From: Patrick Doyle <wpdster@gmail.com>
Date: Mon, 29 Jul 2019 10:52:57 -0400
Message-ID: <CAF_dkJAkv49GRCJDHwMJzTRKJ=QW37ajt-ETvoHmz2EPv5DVow@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Why does enabling initramfs pull eudev into my build?
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
X-List-Received-Date: Mon, 29 Jul 2019 14:53:25 -0000
Content-Type: text/plain; charset="UTF-8"

Did that get your attention? :-)

I am trying to understand why eudev gets pulled into my build, where
it wasn't part of it before.  I recently added an initramfs to my
build by setting:

INITRAMFS_IMAGE_BUNDLE="1"

in my machine.conf file.  I have a custom, very minimal initramfs.bb
recipe that doesn't do much more than:

NO_RECOMMENDATIONS_pn-initramfs = "1"
PACKAGE_INSTALL = "${VIRTUAL-RUNTIME_base-utils} validate-rootfs"
IMAGE_FEATURES = ""
export IMAGE_BASENAME = "${MLPREFIX}initramfs"
IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"
inherit core-image

When I run:

$ bitbake base-image -g -u taskexp

I see that eudev.do_build lists "base-image.du_build" as a dependent
task and, for some reason, eudev.do_packagedata lists
"initramfs.do_roofs" as a dependent task.

When I remove INITRAMFS_IMAGE_BUNDLE from my machine.conf file, eudev
is no longer included in my image.  (Although, oddly,
initramfs.do_build is listed as a dependent task of eudev.do_build
when I run taskexp on my initramfs recipe, but not when I run it on
the base-image recipe.)

Can anybody point me at (more) tools that can help me understand what
I did to my initramfs.bb recipe that caused eudev to be included in my
build?

Thanks

--wpd

