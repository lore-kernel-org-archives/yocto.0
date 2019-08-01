Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0A8DE00DA9; Thu,  1 Aug 2019 07:08:40 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.178 listed in list.dnswl.org]
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58906E00C87
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 07:08:39 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id g18so52088366qkl.3
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 07:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=y2PPZUGawaajE0wDFRymbd86wLhiBg7+vg77E7eXa18=;
	b=YzWgxCP1ISs60j4mfKXBCVHi6iZ7Py+QogAJv+ToovSK5q077j+jn3KlQ+ZV0uz+xt
	ZDpFR08WjDAWiSJpBGEK3VACYZyEwEhjuc3zZgPOsxCIfJKfuBEvA8d6Sz8M7Df9T6KT
	7JRzMGhTTiZ99R2XkmNwZN1h44otQX/MuaerFH57NoSdAk9XZ0DOul8fht1lJdP7DSGR
	6sXK0cjZf0SkVXdAhkm5E0cBNGZvlN3LmS0HuRPo14eB4nVUa4+qHCTgzAd41pPiTqwY
	aIwHxuU8m341fRHLHSGS5AJRGrKAswYJAKlvorZCYk292r+3B0F7lSzPZehb0+MPFFJf
	N1Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=y2PPZUGawaajE0wDFRymbd86wLhiBg7+vg77E7eXa18=;
	b=M0fuFBwoxMtigrY4moL9OhDWaNrVZRw3g/PIYbW2fv9xSQVmWrxmiwqJYaGy5p38Z1
	hWw7u514ZPczA/q9XLZydjgth6jM7jAmSPSwJyRWqdYCMtmNvDGLG5iJV/n0Auz9y+8K
	yfGgl2GBym95slmHn5XC1spmVRuODldtalIRfX5AXX5h453P5XfAVDxvJ9B2vUj8u9ih
	JhmCNsoX97qNZtqfFmKC9cKwiPxbeygZb0lXe6YfPNDm6ecOtUllCRqo97ozbYY3shOw
	FUG4Pxvips9dTdBSG6pa0fR623MJxdti24fgYCthUGVV7uxPxulml5+BMKsOCDaKuQVH
	ELPA==
X-Gm-Message-State: APjAAAWnDGLVJRp8c6jLIHI/PhKySn3E2m30dxVSF8XhzFyEbyFU4LZp
	i20DJ2tT3jLUt8Bf6FlCMKSm7BUJnjdu3UlPS96WKsZ+Ciw=
X-Google-Smtp-Source: APXvYqw65osDgQu/qKvUAmwhRmRlJVtdDb+pdx2u4WdFBM8lZCU3jKbxpASWYhYh7x7rKUEEkjy23QosMxLYyXNLQuM=
X-Received: by 2002:a05:620a:685:: with SMTP id
	f5mr82565402qkh.238.1564668518654; 
	Thu, 01 Aug 2019 07:08:38 -0700 (PDT)
MIME-Version: 1.0
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 1 Aug 2019 10:08:12 -0400
Message-ID: <CAF_dkJBL96YB_Gbr1PRRN_f+Qr0EJO=T8ycifHwQwxUBnxC_LA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Reproducible u-boot
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
X-List-Received-Date: Thu, 01 Aug 2019 14:08:40 -0000
Content-Type: text/plain; charset="UTF-8"

How do I use the reproducible_build class to create a reproducible u-boot?

I tried adding

inherit reproducible_build

to my u-boot recipe, but when I do that, I generate errors of the form:

ERROR: When reparsing
/path/tot/u-boot_git.bb.do_deploy_source_date_epoch, the basehash
value changed from
e7c4a942e76dc4e630d9dc6e3b6d49db66adeb2c9a5e2d511fac3fc7dabd4e59 to
4735b8a3f887bf83059c5d56e529f1a5650fab8ac53ce4e2c222524e690092ae. The
metadata is not deterministic and this needs to be fixed.

Where should I look to learn more about the use of reproducible_build.bbclass?

--wpd

