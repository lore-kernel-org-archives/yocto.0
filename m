Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0CACE00A54; Fri, 10 Jul 2015 02:41:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5724BE009D6
	for <yocto@yoctoproject.org>; Fri, 10 Jul 2015 02:41:50 -0700 (PDT)
Received: by wgxm20 with SMTP id m20so61303113wgx.3
	for <yocto@yoctoproject.org>; Fri, 10 Jul 2015 02:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=pDtfnJpB4rH9zLlUJPyYalOP1uw5AAxEmw8+f528BSA=;
	b=W6u+fnM5gJWk2IR0RUdzGoE7Qga79oArkRA+S8VMwuoMqUvImIbzWPF10Pdgj8Y1F2
	r5VmkyRPgr4Dc6Ha04KU4HyEMKR7iiWWfZgdLVVY1qVhxeviEPCPTKnoDyWzvoUyDCY1
	peL2wkb2/NIW3OArZBYY7eSmnMD8e5/vw6xGHbbPh+kyLLdozxYDcoAa5TZaItZIkX2p
	mntkJ+AbKJYchKbXsAHCWJ5uzQU99MENj2vRe/sUCb1nOudSJcz9WFuTKvNDR9ao/HIT
	jnxMjQObroRuh+bFtxG8f3r7SZnNY0M62BgSjyu6EueQMlMBnc9d5lCaQfTiAK3NgWNh
	+APA==
MIME-Version: 1.0
X-Received: by 10.180.82.230 with SMTP id l6mr4309255wiy.61.1436521309306;
	Fri, 10 Jul 2015 02:41:49 -0700 (PDT)
Received: by 10.28.218.197 with HTTP; Fri, 10 Jul 2015 02:41:49 -0700 (PDT)
Date: Fri, 10 Jul 2015 11:41:49 +0200
Message-ID: <CAAfyv35mm0RozJvDw52WPR0ggTQANZgr2S29T+Bqdf35kSvdAQ@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
To: yocto <yocto@yoctoproject.org>
Cc: =?UTF-8?B?TWFyZWsgVmHFoXV0?= <marek.vasut@gmail.com>
Subject: fitimage and define multiple configurations
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
X-List-Received-Date: Fri, 10 Jul 2015 09:41:55 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm using yocto-1.8 and building minimal image for BBB. I want to use
FIT format for kernel build (to be able run same image on BB andf
BBB). So I changed beaglebone.conf following:

-KERNEL_IMAGETYPE = "zImage"
+KERNEL_CLASSES += "kernel-fitimage"
+KERNEL_IMAGETYPE = "fitImage"
KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"

When build is finished I can see that fit image is build but only with
default configuration (kernel + first dtb).I'm expecting it should do
2 configurations like: kernel + dtb1 and kernel + dtb2. I can
understand it could be problematic when have multiple kernel images.
Is there any possibility to define mapping in conf for configurations?
I quickly check kernel-fitimage.bbclass but it seems it's not. Thanks,

BR,

marek
-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

