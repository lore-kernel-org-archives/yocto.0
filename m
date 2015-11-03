Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36C6AE009C5; Tue,  3 Nov 2015 08:59:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f182.google.com (mail-yk0-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3539E0034B
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 08:59:07 -0800 (PST)
Received: by ykba4 with SMTP id a4so26040351ykb.3
	for <yocto@yoctoproject.org>; Tue, 03 Nov 2015 08:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=rTAhrrtL5GkOXBYRUQGklSCY527pMKz2csq6w5iqpys=;
	b=SfA+CuaLhMfUt5lduWyMudyvTfeTubTvmZHvsCvQe8e+/YQAxlAEoWcd1XVBmRXW5Z
	hYC9538qt+UwZWNHXZy+R/8NwSPFRaspYqUG3GEZdnkA4YRzzlQB0q7T1+fMd43DqpsC
	94hup0UR9fo6X/6i6enDHn/7XQyDdoypN0OPMA9rkCPxW0Urz2CfvE2i6JpD1nq1P3jo
	yv+J9F3EPJFFt0rT+FPmLnZP7CHhtADhAiDgf3CLkTVoEoqwD6Tdv1WtlWcWyts0l268
	7fOZRBUIRxmyPR521U6Zfcfh0CUhPnjMOyA6NXGP9C+rx6OyT7hZ0MsZQfud3omX+1Vg
	h/QA==
MIME-Version: 1.0
X-Received: by 10.129.146.81 with SMTP id j78mr21436758ywg.217.1446569946801; 
	Tue, 03 Nov 2015 08:59:06 -0800 (PST)
Received: by 10.129.155.134 with HTTP; Tue, 3 Nov 2015 08:59:06 -0800 (PST)
Date: Tue, 3 Nov 2015 14:59:06 -0200
Message-ID: <CAF3SDA6VnRtdSmSCT7+rJkhHPU6tZsiCqUUQhvZPR54GoMrjaQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: installation image (customizing .sdcard image)
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
X-List-Received-Date: Tue, 03 Nov 2015 16:59:10 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

Suppose that I have a "foo-image" that builds foo-image.ubi and
foo-image.sdcard. The .ubi has to be burned into NAND. Today I use an
.sdcard image from my provider, which I boot and copy u-boot, kernel,
device-tree and rootfs to it, and then run a script that burn these
files
into NAND. I was wondering if is possible to turn the foo-image.sdcard
an installation image for foo-image.ubi!?

I think in selecting some recipes based on filesystem type (.sdcard)
to be installed to the [.sdcard] image. These recipes are to handle
the packages needed to write to NAND like mtd-utils and alike. Then
copy the proper u-boot, kernel, device-tree and rootfs.ubi during
rootfs creation and after boot run some kind of script that
burns all this stuff to NAND. If all that works I can even put this installation
script to run at first boot and have a automatic installation image for
each image that I create,

I know that to make this works I'll need make .sdcard image depend on
.ubi image, this is fine to me. The big question is how to copy the
right files to rootfs and how to pick up packages base on fstype of
image.

So, has anybody tried this before?

Best regards,

-- 
"Do or do not. There is no try"
  Yoda Master

