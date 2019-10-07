Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21F8BE00BA1; Mon,  7 Oct 2019 01:53:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
	[209.85.208.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D09DE00ADD
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2019 01:53:37 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id d1so12676788ljl.13
	for <yocto@yoctoproject.org>; Mon, 07 Oct 2019 01:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=GaBAmxW19mPYdbjozBWgeB59xFzJCKPRTAAVIyeLmG0=;
	b=Bt264h7nts6HcKSnYR1esVQnlaKowb2xhxTAWTFBZ7EiGhbg8S/JkvEkuq3CgSs38P
	QAEkrN5U1Piy/nPA/Prhnm2zTKr9lXETIg1ehyrbY3WHB2wYhTT8J8GjjC/j852iy3e3
	7+dJ3HT4fug6UQ54Hzk+JuJuw2GKq/NNvOMmo0thbsFqobHyH2SbE3pkXxr+WE9s0K6y
	itjZvRww8N3VZYzOI5kduC0Ajb/CmajvJVIMaREjbOOvStQ1z6KVcFirv31e0RgYr3sh
	lgMFLqQ9NBU0XggUXWjcdEcKDLfIRLS83pJRi96kkadqlcmZymSSjGX7zE4wSSSe+QCe
	Pcig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GaBAmxW19mPYdbjozBWgeB59xFzJCKPRTAAVIyeLmG0=;
	b=sLmEjD40XwidSY5MdupJqTU6Tv7BfmipkFMQ7dKJFPD0r+lr5eowfE2QI2OzpVteSx
	ZkXVuUgbf9CuIbxHLQoVvP4fGzoejLgHYFgndTsBFMfqrM5ZC+lk/ZNgm8swNTu+VVT6
	r9T1viqlPx4K7nU78CREwnTUbnmiNRp7M/0en1uvpI/KA3vMRYThWiY/h7yHX999vWLD
	BCE/2ucOnSv/Bc6wg41xYG5sJnL5UxqMTj3uN97sD1RLk4eccVKUQnWj5EYO9NnN/8JC
	vm/9DzRYYb1v6VHH9xcwkmVU7aW2+yqKFqYgAJg4Sxo7bmQGyOkEY0YioGBg9r58dgTG
	H+AA==
X-Gm-Message-State: APjAAAXsUbeObSvpiec0muYHjczVuUINMDHGG5DJz/LHzgBMyYPUZBJa
	2CQ029YPJYfRA71+n5WI0lAqhG2/0e4J2RDj1brHPluJ
X-Google-Smtp-Source: APXvYqwPlheYZBEqHOQdwIj7lE4Q6fdvxTIqaYE4nm4s+9GVMRVEbt4V/ScsUJA4ewqh+A4jq7EgovggOlhHokqqWkU=
X-Received: by 2002:a05:651c:110f:: with SMTP id
	d15mr17479858ljo.43.1570438416297; 
	Mon, 07 Oct 2019 01:53:36 -0700 (PDT)
MIME-Version: 1.0
From: Teemu K <maillinglists18@gmail.com>
Date: Mon, 7 Oct 2019 11:53:24 +0300
Message-ID: <CAAmVmrp6R39J=2XHh_ASzGcdMJUbOz37RAEU+PLniKUf4Aaa3g@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Extra files to kernel module package
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
X-List-Received-Date: Mon, 07 Oct 2019 08:53:38 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have recipe that compiles kernel module. It works fine ie. the
module ends up to image.

I also have few configuration files that I'd like to add with the
package. Earlier version (I'm currently using thud-branch) that was
done by adding this line to recipe:

FILES_${PN} += "${sysconfdir}/udev/*"

Then when image - recipe I had
IMAGE_INSTALL += "<recipe-name>"  all would be installed to image.

Now the sysconfdir files ends up to recipe-name - package and module
itself ends up to kernel-module-<recipe-name> - package and although
I"m installing <recipe-name>  - package the one with module ends up to
image and the <recipe-name> - package is not.

I know that when inheriting module.class it'll rename the package to
kernel-module-${PN} yet you use the recipe name for installing the
package.  I tried adding the files to kernel-module-${PN} - package
instead, but didn't work.

What's the proper way adding extra files to kernel-module-package or
is it not recommended and I should use separate package instead?


-Teemu Keskinarkaus

